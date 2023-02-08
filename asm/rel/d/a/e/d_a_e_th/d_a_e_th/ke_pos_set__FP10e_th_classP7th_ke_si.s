lbl_807B09A4:
/* 807B09A4  80 63 12 28 */	lwz r3, 0x1228(r3)
/* 807B09A8  54 A0 28 34 */	slwi r0, r5, 5
/* 807B09AC  7C C3 00 2E */	lwzx r6, r3, r0
/* 807B09B0  38 60 00 00 */	li r3, 0
/* 807B09B4  38 00 00 0F */	li r0, 0xf
/* 807B09B8  7C 09 03 A6 */	mtctr r0
lbl_807B09BC:
/* 807B09BC  7C A4 1A 14 */	add r5, r4, r3
/* 807B09C0  C0 05 00 00 */	lfs f0, 0(r5)
/* 807B09C4  D0 06 00 00 */	stfs f0, 0(r6)
/* 807B09C8  C0 05 00 04 */	lfs f0, 4(r5)
/* 807B09CC  D0 06 00 04 */	stfs f0, 4(r6)
/* 807B09D0  C0 05 00 08 */	lfs f0, 8(r5)
/* 807B09D4  D0 06 00 08 */	stfs f0, 8(r6)
/* 807B09D8  38 63 00 0C */	addi r3, r3, 0xc
/* 807B09DC  38 C6 00 0C */	addi r6, r6, 0xc
/* 807B09E0  42 00 FF DC */	bdnz lbl_807B09BC
/* 807B09E4  4E 80 00 20 */	blr 
