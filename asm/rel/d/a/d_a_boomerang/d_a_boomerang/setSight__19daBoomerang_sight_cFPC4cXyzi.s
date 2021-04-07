lbl_8049EEC8:
/* 8049EEC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049EECC  7C 08 02 A6 */	mflr r0
/* 8049EED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049EED4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049EED8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8049EEDC  7C 7E 1B 78 */	mr r30, r3
/* 8049EEE0  7C BF 2B 78 */	mr r31, r5
/* 8049EEE4  7C 7E FA 14 */	add r3, r30, r31
/* 8049EEE8  88 03 00 62 */	lbz r0, 0x62(r3)
/* 8049EEEC  28 00 00 00 */	cmplwi r0, 0
/* 8049EEF0  41 82 00 58 */	beq lbl_8049EF48
/* 8049EEF4  28 04 00 00 */	cmplwi r4, 0
/* 8049EEF8  41 82 00 24 */	beq lbl_8049EF1C
/* 8049EEFC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8049EF00  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 8049EF04  7C 7E 02 14 */	add r3, r30, r0
/* 8049EF08  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 8049EF0C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8049EF10  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8049EF14  C0 04 00 08 */	lfs f0, 8(r4)
/* 8049EF18  D0 03 00 D0 */	stfs f0, 0xd0(r3)
lbl_8049EF1C:
/* 8049EF1C  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 8049EF20  38 63 00 C8 */	addi r3, r3, 0xc8
/* 8049EF24  7C 7E 1A 14 */	add r3, r30, r3
/* 8049EF28  38 81 00 08 */	addi r4, r1, 8
/* 8049EF2C  4B B7 63 E5 */	bl mDoLib_project__FP3VecP3Vec
/* 8049EF30  C0 01 00 08 */	lfs f0, 8(r1)
/* 8049EF34  57 E0 10 3A */	slwi r0, r31, 2
/* 8049EF38  7C 7E 02 14 */	add r3, r30, r0
/* 8049EF3C  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 8049EF40  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8049EF44  D0 03 00 80 */	stfs f0, 0x80(r3)
lbl_8049EF48:
/* 8049EF48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049EF4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8049EF50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049EF54  7C 08 03 A6 */	mtlr r0
/* 8049EF58  38 21 00 20 */	addi r1, r1, 0x20
/* 8049EF5C  4E 80 00 20 */	blr 
