class StaticPagesController < ApplicationController

skip_before_filter :authorize

  def discover
  end

  def order
  end

  def connect
  	# @instagram = Instagram.user_recent_media("274890609", {:count => 1})
  end

end
