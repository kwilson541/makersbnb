class MakersBnb < Sinatra::Base

  get "/users/new" do
    if current_user
      redirect "/listings"
    else
      erb :'users/sign_up'
    end
  end

  post "/users" do
    user = User.create(name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirm] )
    if user.id == nil
      flash.next[:sign_up_error] = "Passwords do not match Please try again."
      redirect '/users/new'
    else
      redirect '/sessions/new'
    end
  end

  get "/users/requests" do
    if current_user
      @renter_bookings = current_user.bookings
      @owner_bookings = current_user.listings.bookings
      erb :'users/requests'
    else
      redirect "/users/new"
    end
  end

end
