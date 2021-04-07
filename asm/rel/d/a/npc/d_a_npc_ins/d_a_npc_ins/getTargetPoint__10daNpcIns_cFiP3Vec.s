lbl_80A12480:
/* 80A12480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A12484  7C 08 02 A6 */	mflr r0
/* 80A12488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1248C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A12490  7C BF 2B 78 */	mr r31, r5
/* 80A12494  80 63 0E 04 */	lwz r3, 0xe04(r3)
/* 80A12498  28 03 00 00 */	cmplwi r3, 0
/* 80A1249C  41 82 00 20 */	beq lbl_80A124BC
/* 80A124A0  4B 63 F3 11 */	bl dPath_GetPnt__FPC5dPathi
/* 80A124A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A124A8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80A124AC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A124B0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80A124B4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A124B8  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80A124BC:
/* 80A124BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A124C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A124C4  7C 08 03 A6 */	mtlr r0
/* 80A124C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A124CC  4E 80 00 20 */	blr 
