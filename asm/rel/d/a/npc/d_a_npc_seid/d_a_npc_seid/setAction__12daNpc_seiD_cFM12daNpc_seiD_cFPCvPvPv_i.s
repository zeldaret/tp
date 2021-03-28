lbl_80ACA3CC:
/* 80ACA3CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACA3D0  7C 08 02 A6 */	mflr r0
/* 80ACA3D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACA3D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACA3DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACA3E0  7C 7E 1B 78 */	mr r30, r3
/* 80ACA3E4  7C 9F 23 78 */	mr r31, r4
/* 80ACA3E8  38 00 00 03 */	li r0, 3
/* 80ACA3EC  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80ACA3F0  38 7E 0E 54 */	addi r3, r30, 0xe54
/* 80ACA3F4  4B 89 7C 24 */	b __ptmf_test
/* 80ACA3F8  2C 03 00 00 */	cmpwi r3, 0
/* 80ACA3FC  41 82 00 18 */	beq lbl_80ACA414
/* 80ACA400  7F C3 F3 78 */	mr r3, r30
/* 80ACA404  38 80 00 00 */	li r4, 0
/* 80ACA408  39 9E 0E 54 */	addi r12, r30, 0xe54
/* 80ACA40C  4B 89 7C 78 */	b __ptmf_scall
/* 80ACA410  60 00 00 00 */	nop 
lbl_80ACA414:
/* 80ACA414  38 00 00 00 */	li r0, 0
/* 80ACA418  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80ACA41C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80ACA420  80 1F 00 04 */	lwz r0, 4(r31)
/* 80ACA424  90 7E 0E 54 */	stw r3, 0xe54(r30)
/* 80ACA428  90 1E 0E 58 */	stw r0, 0xe58(r30)
/* 80ACA42C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80ACA430  90 1E 0E 5C */	stw r0, 0xe5c(r30)
/* 80ACA434  38 7E 0E 54 */	addi r3, r30, 0xe54
/* 80ACA438  4B 89 7B E0 */	b __ptmf_test
/* 80ACA43C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACA440  41 82 00 18 */	beq lbl_80ACA458
/* 80ACA444  7F C3 F3 78 */	mr r3, r30
/* 80ACA448  38 80 00 00 */	li r4, 0
/* 80ACA44C  39 9E 0E 54 */	addi r12, r30, 0xe54
/* 80ACA450  4B 89 7C 34 */	b __ptmf_scall
/* 80ACA454  60 00 00 00 */	nop 
lbl_80ACA458:
/* 80ACA458  38 60 00 01 */	li r3, 1
/* 80ACA45C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACA460  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACA464  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACA468  7C 08 03 A6 */	mtlr r0
/* 80ACA46C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACA470  4E 80 00 20 */	blr 
