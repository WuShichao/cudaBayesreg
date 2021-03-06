\name{premask}
\alias{premask}
\concept{Mask fmri data}
\title{Mask out voxels with constant time-series}
\description{
  \code{premask} 
	applies a pre-defined mask to a fMRI slice in order to select regions of interest (ROIs) for processing
}
\usage{premask(slicedata)}
\arguments{
  \item{slicedata}{list(slicedata).}}
\details{
	Mask out fMRI nifti data as read by cudaBayesreg::read.fmrislice(slice).
	Pixels with constant time series are masked out.
}
\value{
  a list containing
  \item{yn}{voxels values}
  \item{kin}{indices of voxels in mask}
  \item{nreg}{number of regressions}
}
\references{
Adelino Ferreira da Silva (2011). \pkg{cudaBayesregData}: \emph{Data sets for the examples used in the package \pkg{cudaBayesreg}}, R package version	0.3-10.
  URL \url{http://CRAN.R-project.org/package=cudaBayesregData}.

	FSL/FEAT Analysis tool, FMRIB Software Library (FSL). URL \url{www.fmrib.ox.ac.uk/fsl}.
}
\author{A. Ferreira da Silva, Universidade Nova de Lisboa,
	Faculdade de Ciencias e Tecnologia,\cr
	\email{afs@fct.unl.pt}.
}
\seealso{
  \code{\link{cudaMultireg.slice}},
  \code{\link{read.fmrislice}}
}
\examples{
\dontrun{
slicedata <- read.fmrislice(fbase="fmri", slice=3)
ymaskdata <- premask(slicedata)
print(str(ymaskdata))
}}
\keyword{utilities}
