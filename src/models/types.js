import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('types', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    type: {
      type: DataTypes.STRING(3),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'types',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "types_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
