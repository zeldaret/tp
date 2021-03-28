lbl_80346408:
/* 80346408  7C 60 00 A6 */	mfmsr r3
/* 8034640C  60 63 00 30 */	ori r3, r3, 0x30
/* 80346410  7C 60 01 24 */	mtmsr r3
/* 80346414  4B FF FF AC */	b __DBExceptionDestinationAux
