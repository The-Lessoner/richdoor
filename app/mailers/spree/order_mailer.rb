# frozen_string_literal: true

module Spree
  class OrderMailer < BaseMailer
    def confirm_email(order, resend = false)
      @order = order
      @store = @order.store
      subject = build_subject(t('.subject'), resend)
      mail(to: @order.email, bcc: bcc_address(@store), from: from_address(@store), subject: subject)
    end


    #https://trello.com/c/NpB7SvoO/11-add-email-sending-after-creating-a-new-order
    def confirm_email_admin(order, resend = false)
       @order = order
       @store = @order.store
       order_number = @order.number
       subject = build_subject(t('.subject'), resend)
       admin_emails = Spree::RoleUser.where(role_id: Spree::Role.where(name: "admin").pluck(:id)).pluck(:user_id).map { |user_id| Spree::User.find(user_id).email }
       email_customer = Spree::Order.where(number: order_number).pluck(:email)
       address_customer_id=Spree::Order.where(number: order_number).pluck(:bill_address_id)
       info_customer=Spree::Address.where(id: address_customer_id).pluck(:name, :phone)
       mail(to: admin_emails,  from: from_address(@store), subject: subject)

    end


    def cancel_email(order, resend = false)
      @order = order
      @store = @order.store
      subject = build_subject(t('.subject'), resend)

      mail(to: @order.email, from: from_address(@store), subject: subject)
    end

    def inventory_cancellation_email(order, inventory_units, resend = false)
      @order, @inventory_units = order, inventory_units
      @store = @order.store
      subject = build_subject(t('spree.order_mailer.inventory_cancellation.subject'), resend)

      mail(to: @order.email, from: from_address(@store), subject: subject)
    end

    private

    def build_subject(subject_text, resend)
      resend_text = (resend ? "[#{t('spree.resend').upcase}] " : '')
      "#{resend_text}#{@order.store.name} #{subject_text} ##{@order.number}"
    end
  end
end
