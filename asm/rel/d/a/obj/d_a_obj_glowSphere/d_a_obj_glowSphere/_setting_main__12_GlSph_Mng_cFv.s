lbl_80BFA55C:
/* 80BFA55C  38 A3 00 04 */	addi r5, r3, 4
/* 80BFA560  38 60 00 00 */	li r3, 0
/* 80BFA564  38 00 00 78 */	li r0, 0x78
/* 80BFA568  7C 09 03 A6 */	mtctr r0
lbl_80BFA56C:
/* 80BFA56C  88 05 00 04 */	lbz r0, 4(r5)
/* 80BFA570  7C 00 07 75 */	extsb. r0, r0
/* 80BFA574  41 82 00 40 */	beq lbl_80BFA5B4
/* 80BFA578  80 85 00 00 */	lwz r4, 0(r5)
/* 80BFA57C  28 04 00 00 */	cmplwi r4, 0
/* 80BFA580  41 82 00 34 */	beq lbl_80BFA5B4
/* 80BFA584  C0 04 04 A8 */	lfs f0, 0x4a8(r4)
/* 80BFA588  D0 04 04 D0 */	stfs f0, 0x4d0(r4)
/* 80BFA58C  C0 04 04 AC */	lfs f0, 0x4ac(r4)
/* 80BFA590  D0 04 04 D4 */	stfs f0, 0x4d4(r4)
/* 80BFA594  C0 04 04 B0 */	lfs f0, 0x4b0(r4)
/* 80BFA598  D0 04 04 D8 */	stfs f0, 0x4d8(r4)
/* 80BFA59C  80 04 08 24 */	lwz r0, 0x824(r4)
/* 80BFA5A0  60 00 00 01 */	ori r0, r0, 1
/* 80BFA5A4  90 04 08 24 */	stw r0, 0x824(r4)
/* 80BFA5A8  98 64 09 50 */	stb r3, 0x950(r4)
/* 80BFA5AC  88 04 09 50 */	lbz r0, 0x950(r4)
/* 80BFA5B0  98 04 09 51 */	stb r0, 0x951(r4)
lbl_80BFA5B4:
/* 80BFA5B4  38 A5 00 08 */	addi r5, r5, 8
/* 80BFA5B8  42 00 FF B4 */	bdnz lbl_80BFA56C
/* 80BFA5BC  38 60 00 01 */	li r3, 1
/* 80BFA5C0  4E 80 00 20 */	blr 
