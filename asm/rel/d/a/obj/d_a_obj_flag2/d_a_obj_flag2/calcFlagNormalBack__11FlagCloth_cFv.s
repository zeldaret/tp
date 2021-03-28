lbl_80BECC34:
/* 80BECC34  38 83 06 40 */	addi r4, r3, 0x640
/* 80BECC38  38 63 07 40 */	addi r3, r3, 0x740
/* 80BECC3C  38 00 00 15 */	li r0, 0x15
/* 80BECC40  7C 09 03 A6 */	mtctr r0
lbl_80BECC44:
/* 80BECC44  C0 04 00 08 */	lfs f0, 8(r4)
/* 80BECC48  FC 40 00 50 */	fneg f2, f0
/* 80BECC4C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80BECC50  FC 20 00 50 */	fneg f1, f0
/* 80BECC54  C0 04 00 00 */	lfs f0, 0(r4)
/* 80BECC58  FC 00 00 50 */	fneg f0, f0
/* 80BECC5C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BECC60  D0 23 00 04 */	stfs f1, 4(r3)
/* 80BECC64  D0 43 00 08 */	stfs f2, 8(r3)
/* 80BECC68  38 84 00 0C */	addi r4, r4, 0xc
/* 80BECC6C  38 63 00 0C */	addi r3, r3, 0xc
/* 80BECC70  42 00 FF D4 */	bdnz lbl_80BECC44
/* 80BECC74  4E 80 00 20 */	blr 
