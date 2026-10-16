*table 4.3.1, summary statistics
sum phy agedep popgr urbanpopulationoftotalpopulation le imr kof gdppc ss

*table 4.3.2, correlation matrix*
correlate le imr gdppc ss urbanpopulationoftotalpopulation kof phy agedep popgr

*simple reg for life expectancy*
reg le gdppc ss kof urbanpopulationoftotalpopulation popgr agedep phy

*store reg*
estimate store reg

*table 4.4.1(a), link test for life expectancy*
linktest

*simple reg for infant mortality rate*
reg le gdppc ss kof urbanpopulationoftotalpopulation popgr agedep phy

*store reg*
estimate store reg
*table 4.4.1(b), link test for infant mortality rate*
linktest

*simple reg for life expectancy*
reg le gdppc ss kof urbanpopulationoftotalpopulation popgr agedep phy

*store results for reg*
estimate store reg

*table 4.4.2.1(a), multicollinearity test for life expectancy*
vif

*simple reg for infant mortality rate*
reg imr gdppc ss kof urbanpopulationoftotalpopulation popgr agedep phy
*store results for reg*

*table 4.4.2.1(b), multicollinearity test for infant mortality rate*
vif

*table 4.4.3, heteroscedasticity test*
 hettest
 
 *table 5.1.1, OLS for life expectancy and infant mortality rate (overall globalization, social globalization, economic globalization and political globalization*
 reg le gdppc ss kof urbanpopulationoftotalpopulation
 reg imr gdppc ss kof urbanpopulationoftotalpopulation
reg le gdppc ss kofsoc urbanpopulationoftotalpopulation
 reg imr gdppc ss kofsoc urbanpopulationoftotalpopulation
 reg le gdppc ss kofec urbanpopulationoftotalpopulation
 reg imr gdppc ss kofec urbanpopulationoftotalpopulation
 reg le gdppc ss kofpol urbanpopulationoftotalpopulation
 reg imr gdppc ss kofpol urbanpopulationoftotalpopulation
 
 
 *table 5.1.3, OLS for defacto globalization on life expectancy and mortality rate 
 reg le gdppc ss kofdf urbanpopulationoftotalpopulation
 reg imr gdppc ss kofdf urbanpopulationoftotalpopulation
  
 *table 5.1.4, OLS for dejure globalization on life expectancy and mortality rate*
 reg imr gdppc ss kofdj urbanpopulationoftotalpopulation
 reg le gdppc ss kofdj urbanpopulationoftotalpopulation
 
*table 5.2.1, fixed and random effects for life expectancy*
 xtreg le gdppc ss kof urbanpopulationoftotalpopulation, fe
 xtreg le gdppc ss kofsoc urbanpopulationoftotalpopulation, fe
 xtreg le gdppc ss kofec urbanpopulationoftotalpopulation, fe
 xtreg le gdppc ss kofpol urbanpopulationoftotalpopulation, fe
 xtreg le gdppc ss kof urbanpopulationoftotalpopulation, re
 xtreg le gdppc ss kofsoc urbanpopulationoftotalpopulation, re
 xtreg le gdppc ss kofec urbanpopulationoftotalpopulation, re
 xtreg le gdppc ss kofpol urbanpopulationoftotalpopulation, re
 
 *table 5.2.2, fixed and random effects for infant mortality rate*
 xtreg imr gdppc ss kof urbanpopulationoftotalpopulation, fe
 xtreg imr gdppc ss kofsoc urbanpopulationoftotalpopulation, fe
 xtreg imr gdppc ss kofec urbanpopulationoftotalpopulation, fe
 xtreg imr gdppc ss kofpol urbanpopulationoftotalpopulation, fe
 xtreg imr gdppc ss kof urbanpopulationoftotalpopulation, re
 xtreg imr gdppc ss kofsoc urbanpopulationoftotalpopulation, re
 xtreg imr gdppc ss kofec urbanpopulationoftotalpopulation, re
 xtreg imr gdppc ss kofpol urbanpopulationoftotalpopulation, re
 
 *Table 5.2.3, fixed and random effects for defacto globalization on life expectancy and infant mortality rate*
 xtreg le gdppc ss kofdf urbanpopulationoftotalpopulation, fe
 xtreg imr gdppc ss kofdf urbanpopulationoftotalpopulation, fe
 xtreg le gdppc ss kofdf urbanpopulationoftotalpopulation, re
 xtreg imr gdppc ss kofdf urbanpopulationoftotalpopulation, re
 
 *tabel 5.2.4, fixed and random effects for dejure globalization on life expectancy and infant mortality rate*
 xtreg le gdppc ss kofdj urbanpopulationoftotalpopulation, fe
 xtreg imr gdppc ss kofdj urbanpopulationoftotalpopulation, fe
 xtreg le gdppc ss kofdj urbanpopulationoftotalpopulation, re
 xtreg imr gdppc ss kofdj urbanpopulationoftotalpopulation, re
 
 *table 5.4.1, sensitivity analysis for life expectany and infant mortality rate*
 reg le gdppc ss kof urbanpopulationoftotalpopulation
 reg le gdppc ss kof urbanpopulationoftotalpopulation phy
 reg le gdppc ss kof urbanpopulationoftotalpopulation agedep
 reg le gdppc ss kof urbanpopulationoftotalpopulation popgr
 reg imr gdppc ss kof urbanpopulationoftotalpopulation
 reg imr gdppc ss kof urbanpopulationoftotalpopulation phy
 reg imr gdppc ss kof urbanpopulationoftotalpopulation agedep
 reg imr gdppc ss kof urbanpopulationoftotalpopulation popgr
 
 *table 5.4.2, sensitivity analysis for le and imr (defacto)*
 reg le gdppc ss kofdf urbanpopulationoftotalpopulation
 reg le gdppc ss kofdf urbanpopulationoftotalpopulation phy
 reg le gdppc ss kofdf urbanpopulationoftotalpopulation agedep
 reg le gdppc ss kofdf urbanpopulationoftotalpopulation popgr
 reg imr gdppc ss kofdf urbanpopulationoftotalpopulation
 reg imr gdppc ss kofdf urbanpopulationoftotalpopulation phy
 reg imr gdppc ss kofdf urbanpopulationoftotalpopulation agedep
 reg imr gdppc ss kofdf urbanpopulationoftotalpopulation popgr
 
 *table 5.4.3, sensitivity analysis for le and imr (dejure)*
 reg le gdppc ss kofdj urbanpopulationoftotalpopulation
 reg le gdppc ss kofdj urbanpopulationoftotalpopulation phy
 reg le gdppc ss kofdj urbanpopulationoftotalpopulation agedep
 reg le gdppc ss kofdj urbanpopulationoftotalpopulation popgr
 reg imr gdppc ss kofdj urbanpopulationoftotalpopulation
 reg imr gdppc ss kofdj urbanpopulationoftotalpopulation phy
 reg imr gdppc ss kofdj urbanpopulationoftotalpopulation agedep
 reg imr gdppc ss kofdj urbanpopulationoftotalpopulation popgr
