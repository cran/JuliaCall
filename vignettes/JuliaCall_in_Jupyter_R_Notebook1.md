

```R
library(JuliaCall)
```


```R
julia_setup()
```

    Julia version 1.0.0 at location /Applications/Julia-1.0.app/Contents/Resources/julia/bin will be used.
    Loading setup script for JuliaCall...
    Finish loading setup script for JuliaCall.



```R
julia_console()
```

    It seems that you are not in the terminal. A simple julia console will be started.
    Type exit and then enter to exit.


    julia> sqrt(2)



1.4142135623730951


    julia> exit


    Exiting julia console.



```R
julia_library("Plots")
```


```R
julia_command("gr()")
```


Plots.GRBackend()



```R
julia_command("Plots.plot(Plots.fakedata(50,5),w=3)")
```


<html> <?xml version="1.0" encoding="utf-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="600" height="400" viewBox="0 0 600 400">
<defs>
  <clipPath id="clip9800">
    <rect x="0" y="0" width="600" height="400"/>
  </clipPath>
</defs>
<polygon clip-path="url(#clip9800)" points="
0,400 600,400 600,0 0,0 
  " fill="#ffffff" fill-opacity="1"/>
<defs>
  <clipPath id="clip9801">
    <rect x="120" y="0" width="421" height="400"/>
  </clipPath>
</defs>
<polygon clip-path="url(#clip9800)" points="
47.376,375.869 580.315,375.869 580.315,11.811 47.376,11.811 
  " fill="#ffffff" fill-opacity="1"/>
<defs>
  <clipPath id="clip9802">
    <rect x="47" y="11" width="534" height="365"/>
  </clipPath>
</defs>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  52.1985,375.869 52.1985,11.811 
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  154.805,375.869 154.805,11.811 
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  257.412,375.869 257.412,11.811 
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  360.018,375.869 360.018,11.811 
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  462.625,375.869 462.625,11.811 
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  565.232,375.869 565.232,11.811 
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  47.376,316.996 580.315,316.996 
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  47.376,253.803 580.315,253.803 
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  47.376,190.61 580.315,190.61 
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  47.376,127.417 580.315,127.417 
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#000000; stroke-width:0.5; stroke-opacity:0.1; fill:none" points="
  47.376,64.2238 580.315,64.2238 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  47.376,375.869 580.315,375.869 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  47.376,375.869 47.376,11.811 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  52.1985,375.869 52.1985,370.408 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  154.805,375.869 154.805,370.408 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  257.412,375.869 257.412,370.408 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  360.018,375.869 360.018,370.408 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  462.625,375.869 462.625,370.408 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  565.232,375.869 565.232,370.408 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  47.376,316.996 55.3701,316.996 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  47.376,253.803 55.3701,253.803 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  47.376,190.61 55.3701,190.61 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  47.376,127.417 55.3701,127.417 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  47.376,64.2238 55.3701,64.2238 
  "/>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:middle;" transform="rotate(0, 52.1985, 389.669)" x="52.1985" y="389.669">0</text>
</g>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:middle;" transform="rotate(0, 154.805, 389.669)" x="154.805" y="389.669">10</text>
</g>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:middle;" transform="rotate(0, 257.412, 389.669)" x="257.412" y="389.669">20</text>
</g>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:middle;" transform="rotate(0, 360.018, 389.669)" x="360.018" y="389.669">30</text>
</g>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:middle;" transform="rotate(0, 462.625, 389.669)" x="462.625" y="389.669">40</text>
</g>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:middle;" transform="rotate(0, 565.232, 389.669)" x="565.232" y="389.669">50</text>
</g>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:end;" transform="rotate(0, 41.376, 321.496)" x="41.376" y="321.496">-5.0</text>
</g>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:end;" transform="rotate(0, 41.376, 258.303)" x="41.376" y="258.303">-2.5</text>
</g>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:end;" transform="rotate(0, 41.376, 195.11)" x="41.376" y="195.11">0.0</text>
</g>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:end;" transform="rotate(0, 41.376, 131.917)" x="41.376" y="131.917">2.5</text>
</g>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:end;" transform="rotate(0, 41.376, 68.7238)" x="41.376" y="68.7238">5.0</text>
</g>
<polyline clip-path="url(#clip9802)" style="stroke:#009af9; stroke-width:3; stroke-opacity:1; fill:none" points="
  62.4592,190.61 72.7199,159.485 82.9805,171.389 93.2412,174.251 103.502,166.762 113.763,178.487 124.023,132.232 134.284,178.499 144.545,179.828 154.805,175.679 
  165.066,194.489 175.327,182.302 185.587,210.706 195.848,214.043 206.109,175.929 216.369,188.128 226.63,176.818 236.891,182.79 247.151,160.019 257.412,115.465 
  267.673,114.048 277.933,119.589 288.194,111.311 298.454,101.913 308.715,147.507 318.976,170.083 329.236,188.228 339.497,179.548 349.758,199.327 360.018,193.643 
  370.279,171.227 380.54,202.215 390.8,211.449 401.061,174.931 411.322,183.728 421.582,194.187 431.843,204.713 442.104,231.853 452.364,212.421 462.625,261.731 
  472.886,245.49 483.146,259.174 493.407,199.18 503.668,192.575 513.928,207.395 524.189,201.813 534.45,215.252 544.71,179.205 554.971,159.958 565.232,149.672 
  
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#e26f46; stroke-width:3; stroke-opacity:1; fill:none" points="
  62.4592,190.61 72.7199,180.761 82.9805,256.736 93.2412,253.899 103.502,236.856 113.763,235.333 124.023,212.784 134.284,264.373 144.545,295.611 154.805,317.399 
  165.066,295.328 175.327,331.855 185.587,330.637 195.848,325.1 206.109,312.941 216.369,337.126 226.63,332.155 236.891,365.565 247.151,336.588 257.412,331.519 
  267.673,330.23 277.933,314.103 288.194,275.339 298.454,278.847 308.715,234.689 318.976,232.282 329.236,277.142 339.497,295.397 349.758,325.212 360.018,301.159 
  370.279,300.314 380.54,335.392 390.8,290.295 401.061,333.841 411.322,330.252 421.582,309.059 431.843,265.055 442.104,218.861 452.364,218.783 462.625,198.39 
  472.886,196.238 483.146,218.723 493.407,220.204 503.668,208.825 513.928,205.634 524.189,217.553 534.45,241.474 544.71,282.241 554.971,258.265 565.232,275.285 
  
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#3da44d; stroke-width:3; stroke-opacity:1; fill:none" points="
  62.4592,190.61 72.7199,202.138 82.9805,164.543 93.2412,187.873 103.502,209.423 113.763,211.252 124.023,214.559 134.284,228.616 144.545,240.865 154.805,195.339 
  165.066,213.591 175.327,180.943 185.587,175.882 195.848,111.713 206.109,140.679 216.369,149.859 226.63,111.743 236.891,70.0305 247.151,56.7969 257.412,59.5434 
  267.673,57.3613 277.933,31.4622 288.194,72.8273 298.454,70.8168 308.715,62.4703 318.976,100.437 329.236,142.854 339.497,134.702 349.758,146.95 360.018,144.647 
  370.279,138.123 380.54,115.315 390.8,132.121 401.061,177.426 411.322,151.012 421.582,176.247 431.843,187.555 442.104,214.224 452.364,222.639 462.625,248.368 
  472.886,265.807 483.146,260.844 493.407,274.948 503.668,316.195 513.928,316.245 524.189,330.863 534.45,328.827 544.71,318.889 554.971,333.174 565.232,353.77 
  
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#c271d2; stroke-width:3; stroke-opacity:1; fill:none" points="
  62.4592,190.61 72.7199,213.561 82.9805,191.275 93.2412,203.077 103.502,176.497 113.763,140.238 124.023,126.756 134.284,144.653 144.545,139.663 154.805,150.199 
  165.066,141.035 175.327,152.873 185.587,105.894 195.848,156.16 206.109,133.288 216.369,168.808 226.63,165.186 236.891,143.309 247.151,118.599 257.412,116.783 
  267.673,115.194 277.933,97.2799 288.194,101.378 298.454,125.236 308.715,75.868 318.976,86.7115 329.236,58.0762 339.497,80.4755 349.758,56.1368 360.018,69.5429 
  370.279,55.6817 380.54,54.041 390.8,46.1169 401.061,22.1145 411.322,39.5889 421.582,108.209 431.843,94.986 442.104,72.2809 452.364,59.8822 462.625,51.7012 
  472.886,76.5818 483.146,84.8254 493.407,99.5842 503.668,112.485 513.928,114.211 524.189,139.779 534.45,165.108 544.71,170.554 554.971,178.678 565.232,169.573 
  
  "/>
<polyline clip-path="url(#clip9802)" style="stroke:#ac8d18; stroke-width:3; stroke-opacity:1; fill:none" points="
  62.4592,190.61 72.7199,143.86 82.9805,134.791 93.2412,135.693 103.502,130.437 113.763,120.691 124.023,128.332 134.284,141.054 144.545,181.657 154.805,188.049 
  165.066,198.116 175.327,237.875 185.587,247.222 195.848,271.904 206.109,281.353 216.369,256.029 226.63,290.95 236.891,268.812 247.151,248.249 257.412,225.885 
  267.673,214.153 277.933,201.823 288.194,210.098 298.454,203.328 308.715,231.397 318.976,251.447 329.236,268.953 339.497,226.639 349.758,182.663 360.018,186.029 
  370.279,212.692 380.54,188.497 390.8,181.568 401.061,165.963 411.322,159.779 421.582,181.659 431.843,175.044 442.104,134.019 452.364,116.15 462.625,152.229 
  472.886,183.752 483.146,147.766 493.407,155.694 503.668,159.779 513.928,176.414 524.189,177.932 534.45,192.484 544.71,180.461 554.971,205.675 565.232,154.129 
  
  "/>
<polygon clip-path="url(#clip9800)" points="
489.608,123.411 562.315,123.411 562.315,32.691 489.608,32.691 
  " fill="#ffffff" fill-opacity="1"/>
<polyline clip-path="url(#clip9800)" style="stroke:#000000; stroke-width:1; stroke-opacity:1; fill:none" points="
  489.608,123.411 562.315,123.411 562.315,32.691 489.608,32.691 489.608,123.411 
  "/>
<polyline clip-path="url(#clip9800)" style="stroke:#009af9; stroke-width:3; stroke-opacity:1; fill:none" points="
  495.608,47.811 531.608,47.811 
  "/>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:start;" transform="rotate(0, 537.608, 52.311)" x="537.608" y="52.311">y1</text>
</g>
<polyline clip-path="url(#clip9800)" style="stroke:#e26f46; stroke-width:3; stroke-opacity:1; fill:none" points="
  495.608,62.931 531.608,62.931 
  "/>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:start;" transform="rotate(0, 537.608, 67.431)" x="537.608" y="67.431">y2</text>
</g>
<polyline clip-path="url(#clip9800)" style="stroke:#3da44d; stroke-width:3; stroke-opacity:1; fill:none" points="
  495.608,78.051 531.608,78.051 
  "/>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:start;" transform="rotate(0, 537.608, 82.551)" x="537.608" y="82.551">y3</text>
</g>
<polyline clip-path="url(#clip9800)" style="stroke:#c271d2; stroke-width:3; stroke-opacity:1; fill:none" points="
  495.608,93.171 531.608,93.171 
  "/>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:start;" transform="rotate(0, 537.608, 97.671)" x="537.608" y="97.671">y4</text>
</g>
<polyline clip-path="url(#clip9800)" style="stroke:#ac8d18; stroke-width:3; stroke-opacity:1; fill:none" points="
  495.608,108.291 531.608,108.291 
  "/>
<g clip-path="url(#clip9800)">
<text style="fill:#000000; fill-opacity:1; font-family:Arial,Helvetica Neue,Helvetica,sans-serif; font-size:12; text-anchor:start;" transform="rotate(0, 537.608, 112.791)" x="537.608" y="112.791">y5</text>
</g>
</svg>
 </html>

