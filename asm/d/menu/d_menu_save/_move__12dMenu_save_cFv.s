lbl_801F1048:
/* 801F1048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F104C  7C 08 02 A6 */	mflr r0
/* 801F1050  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F1054  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F1058  7C 7F 1B 78 */	mr r31, r3
/* 801F105C  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 801F1060  80 03 00 00 */	lwz r0, 0(r3)
/* 801F1064  2C 00 00 00 */	cmpwi r0, 0
/* 801F1068  41 82 00 10 */	beq lbl_801F1078
/* 801F106C  88 1F 21 A0 */	lbz r0, 0x21a0(r31)
/* 801F1070  28 00 00 00 */	cmplwi r0, 0
/* 801F1074  41 82 00 78 */	beq lbl_801F10EC
lbl_801F1078:
/* 801F1078  7F E3 FB 78 */	mr r3, r31
/* 801F107C  48 00 02 75 */	bl memCardWatch__12dMenu_save_cFv
/* 801F1080  88 1F 01 B2 */	lbz r0, 0x1b2(r31)
/* 801F1084  28 00 00 2A */	cmplwi r0, 0x2a
/* 801F1088  41 82 00 2C */	beq lbl_801F10B4
/* 801F108C  80 7F 21 8C */	lwz r3, 0x218c(r31)
/* 801F1090  28 03 00 00 */	cmplwi r3, 0
/* 801F1094  41 82 00 20 */	beq lbl_801F10B4
/* 801F1098  88 03 00 60 */	lbz r0, 0x60(r3)
/* 801F109C  98 1F 21 9D */	stb r0, 0x219d(r31)
/* 801F10A0  80 7F 21 8C */	lwz r3, 0x218c(r31)
/* 801F10A4  88 03 00 60 */	lbz r0, 0x60(r3)
/* 801F10A8  28 00 00 00 */	cmplwi r0, 0
/* 801F10AC  41 82 00 08 */	beq lbl_801F10B4
/* 801F10B0  48 04 C7 29 */	bl move__17dMsgScrnExplain_cFv
lbl_801F10B4:
/* 801F10B4  7F E3 FB 78 */	mr r3, r31
/* 801F10B8  88 1F 01 B2 */	lbz r0, 0x1b2(r31)
/* 801F10BC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801F10C0  3C 80 80 3C */	lis r4, MenuSaveProc@ha /* 0x803BE424@ha */
/* 801F10C4  38 04 E4 24 */	addi r0, r4, MenuSaveProc@l /* 0x803BE424@l */
/* 801F10C8  7D 80 2A 14 */	add r12, r0, r5
/* 801F10CC  48 17 0F B9 */	bl __ptmf_scall
/* 801F10D0  60 00 00 00 */	nop 
/* 801F10D4  7F E3 FB 78 */	mr r3, r31
/* 801F10D8  48 00 00 29 */	bl saveSelAnm__12dMenu_save_cFv
/* 801F10DC  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801F10E0  28 03 00 00 */	cmplwi r3, 0
/* 801F10E4  41 82 00 08 */	beq lbl_801F10EC
/* 801F10E8  4B FA 0E 31 */	bl _move__15dFile_warning_cFv
lbl_801F10EC:
/* 801F10EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F10F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F10F4  7C 08 03 A6 */	mtlr r0
/* 801F10F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801F10FC  4E 80 00 20 */	blr 
