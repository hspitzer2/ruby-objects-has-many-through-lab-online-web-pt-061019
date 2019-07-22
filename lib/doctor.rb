class Doctor

  attr_accessor :name, :patient

  @@all =[]

  def initialize( )

  @@all = << self
  end

  def self.all
    @all
  end
