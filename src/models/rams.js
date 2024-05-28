import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('rams', {
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
    type_ram_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'types_ram',
        key: 'id'
      }
    },
    volume: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    frequency: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    voltage: {
      type: DataTypes.DECIMAL,
      allowNull: false
    },
    timings: {
      type: DataTypes.STRING,
      allowNull: false
    },
    cas: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    imageurl: {
      type: DataTypes.STRING,
      allowNull: false
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
    tableName: 'rams',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "rams_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
