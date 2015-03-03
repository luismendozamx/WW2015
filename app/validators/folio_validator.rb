class FolioValidator < ActiveModel::Validator
  def validate(record)
    unless (1..5502).include?(record.folio) && User.where(folio: record.folio).count < 2
      record.errors[:folio] << 'Folio Invalido'
    end
  end
end