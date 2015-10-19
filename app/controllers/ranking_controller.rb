class RankingController < ApplicationController
  def have
    @have_ranking_item = Have.group(:item_id).order('item_id desc').count('item_id').keys
  end

  def want
  end
end
