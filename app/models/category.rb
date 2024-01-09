class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '海外文学' },
    { id: 3, name: '日本文学' },
    { id: 4, name: 'ノンフィクション' },
    { id: 5, name: 'マンガ' },
    { id: 6, name: 'ライトノベル' },
    { id: 7, name: 'SF小説' }    
  ]

  include ActiveHash::Associations
  has_many :rental_books

end