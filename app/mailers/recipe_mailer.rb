class RecipeMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.recipe_mailer.send_recipe.subject
  #
  def send_recipe(recipe_id, current_user)
    @greeting = "Hi"
    @recipe = Recipe.find(recipe_id)
    @email = current_user.email 
    mail to: "88pawankumarjha@gmail.com", 
        from: @email, 
        :subject => "A new recipe : #{@recipe.name}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.recipe_mailer.spam.subject
  #
  def spam
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
