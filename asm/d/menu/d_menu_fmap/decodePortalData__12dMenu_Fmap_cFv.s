lbl_801CC4EC:
/* 801CC4EC  80 83 00 90 */	lwz r4, 0x90(r3)
/* 801CC4F0  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801CC4F4  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801CC4F8  88 03 02 FB */	lbz r0, 0x2fb(r3)
/* 801CC4FC  28 00 00 00 */	cmplwi r0, 0
/* 801CC500  4D 82 00 20 */	beqlr 
/* 801CC504  88 04 00 08 */	lbz r0, 8(r4)
/* 801CC508  7C 09 03 A6 */	mtctr r0
/* 801CC50C  2C 00 00 00 */	cmpwi r0, 0
/* 801CC510  4C 81 00 20 */	blelr 
lbl_801CC514:
/* 801CC514  42 00 00 00 */	bdnz lbl_801CC514
/* 801CC518  4E 80 00 20 */	blr 
