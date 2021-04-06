lbl_8005AB00:
/* 8005AB00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8005AB04  7C 08 02 A6 */	mflr r0
/* 8005AB08  90 01 00 34 */	stw r0, 0x34(r1)
/* 8005AB0C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8005AB10  7C 7F 1B 78 */	mr r31, r3
/* 8005AB14  38 61 00 08 */	addi r3, r1, 8
/* 8005AB18  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 8005AB1C  38 A4 CA 54 */	addi r5, r4, g_env_light@l /* 0x8042CA54@l */
/* 8005AB20  38 85 0E 48 */	addi r4, r5, 0xe48
/* 8005AB24  C0 25 0E 58 */	lfs f1, 0xe58(r5)
/* 8005AB28  48 20 C0 5D */	bl __ml__4cXyzCFf
/* 8005AB2C  C0 41 00 08 */	lfs f2, 8(r1)
/* 8005AB30  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8005AB34  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8005AB38  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8005AB3C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8005AB40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8005AB44  D0 5F 00 00 */	stfs f2, 0(r31)
/* 8005AB48  D0 3F 00 04 */	stfs f1, 4(r31)
/* 8005AB4C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8005AB50  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8005AB54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8005AB58  7C 08 03 A6 */	mtlr r0
/* 8005AB5C  38 21 00 30 */	addi r1, r1, 0x30
/* 8005AB60  4E 80 00 20 */	blr 
