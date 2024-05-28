import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('videocards', {
    id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    title: {
      type: DataTypes.STRING(50),
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
    videochipset_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'videochipsets',
        key: 'id'
      }
    },
    base_frequency: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    heatdiss: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    video_memory_capacity: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    type_capacity_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'types_capacity',
        key: 'id'
      }
    },
    max_power: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    max_frequency: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    interface_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'interfaces',
        key: 'id'
      }
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
    tableName: 'videocards',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "videocards_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
