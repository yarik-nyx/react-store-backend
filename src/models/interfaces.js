import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('interfaces', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    interface: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'interfaces',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "interfaces_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
