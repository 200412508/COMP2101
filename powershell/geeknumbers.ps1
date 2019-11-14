foreach ($c in (1..8)) 
{
new-object -typename psobject -property @{ 
PlaceCount=$c;

PowersOf8=[math]::pow(8,$c);
PowersOf2=[math]::pow(2,$c);
PowerOf16=[math]::pow(16,$c)
} 
}