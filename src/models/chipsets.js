import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('chipsets', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    chipset: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'chipsets',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "chipsets_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
