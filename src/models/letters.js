import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('letters', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    letter: {
      type: DataTypes.STRING(2),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'letters',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "letters_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
