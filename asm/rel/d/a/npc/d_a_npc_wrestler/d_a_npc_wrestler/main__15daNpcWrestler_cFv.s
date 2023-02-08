lbl_80B3EB94:
/* 80B3EB94  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B3EB98  7C 08 02 A6 */	mflr r0
/* 80B3EB9C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B3EBA0  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 80B3EBA4  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 80B3EBA8  7C 7E 1B 78 */	mr r30, r3
/* 80B3EBAC  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B3EBB0  3B E3 16 DC */	addi r31, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B3EBB4  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B3EBB8  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B3EBBC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3EBC0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3EBC4  90 61 00 78 */	stw r3, 0x78(r1)
/* 80B3EBC8  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80B3EBCC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3EBD0  90 01 00 80 */	stw r0, 0x80(r1)
/* 80B3EBD4  38 61 00 78 */	addi r3, r1, 0x78
/* 80B3EBD8  4B 82 34 41 */	bl __ptmf_test
/* 80B3EBDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B3EBE0  41 82 00 C4 */	beq lbl_80B3ECA4
/* 80B3EBE4  80 61 00 78 */	lwz r3, 0x78(r1)
/* 80B3EBE8  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80B3EBEC  90 61 00 84 */	stw r3, 0x84(r1)
/* 80B3EBF0  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B3EBF4  80 01 00 80 */	lwz r0, 0x80(r1)
/* 80B3EBF8  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80B3EBFC  38 61 00 84 */	addi r3, r1, 0x84
/* 80B3EC00  38 9E 0D CC */	addi r4, r30, 0xdcc
/* 80B3EC04  4B 82 34 45 */	bl __ptmf_cmpr
/* 80B3EC08  7C 60 00 34 */	cntlzw r0, r3
/* 80B3EC0C  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80B3EC10  40 82 00 94 */	bne lbl_80B3ECA4
/* 80B3EC14  80 61 00 78 */	lwz r3, 0x78(r1)
/* 80B3EC18  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80B3EC1C  90 61 00 90 */	stw r3, 0x90(r1)
/* 80B3EC20  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B3EC24  80 01 00 80 */	lwz r0, 0x80(r1)
/* 80B3EC28  90 01 00 98 */	stw r0, 0x98(r1)
/* 80B3EC2C  38 00 00 03 */	li r0, 3
/* 80B3EC30  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B3EC34  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B3EC38  4B 82 33 E1 */	bl __ptmf_test
/* 80B3EC3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3EC40  41 82 00 18 */	beq lbl_80B3EC58
/* 80B3EC44  7F C3 F3 78 */	mr r3, r30
/* 80B3EC48  38 80 00 00 */	li r4, 0
/* 80B3EC4C  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B3EC50  4B 82 34 35 */	bl __ptmf_scall
/* 80B3EC54  60 00 00 00 */	nop 
lbl_80B3EC58:
/* 80B3EC58  38 00 00 00 */	li r0, 0
/* 80B3EC5C  B0 1E 0E 96 */	sth r0, 0xe96(r30)
/* 80B3EC60  80 61 00 90 */	lwz r3, 0x90(r1)
/* 80B3EC64  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B3EC68  90 7E 0D CC */	stw r3, 0xdcc(r30)
/* 80B3EC6C  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 80B3EC70  80 01 00 98 */	lwz r0, 0x98(r1)
/* 80B3EC74  90 1E 0D D4 */	stw r0, 0xdd4(r30)
/* 80B3EC78  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B3EC7C  4B 82 33 9D */	bl __ptmf_test
/* 80B3EC80  2C 03 00 00 */	cmpwi r3, 0
/* 80B3EC84  41 82 00 18 */	beq lbl_80B3EC9C
/* 80B3EC88  7F C3 F3 78 */	mr r3, r30
/* 80B3EC8C  38 80 00 00 */	li r4, 0
/* 80B3EC90  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B3EC94  4B 82 33 F1 */	bl __ptmf_scall
/* 80B3EC98  60 00 00 00 */	nop 
lbl_80B3EC9C:
/* 80B3EC9C  38 00 00 01 */	li r0, 1
/* 80B3ECA0  48 00 00 08 */	b lbl_80B3ECA8
lbl_80B3ECA4:
/* 80B3ECA4  38 00 00 00 */	li r0, 0
lbl_80B3ECA8:
/* 80B3ECA8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B3ECAC  40 82 00 28 */	bne lbl_80B3ECD4
/* 80B3ECB0  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80B3ECB4  4B 82 33 65 */	bl __ptmf_test
/* 80B3ECB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B3ECBC  41 82 00 18 */	beq lbl_80B3ECD4
/* 80B3ECC0  7F C3 F3 78 */	mr r3, r30
/* 80B3ECC4  38 80 00 00 */	li r4, 0
/* 80B3ECC8  39 9E 0D CC */	addi r12, r30, 0xdcc
/* 80B3ECCC  4B 82 33 B9 */	bl __ptmf_scall
/* 80B3ECD0  60 00 00 00 */	nop 
lbl_80B3ECD4:
/* 80B3ECD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3ECD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3ECDC  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B3ECE0  28 00 00 00 */	cmplwi r0, 0
/* 80B3ECE4  41 82 00 30 */	beq lbl_80B3ED14
/* 80B3ECE8  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80B3ECEC  28 00 00 01 */	cmplwi r0, 1
/* 80B3ECF0  41 82 00 24 */	beq lbl_80B3ED14
/* 80B3ECF4  80 9E 0E 78 */	lwz r4, 0xe78(r30)
/* 80B3ECF8  3C 04 00 01 */	addis r0, r4, 1
/* 80B3ECFC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B3ED00  41 82 00 14 */	beq lbl_80B3ED14
/* 80B3ED04  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B3ED08  4B 50 49 E5 */	bl setPtI_Id__14dEvt_control_cFUi
/* 80B3ED0C  38 00 FF FF */	li r0, -1
/* 80B3ED10  90 1E 0E 78 */	stw r0, 0xe78(r30)
lbl_80B3ED14:
/* 80B3ED14  80 7F 01 E0 */	lwz r3, 0x1e0(r31)
/* 80B3ED18  80 1F 01 E4 */	lwz r0, 0x1e4(r31)
/* 80B3ED1C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B3ED20  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B3ED24  80 1F 01 E8 */	lwz r0, 0x1e8(r31)
/* 80B3ED28  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B3ED2C  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 80B3ED30  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B3ED34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B3ED38  80 1F 01 EC */	lwz r0, 0x1ec(r31)
/* 80B3ED3C  90 01 00 08 */	stw r0, 8(r1)
/* 80B3ED40  38 01 00 24 */	addi r0, r1, 0x24
/* 80B3ED44  90 01 00 08 */	stw r0, 8(r1)
/* 80B3ED48  80 7F 01 F0 */	lwz r3, 0x1f0(r31)
/* 80B3ED4C  80 1F 01 F4 */	lwz r0, 0x1f4(r31)
/* 80B3ED50  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B3ED54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B3ED58  80 1F 01 F8 */	lwz r0, 0x1f8(r31)
/* 80B3ED5C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B3ED60  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 80B3ED64  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B3ED68  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B3ED6C  80 1F 01 FC */	lwz r0, 0x1fc(r31)
/* 80B3ED70  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B3ED74  38 01 00 30 */	addi r0, r1, 0x30
/* 80B3ED78  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B3ED7C  80 7F 02 00 */	lwz r3, 0x200(r31)
/* 80B3ED80  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 80B3ED84  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80B3ED88  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B3ED8C  80 1F 02 08 */	lwz r0, 0x208(r31)
/* 80B3ED90  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B3ED94  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 80B3ED98  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B3ED9C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B3EDA0  80 7F 02 0C */	lwz r3, 0x20c(r31)
/* 80B3EDA4  80 1F 02 10 */	lwz r0, 0x210(r31)
/* 80B3EDA8  90 61 00 48 */	stw r3, 0x48(r1)
/* 80B3EDAC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B3EDB0  80 1F 02 14 */	lwz r0, 0x214(r31)
/* 80B3EDB4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B3EDB8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B3EDBC  80 7F 02 18 */	lwz r3, 0x218(r31)
/* 80B3EDC0  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 80B3EDC4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B3EDC8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B3EDCC  38 01 00 3C */	addi r0, r1, 0x3c
/* 80B3EDD0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B3EDD4  38 01 00 48 */	addi r0, r1, 0x48
/* 80B3EDD8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B3EDDC  80 7F 02 20 */	lwz r3, 0x220(r31)
/* 80B3EDE0  80 1F 02 24 */	lwz r0, 0x224(r31)
/* 80B3EDE4  90 61 00 54 */	stw r3, 0x54(r1)
/* 80B3EDE8  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B3EDEC  80 1F 02 28 */	lwz r0, 0x228(r31)
/* 80B3EDF0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80B3EDF4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B3EDF8  80 1F 02 2C */	lwz r0, 0x22c(r31)
/* 80B3EDFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B3EE00  38 01 00 54 */	addi r0, r1, 0x54
/* 80B3EE04  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B3EE08  80 7F 02 30 */	lwz r3, 0x230(r31)
/* 80B3EE0C  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 80B3EE10  90 61 00 60 */	stw r3, 0x60(r1)
/* 80B3EE14  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B3EE18  80 1F 02 38 */	lwz r0, 0x238(r31)
/* 80B3EE1C  90 01 00 68 */	stw r0, 0x68(r1)
/* 80B3EE20  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 80B3EE24  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B3EE28  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B3EE2C  80 1F 02 3C */	lwz r0, 0x23c(r31)
/* 80B3EE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3EE34  38 01 00 60 */	addi r0, r1, 0x60
/* 80B3EE38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3EE3C  80 7F 02 40 */	lwz r3, 0x240(r31)
/* 80B3EE40  80 1F 02 44 */	lwz r0, 0x244(r31)
/* 80B3EE44  90 61 00 6C */	stw r3, 0x6c(r1)
/* 80B3EE48  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B3EE4C  80 1F 02 48 */	lwz r0, 0x248(r31)
/* 80B3EE50  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B3EE54  80 7E 0B D8 */	lwz r3, 0xbd8(r30)
/* 80B3EE58  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B3EE5C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80B3EE60  80 1F 02 4C */	lwz r0, 0x24c(r31)
/* 80B3EE64  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B3EE68  38 01 00 6C */	addi r0, r1, 0x6c
/* 80B3EE6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B3EE70  38 A1 00 98 */	addi r5, r1, 0x98
/* 80B3EE74  38 9F 02 4C */	addi r4, r31, 0x24c
/* 80B3EE78  38 00 00 03 */	li r0, 3
/* 80B3EE7C  7C 09 03 A6 */	mtctr r0
lbl_80B3EE80:
/* 80B3EE80  80 64 00 04 */	lwz r3, 4(r4)
/* 80B3EE84  84 04 00 08 */	lwzu r0, 8(r4)
/* 80B3EE88  90 65 00 04 */	stw r3, 4(r5)
/* 80B3EE8C  94 05 00 08 */	stwu r0, 8(r5)
/* 80B3EE90  42 00 FF F0 */	bdnz lbl_80B3EE80
/* 80B3EE94  38 01 00 08 */	addi r0, r1, 8
/* 80B3EE98  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80B3EE9C  38 01 00 0C */	addi r0, r1, 0xc
/* 80B3EEA0  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80B3EEA4  38 01 00 1C */	addi r0, r1, 0x1c
/* 80B3EEA8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B3EEAC  38 01 00 10 */	addi r0, r1, 0x10
/* 80B3EEB0  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80B3EEB4  38 01 00 14 */	addi r0, r1, 0x14
/* 80B3EEB8  90 01 00 AC */	stw r0, 0xac(r1)
/* 80B3EEBC  38 01 00 18 */	addi r0, r1, 0x18
/* 80B3EEC0  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 80B3EEC4  A8 7E 09 DE */	lha r3, 0x9de(r30)
/* 80B3EEC8  7C 60 07 35 */	extsh. r0, r3
/* 80B3EECC  41 80 00 18 */	blt lbl_80B3EEE4
/* 80B3EED0  2C 03 00 06 */	cmpwi r3, 6
/* 80B3EED4  40 80 00 10 */	bge lbl_80B3EEE4
/* 80B3EED8  7F C3 F3 78 */	mr r3, r30
/* 80B3EEDC  38 81 00 9C */	addi r4, r1, 0x9c
/* 80B3EEE0  4B 61 42 71 */	bl playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80B3EEE4:
/* 80B3EEE4  7F C3 F3 78 */	mr r3, r30
/* 80B3EEE8  48 00 0E 01 */	bl playMotion__15daNpcWrestler_cFv
/* 80B3EEEC  7F C3 F3 78 */	mr r3, r30
/* 80B3EEF0  48 00 00 21 */	bl setWrestlerVoice__15daNpcWrestler_cFv
/* 80B3EEF4  38 60 00 01 */	li r3, 1
/* 80B3EEF8  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 80B3EEFC  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 80B3EF00  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B3EF04  7C 08 03 A6 */	mtlr r0
/* 80B3EF08  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B3EF0C  4E 80 00 20 */	blr 
