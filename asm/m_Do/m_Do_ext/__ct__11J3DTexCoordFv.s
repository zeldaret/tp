lbl_8000E464:
/* 8000E464  3C 80 80 3A */	lis r4, j3dDefaultTexCoordInfo@ha /* 0x803A1EFC@ha */
/* 8000E468  80 04 1E FC */	lwz r0, j3dDefaultTexCoordInfo@l(r4)  /* 0x803A1EFC@l */
/* 8000E46C  90 03 00 00 */	stw r0, 0(r3)
/* 8000E470  88 03 00 02 */	lbz r0, 2(r3)
/* 8000E474  B0 03 00 04 */	sth r0, 4(r3)
/* 8000E478  4E 80 00 20 */	blr 
