import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('cooling', {
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
    type_cooling_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'type_cooling',
        key: 'id'
      }
    },
    num_fan: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    TDP: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    fan_size_length: {
      type: DataTypes.SMALLINT,
      allowNull: true
    },
    fan_size_width: {
      type: DataTypes.SMALLINT,
      allowNull: true
    },
    fan_size_height: {
      type: DataTypes.SMALLINT,
      allowNull: true
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
    tableName: 'cooling',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "cooling_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
