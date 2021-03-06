#' @title DIDparams
#'
#' @description Object to hold did parameters that are passed across functions
#'
#' @inheritParams att_gt
#' @param n The number of observations.  This is equal to the
#'  number of units (which may be different from the number
#'  of rows in a panel dataset).
#' @param nG The number of groups
#' @param nT The number of time periods
#' @param tlist a vector containing each time period
#' @param glist a vector containing each group
#' @param true_repeated_cross_sections Whether or not the data really
#'  is repeated cross sections.  (We include this because unbalanced
#'  panel code runs through the repeated cross sections code)
#'
#' @export
DIDparams <- function(yname, 
                   tname,
                   idname=NULL,
                   gname,
                   xformla=NULL,
                   data,
                   control_group,
                   weightsname=NULL,
                   alp=0.05,
                   bstrap=T,
                   biters=1000,
                   clustervars=NULL,
                   cband=T,
                   print_details=TRUE,
                   pl=FALSE,
                   cores=1,
                   est_method="dr",
                   panel=TRUE,
                   true_repeated_cross_sections,
                   n=NULL,
                   nG=NULL,
                   nT=NULL,
                   tlist=NULL,
                   glist=NULL) {

  out <- list(yname=yname,
              tname=tname,
              idname=idname,
              gname=gname,
              xformla=xformla,
              data=data,
              control_group=control_group,
              weightsname=weightsname,
              alp=alp,
              bstrap=bstrap,
              biters=biters,
              clustervars=clustervars,
              cband=cband,
              print_details=print_details,
              pl=pl,
              cores=cores,
              est_method=est_method,
              panel=panel,
              true_repeated_cross_sections=true_repeated_cross_sections,
              n=n,
              nG=nG,
              nT=nT,
              tlist=tlist,
              glist=glist)
  class(out) <- "DIDparams"
  out
}
