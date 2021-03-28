lbl_8001E540:
/* 8001E540  80 8D 80 30 */	lwz r4, l_fopOvlpM_overlap(r13)
/* 8001E544  28 04 00 00 */	cmplwi r4, 0
/* 8001E548  4D 82 00 20 */	beqlr 
/* 8001E54C  80 84 00 20 */	lwz r4, 0x20(r4)
/* 8001E550  90 64 00 C8 */	stw r3, 0xc8(r4)
/* 8001E554  4E 80 00 20 */	blr 
