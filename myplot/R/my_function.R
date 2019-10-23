#' Title
#'
#' @param df
#' @param varx
#' @param vary
#'
#' @return plot
#' @export
#'
#' @importForm ggplot2 ggplot
#' @importFrom ggplot2 geom_boxplot
#'
#' @examples drg.data <- read.csv('DRG_data.csv') drg.data <- drg.data %>% group_by(DRG.Definition) %>% mutate(DRG = strsplit(as.character(DRG.Definition), split = ' ')[[1]][1]) %>% ungroup() my_function(drg.data,'DRG','Average.Medicare.Payments')
#'
my_function<-function(df,varx,vary){
  ggplot(df, aes(x = get(varx), y = get(vary))) +
    scale_y_continuous(trans='log10') +
    geom_boxplot(outlier.shape = NA) +
    theme(axis.text.x = element_text(angle = 90, size = 6, hjust = 1))+
    xlab(varx)+
    ylab(vary)
}
