@map2Gis = ->
  cords = [61.264227, 73.494297]
  DG.then ->
    map = DG.map 'map', {
      center: cords,
      zoom: 15
    }
    DG.marker(cords).addTo(map)