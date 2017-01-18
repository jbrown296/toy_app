class User < ActiveRecord::Base
  has_many :microposts
  validates :name, presence: true
  validates :email, presence: true

  attr_encrypted :name, key: :encryption_key

  def encryption_key
  	"7b//q5FM2qfYw7Il2StM9m1aL82Gjd5u0AcH8VmAucc/uVmpjA6s7weoN41nshlbKdzOYoNZsasnAriRvE6IpAPpRm7FrF63GOCd45/RvpwsYPLM2ep7ILGpBp0dk5zlTplJmEI8/+fPPIAwJES58xYTfmvUA8AexPd7BCzQhlo="
  end



end
