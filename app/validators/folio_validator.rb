class FolioValidator < ActiveModel::Validator
  def validate(record)
    unless (1..4510).include?(record.folio) && User.where(folio: record.folio).count < 2
      record.errors[:folio] << 'Folio Invalido'
    end
  end
end