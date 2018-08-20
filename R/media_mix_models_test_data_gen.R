# Test Data generator
#
#  1. aggregate marketing mix data
#  2. customer journey data
#


gen_agg_dates_dimension<-function(nDays,startDate)
{

}

gen_digital_addressable_media_dimension<-function(nChannels,nEventTypes)
{

}
gen_offline_non_addressable_media_dimension<-function(nChannels,nEventTypes)
{

}

gen_device_dimension<-function(nDevices)
{

}



gen_markets_dimension<-function(nMarkets,country)
{

}

gen_conversion_events_dimension<-function(nConversionEvents)
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
