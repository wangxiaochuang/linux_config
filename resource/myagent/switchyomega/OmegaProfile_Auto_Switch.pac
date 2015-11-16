var FindProxyForURL = function(init, profiles) {
    return function(url, host) {
        "use strict";
        var result = init, scheme = url.substr(0, url.indexOf(":"));
        do {
            result = profiles[result];
            if (typeof result === "function") result = result(url, host, scheme);
        } while (typeof result !== "string" || result.charCodeAt(0) === 43);
        return result;
    };
}("+Auto Switch", {
    "+Auto Switch": function(url, host, scheme) {
        "use strict";
        if (/(?:^|\.)flite\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)crypto-js\.googlecode\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)eloqua\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)facebook\.net$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)ggpht\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)content\.googleapis\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)youtube-nocookie\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)doubleclick\.net$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)googlevideo\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)ilovecandy\.ml$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)gwdg\.de$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)iqq-java\.googlecode\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)minus\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)linux\.cn$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)github-camo\.global\.ssl\.fastly\.net$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)google\.com\.hk$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)tecmint\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)twitter\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)translate\.googleapis\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)sourceforge\.net$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)gravatar\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)ajax\.googleapis\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)googleusercontent\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)akamaihd\.net$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)fbcdn\.net$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)facebook\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)youtube\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)ytimg\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)gstatic\.com$/.test(host)) return "+Example Profile";
        if (/(?:^|\.)google\.com$/.test(host)) return "+Example Profile";
        return "+__ruleListOf_Auto Switch";
    },
    "+__ruleListOf_Auto Switch": "DIRECT",
    "+Example Profile": function(url, host, scheme) {
        "use strict";
        if (host === "[::1]" || host === "localhost" || host === "127.0.0.1") return "DIRECT";
        return "PROXY 127.0.0.1:8087";
    }
});