mkdir -p gif-folder


destGif=gif-folder/animatedCPNtp20Frame.gif

fixed_frame=dir-pics2/ntp20_fixed_cpframe_*png
moving_frame=dir-pics2/ntp20_cpframe_*png
delay=80

#try making .gif with fixed_frame if fail try with moving_frame
(convert -delay ${delay} -loop 0 ${fixed_frame} ${destGif}  ) || (
 convert -delay ${delay} -loop 0 ${moving_frame} ${destGif} )

if [ -e ${destGif} ] ; then
  gwenview ${destGif} &
fi
