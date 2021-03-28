lbl_8018F488:
/* 8018F488  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018F48C  7C 08 02 A6 */	mflr r0
/* 8018F490  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018F494  39 61 00 20 */	addi r11, r1, 0x20
/* 8018F498  48 1D 2D 45 */	bl _savegpr_29
/* 8018F49C  7C 7F 1B 78 */	mr r31, r3
/* 8018F4A0  48 00 08 91 */	bl errorTxtChangeAnm__14dFile_select_cFv
/* 8018F4A4  7C 7D 1B 78 */	mr r29, r3
/* 8018F4A8  7F E3 FB 78 */	mr r3, r31
/* 8018F4AC  4B FF 98 8D */	bl yesnoMenuMoveAnm__14dFile_select_cFv
/* 8018F4B0  7C 7E 1B 78 */	mr r30, r3
/* 8018F4B4  7F E3 FB 78 */	mr r3, r31
/* 8018F4B8  4B FF E0 BD */	bl ketteiTxtDispAnm__14dFile_select_cFv
/* 8018F4BC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8018F4C0  28 00 00 01 */	cmplwi r0, 1
/* 8018F4C4  40 82 00 A4 */	bne lbl_8018F568
/* 8018F4C8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018F4CC  28 00 00 01 */	cmplwi r0, 1
/* 8018F4D0  40 82 00 98 */	bne lbl_8018F568
/* 8018F4D4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018F4D8  28 00 00 01 */	cmplwi r0, 1
/* 8018F4DC  40 82 00 8C */	bne lbl_8018F568
/* 8018F4E0  88 1F 02 68 */	lbz r0, 0x268(r31)
/* 8018F4E4  28 00 00 00 */	cmplwi r0, 0
/* 8018F4E8  41 82 00 30 */	beq lbl_8018F518
/* 8018F4EC  3C 60 80 43 */	lis r3, g_fsHIO@ha
/* 8018F4F0  38 63 C9 EC */	addi r3, r3, g_fsHIO@l
/* 8018F4F4  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8018F4F8  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8018F4FC  7F E3 FB 78 */	mr r3, r31
/* 8018F500  48 00 0D 55 */	bl setInitSaveData__14dFile_select_cFv
/* 8018F504  7F E3 FB 78 */	mr r3, r31
/* 8018F508  48 00 0D B1 */	bl dataSave__14dFile_select_cFv
/* 8018F50C  38 00 00 0F */	li r0, 0xf
/* 8018F510  98 1F 02 71 */	stb r0, 0x271(r31)
/* 8018F514  48 00 00 54 */	b lbl_8018F568
lbl_8018F518:
/* 8018F518  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 8018F51C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 8018F520  80 64 00 00 */	lwz r3, 0(r4)
/* 8018F524  80 04 00 04 */	lwz r0, 4(r4)
/* 8018F528  90 7F 02 84 */	stw r3, 0x284(r31)
/* 8018F52C  90 1F 02 88 */	stw r0, 0x288(r31)
/* 8018F530  80 04 00 08 */	lwz r0, 8(r4)
/* 8018F534  90 1F 02 8C */	stw r0, 0x28c(r31)
/* 8018F538  3C 60 80 3C */	lis r3, lit_8083@ha
/* 8018F53C  38 83 B2 F8 */	addi r4, r3, lit_8083@l
/* 8018F540  80 64 00 00 */	lwz r3, 0(r4)
/* 8018F544  80 04 00 04 */	lwz r0, 4(r4)
/* 8018F548  90 7F 02 90 */	stw r3, 0x290(r31)
/* 8018F54C  90 1F 02 94 */	stw r0, 0x294(r31)
/* 8018F550  80 04 00 08 */	lwz r0, 8(r4)
/* 8018F554  90 1F 02 98 */	stw r0, 0x298(r31)
/* 8018F558  38 00 00 03 */	li r0, 3
/* 8018F55C  98 1F 02 74 */	stb r0, 0x274(r31)
/* 8018F560  38 00 00 02 */	li r0, 2
/* 8018F564  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018F568:
/* 8018F568  39 61 00 20 */	addi r11, r1, 0x20
/* 8018F56C  48 1D 2C BD */	bl _restgpr_29
/* 8018F570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018F574  7C 08 03 A6 */	mtlr r0
/* 8018F578  38 21 00 20 */	addi r1, r1, 0x20
/* 8018F57C  4E 80 00 20 */	blr 
