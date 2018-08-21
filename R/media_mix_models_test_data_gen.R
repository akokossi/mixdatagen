# Test Data generator
#
#  1. aggregate marketing mix data
#  2. customer journey data
#


gen_digital_addressable_media_dimension<-function(nChannels=0,modeledEventType="Impressions")
{

}
gen_offline_non_addressable_media_dimension<-function(nChannels=0,modeledEventType="Impressions")
{

}

gen_device_dimension<-function(nDevices=0)
{
  if(nDevices==0){
  dat<-data.frame(device_id=1,device_name="One-device")
  }else{

    dat<-data.frame(device_id=1:nDevice,device_name=paste0("Device", seq(1:nDevices), sep=""))

  }
 return(dat)
}



gen_markets_dimension<-function(nMarkets=0,country)
{
  if(nMarkets==0){
    dat<-data.frame(country=country,market_id=1,market_name="One-market")
  }else{

    dat<-data.frame(country=rep(country,nMarkets),market_id=1:nMarkets,market_name=paste0("Market", seq(1:nMarkets), sep=""))

  }
  return(dat)
}

gen_conversion_events_dimension<-function(nConversionEvents=0)
{
  if(nConversionEvents==0){
    dat<-data.frame(conversion_event_id=1,conversion_event_name="One-Conversion Event")
  }else{

    dat<-data.frame(conversion_event_id=1:nConversionEvents,conversion_event_name=paste0("Conversion event ", seq(1:nConversionEvents), sep=""))

  }
  return(dat)
}



gen_agg_dates_dimension<-function(nDays,nMarkets,startDate)
{
  # determine demand seasonality
  # output:
  #
  #   marketid:
  #   date
  #   demand_seasonindex <- probability of demand by day
  #
}

gen_agg_execution_schedule<-function(nDays,nMarkets,nChannels,startDate)
{ # determine paid marketing executions by day
  # output:
  #
  #   marketid:
  #   date
  #   paid mkg channel id
  #   executions_weight <- probability of executing in market and day
  #
}

gen_conversion_method<-function()
{


}


gen_journey_by_market_dist<-function(nConversionEvents,nMarkets,localNMarkets=2)
{

}



gen_one_journey<-function(marketIndexSet,
                          nChannels,nDevices,startdate,nDays,avg_journeystep)
{
  # uniform distribution for device
  #uniform distribution for channel event
  # unit form distribution for channel event type (click or impression)
  # probability of staying in same market=0.90%
  # path length beta distrinbution skewed to the left



}


generate_journey_data<-function(accountid,country,njourneys,nMarkets,
                                nChannels,nDevices,startdate,nDays,avg_journeystep)
{

  conv_evt_dimDF<-gen_conversion_events_dimension(nConversionEvents)
  market_dimDF<-gen_markets_dimension(nMarkets,country)
  device_dimDF<-gen_device_dimension(nDevices)
  nonaddress_dimDF<-gen_offline_non_addressable_media_dimension(nChannels,nEventTypes)
  addressable_dimDF<-gen_digital_addressable_media_dimension(nChannels,nEventTypes)
  dates_dimDF<-gen_agg_dates_dimension(nDays,startDate)

  jbymktDF<-gen_journey_by_market_dist(nConversionEvents,nMarkets)

}

generate_agg_media_data<-function()
{

}

generate_agg_conversions_data<-function()
{

}
