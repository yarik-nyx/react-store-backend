import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('videochipsets', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    videochipset: {
      type: DataTypes.STRING,
      allowNull: false
    }
  }, {
    sequelize,
    tableName: 'videochipsets',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "videochipsets_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
