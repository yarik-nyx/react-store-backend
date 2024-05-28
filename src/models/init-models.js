import { DataTypes } from "sequelize";
import _brand from './brand.js'
import _chipsets from './chipsets.js'
import _cooling from './cooling.js'
import _cooling_socket from './cooling_socket.js'
import _form_factors from './form_factors.js'
import _interfaces from './interfaces.js'
import _letters from './letters.js'
import _motherboards from './motherboards.js'
import _power_supplies from './power_supplies.js'
import _proc_let from './proc_let.js'
import _proc_types from './proc_types.js'
import _processors from './processors.js'
import _ps_certificates from './ps_certificates.js'
import _rams from './rams.js'
import _sockets from './sockets.js'
import _type_cooling from './type_cooling.js'
import _types from './types.js'
import _types_capacity from './types_capacity.js'
import _types_ram from './types_ram.js'
import _videocards from './videocards.js'
import _videochipsets from './videochipsets.js'

function initModels(sequelize) {
  var brand = _brand(sequelize, DataTypes);
  var chipsets = _chipsets(sequelize, DataTypes);
  var cooling = _cooling(sequelize, DataTypes);
  var cooling_socket = _cooling_socket(sequelize, DataTypes);
  var form_factors = _form_factors(sequelize, DataTypes);
  var interfaces = _interfaces(sequelize, DataTypes);
  var letters = _letters(sequelize, DataTypes);
  var motherboards = _motherboards(sequelize, DataTypes);
  var power_supplies = _power_supplies(sequelize, DataTypes);
  var proc_let = _proc_let(sequelize, DataTypes);
  var proc_types = _proc_types(sequelize, DataTypes);
  var processors = _processors(sequelize, DataTypes);
  var ps_certificates = _ps_certificates(sequelize, DataTypes);
  var rams = _rams(sequelize, DataTypes);
  var sockets = _sockets(sequelize, DataTypes);
  var type_cooling = _type_cooling(sequelize, DataTypes);
  var types = _types(sequelize, DataTypes);
  var types_capacity = _types_capacity(sequelize, DataTypes);
  var types_ram = _types_ram(sequelize, DataTypes);
  var videocards = _videocards(sequelize, DataTypes);
  var videochipsets = _videochipsets(sequelize, DataTypes);

  cooling.belongsTo(brand, { as: "brand", foreignKey: "brand_id"});
  brand.hasMany(cooling, { as: "coolings", foreignKey: "brand_id"});
  motherboards.belongsTo(brand, { as: "brand", foreignKey: "brand_id"});
  brand.hasMany(motherboards, { as: "motherboards", foreignKey: "brand_id"});
  power_supplies.belongsTo(brand, { as: "brand", foreignKey: "brand_id"});
  brand.hasMany(power_supplies, { as: "power_supplies", foreignKey: "brand_id"});
  processors.belongsTo(brand, { as: "brand", foreignKey: "brand_id"});
  brand.hasMany(processors, { as: "processors", foreignKey: "brand_id"});
  rams.belongsTo(brand, { as: "brand", foreignKey: "brand_id"});
  brand.hasMany(rams, { as: "rams", foreignKey: "brand_id"});
  videocards.belongsTo(brand, { as: "brand", foreignKey: "brand_id"});
  brand.hasMany(videocards, { as: "videocards", foreignKey: "brand_id"});
  motherboards.belongsTo(chipsets, { as: "chipset", foreignKey: "chipset_id"});
  chipsets.hasMany(motherboards, { as: "motherboards", foreignKey: "chipset_id"});
  cooling_socket.belongsTo(cooling, { as: "cooling", foreignKey: "cooling_id"});
  cooling.hasMany(cooling_socket, { as: "cooling_sockets", foreignKey: "cooling_id"});
  motherboards.belongsTo(form_factors, { as: "form _factor", foreignKey: "form _factor_id"});
  form_factors.hasMany(motherboards, { as: "motherboards", foreignKey: "form _factor_id"});
  videocards.belongsTo(interfaces, { as: "interface", foreignKey: "interface_id"});
  interfaces.hasMany(videocards, { as: "videocards", foreignKey: "interface_id"});

  // proc_let.belongsTo(letters, { as: "let", foreignKey: "let_id"});
  // letters.hasMany(proc_let, { as: "proc_lets", foreignKey: "let_id"});
  // proc_let.belongsTo(processors, { as: "proc", foreignKey: "proc_id"});
  // processors.hasMany(proc_let, { as: "proc_lets", foreignKey: "proc_id"});

  //Many-to-Many
  processors.belongsToMany(letters, { through: proc_let, foreignKey: "proc_id", otherKey: "let_id", primaryKey: "id"});
  letters.belongsToMany(processors, { through: proc_let, foreignKey: "let_id", otherKey: "proc_id", primaryKey: "id"});


  // proc_types.belongsTo(types, { as: "type", foreignKey: "type_id"});
  // types.hasMany(proc_types, { as: "proc_types", foreignKey: "type_id"});
  // proc_types.belongsTo(processors, { as: "proc", foreignKey: "proc_id"});
  // processors.hasMany(proc_types, { as: "proc_types", foreignKey: "proc_id"});

  //Many-to-Many
  processors.belongsToMany(types, { through: proc_types, foreignKey: "proc_id", otherKey: "type_id", primaryKey: "id"});
  types.belongsToMany(processors, { through: proc_types, foreignKey: "type_id", otherKey: "proc_id", primaryKey: "id"});


  power_supplies.belongsTo(ps_certificates, { as: "certificate", foreignKey: "certificate_id"});
  ps_certificates.hasMany(power_supplies, { as: "power_supplies", foreignKey: "certificate_id"});
  cooling_socket.belongsTo(sockets, { as: "socket", foreignKey: "socket_id"});
  sockets.hasMany(cooling_socket, { as: "cooling_sockets", foreignKey: "socket_id"});
  motherboards.belongsTo(sockets, { as: "socket", foreignKey: "socket_id"});
  sockets.hasMany(motherboards, { as: "motherboards", foreignKey: "socket_id"});
  processors.belongsTo(sockets, { as: "socket", foreignKey: "socket_id"});
  sockets.hasMany(processors, { as: "processors", foreignKey: "socket_id"});
  cooling.belongsTo(type_cooling, { as: "type_cooling", foreignKey: "type_cooling_id"});
  type_cooling.hasMany(cooling, { as: "coolings", foreignKey: "type_cooling_id"});

  videocards.belongsTo(types_capacity, { as: "type_capacity", foreignKey: "type_capacity_id"});
  types_capacity.hasMany(videocards, { as: "videocards", foreignKey: "type_capacity_id"});
  motherboards.belongsTo(types_ram, { as: "type_ram", foreignKey: "type_ram_id"});
  types_ram.hasMany(motherboards, { as: "motherboards", foreignKey: "type_ram_id"});
  rams.belongsTo(types_ram, { as: "type_ram", foreignKey: "type_ram_id"});
  types_ram.hasMany(rams, { as: "rams", foreignKey: "type_ram_id"});
  videocards.belongsTo(videochipsets, { as: "videochipset", foreignKey: "videochipset_id"});
  videochipsets.hasMany(videocards, { as: "videocards", foreignKey: "videochipset_id"});

  return {
    brand,
    chipsets,
    cooling,
    cooling_socket,
    form_factors,
    interfaces,
    letters,
    motherboards,
    power_supplies,
    proc_let,
    proc_types,
    processors,
    ps_certificates,
    rams,
    sockets,
    type_cooling,
    types,
    types_capacity,
    types_ram,
    videocards,
    videochipsets,
  };
}

export {initModels}
export default initModels
