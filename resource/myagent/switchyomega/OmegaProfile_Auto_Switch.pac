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