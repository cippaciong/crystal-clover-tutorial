class Home::Index < BrowserAction
  include Auth::AllowGuests

  get "/" do
    if current_user?
      redirect Me::Show
    else
      latest_fortunes = FortuneQuery.new.created_at.desc_order.limit(10)

      html Home::IndexPage, fortunes: latest_fortunes
    end
  end
end
