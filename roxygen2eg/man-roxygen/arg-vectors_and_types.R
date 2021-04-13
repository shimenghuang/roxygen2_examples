<% eval_str <- function(str) {eval.parent(parse(text=str))} %>
<% eval_str(paste("pns <-", param_names)) %>
<% eval_str(paste("pts <-", param_types)) %>
<% mapply(function(pn, pt) {cat(paste("#' @param", pn, "A vector of type", pt), fill = TRUE)}, pns, pts, USE.NAMES = FALSE) %>
