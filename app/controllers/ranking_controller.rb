class RankingController < ApplicationController
  def have
    @have_item = Item.all
    @have_ranking_item = Have.group('item_id').order('count_item_id desc').limit(10).count('item_id').keys
  end

  def want
    @want_item = Item.all
    @want_ranking_item = Want.group('item_id').order('count_item_id desc').limit(10).count('item_id').keys
  end
end
