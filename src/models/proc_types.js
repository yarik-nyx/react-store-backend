import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('proc_types', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    proc_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'processors',
        key: 'id'
      }
    },
    type_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'types',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'proc_types',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "proc_types_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
