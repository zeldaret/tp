lbl_801FC668:
/* 801FC668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC66C  7C 08 02 A6 */	mflr r0
/* 801FC670  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC678  7C 7F 1B 78 */	mr r31, r3
/* 801FC67C  48 00 0A 19 */	bl markMemSize__5dMw_cFv
/* 801FC680  38 60 04 0C */	li r3, 0x40c
/* 801FC684  48 0D 25 C9 */	bl __nw__FUl
/* 801FC688  7C 60 1B 79 */	or. r0, r3, r3
/* 801FC68C  41 82 00 1C */	beq lbl_801FC6A8
/* 801FC690  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FC694  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FC698  80 84 5C B8 */	lwz r4, 0x5cb8(r4)
/* 801FC69C  80 BF 01 04 */	lwz r5, 0x104(r31)
/* 801FC6A0  4B FE 58 71 */	bl __ct__14dMenu_Option_cFP10JKRArchiveP9STControl
/* 801FC6A4  7C 60 1B 78 */	mr r0, r3
lbl_801FC6A8:
/* 801FC6A8  90 1F 01 24 */	stw r0, 0x124(r31)
/* 801FC6AC  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 801FC6B0  28 00 00 00 */	cmplwi r0, 0
/* 801FC6B4  40 82 00 44 */	bne lbl_801FC6F8
/* 801FC6B8  38 60 00 08 */	li r3, 8
/* 801FC6BC  48 0D 25 91 */	bl __nw__FUl
/* 801FC6C0  28 03 00 00 */	cmplwi r3, 0
/* 801FC6C4  41 82 00 30 */	beq lbl_801FC6F4
/* 801FC6C8  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha /* 0x803A6F88@ha */
/* 801FC6CC  38 04 6F 88 */	addi r0, r4, __vt__12dDlst_base_c@l /* 0x803A6F88@l */
/* 801FC6D0  90 03 00 00 */	stw r0, 0(r3)
/* 801FC6D4  3C 80 80 3C */	lis r4, __vt__20dDlst_MENU_CAPTURE_c@ha /* 0x803BF0D4@ha */
/* 801FC6D8  38 04 F0 D4 */	addi r0, r4, __vt__20dDlst_MENU_CAPTURE_c@l /* 0x803BF0D4@l */
/* 801FC6DC  90 03 00 00 */	stw r0, 0(r3)
/* 801FC6E0  38 80 00 00 */	li r4, 0
/* 801FC6E4  98 83 00 04 */	stb r4, 4(r3)
/* 801FC6E8  38 00 00 FF */	li r0, 0xff
/* 801FC6EC  98 03 00 05 */	stb r0, 5(r3)
/* 801FC6F0  98 83 00 06 */	stb r4, 6(r3)
lbl_801FC6F4:
/* 801FC6F4  90 7F 01 0C */	stw r3, 0x10c(r31)
lbl_801FC6F8:
/* 801FC6F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC700  7C 08 03 A6 */	mtlr r0
/* 801FC704  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC708  4E 80 00 20 */	blr 
