require 'test_helper'

class SchoolClassesControllerTest < ActionController::TestCase
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  setup do
    @school_class = school_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:school_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school_class" do
    assert_difference('SchoolClass.count') do
      post :create, school_class: {  }
    end

    assert_redirected_to school_class_path(assigns(:school_class))
  end

  test "should show school_class" do
    get :show, id: @school_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school_class
    assert_response :success
  end

  test "should update school_class" do
    patch :update, id: @school_class, school_class: {  }
    assert_redirected_to school_class_path(assigns(:school_class))
  end

  test "should destroy school_class" do
    assert_difference('SchoolClass.count', -1) do
      delete :destroy, id: @school_class
    end

    assert_redirected_to school_classes_path
  end
>>>>>>> a32df26e7f30b4cd7d64bd1599faa38761cc7379
end
