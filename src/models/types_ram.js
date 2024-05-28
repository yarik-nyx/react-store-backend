import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('types_ram', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    type_ram: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'types_ram',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "types_ram_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
