import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('sockets', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    socket: {
      type: DataTypes.STRING(50),
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'sockets',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "scokets_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
