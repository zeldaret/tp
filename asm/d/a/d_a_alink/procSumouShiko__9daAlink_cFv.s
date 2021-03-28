lbl_800EC5F4:
/* 800EC5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EC5F8  7C 08 02 A6 */	mflr r0
/* 800EC5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EC600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EC604  93 C1 00 08 */	stw r30, 8(r1)
/* 800EC608  7C 7E 1B 78 */	mr r30, r3
/* 800EC60C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800EC610  88 03 2F 99 */	lbz r0, 0x2f99(r3)
/* 800EC614  28 00 00 0C */	cmplwi r0, 0xc
/* 800EC618  41 82 00 0C */	beq lbl_800EC624
/* 800EC61C  38 00 00 04 */	li r0, 4
/* 800EC620  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_800EC624:
/* 800EC624  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 800EC628  28 00 00 01 */	cmplwi r0, 1
/* 800EC62C  40 82 00 10 */	bne lbl_800EC63C
/* 800EC630  7F C3 F3 78 */	mr r3, r30
/* 800EC634  4B FF E3 1D */	bl procSumouReadyInit__9daAlink_cFv
/* 800EC638  48 00 00 D4 */	b lbl_800EC70C
lbl_800EC63C:
/* 800EC63C  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800EC640  2C 00 00 00 */	cmpwi r0, 0
/* 800EC644  40 82 00 B0 */	bne lbl_800EC6F4
/* 800EC648  7F E3 FB 78 */	mr r3, r31
/* 800EC64C  48 07 1E 81 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EC650  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EC654  41 82 00 28 */	beq lbl_800EC67C
/* 800EC658  7F C3 F3 78 */	mr r3, r30
/* 800EC65C  38 80 01 5E */	li r4, 0x15e
/* 800EC660  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800EC664  4B FC 09 4D */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 800EC668  38 00 00 0C */	li r0, 0xc
/* 800EC66C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800EC670  38 00 00 01 */	li r0, 1
/* 800EC674  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800EC678  48 00 00 90 */	b lbl_800EC708
lbl_800EC67C:
/* 800EC67C  7F E3 FB 78 */	mr r3, r31
/* 800EC680  C0 22 94 B8 */	lfs f1, lit_17592(r2)
/* 800EC684  48 23 BD A9 */	bl checkPass__12J3DFrameCtrlFf
/* 800EC688  2C 03 00 00 */	cmpwi r3, 0
/* 800EC68C  41 82 00 10 */	beq lbl_800EC69C
/* 800EC690  38 00 00 20 */	li r0, 0x20
/* 800EC694  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 800EC698  48 00 00 70 */	b lbl_800EC708
lbl_800EC69C:
/* 800EC69C  7F E3 FB 78 */	mr r3, r31
/* 800EC6A0  C0 22 94 BC */	lfs f1, lit_17593(r2)
/* 800EC6A4  48 23 BD 89 */	bl checkPass__12J3DFrameCtrlFf
/* 800EC6A8  2C 03 00 00 */	cmpwi r3, 0
/* 800EC6AC  41 82 00 24 */	beq lbl_800EC6D0
/* 800EC6B0  7F C3 F3 78 */	mr r3, r30
/* 800EC6B4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010061@ha */
/* 800EC6B8  38 84 00 61 */	addi r4, r4, 0x0061 /* 0x00010061@l */
/* 800EC6BC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800EC6C0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EC6C4  7D 89 03 A6 */	mtctr r12
/* 800EC6C8  4E 80 04 21 */	bctrl 
/* 800EC6CC  48 00 00 3C */	b lbl_800EC708
lbl_800EC6D0:
/* 800EC6D0  7F E3 FB 78 */	mr r3, r31
/* 800EC6D4  C0 22 93 34 */	lfs f1, lit_7710(r2)
/* 800EC6D8  48 23 BD 55 */	bl checkPass__12J3DFrameCtrlFf
/* 800EC6DC  2C 03 00 00 */	cmpwi r3, 0
/* 800EC6E0  41 82 00 28 */	beq lbl_800EC708
/* 800EC6E4  38 00 00 FE */	li r0, 0xfe
/* 800EC6E8  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800EC6EC  98 1E 2F 93 */	stb r0, 0x2f93(r30)
/* 800EC6F0  48 00 00 18 */	b lbl_800EC708
lbl_800EC6F4:
/* 800EC6F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EC6F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EC6FC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800EC700  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 800EC704  4B F5 BA 79 */	bl cutEnd__16dEvent_manager_cFi
lbl_800EC708:
/* 800EC708  38 60 00 01 */	li r3, 1
lbl_800EC70C:
/* 800EC70C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EC710  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EC714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EC718  7C 08 03 A6 */	mtlr r0
/* 800EC71C  38 21 00 10 */	addi r1, r1, 0x10
/* 800EC720  4E 80 00 20 */	blr 
