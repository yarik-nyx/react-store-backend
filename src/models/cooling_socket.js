import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('cooling_socket', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    cooling_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'cooling',
        key: 'id'
      }
    },
    socket_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'sockets',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'cooling_socket',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "cooling_socket_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
