lbl_80B11C48:
/* 80B11C48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B11C4C  7C 08 02 A6 */	mflr r0
/* 80B11C50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B11C54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B11C58  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B11C5C  7C 7E 1B 78 */	mr r30, r3
/* 80B11C60  7C 9F 23 78 */	mr r31, r4
/* 80B11C64  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80B11C68  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80B11C6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B11C70  A8 9E 05 C4 */	lha r4, 0x5c4(r30)
/* 80B11C74  4B 4F A7 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B11C78  7F E3 FB 78 */	mr r3, r31
/* 80B11C7C  38 81 00 08 */	addi r4, r1, 8
/* 80B11C80  4B 75 F2 6D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80B11C84  38 61 00 08 */	addi r3, r1, 8
/* 80B11C88  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B11C8C  7C 65 1B 78 */	mr r5, r3
/* 80B11C90  4B 83 54 01 */	bl PSVECAdd
/* 80B11C94  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B11C98  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80B11C9C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B11CA0  3C 60 80 B1 */	lis r3, lit_4035@ha /* 0x80B1432C@ha */
/* 80B11CA4  C0 03 43 2C */	lfs f0, lit_4035@l(r3)  /* 0x80B1432C@l */
/* 80B11CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B11CAC  7C 00 00 26 */	mfcr r0
/* 80B11CB0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80B11CB4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B11CB8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B11CBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B11CC0  7C 08 03 A6 */	mtlr r0
/* 80B11CC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B11CC8  4E 80 00 20 */	blr 
