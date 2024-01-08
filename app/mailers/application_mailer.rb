class ApplicationMailer < ActionMailer::Base
  # https://trello.com/c/NpB7SvoO/11-add-email-sending-after-creating-a-new-order
  default from: "store@richdoor.by"
  layout "mailer"
end
