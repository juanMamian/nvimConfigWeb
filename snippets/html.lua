---@diagnostic disable: undefined-global
local function copyArg(args)
    print(args[1]);
    return args[1];
end

return {
    s({ trig = 'asdf%d', regTrig = true }, { t("A Number!!") }),
    s("bloque-component", {
        t("<bloque-component tipo='"), i(1), t("'>"), t({ "", "\t" }),
        t("<template #cabecera>"), t({ "", "\t" }),
        i(2), t({ "", "\t" }),
        t("</template>"), t({ "", "\t" }),
        i(3), t({ "", "\t" }),
        t("</bloque-component>"), t({ "", "\t" }),
    }),
    s("recuadro-component", {
        t("<recuadro-component tipo='"), i(1), t("'>"), t({ "", "\t" }),
        i(2), t({ "", "\t" }),
        t("</recuadro-component>"), t({ "", "\t" }),
    }),
    s('useEvaluacionNodo', {
        t('const ') ,t('{'), t('versionReto:'), i(1, 'NAME'), t('VersionReto'), t(','), t('reto:'), f(copyArg, 1), t('Reto'), t(','),
        t('reiniciarReto:'), f(copyArg, 1), t('ReiniciarReto'), t(','), t('generarReto:'), f(copyArg, 1), t(
        'GenerarReto'), t(','), t('respuesta:'), f(copyArg, 1), t('Respuesta'), t(','), t('respuestaUsuarioCorrecta:'), f(
        copyArg, 1), t('RespuestaUsuarioCorrecta'), t(','), t('versionRespuestaUsuario:'), f(copyArg, 1), t(
        'VersionRespuestaUsuario'), t(','), t('inputRespuestaUsuario:'), f(copyArg, 1), t('InputRespuestaUsuario'), t(
        ','),
        t('evaluarRespuestaUsuario:'), f(copyArg, 1), t('EvaluarRespuestaUsuario'), t('}'), t('= useEvaluacionNodo();'),
        t({ '', '\t' }),
        f(copyArg, 1), t('VersionReto'), t(','),
        f(copyArg, 1), t('Reto'), t(','),
        f(copyArg, 1), t('ReiniciarReto'), t(','),
        f(copyArg, 1), t('GenerarReto'), t(','),
        f(copyArg, 1), t('Respuesta'), t(','),
        f(copyArg, 1), t('RespuestaUsuarioCorrecta'), t(','),
        f(copyArg, 1), t('VersionRespuestaUsuario'), t(','),
        f(copyArg, 1), t('InputRespuestaUsuario'), t(','),
        f(copyArg, 1), t('EvaluarRespuestaUsuario')

    }),
    s('unboton', {
        t('<button '), t(' class="boton">'), t({ '', '\t' }),
        i(1), t({ '', '\t' }),
        t('</button>'),
        i(0),
    }),
    s('infoResultado', {
        t('<transition name="fadeIn" @enter="scrollToElemento">'), t({ '', '\t' }),
        t('<recuadro-component tipo="infoResultado" v-if="'), f(copyArg, 1), t('RespuestaUsuarioCorrecta!=null"  :modo="'),
        i(1), t(
        'RespuestaUsuarioCorrecta?\'correcto\':\'incorrecto\'" :key="'), f(copyArg, 1), t('VersionRespuestaUsuario">'), t({
        '', '\t' }),
        t('</recuadro-component>'), t({ '', '\t' }),
        t('</transition>'),
        i(0),
    }),

}
