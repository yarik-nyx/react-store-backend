import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('ps_certificates', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    certificate: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'ps_certificates',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "ps_certificates_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
