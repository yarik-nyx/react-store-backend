import Sequelize from 'sequelize'
export default function(sequelize, DataTypes) {
  return sequelize.define('motherboards', {
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
    chipset_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'chipsets',
        key: 'id'
      }
    },
    'form _factor_id': {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'form_factors',
        key: 'id'
      }
    },
    socket_id: {
      type: DataTypes.SMALLINT,
      allowNull: false,
      references: {
        model: 'sockets',
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
    cpu_power_pin: {
      type: DataTypes.STRING,
      allowNull: false
    },
    frequency_ram: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    max_num_ram: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    slots_ram: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    mb_power_pin: {
      type: DataTypes.STRING,
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
    tableName: 'motherboards',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "motherboards_pk",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
