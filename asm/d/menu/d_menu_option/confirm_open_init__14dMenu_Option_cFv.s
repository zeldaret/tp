lbl_801E4B34:
/* 801E4B34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801E4B38  7C 08 02 A6 */	mflr r0
/* 801E4B3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801E4B40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801E4B44  7C 7F 1B 78 */	mr r31, r3
/* 801E4B48  88 03 03 F7 */	lbz r0, 0x3f7(r3)
/* 801E4B4C  28 00 00 01 */	cmplwi r0, 1
/* 801E4B50  40 82 00 14 */	bne lbl_801E4B64
/* 801E4B54  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801E4B58  38 80 05 5F */	li r4, 0x55f
/* 801E4B5C  4B FA D6 9D */	bl setText__15dFile_warning_cFUl
/* 801E4B60  48 00 00 10 */	b lbl_801E4B70
lbl_801E4B64:
/* 801E4B64  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801E4B68  38 80 05 60 */	li r4, 0x560
/* 801E4B6C  4B FA D6 8D */	bl setText__15dFile_warning_cFUl
lbl_801E4B70:
/* 801E4B70  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801E4B74  4B FA D5 45 */	bl openInit__15dFile_warning_cFv
/* 801E4B78  7F E3 FB 78 */	mr r3, r31
/* 801E4B7C  38 80 04 73 */	li r4, 0x473
/* 801E4B80  38 A0 04 7D */	li r5, 0x47d
/* 801E4B84  48 00 37 41 */	bl yesnoMenuMoveAnmInitSet__14dMenu_Option_cFii
/* 801E4B88  7F E3 FB 78 */	mr r3, r31
/* 801E4B8C  48 00 2B 61 */	bl getSelectType__14dMenu_Option_cFv
/* 801E4B90  98 7F 04 03 */	stb r3, 0x403(r31)
/* 801E4B94  7F E3 FB 78 */	mr r3, r31
/* 801E4B98  88 9F 04 03 */	lbz r4, 0x403(r31)
/* 801E4B9C  38 A0 00 01 */	li r5, 1
/* 801E4BA0  48 00 28 39 */	bl setSelectColor__14dMenu_Option_cFUcb
/* 801E4BA4  7F E3 FB 78 */	mr r3, r31
/* 801E4BA8  38 80 00 01 */	li r4, 1
/* 801E4BAC  48 00 2B 6D */	bl changeBarColor__14dMenu_Option_cFb
/* 801E4BB0  7F E3 FB 78 */	mr r3, r31
/* 801E4BB4  38 80 00 00 */	li r4, 0
/* 801E4BB8  48 00 32 E1 */	bl setAButtonString__14dMenu_Option_cFUs
/* 801E4BBC  7F E3 FB 78 */	mr r3, r31
/* 801E4BC0  38 80 00 00 */	li r4, 0
/* 801E4BC4  48 00 33 D9 */	bl setBButtonString__14dMenu_Option_cFUs
/* 801E4BC8  38 00 00 51 */	li r0, 0x51
/* 801E4BCC  90 01 00 08 */	stw r0, 8(r1)
/* 801E4BD0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4BD4  38 81 00 08 */	addi r4, r1, 8
/* 801E4BD8  38 A0 00 00 */	li r5, 0
/* 801E4BDC  38 C0 00 00 */	li r6, 0
/* 801E4BE0  38 E0 00 00 */	li r7, 0
/* 801E4BE4  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4BE8  FC 40 08 90 */	fmr f2, f1
/* 801E4BEC  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4BF0  FC 80 18 90 */	fmr f4, f3
/* 801E4BF4  39 00 00 00 */	li r8, 0
/* 801E4BF8  48 0C 6D 8D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E4BFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801E4C00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801E4C04  7C 08 03 A6 */	mtlr r0
/* 801E4C08  38 21 00 20 */	addi r1, r1, 0x20
/* 801E4C0C  4E 80 00 20 */	blr 
