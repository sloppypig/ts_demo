require 'test_helper'

class TopicsDocDropsControllerTest < ActionController::TestCase
  setup do
    @topics_doc_drop = topics_doc_drops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topics_doc_drops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topics_doc_drop" do
    assert_difference('TopicsDocDrop.count') do
      post :create, topics_doc_drop: { doc_id: @topics_doc_drop.doc_id, topic_id: @topics_doc_drop.topic_id, weight: @topics_doc_drop.weight }
    end

    assert_redirected_to topics_doc_drop_path(assigns(:topics_doc_drop))
  end

  test "should show topics_doc_drop" do
    get :show, id: @topics_doc_drop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topics_doc_drop
    assert_response :success
  end

  test "should update topics_doc_drop" do
    put :update, id: @topics_doc_drop, topics_doc_drop: { doc_id: @topics_doc_drop.doc_id, topic_id: @topics_doc_drop.topic_id, weight: @topics_doc_drop.weight }
    assert_redirected_to topics_doc_drop_path(assigns(:topics_doc_drop))
  end

  test "should destroy topics_doc_drop" do
    assert_difference('TopicsDocDrop.count', -1) do
      delete :destroy, id: @topics_doc_drop
    end

    assert_redirected_to topics_doc_drops_path
  end
end
