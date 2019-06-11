class AddUserRefToTasks < ActiveRecord::Migration[5.2]
  def change
    # tasksテーブルに対して、user_idというカラムをintegerで追加しているだけ
    # integerは整数型
    # add_column :tasks, :user_id, :integerと「ほぼ」同じ
    # 外部キー制約をつけられる→foreign_keyは外部キー制約のこと（foreign key constraint）
    # 外部キーに対してインデックスを貼る。
    # インデックスとは検索を早くする目次のようなもの
    add_reference :tasks, :user, foreign_key: true
  end
end
