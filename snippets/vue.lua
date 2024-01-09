---@diagnostic disable: undefined-global
local function copyForMongo(args)
    print(args[1]);
    return args[1];
end
return {
    s("gqlRepeticionVariable", {
        i(1), t(": "), t("$"), f(copyForMongo, 1), i(0)
    }),
    s("apolloCheck", {
        t({ "if(!apollo){", "\t" }),
        t({ "console.log('No apollo');", "\t" }),
        t({ "return;", "\t" }),
        t({ "}", "\t" })
    }),
    s('apolloOperacion', {
        t("apollo."), i(1, "query"), t({ "({", "\t" }),
        i(2, "query"),t(": "), i(3, "doc"), t(","), t({"", "\t"}),
        t("variables:{"), t({"", "\t"}),
        i(4), t({"", "\t"}),
        t("}"), t({"", "\t"}),
        t("})"), t(".then(({data:{"), i(5), t("}})=>{"), t({"", "\t"}),
        i(6), t({"", "\t"}),
        t("}).catch(error=>{"), t({"", "\t"}),
        t("console.log(`Error: ${error}`);"), t({"", "\t"}),
        t("});"), t({"", "\t"}),
        i(0)

    })
}
