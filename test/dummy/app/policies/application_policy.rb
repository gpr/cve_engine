class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    true
  end

  def update?
    true
  end

  def edit?
    true
  end

  def destroy?
    true
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end

  def rails_admin?(action)
    case action
      when :index
        index?
      when :show
        show?
      when :create
        create?
      when :new
        new?
      when :update
        update?
      when :edit
        edit?
      when :destroy
        destroy?
      when :export
        index?
      when :history
        index?
      when :show_in_app
        show?
      when :dashboard
        true
      else
        raise ::Pundit::NotDefinedError, "unable to find policy #{action} for #{record}."
    end
  end
end