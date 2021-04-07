lbl_8005B530:
/* 8005B530  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8005B534  7C 08 02 A6 */	mflr r0
/* 8005B538  90 01 00 74 */	stw r0, 0x74(r1)
/* 8005B53C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8005B540  7C 7F 1B 78 */	mr r31, r3
/* 8005B544  7C 83 23 78 */	mr r3, r4
/* 8005B548  38 81 00 30 */	addi r4, r1, 0x30
/* 8005B54C  38 A1 00 08 */	addi r5, r1, 8
/* 8005B550  4B FF FC ED */	bl dKyw_pntwind_get_info__FP4cXyzP4cXyzPf
/* 8005B554  38 61 00 24 */	addi r3, r1, 0x24
/* 8005B558  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8005B55C  38 A4 CA 54 */	addi r5, r4, g_env_light@l /* 0x8042CA54@l */
/* 8005B560  38 85 0E 48 */	addi r4, r5, 0xe48
/* 8005B564  C0 45 0E 58 */	lfs f2, 0xe58(r5)
/* 8005B568  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005B56C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8005B570  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005B574  EC 22 00 32 */	fmuls f1, f2, f0
/* 8005B578  48 20 B6 0D */	bl __ml__4cXyzCFf
/* 8005B57C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8005B580  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8005B584  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8005B588  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8005B58C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8005B590  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8005B594  38 61 00 18 */	addi r3, r1, 0x18
/* 8005B598  38 81 00 30 */	addi r4, r1, 0x30
/* 8005B59C  C0 22 87 A8 */	lfs f1, lit_5855(r2)
/* 8005B5A0  C0 01 00 08 */	lfs f0, 8(r1)
/* 8005B5A4  EC 21 00 32 */	fmuls f1, f1, f0
/* 8005B5A8  48 20 B5 DD */	bl __ml__4cXyzCFf
/* 8005B5AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8005B5B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8005B5B4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8005B5B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8005B5BC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8005B5C0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8005B5C4  38 61 00 0C */	addi r3, r1, 0xc
/* 8005B5C8  38 81 00 48 */	addi r4, r1, 0x48
/* 8005B5CC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 8005B5D0  48 20 B5 15 */	bl __pl__4cXyzCFRC3Vec
/* 8005B5D4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8005B5D8  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8005B5DC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8005B5E0  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8005B5E4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8005B5E8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8005B5EC  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8005B5F0  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8005B5F4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8005B5F8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8005B5FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8005B600  7C 08 03 A6 */	mtlr r0
/* 8005B604  38 21 00 70 */	addi r1, r1, 0x70
/* 8005B608  4E 80 00 20 */	blr 
