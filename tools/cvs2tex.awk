BEGIN{
}
{ 
  if (NR>1) { print "    \\mrcpoint{"$3"}{"$2"}" }
}

END{
}
