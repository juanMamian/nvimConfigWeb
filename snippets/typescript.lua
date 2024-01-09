---@diagnostic disable: undefined-global
local function copyForMongo(args)
    print(args[1]);
    return args[1];
end
return {
    s("errorInterno", {
        t("console.log(`Error "), i(1), t({ ": ${error}`);", "\t" }),
        t("throw new GraphQLError('"), i(2, 'Error conectando con la base de datos'), t("', {extensions: { code: '"),
        i(3, "INTERNAL_SERVER_ERROR"), t({ "'}});", "\t" }),
        i(0)
    }),
    s("errorUsuario", {
        t("console.log(`Error "), i(1), t({ ": ${error}`);", "\t" }),
        t("throw new GraphQLError('"), i(2, 'Error'), t("', {extensions: { code: '"), i(3, "BAD_USER_INPUT"),
        t({ "'}});", "\t" }),
        i(0)
    }),
    s("errorAuth", {
        t("console.log(`Error: "), i(1), t({ "`)", "\t" }),
        t("throw new GraphQLError('"), i(2, 'No autorizado'), t("', {extensions: { code: '"), i(3, "UNAUTHORIZED"),
        t({ "'}});", "\t" }),
        i(0)
    }),
    s("mongoDescargarDocumento", {
        t("let the"), i(1), t({ ";", "\t" }),
        t({ "try{", "\t" }),
        t("the"), f(copyForMongo, 1), t(" = await "), i(2, "Schema"), t(".findById(id"), f(copyForMongo, 1),
        t({ ").exec();", "\t" }),
        t({ "}", "\t" }),
        t({ "catch(error){", "\t" }),
        t("console.log(`Error descargando "), f(copyForMongo, 1), t({ ": ${error}`);", "\t" }),
        t("throw new GraphQLError('"), i(3, 'Error conectando con la base de datos'), t("', {extensions: { code: '"),
        t("INTERNAL_SERVER_ERROR"), t({ "'}});", "\t" }),
        t({ "}", "\t" }),
        t("if(!the"), f(copyForMongo, 1), t({ "){", "\t" }),
        t("console.log(`"), f(copyForMongo, 1), t(" con id ${id"), f(copyForMongo, 1), t({ "} no encontrado`);", "\t" }),
        t("throw new GraphQLError('"), f(copyForMongo, 1), t(" no encontrado', {extensions: { code: '"),
        t({ "BAD_USER_INPUT'}});", "\t" }),
        t({ "}", "\t" }),
        i(0)
    }),
    s("mongoDescargarMuchosDocumentos", {
        t("let the"), i(1), t({ ";", "\t" }),
        t({ "try{", "\t" }),
        t("the"), f(copyForMongo, 1), t(" = await "), i(2, "Schema"), t(".find({"), i(3), t("}).exec()"), t({"", "\t"}),
        t({ "}", "\t" }),
        t({ "catch(error){", "\t" }),
        t("console.log(`Error descargando "), f(copyForMongo, 1), t({ ": ${error}`);", "\t" }),
        t("throw new GraphQLError('"), i(4, 'Error conectando con la base de datos'), t("', {extensions: { code: '"),
        t("INTERNAL_SERVER_ERROR"), t({ "'}});", "\t" }),
        t({ "}", "\t" }),
        i(0)
    }),
    s("mongoSalvarDocumento", {
        t("let final"), i(1), t({ ";", "\t" }),
        t({ "try{", "\t" }),
        t("final"), f(copyForMongo, 1), t(" = await the"), f(copyForMongo, 1), t(".save("),
        t({ ");", "\t" }),
        t({ "}", "\t" }),
        t({ "catch(error){", "\t" }),
        t("console.log(`Error guardando the"), f(copyForMongo, 1), t({ ": ${error}`);", "\t" }),
        t("throw new GraphQLError('"), i(3, 'Error conectando con la base de datos'), t("', {extensions: { code: '"),
        t("INTERNAL_SERVER_ERROR"), t({ "'}});", "\t" }),
        t({ "}", "\t" }),
        i(0)
    }),
    s("gqlRepeticionVariable", {
        i(1), t(": "), t("$"), f(copyForMongo, 1), i(0)
    }),
}
