(function () {
    var f = !0, h = null, i = !1, aa = function (a, b, c) {return a.call.apply(a.bind, arguments)}, ba = function (a, b, c) {
        if (!a)throw Error();
        if (2 < arguments.length) {
            var d = Array.prototype.slice.call(arguments, 2);
            return function () {
                var c = Array.prototype.slice.call(arguments);
                Array.prototype.unshift.apply(c, d);
                return a.apply(b, c)
            }
        }
        return function () {return a.apply(b, arguments)}
    }, j = function (a, b, c) {
        j = Function.prototype.bind && -1 != Function.prototype.bind.toString().indexOf("native code") ? aa : ba;
        return j.apply(h, arguments)
    };
    var k = (new Date).getTime();
    var ca = /&/g, da = /</g, ea = />/g, fa = /\"/g, l = {"\x00": "\\0", "\b": "\\b", "\f": "\\f", "\n": "\\n", "\r": "\\r", "\t": "\\t", "\x0B": "\\x0B", '"': '\\"', "\\": "\\\\"}, p = {"'": "\\'"};
    var q = window, s, ga = h, t = document.getElementsByTagName("script");
    t && t.length && (ga = t[t.length - 1].parentNode);
    s = ga;
    var u = function (a) {
        a = parseFloat(a);
        return isNaN(a) || 1 < a || 0 > a ? 0 : a
    }, ha = /^([\w-]+\.)*([\w-]{2,})(\:[0-9]+)?$/, ia = function (a) {return!a ? "pagead2.googlesyndication.com" : (a = a.match(ha)) ? a[0] : "pagead2.googlesyndication.com"};
    var v = function () {return ia("")};
    v();
    var x = function (a) {return!!a && "function" == typeof a && !!a.call}, ja = function (a, b) {if (!(2 > arguments.length))for (var c = 1, d = arguments.length; c < d; ++c)a.push(arguments[c])};

    function y(a) {return"function" == typeof encodeURIComponent ? encodeURIComponent(a) : escape(a)}

    var z = function (a, b) {
        if (!(1E-4 > Math.random())) {
            var c = Math.random();
            if (c < b)return a[Math.floor(c / b * a.length)]
        }
        return h
    }, A = function (a) {
        try {return!!a.location.href || "" === a.location.href}
        catch (b) {return i}
    };
    var B = h, ka = function () {
        if (!B) {
            for (var a = window, b = a, c = 0; a != a.parent;)if (a = a.parent, c++, A(a))b = a;
            else break;
            B = b
        }
        return B
    };
    var C, D = function (a) {
        this.c = [];
        this.a = a || window;
        this.b = 0;
        this.d = h
    }, la = function (a, b) {
        this.l = a;
        this.i = b
    };
    D.prototype.n = function (a, b) {0 == this.b && 0 == this.c.length && (!b || b == window) ? (this.b = 2, this.g(new la(a, window))) : this.h(a, b)};
    D.prototype.h = function (a, b) {
        this.c.push(new la(a, b || this.a));
        E(this)
    };
    D.prototype.o = function (a) {
        this.b = 1;
        a && (this.d = this.a.setTimeout(j(this.f, this), a))
    };
    D.prototype.f = function () {
        1 == this.b && (this.d != h && (this.a.clearTimeout(this.d), this.d = h), this.b = 0);
        E(this)
    };
    D.prototype.p = function () {return f};
    D.prototype.nq = D.prototype.n;
    D.prototype.nqa = D.prototype.h;
    D.prototype.al = D.prototype.o;
    D.prototype.rl = D.prototype.f;
    D.prototype.sz = D.prototype.p;
    var E = function (a) {a.a.setTimeout(j(a.m, a), 0)};
    D.prototype.m = function () {
        if (0 == this.b && this.c.length) {
            var a = this.c.shift();
            this.b = 2;
            a.i.setTimeout(j(this.g, this, a), 0);
            E(this)
        }
    };
    D.prototype.g = function (a) {
        this.b = 0;
        a.l()
    };
    var ma = function (a) {
        try {return a.sz()}
        catch (b) {return i}
    }, na = function (a) {return!!a && ("object" == typeof a || "function" == typeof a) && ma(a) && x(a.nq) && x(a.nqa) && x(a.al) && x(a.rl)}, F = function () {
        if (C && ma(C))return C;
        var a = ka(), b = a.google_jobrunner;
        return na(b) ? C = b : a.google_jobrunner = C = new D(a)
    }, oa = function (a, b) {F().nq(a, b)}, pa = function (a, b) {F().nqa(a, b)};
    var qa = /MSIE [2-7]|PlayStation|Gecko\/20090226/i, ra = /Android|Opera/, sa = function () {
        var a = G, b = K.google_ad_width, c = K.google_ad_height, d = ["<iframe"], e;
        for (e in a)a.hasOwnProperty(e) && ja(d, e + "=" + a[e]);
        d.push('style="left:0;position:absolute;top:0;"');
        d.push("></iframe>");
        b = "border:none;height:" + c + "px;margin:0;padding:0;position:relative;visibility:visible;width:" + b + "px";
        return['<ins style="display:inline-table;', b, '"><ins id="', a.id + "_anchor", '" style="display:block;', b, '">', d.join(" "), "</ins></ins>"].join("")
    };
    var ta = /^true$/.test("false") ? f : i;
    var L = function (a, b, c) {
        c || (c = ta ? "https" : "http");
        return[c, "://", a, b].join("")
    };
    var va = function () {}, M = function (a, b, c) {
        switch (typeof b) {
            case "string":
                wa(b, c);
                break;
            case "number":
                c.push(isFinite(b) && !isNaN(b) ? b : "null");
                break;
            case "boolean":
                c.push(b);
                break;
            case "undefined":
                c.push("null");
                break;
            case "object":
                if (b == h) {
                    c.push("null");
                    break
                }
                if (b instanceof Array) {
                    var d = b.length;
                    c.push("[");
                    for (var e = "", g = 0; g < d; g++)c.push(e), M(a, b[g], c), e = ",";
                    c.push("]");
                    break
                }
                c.push("{");
                d = "";
                for (e in b)b.hasOwnProperty(e) && (g = b[e], "function" != typeof g && (c.push(d), wa(e, c), c.push(":"), M(a, g, c), d = ","));
                c.push("}");
                break;
            case "function":
                break;
            default:
                throw Error("Unknown type: " + typeof b);
        }
    }, N = {'"': '\\"', "\\": "\\\\", "/": "\\/", "\b": "\\b", "\f": "\\f", "\n": "\\n", "\r": "\\r", "\t": "\\t", "\x0B": "\\u000b"}, xa = /\uffff/.test("\uffff") ? /[\\\"\x00-\x1f\x7f-\uffff]/g : /[\\\"\x00-\x1f\x7f-\xff]/g, wa = function (a, b) {
        b.push('"');
        b.push(a.replace(xa, function (a) {
            if (a in N)return N[a];
            var b = a.charCodeAt(0), e = "\\u";
            16 > b ? e += "000" : 256 > b ? e += "00" : 4096 > b && (e += "0");
            return N[a] = e + b.toString(16)
        }));
        b.push('"')
    };
    var O = "google_ad_block google_ad_channel google_ad_client google_ad_format google_ad_height google_ad_host google_ad_host_channel google_ad_host_tier_id google_ad_output google_ad_override google_ad_region google_ad_section google_ad_slot google_ad_type google_ad_width google_adtest google_allow_expandable_ads google_alternate_ad_url google_alternate_color google_analytics_domain_name google_analytics_uacct google_bid google_city google_color_bg google_color_border google_color_line google_color_link google_color_text google_color_url google_container_id google_contents google_country google_cpm google_ctr_threshold google_cust_age google_cust_ch google_cust_gender google_cust_id google_cust_interests google_cust_job google_cust_l google_cust_lh google_cust_u_url google_disable_video_autoplay google_ed google_eids google_enable_ose google_encoding google_font_face google_font_size google_frame_id google_gl google_hints google_image_size google_kw google_kw_type google_language google_loeid google_max_num_ads google_max_radlink_len google_mtl google_num_radlinks google_num_radlinks_per_unit google_num_slots_to_rotate google_only_ads_with_video google_only_pyv_ads google_only_userchoice_ads google_override_format google_page_url google_previous_watch google_previous_searches google_referrer_url google_region google_reuse_colors google_rl_dest_url google_rl_filtering google_rl_mode google_rt google_safe google_scs google_skip google_tag_info google_targeting google_tdsma google_tfs google_tl google_ui_features google_ui_version google_video_doc_id google_video_product_type google_with_pyv_ads google_yt_pt google_yt_up".split(" ");
    var P = function (a) {
        this.a = a;
        a.google_iframe_oncopy || (a.google_iframe_oncopy = {handlers: {}, log: [], shouldLog: 0.01 > Math.random() ? f : i});
        this.e = a.google_iframe_oncopy;
        a.setTimeout(j(this.k, this), 3E4)
    }, ya;
    var Q = "var i=this.id,s=window.google_iframe_oncopy,H=s&&s.handlers,h=H&&H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&&d&&(!d.body||!d.body.firstChild)){if(h.call){i+='.call';setTimeout(h,0)}else if(h.match){i+='.nav';w.location.replace(h)}s.log&&s.log.push(i)}";
    /[&<>\"]/.test(Q) && (-1 != Q.indexOf("&") && (Q = Q.replace(ca, "&amp;")), -1 != Q.indexOf("<") && (Q = Q.replace(da, "&lt;")), -1 != Q.indexOf(">") && (Q = Q.replace(ea, "&gt;")), -1 != Q.indexOf('"') && (Q = Q.replace(fa, "&quot;")));
    ya = Q;
    P.prototype.set = function (a, b) {
        this.e.handlers[a] = b;
        this.a.addEventListener && this.a.addEventListener("load", j(this.j, this, a), i)
    };
    P.prototype.j = function (a) {
        var a = this.a.document.getElementById(a), b = a.contentWindow.document;
        if (a.onload && b && (!b.body || !b.body.firstChild))a.onload()
    };
    P.prototype.k = function () {
        if (this.e.shouldLog) {
            var a = this.e.log, b = this.a.document;
            if (a.length) {
                b = ["/pagead/gen_204?id=iframecopy&log=", y(a.join("-")), "&url=", y(b.URL.substring(0, 512)), "&ref=", y(b.referrer.substring(0, 512))].join("");
                a.length = 0;
                a = this.a;
                b = L(ia(""), b);
                a.google_image_requests || (a.google_image_requests = []);
                var c = a.document.createElement("img");
                c.src = b;
                a.google_image_requests.push(c)
            }
        }
    };
    var za = function () {
        var a = "script";
        return["<", a, ' src="', L(v(), "/pagead/js/r20120829/r20120730/show_ads_impl.js", ""), '"></', a, ">"].join("")
    }, Aa = function () {
        var a = "script";
        return["<", a, ' src="', L(v(), "/pagead/expansion_embed.js"), '"></', a, ">"].join("")
    }, Ba = function (a) {
        var b;
        if (!(b = "expt" != a.google_expand_experiment))a:{
            var c = a.document;
            try {
                if (a.google_allow_expandable_ads ===
                    i || !c.body || a.google_ad_output && "html" != a.google_ad_output || isNaN(a.google_ad_height) || isNaN(a.google_ad_width) || c.domain != a.location.hostname) {
                    b = f;
                    break a
                }
            }
            catch (d) {
                b = f;
                break a
            }
            b = i
        }
        return b ? i : f
    }, Ca = function (a, b, c, d) {
        return function () {
            var e = i;
            d && F().al(3E4);
            try {
                if (A(a.document.getElementById(b).contentWindow)) {
                    var g = a.document.getElementById(b).contentWindow, o = g.document;
                    if (!o.body || !o.body.firstChild)o.open(), g.google_async_iframe_close = f, o.write(c)
                }
                else {
                    var H = a.document.getElementById(b).contentWindow,
                        Y;
                    g = c;
                    g = String(g);
                    if (g.quote)Y = g.quote();
                    else {
                        for (var o = ['"'], I = 0; I < g.length; I++) {
                            var J = g.charAt(I), ua = J.charCodeAt(0), Za = o, $a = I + 1, Z;
                            if (!(Z = l[J])) {
                                var w;
                                if (31 < ua && 127 > ua)w = J;
                                else {
                                    var n = J;
                                    if (n in p)w = p[n];
                                    else if (n in l)w = p[n] = l[n];
                                    else {
                                        var m = n, r = n.charCodeAt(0);
                                        if (31 < r && 127 > r)m = n;
                                        else {
                                            if (256 > r) {if (m = "\\x", 16 > r || 256 < r)m += "0"}
                                            else m = "\\u", 4096 > r && (m += "0");
                                            m += r.toString(16).toUpperCase()
                                        }
                                        w = p[n] = m
                                    }
                                }
                                Z = w
                            }
                            Za[$a] = Z
                        }
                        o.push('"');
                        Y = o.join("")
                    }
                    H.location.replace("javascript:" + Y)
                }
                e = f
            }
            catch (kb) {
                H = ka().google_jobrunner,
                    na(H) && H.rl()
            }
            e && (new P(a)).set(b, Ca(a, b, c, i))
        }
    }, Da = function () {
        var a = R.google_adk_experiment;
        if ("control" == a)return"control";
        if ("expt" == a) {
            var a = window.google_ad_output, b = window.google_ad_format;
            if (!b && ("html" == a || a == h))b = window.google_ad_width + "x" + window.google_ad_height;
            b = b && (!window.google_ad_slot || window.google_override_format) ? b.toLowerCase() : "";
            window.google_ad_format = b;
            a = [q.google_ad_slot, q.google_ad_format, q.google_ad_type, q.google_ad_width, q.google_ad_height];
            if (s) {
                if (s) {
                    for (var b = [], c = 0,
                             d = s; d && 25 > c; d = d.parentNode, ++c)b.push(9 != d.nodeType && d.id || "");
                    b = b.join()
                }
                else b = "";
                b && a.push(b)
            }
            b = 0;
            if (a)if (a = a.join(":"), b = a.length, 0 == b)b = 0;
            else {
                c = 305419896;
                for (d = 0; d < b; d++)c ^= (c << 5) + (c >> 2) + a.charCodeAt(d) & 4294967295;
                b = 0 < c ? c : 4294967296 + c
            }
            return b.toString()
        }
        return h
    }, Ea = Math.floor(1E6 * Math.random()), Fa = function (a) {
        for (var a = a.data.split("\n"), b = {}, c = 0; c < a.length; c++) {
            var d = a[c].indexOf("=");
            -1 != d && (b[a[c].substr(0, d)] = a[c].substr(d + 1))
        }
        b[1] == Ea && (window.google_top_url = b[3])
    };
    var Ga = u("0.001"), Ha = u("0.001"), Ia = u("0.001");
    window.google_loader_used = f;
    var S = window;
    if (!("google_onload_fired"in S)) {
        S.google_onload_fired = i;
        var Ja = function () {S.google_onload_fired = f};
        S.addEventListener ? S.addEventListener("load", Ja, i) : S.attachEvent && S.attachEvent("onload", Ja)
    }
    var T = window, Ka = 2;
    try {T.top.document == T.document ? Ka = 0 : A(T.top) && (Ka = 1)}
    catch (La) {}
    if (2 === Ka && top.postMessage && !window.google_top_experiment && (window.google_top_experiment = z(["jp_e", "jp_c"], Ia), "jp_e" === window.google_top_experiment)) {
        var U = window;
        U.addEventListener ? U.addEventListener("message", Fa, i) : U.attachEvent && U.attachEvent("onmessage", Fa);
        var Ma = {"0": "google_loc_request", 1: Ea}, Na = [], Oa;
        for (Oa in Ma)Na.push(Oa + "=" + Ma[Oa]);
        top.postMessage(Na.join("\n"), "*")
    }
    window.google_adk_experiment || (window.google_adk_experiment = z(["expt", "control"], Ga) || "none");
    window.google_expand_experiment || (window.google_expand_experiment = z(["expt", "control"], Ha) || "none");
    var Pa;
    if (window.google_enable_async === i)Pa = 0;
    else {
        var Qa = navigator.userAgent;
        Pa = (qa.test(Qa) || ra.test(Qa) ? i : f) && !window.google_container_id && (!window.google_ad_output || "html" == window.google_ad_output)
    }
    if (Pa) {
        var Ra = window;
        Ra.google_unique_id ? ++Ra.google_unique_id : Ra.google_unique_id = 1;
        var V = window;
        if (!V.google_slot_list || !V.google_slot_list.push)V.google_slot_list = [];
        V.google_slot_list.push([V.google_ad_slot || "", V.google_ad_format || "", V.google_ad_width || "", V.google_ad_height || ""].join("."));
        for (var R = window, _script$$inline_96 = "script", W, K = R, G = {allowtransparency: '"true"', frameborder: '"0"', height: '"' + R.google_ad_height + '"', hspace: '"0"', marginwidth: '"0"', marginheight: '"0"', onload: '"' + ya + '"', scrolling: '"no"',
            vspace: '"0"', width: '"' + R.google_ad_width + '"'}, Sa = K.document, X = G.id, Ta = 0; !X || K.document.getElementById(X);)X = "aswift_" + Ta++;
        G.id = X;
        G.name = X;
        Sa.write(sa());
        W = X;
        var Ua, $ = R;
        $.google_page_url && ($.google_page_url = String($.google_page_url));
        for (var Va = [], Wa = 0, Xa = O.length; Wa < Xa; Wa++) {
            var Ya = O[Wa];
            if ($[Ya] != h) {
                var ab;
                try {
                    var bb = [];
                    M(new va, $[Ya], bb);
                    ab = bb.join("")
                }
                catch (cb) {}
                ab && ja(Va, Ya, "=", ab, ";")
            }
        }
        Ua = Va.join("");
        for (var db = Da(), eb = R, fb = 0, gb = O.length; fb < gb; fb++)eb[O[fb]] = h;
        var hb = (new Date).getTime(), ib =
            R.google_top_experiment, jb = R.google_expand_experiment, lb = "";
        Ba(R) && (lb = Aa());
        var mb = ["<!doctype html><html><body><", _script$$inline_96, ">", Ua, "google_show_ads_impl=true;google_unique_id=", R.google_unique_id, ';google_async_iframe_id="', W, '";google_start_time=', k, ";", ib ? 'google_top_experiment="' + ib + '";' : "", db ? 'google_adk_sa="' + db + '";' : "", jb ? 'google_expand_experiment="' + jb + '";' : "", "google_bpp=", hb > k ? hb - k : 1, ";</", _script$$inline_96, ">", lb, za(), "</body></html>"].join("");
        (R.document.getElementById(W) ?
            oa : pa)(Ca(R, W, mb, f))
    }
    else window.q = k, !("object" == typeof ExpandableAdSlotFactory && "function" == typeof ExpandableAdSlotFactory.createIframe) && Ba(window) && document.write(Aa()), document.write(za());
})();
