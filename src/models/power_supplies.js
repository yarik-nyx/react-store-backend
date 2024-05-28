import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('power_supplies', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    title: {
      type: DataTypes.STRING,
      allowNull: false
    },
    brand_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'brand',
        key: 'id'
      }
    },
    power: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    min_voltage: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    max_voltage: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    imageurl: {
      type: DataTypes.STRING,
      allowNull: false
    },
    certificate_id: {
      type: DataTypes.SMALLINT,
      allowNull: true,
      references: {
        model: 'ps_certificates',
        key: 'id'
      }
    },
    price: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    rating: {
      type: DataTypes.DECIMAL,
      allowNull: true
    }
  }, {
    sequelize,
    tableName: 'power_supplies',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "power_supplies_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
