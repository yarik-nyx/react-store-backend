import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('form_factors', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    form_factor: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'form_factors',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "form_factors_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
