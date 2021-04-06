lbl_80A0ADF8:
/* 80A0ADF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0ADFC  7C 08 02 A6 */	mflr r0
/* 80A0AE00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0AE04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0AE08  7C 7F 1B 78 */	mr r31, r3
/* 80A0AE0C  3C 80 80 A1 */	lis r4, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A0AE10  38 A4 C2 70 */	addi r5, r4, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A0AE14  A8 85 00 4C */	lha r4, 0x4c(r5)
/* 80A0AE18  A8 A5 00 4E */	lha r5, 0x4e(r5)
/* 80A0AE1C  4B 74 94 5D */	bl getDistTableIdx__8daNpcF_cFii
/* 80A0AE20  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80A0AE24  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80A0AE28  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80A0AE2C  7F E3 FB 78 */	mr r3, r31
/* 80A0AE30  3C 80 80 A1 */	lis r4, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A0AE34  38 A4 C2 70 */	addi r5, r4, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A0AE38  A8 85 00 48 */	lha r4, 0x48(r5)
/* 80A0AE3C  A8 A5 00 4A */	lha r5, 0x4a(r5)
/* 80A0AE40  4B 74 94 39 */	bl getDistTableIdx__8daNpcF_cFii
/* 80A0AE44  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80A0AE48  88 1F 0D E9 */	lbz r0, 0xde9(r31)
/* 80A0AE4C  28 00 00 00 */	cmplwi r0, 0
/* 80A0AE50  41 82 00 10 */	beq lbl_80A0AE60
/* 80A0AE54  38 00 00 0A */	li r0, 0xa
/* 80A0AE58  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80A0AE5C  48 00 00 0C */	b lbl_80A0AE68
lbl_80A0AE60:
/* 80A0AE60  38 00 00 00 */	li r0, 0
/* 80A0AE64  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80A0AE68:
/* 80A0AE68  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80A0AE6C  3C 80 80 A1 */	lis r4, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A0AE70  38 84 C2 70 */	addi r4, r4, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A0AE74  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A0AE78  4B 66 B0 C9 */	bl SetWallR__12dBgS_AcchCirFf
/* 80A0AE7C  3C 60 80 A1 */	lis r3, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A0AE80  38 63 C2 70 */	addi r3, r3, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A0AE84  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A0AE88  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 80A0AE8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A0AE90  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80A0AE94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0AE98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0AE9C  7C 08 03 A6 */	mtlr r0
/* 80A0AEA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0AEA4  4E 80 00 20 */	blr 
