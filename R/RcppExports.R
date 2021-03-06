# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' bpp_solver_dpp_wrapper
#'
#' @description
#'
#'  a wrapper over bpp_solver_dpp and expose an nicer r interface
#'
#' @param it <data.frame>
#'
#'  it order itemSKU list
#'
#'  - oid: order id <integer>
#'
#'  - sku: stock keeping unit - it id <character>
#'
#'  - l, d, h, w it scale along x, y, z and w <numeric>
#'
#'  - w will be used as constraint while l, d, h will be used as both constraint and objective
#'
#'  it must be sorted w.r.t oid
#'
#' @param bn <data.frame>
#'
#'  bn a bin list
#'
#'  - id: bin id <character>
#'
#'  - l, d, h, w bn scale along x, y, z and w <numeric>
#'
#'  bn must be sorted w.r.t preference and have l >= d >= h
#'
#' @return sn <list>
#'
#'  sn solution - it order itemSKU list with tid, bid, and x, y, z <data.frame>
#'
#'  - oid: order id inherited from it <character>
#'
#'  - tid: ticket id implied one order can be packed using several ticket id <character>
#'
#'    each ticket id corresponding to a bid bin id which indicates which bin to use for packing
#'
#'  - bid: bin id which bn in bn list should be used in pakcing <character>
#'
#'  - sku: stock keeping unit it id <character>
#'
#'  - x, y, z it position in the bin <numeric>
#'
#'  - l, d, h it scale along x, y, z <numeric>
#'
#'    l, d, h is not inherited from it as it can be rotated to different orientation for packing
#'
#'  - w it weight scale inherited from it <numeric>
#'
#' @family bpp_solver_dpp
#' @export
bpp_solver_dpp_wrapper <- function(it, bn) {
    .Call('gbp_bpp_solver_dpp_wrapper', PACKAGE = 'gbp', it, bn)
}

#' gbp2d_solver_dpp_prep_create_p
#' @description
#'  auxilium of gbp2d_solver_dpp
#' @details
#'  create p via ld and m via cluster max(l, d) and min(l, d) strategy
#' @param ld 2xN matrix of l, d of it
#' @param m 2x1 vector of l, d of bn
#' @return p
#' @family gbp2d_solver_dpp
#' @export
gbp2d_solver_dpp_prep_create_p <- function(ld, m) {
    .Call('gbp_gbp2d_solver_dpp_prep_create_p', PACKAGE = 'gbp', ld, m)
}

#' gbp3d_solver_dpp_prep_create_p
#' @description
#'  auxilium of gbp3d_solver_dpp
#' @details
#'  create p via ldh and m via cluster max(l, d, h) and area strategy
#' @param ldh 3xN matrix of l, d, h of it
#' @param m 3x1 vector of l, d, h of bn
#' @return p
#' @family gbp3d_solver_dpp
#' @export
gbp3d_solver_dpp_prep_create_p <- function(ldh, m) {
    .Call('gbp_gbp3d_solver_dpp_prep_create_p', PACKAGE = 'gbp', ldh, m)
}

#' gbp4d_solver_dpp_prep_create_p
#' @description
#'  auxilium of gbp4d_solver_dpp
#' @details
#'  create p via ldhw and m via cluster w, cluster max(l, d, h) and area strategy
#' @param ldhw 4xN matrix of l, d, h, w of it
#' @param m 4x1 vector of l, d, h, w of bn
#' @return p
#' @family gbp4d_solver_dpp
#' @export
gbp4d_solver_dpp_prep_create_p <- function(ldhw, m) {
    .Call('gbp_gbp4d_solver_dpp_prep_create_p', PACKAGE = 'gbp', ldhw, m)
}

