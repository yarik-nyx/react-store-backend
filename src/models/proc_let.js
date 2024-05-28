import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('proc_let', {
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
    let_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'letters',
        key: 'id'
      }
    }
  }, {
    sequelize,
    tableName: 'proc_let',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "proc_let_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
