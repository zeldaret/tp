lbl_80C2FD94:
/* 80C2FD94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C2FD98  7C 08 02 A6 */	mflr r0
/* 80C2FD9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2FDA0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C2FDA4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C2FDA8  7C 7F 1B 78 */	mr r31, r3
/* 80C2FDAC  3C 60 80 C3 */	lis r3, lit_3774@ha
/* 80C2FDB0  3B C3 11 4C */	addi r30, r3, lit_3774@l
/* 80C2FDB4  80 1F 08 3C */	lwz r0, 0x83c(r31)
/* 80C2FDB8  2C 00 00 00 */	cmpwi r0, 0
/* 80C2FDBC  40 82 00 78 */	bne lbl_80C2FE34
/* 80C2FDC0  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2FDC4  38 63 12 60 */	addi r3, r3, stringBase0@l
/* 80C2FDC8  38 80 00 06 */	li r4, 6
/* 80C2FDCC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2FDD0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2FDD4  3C A5 00 02 */	addis r5, r5, 2
/* 80C2FDD8  38 C0 00 80 */	li r6, 0x80
/* 80C2FDDC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2FDE0  4B 40 C5 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2FDE4  7C 64 1B 78 */	mr r4, r3
/* 80C2FDE8  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80C2FDEC  38 A0 00 02 */	li r5, 2
/* 80C2FDF0  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 80C2FDF4  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 80C2FDF8  FC 60 10 90 */	fmr f3, f2
/* 80C2FDFC  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 80C2FE00  4B 3E 10 70 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80C2FE04  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80C2FE08  60 00 40 00 */	ori r0, r0, 0x4000
/* 80C2FE0C  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80C2FE10  38 00 00 00 */	li r0, 0
/* 80C2FE14  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 80C2FE18  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80C2FE1C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C2FE20  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 80C2FE24  80 7F 08 3C */	lwz r3, 0x83c(r31)
/* 80C2FE28  38 03 00 01 */	addi r0, r3, 1
/* 80C2FE2C  90 1F 08 3C */	stw r0, 0x83c(r31)
/* 80C2FE30  48 00 00 C8 */	b lbl_80C2FEF8
lbl_80C2FE34:
/* 80C2FE34  2C 00 FF FF */	cmpwi r0, -1
/* 80C2FE38  41 82 00 C0 */	beq lbl_80C2FEF8
/* 80C2FE3C  88 1F 05 6C */	lbz r0, 0x56c(r31)
/* 80C2FE40  28 00 00 00 */	cmplwi r0, 0
/* 80C2FE44  41 82 00 B4 */	beq lbl_80C2FEF8
/* 80C2FE48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2FE4C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80C2FE50  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 80C2FE54  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 80C2FE58  38 03 C0 00 */	addi r0, r3, -16384
/* 80C2FE5C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80C2FE60  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2FE64  38 63 12 60 */	addi r3, r3, stringBase0@l
/* 80C2FE68  38 63 00 06 */	addi r3, r3, 6
/* 80C2FE6C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80C2FE70  4B 73 8B 24 */	b strcmp
/* 80C2FE74  2C 03 00 00 */	cmpwi r3, 0
/* 80C2FE78  40 82 00 54 */	bne lbl_80C2FECC
/* 80C2FE7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C2FE80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C2FE84  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C2FE88  2C 00 00 03 */	cmpwi r0, 3
/* 80C2FE8C  40 82 00 40 */	bne lbl_80C2FECC
/* 80C2FE90  38 00 00 01 */	li r0, 1
/* 80C2FE94  98 1F 08 5E */	stb r0, 0x85e(r31)
/* 80C2FE98  98 1F 05 6D */	stb r0, 0x56d(r31)
/* 80C2FE9C  3C 60 80 C3 */	lis r3, lit_4476@ha
/* 80C2FEA0  38 83 13 0C */	addi r4, r3, lit_4476@l
/* 80C2FEA4  80 64 00 00 */	lwz r3, 0(r4)
/* 80C2FEA8  80 04 00 04 */	lwz r0, 4(r4)
/* 80C2FEAC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80C2FEB0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C2FEB4  80 04 00 08 */	lwz r0, 8(r4)
/* 80C2FEB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C2FEBC  7F E3 FB 78 */	mr r3, r31
/* 80C2FEC0  38 81 00 14 */	addi r4, r1, 0x14
/* 80C2FEC4  4B FF E5 71 */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
/* 80C2FEC8  48 00 00 30 */	b lbl_80C2FEF8
lbl_80C2FECC:
/* 80C2FECC  3C 60 80 C3 */	lis r3, lit_4479@ha
/* 80C2FED0  38 83 13 18 */	addi r4, r3, lit_4479@l
/* 80C2FED4  80 64 00 00 */	lwz r3, 0(r4)
/* 80C2FED8  80 04 00 04 */	lwz r0, 4(r4)
/* 80C2FEDC  90 61 00 08 */	stw r3, 8(r1)
/* 80C2FEE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C2FEE4  80 04 00 08 */	lwz r0, 8(r4)
/* 80C2FEE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C2FEEC  7F E3 FB 78 */	mr r3, r31
/* 80C2FEF0  38 81 00 08 */	addi r4, r1, 8
/* 80C2FEF4  4B FF E5 41 */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
lbl_80C2FEF8:
/* 80C2FEF8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C2FEFC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C2FF00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C2FF04  7C 08 03 A6 */	mtlr r0
/* 80C2FF08  38 21 00 30 */	addi r1, r1, 0x30
/* 80C2FF0C  4E 80 00 20 */	blr 
