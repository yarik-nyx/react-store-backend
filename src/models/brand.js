import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('brand', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    name: {
      type: DataTypes.STRING(50),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'brand',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "brand_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
