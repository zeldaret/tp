lbl_80186E14:
/* 80186E14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80186E18  7C 08 02 A6 */	mflr r0
/* 80186E1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80186E20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80186E24  7C 7F 1B 78 */	mr r31, r3
/* 80186E28  88 03 02 67 */	lbz r0, 0x267(r3)
/* 80186E2C  28 00 00 FF */	cmplwi r0, 0xff
/* 80186E30  41 82 00 90 */	beq lbl_80186EC0
/* 80186E34  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80186E38  7C 7F 02 14 */	add r3, r31, r0
/* 80186E3C  80 63 03 40 */	lwz r3, 0x340(r3)
/* 80186E40  80 63 00 04 */	lwz r3, 4(r3)
/* 80186E44  80 9F 03 28 */	lwz r4, 0x328(r31)
/* 80186E48  81 83 00 00 */	lwz r12, 0(r3)
/* 80186E4C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80186E50  7D 89 03 A6 */	mtctr r12
/* 80186E54  4E 80 04 21 */	bctrl 
/* 80186E58  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 80186E5C  54 04 10 3A */	slwi r4, r0, 2
/* 80186E60  3C 60 80 3C */	lis r3, MenuSelEndFrameTbl@ha /* 0x803BA890@ha */
/* 80186E64  38 63 A8 90 */	addi r3, r3, MenuSelEndFrameTbl@l /* 0x803BA890@l */
/* 80186E68  7C 03 20 2E */	lwzx r0, r3, r4
/* 80186E6C  7C 7F 22 14 */	add r3, r31, r4
/* 80186E70  90 03 03 4C */	stw r0, 0x34c(r3)
/* 80186E74  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 80186E78  54 00 10 3A */	slwi r0, r0, 2
/* 80186E7C  7C 7F 02 14 */	add r3, r31, r0
/* 80186E80  80 03 03 4C */	lwz r0, 0x34c(r3)
/* 80186E84  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 80186E88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80186E8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80186E90  3C 00 43 30 */	lis r0, 0x4330
/* 80186E94  90 01 00 08 */	stw r0, 8(r1)
/* 80186E98  C8 01 00 08 */	lfd f0, 8(r1)
/* 80186E9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80186EA0  80 7F 03 28 */	lwz r3, 0x328(r31)
/* 80186EA4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80186EA8  88 1F 02 67 */	lbz r0, 0x267(r31)
/* 80186EAC  54 00 10 3A */	slwi r0, r0, 2
/* 80186EB0  7C 7F 02 14 */	add r3, r31, r0
/* 80186EB4  80 63 03 40 */	lwz r3, 0x340(r3)
/* 80186EB8  80 63 00 04 */	lwz r3, 4(r3)
/* 80186EBC  48 17 11 11 */	bl animationTransform__7J2DPaneFv
lbl_80186EC0:
/* 80186EC0  88 1F 02 66 */	lbz r0, 0x266(r31)
/* 80186EC4  28 00 00 FF */	cmplwi r0, 0xff
/* 80186EC8  41 82 00 BC */	beq lbl_80186F84
/* 80186ECC  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80186ED0  7C 7F 02 14 */	add r3, r31, r0
/* 80186ED4  80 63 03 40 */	lwz r3, 0x340(r3)
/* 80186ED8  80 63 00 04 */	lwz r3, 4(r3)
/* 80186EDC  80 9F 03 2C */	lwz r4, 0x32c(r31)
/* 80186EE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80186EE4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80186EE8  7D 89 03 A6 */	mtctr r12
/* 80186EEC  4E 80 04 21 */	bctrl 
/* 80186EF0  88 1F 02 66 */	lbz r0, 0x266(r31)
/* 80186EF4  54 04 10 3A */	slwi r4, r0, 2
/* 80186EF8  3C 60 80 3C */	lis r3, MenuSelStartFrameTbl@ha /* 0x803BA884@ha */
/* 80186EFC  38 63 A8 84 */	addi r3, r3, MenuSelStartFrameTbl@l /* 0x803BA884@l */
/* 80186F00  7C 03 20 2E */	lwzx r0, r3, r4
/* 80186F04  7C 7F 22 14 */	add r3, r31, r4
/* 80186F08  90 03 03 4C */	stw r0, 0x34c(r3)
/* 80186F0C  88 1F 02 66 */	lbz r0, 0x266(r31)
/* 80186F10  54 00 10 3A */	slwi r0, r0, 2
/* 80186F14  7C 7F 02 14 */	add r3, r31, r0
/* 80186F18  80 03 03 4C */	lwz r0, 0x34c(r3)
/* 80186F1C  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 80186F20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80186F24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80186F28  3C 00 43 30 */	lis r0, 0x4330
/* 80186F2C  90 01 00 08 */	stw r0, 8(r1)
/* 80186F30  C8 01 00 08 */	lfd f0, 8(r1)
/* 80186F34  EC 00 08 28 */	fsubs f0, f0, f1
/* 80186F38  80 7F 03 2C */	lwz r3, 0x32c(r31)
/* 80186F3C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80186F40  88 1F 02 66 */	lbz r0, 0x266(r31)
/* 80186F44  54 00 10 3A */	slwi r0, r0, 2
/* 80186F48  7C 7F 02 14 */	add r3, r31, r0
/* 80186F4C  80 63 03 40 */	lwz r3, 0x340(r3)
/* 80186F50  80 63 00 04 */	lwz r3, 4(r3)
/* 80186F54  48 17 10 79 */	bl animationTransform__7J2DPaneFv
/* 80186F58  7F E3 FB 78 */	mr r3, r31
/* 80186F5C  88 9F 02 66 */	lbz r4, 0x266(r31)
/* 80186F60  38 A0 00 FF */	li r5, 0xff
/* 80186F64  38 C0 00 00 */	li r6, 0
/* 80186F68  3C E0 80 43 */	lis r7, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 80186F6C  38 E7 C9 EC */	addi r7, r7, g_fsHIO@l /* 0x8042C9EC@l */
/* 80186F70  88 E7 00 08 */	lbz r7, 8(r7)
/* 80186F74  48 00 69 11 */	bl menuWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc
/* 80186F78  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80186F7C  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 80186F80  48 00 E3 21 */	bl setAlphaRate__16dSelect_cursor_cFf
lbl_80186F84:
/* 80186F84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80186F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80186F8C  7C 08 03 A6 */	mtlr r0
/* 80186F90  38 21 00 20 */	addi r1, r1, 0x20
/* 80186F94  4E 80 00 20 */	blr 
