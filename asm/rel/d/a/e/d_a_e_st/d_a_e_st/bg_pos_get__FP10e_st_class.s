lbl_8079EF3C:
/* 8079EF3C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8079EF40  7C 08 02 A6 */	mflr r0
/* 8079EF44  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8079EF48  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8079EF4C  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8079EF50  7C 7E 1B 78 */	mr r30, r3
/* 8079EF54  3C 60 80 7A */	lis r3, lit_3903@ha
/* 8079EF58  3B E3 68 24 */	addi r31, r3, lit_3903@l
/* 8079EF5C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079EF60  4B 8D 8D 08 */	b __ct__11dBgS_LinChkFv
/* 8079EF64  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079EF68  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079EF6C  80 63 00 00 */	lwz r3, 0(r3)
/* 8079EF70  A8 9E 06 9E */	lha r4, 0x69e(r30)
/* 8079EF74  4B 86 D4 68 */	b mDoMtx_YrotS__FPA4_fs
/* 8079EF78  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8079EF7C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8079EF80  80 63 00 00 */	lwz r3, 0(r3)
/* 8079EF84  A8 9E 06 9C */	lha r4, 0x69c(r30)
/* 8079EF88  4B 86 D4 14 */	b mDoMtx_XrotM__FPA4_fs
/* 8079EF8C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8079EF90  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8079EF94  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8079EF98  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079EF9C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8079EFA0  38 61 00 20 */	addi r3, r1, 0x20
/* 8079EFA4  38 81 00 14 */	addi r4, r1, 0x14
/* 8079EFA8  4B AD 1F 44 */	b MtxPosition__FP4cXyzP4cXyz
/* 8079EFAC  38 61 00 14 */	addi r3, r1, 0x14
/* 8079EFB0  38 9E 06 90 */	addi r4, r30, 0x690
/* 8079EFB4  7C 65 1B 78 */	mr r5, r3
/* 8079EFB8  4B BA 80 D8 */	b PSVECAdd
/* 8079EFBC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079EFC0  38 9E 06 90 */	addi r4, r30, 0x690
/* 8079EFC4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8079EFC8  38 C0 00 00 */	li r6, 0
/* 8079EFCC  4B 8D 8D 98 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8079EFD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8079EFD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8079EFD8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8079EFDC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8079EFE0  4B 8D 53 D4 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8079EFE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079EFE8  41 82 00 68 */	beq lbl_8079F050
/* 8079EFEC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8079EFF0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8079EFF4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8079EFF8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8079EFFC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8079F000  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8079F004  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8079F008  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079F00C  38 61 00 20 */	addi r3, r1, 0x20
/* 8079F010  38 81 00 14 */	addi r4, r1, 0x14
/* 8079F014  4B AD 1E D8 */	b MtxPosition__FP4cXyzP4cXyz
/* 8079F018  38 61 00 08 */	addi r3, r1, 8
/* 8079F01C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8079F020  38 A1 00 14 */	addi r5, r1, 0x14
/* 8079F024  4B AC 7A C0 */	b __pl__4cXyzCFRC3Vec
/* 8079F028  C0 01 00 08 */	lfs f0, 8(r1)
/* 8079F02C  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 8079F030  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8079F034  D0 1E 06 94 */	stfs f0, 0x694(r30)
/* 8079F038  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8079F03C  D0 1E 06 98 */	stfs f0, 0x698(r30)
/* 8079F040  7F C3 F3 78 */	mr r3, r30
/* 8079F044  38 80 04 00 */	li r4, 0x400
/* 8079F048  4B FF FC 49 */	bl bg_angle_set__FP10e_st_classs
/* 8079F04C  48 00 00 18 */	b lbl_8079F064
lbl_8079F050:
/* 8079F050  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079F054  38 80 FF FF */	li r4, -1
/* 8079F058  4B 8D 8C 84 */	b __dt__11dBgS_LinChkFv
/* 8079F05C  38 60 00 00 */	li r3, 0
/* 8079F060  48 00 00 14 */	b lbl_8079F074
lbl_8079F064:
/* 8079F064  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079F068  38 80 FF FF */	li r4, -1
/* 8079F06C  4B 8D 8C 70 */	b __dt__11dBgS_LinChkFv
/* 8079F070  38 60 00 01 */	li r3, 1
lbl_8079F074:
/* 8079F074  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8079F078  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8079F07C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8079F080  7C 08 03 A6 */	mtlr r0
/* 8079F084  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8079F088  4E 80 00 20 */	blr 
