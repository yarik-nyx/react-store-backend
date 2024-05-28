import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('type_cooling', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    type_cooling: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'type_cooling',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "type_cooling_id_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
