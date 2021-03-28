lbl_8005B284:
/* 8005B284  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8005B288  7C 08 02 A6 */	mflr r0
/* 8005B28C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8005B290  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8005B294  7C 7F 1B 78 */	mr r31, r3
/* 8005B298  7C 83 23 78 */	mr r3, r4
/* 8005B29C  38 81 00 18 */	addi r4, r1, 0x18
/* 8005B2A0  38 A1 00 08 */	addi r5, r1, 8
/* 8005B2A4  4B FF FF 99 */	bl dKyw_pntwind_get_info__FP4cXyzP4cXyzPf
/* 8005B2A8  38 61 00 0C */	addi r3, r1, 0xc
/* 8005B2AC  38 81 00 18 */	addi r4, r1, 0x18
/* 8005B2B0  C0 21 00 08 */	lfs f1, 8(r1)
/* 8005B2B4  48 20 B8 D1 */	bl __ml__4cXyzCFf
/* 8005B2B8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8005B2BC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8005B2C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8005B2C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8005B2C8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8005B2CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8005B2D0  D0 3F 00 00 */	stfs f1, 0(r31)
/* 8005B2D4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8005B2D8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8005B2DC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8005B2E0  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8005B2E4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8005B2E8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8005B2EC  7C 08 03 A6 */	mtlr r0
/* 8005B2F0  38 21 00 30 */	addi r1, r1, 0x30
/* 8005B2F4  4E 80 00 20 */	blr 
