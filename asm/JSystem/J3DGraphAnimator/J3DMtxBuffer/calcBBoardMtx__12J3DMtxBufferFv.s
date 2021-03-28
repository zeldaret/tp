lbl_80326EF0:
/* 80326EF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80326EF4  7C 08 02 A6 */	mflr r0
/* 80326EF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80326EFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80326F00  48 03 B2 D5 */	bl _savegpr_27
/* 80326F04  7C 7D 1B 78 */	mr r29, r3
/* 80326F08  80 63 00 00 */	lwz r3, 0(r3)
/* 80326F0C  A3 83 00 34 */	lhz r28, 0x34(r3)
/* 80326F10  3B C0 00 00 */	li r30, 0
/* 80326F14  48 00 01 10 */	b lbl_80327024
lbl_80326F18:
/* 80326F18  80 9D 00 00 */	lwz r4, 0(r29)
/* 80326F1C  80 64 00 38 */	lwz r3, 0x38(r4)
/* 80326F20  57 DF 04 3E */	clrlwi r31, r30, 0x10
/* 80326F24  7C 03 F8 AE */	lbzx r0, r3, r31
/* 80326F28  28 00 00 00 */	cmplwi r0, 0
/* 80326F2C  40 82 00 F4 */	bne lbl_80327020
/* 80326F30  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 80326F34  57 E0 08 3C */	slwi r0, r31, 1
/* 80326F38  7C 03 02 2E */	lhzx r0, r3, r0
/* 80326F3C  80 64 00 18 */	lwz r3, 0x18(r4)
/* 80326F40  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80326F44  7C 63 00 2E */	lwzx r3, r3, r0
/* 80326F48  88 03 00 16 */	lbz r0, 0x16(r3)
/* 80326F4C  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80326F50  28 00 00 01 */	cmplwi r0, 1
/* 80326F54  40 82 00 84 */	bne lbl_80326FD8
/* 80326F58  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80326F5C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80326F60  54 00 10 3A */	slwi r0, r0, 2
/* 80326F64  7C 63 00 2E */	lwzx r3, r3, r0
/* 80326F68  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 80326F6C  7F 63 02 14 */	add r27, r3, r0
/* 80326F70  7F 63 DB 78 */	mr r3, r27
/* 80326F74  4B FE A6 FD */	bl J3DCalcBBoardMtx__FPA4_f
/* 80326F78  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 80326F7C  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80326F80  54 00 10 3A */	slwi r0, r0, 2
/* 80326F84  7C 63 00 2E */	lwzx r3, r3, r0
/* 80326F88  1C 1F 00 24 */	mulli r0, r31, 0x24
/* 80326F8C  7C 63 02 14 */	add r3, r3, r0
/* 80326F90  C0 42 CA 20 */	lfs f2, lit_1320(r2)
/* 80326F94  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80326F98  EC 02 00 24 */	fdivs f0, f2, f0
/* 80326F9C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80326FA0  C0 22 CA 24 */	lfs f1, lit_1321(r2)
/* 80326FA4  D0 23 00 04 */	stfs f1, 4(r3)
/* 80326FA8  D0 23 00 08 */	stfs f1, 8(r3)
/* 80326FAC  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 80326FB0  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 80326FB4  EC 02 00 24 */	fdivs f0, f2, f0
/* 80326FB8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80326FBC  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80326FC0  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80326FC4  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 80326FC8  C0 1B 00 28 */	lfs f0, 0x28(r27)
/* 80326FCC  EC 02 00 24 */	fdivs f0, f2, f0
/* 80326FD0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80326FD4  48 00 00 4C */	b lbl_80327020
lbl_80326FD8:
/* 80326FD8  28 00 00 02 */	cmplwi r0, 2
/* 80326FDC  40 82 00 44 */	bne lbl_80327020
/* 80326FE0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80326FE4  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80326FE8  54 00 10 3A */	slwi r0, r0, 2
/* 80326FEC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80326FF0  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 80326FF4  7F 63 02 14 */	add r27, r3, r0
/* 80326FF8  7F 63 DB 78 */	mr r3, r27
/* 80326FFC  4B FE A7 65 */	bl J3DCalcYBBoardMtx__FPA4_f
/* 80327000  80 7D 00 20 */	lwz r3, 0x20(r29)
/* 80327004  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80327008  54 00 10 3A */	slwi r0, r0, 2
/* 8032700C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80327010  1C 1F 00 24 */	mulli r0, r31, 0x24
/* 80327014  7C 83 02 14 */	add r4, r3, r0
/* 80327018  7F 63 DB 78 */	mr r3, r27
/* 8032701C  4B FE A8 81 */	bl J3DPSCalcInverseTranspose__FPA4_fPA3_f
lbl_80327020:
/* 80327020  3B DE 00 01 */	addi r30, r30, 1
lbl_80327024:
/* 80327024  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 80327028  7C 00 E0 40 */	cmplw r0, r28
/* 8032702C  41 80 FE EC */	blt lbl_80326F18
/* 80327030  39 61 00 20 */	addi r11, r1, 0x20
/* 80327034  48 03 B1 ED */	bl _restgpr_27
/* 80327038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032703C  7C 08 03 A6 */	mtlr r0
/* 80327040  38 21 00 20 */	addi r1, r1, 0x20
/* 80327044  4E 80 00 20 */	blr 
