import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('processors', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    title: {
      type: DataTypes.STRING(100),
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
    num_of_cores: {
      type: DataTypes.STRING,
      allowNull: false
    },
    num_of_threads: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    base_frequency: {
      type: DataTypes.STRING,
      allowNull: false
    },
    socket_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'sockets',
        key: 'id'
      }
    },
    l2_cache: {
      type: DataTypes.DECIMAL,
      allowNull: false
    },
    l3_cache: {
      type: DataTypes.DECIMAL,
      allowNull: false
    },
    texproc: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    heatdis: {
      type: DataTypes.STRING,
      allowNull: false
    },
    max_temp: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    max_frequency: {
      type: DataTypes.DECIMAL,
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
    tableName: 'processors',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "processors_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
