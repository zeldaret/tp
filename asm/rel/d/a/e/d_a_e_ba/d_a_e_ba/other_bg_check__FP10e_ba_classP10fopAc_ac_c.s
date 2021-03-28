lbl_8067EF20:
/* 8067EF20  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8067EF24  7C 08 02 A6 */	mflr r0
/* 8067EF28  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8067EF2C  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8067EF30  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8067EF34  7C 9E 23 78 */	mr r30, r4
/* 8067EF38  7C 7F 1B 78 */	mr r31, r3
/* 8067EF3C  38 61 00 20 */	addi r3, r1, 0x20
/* 8067EF40  4B 9F 8D 28 */	b __ct__11dBgS_LinChkFv
/* 8067EF44  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8067EF48  D0 01 00 08 */	stfs f0, 8(r1)
/* 8067EF4C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8067EF50  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8067EF54  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8067EF58  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8067EF5C  3C 60 80 68 */	lis r3, lit_3947@ha
/* 8067EF60  C0 03 23 BC */	lfs f0, lit_3947@l(r3)
/* 8067EF64  EC 01 00 2A */	fadds f0, f1, f0
/* 8067EF68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8067EF6C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8067EF70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8067EF74  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8067EF78  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8067EF7C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8067EF80  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8067EF84  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8067EF88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8067EF8C  38 61 00 20 */	addi r3, r1, 0x20
/* 8067EF90  38 81 00 14 */	addi r4, r1, 0x14
/* 8067EF94  38 A1 00 08 */	addi r5, r1, 8
/* 8067EF98  7F E6 FB 78 */	mr r6, r31
/* 8067EF9C  4B 9F 8D C8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8067EFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067EFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067EFA8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8067EFAC  38 81 00 20 */	addi r4, r1, 0x20
/* 8067EFB0  4B 9F 54 04 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8067EFB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8067EFB8  41 82 00 18 */	beq lbl_8067EFD0
/* 8067EFBC  38 61 00 20 */	addi r3, r1, 0x20
/* 8067EFC0  38 80 FF FF */	li r4, -1
/* 8067EFC4  4B 9F 8D 18 */	b __dt__11dBgS_LinChkFv
/* 8067EFC8  38 60 00 01 */	li r3, 1
/* 8067EFCC  48 00 00 14 */	b lbl_8067EFE0
lbl_8067EFD0:
/* 8067EFD0  38 61 00 20 */	addi r3, r1, 0x20
/* 8067EFD4  38 80 FF FF */	li r4, -1
/* 8067EFD8  4B 9F 8D 04 */	b __dt__11dBgS_LinChkFv
/* 8067EFDC  38 60 00 00 */	li r3, 0
lbl_8067EFE0:
/* 8067EFE0  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8067EFE4  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8067EFE8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8067EFEC  7C 08 03 A6 */	mtlr r0
/* 8067EFF0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8067EFF4  4E 80 00 20 */	blr 
