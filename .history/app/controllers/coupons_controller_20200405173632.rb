class CouponsController < ApplicationController
    def new
    end

    def post
    end

    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon_code]
        @coupon.store = params[:store]
    end
end