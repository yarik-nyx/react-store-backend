import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('types_capacity', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    type_capacity: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'types_capacity',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "types_capacity_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
