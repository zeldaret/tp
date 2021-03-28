lbl_80AFF4CC:
/* 80AFF4CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AFF4D0  7C 08 02 A6 */	mflr r0
/* 80AFF4D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFF4D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFF4DC  4B 86 2D 00 */	b _savegpr_29
/* 80AFF4E0  7C 7E 1B 78 */	mr r30, r3
/* 80AFF4E4  3B E0 00 00 */	li r31, 0
/* 80AFF4E8  A0 03 0E 02 */	lhz r0, 0xe02(r3)
/* 80AFF4EC  2C 00 00 02 */	cmpwi r0, 2
/* 80AFF4F0  41 82 00 A8 */	beq lbl_80AFF598
/* 80AFF4F4  40 80 01 9C */	bge lbl_80AFF690
/* 80AFF4F8  2C 00 00 00 */	cmpwi r0, 0
/* 80AFF4FC  40 80 00 0C */	bge lbl_80AFF508
/* 80AFF500  48 00 01 90 */	b lbl_80AFF690
/* 80AFF504  48 00 01 8C */	b lbl_80AFF690
lbl_80AFF508:
/* 80AFF508  80 9E 0D F4 */	lwz r4, 0xdf4(r30)
/* 80AFF50C  38 A0 00 00 */	li r5, 0
/* 80AFF510  4B 65 48 0C */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AFF514  7F C3 F3 78 */	mr r3, r30
/* 80AFF518  38 80 00 03 */	li r4, 3
/* 80AFF51C  3C A0 80 B0 */	lis r5, lit_5126@ha
/* 80AFF520  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)
/* 80AFF524  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AFF528  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFF52C  7D 89 03 A6 */	mtctr r12
/* 80AFF530  4E 80 04 21 */	bctrl 
/* 80AFF534  7F C3 F3 78 */	mr r3, r30
/* 80AFF538  38 80 00 00 */	li r4, 0
/* 80AFF53C  3C A0 80 B0 */	lis r5, lit_5126@ha
/* 80AFF540  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)
/* 80AFF544  38 A0 00 00 */	li r5, 0
/* 80AFF548  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AFF54C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF550  7D 89 03 A6 */	mtctr r12
/* 80AFF554  4E 80 04 21 */	bctrl 
/* 80AFF558  A8 1E 0E 00 */	lha r0, 0xe00(r30)
/* 80AFF55C  2C 00 00 02 */	cmpwi r0, 2
/* 80AFF560  41 82 00 0C */	beq lbl_80AFF56C
/* 80AFF564  38 00 00 02 */	li r0, 2
/* 80AFF568  B0 1E 0E 00 */	sth r0, 0xe00(r30)
lbl_80AFF56C:
/* 80AFF56C  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AFF570  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AFF574  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AFF578  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AFF57C  4B 65 11 40 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AFF580  38 00 00 00 */	li r0, 0
/* 80AFF584  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80AFF588  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80AFF58C  38 00 00 02 */	li r0, 2
/* 80AFF590  B0 1E 0E 02 */	sth r0, 0xe02(r30)
/* 80AFF594  48 00 00 FC */	b lbl_80AFF690
lbl_80AFF598:
/* 80AFF598  38 80 00 00 */	li r4, 0
/* 80AFF59C  38 A0 00 01 */	li r5, 1
/* 80AFF5A0  38 C0 00 00 */	li r6, 0
/* 80AFF5A4  4B 65 47 E0 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AFF5A8  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF5AC  41 82 00 38 */	beq lbl_80AFF5E4
/* 80AFF5B0  38 00 00 00 */	li r0, 0
/* 80AFF5B4  98 1E 09 EC */	stb r0, 0x9ec(r30)
/* 80AFF5B8  88 1E 09 EC */	lbz r0, 0x9ec(r30)
/* 80AFF5BC  28 00 00 00 */	cmplwi r0, 0
/* 80AFF5C0  40 82 00 14 */	bne lbl_80AFF5D4
/* 80AFF5C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AFF5C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AFF5CC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AFF5D0  4B 54 2E 98 */	b reset__14dEvt_control_cFv
lbl_80AFF5D4:
/* 80AFF5D4  3B E0 00 01 */	li r31, 1
/* 80AFF5D8  38 00 00 03 */	li r0, 3
/* 80AFF5DC  B0 1E 0E 02 */	sth r0, 0xe02(r30)
/* 80AFF5E0  48 00 00 B0 */	b lbl_80AFF690
lbl_80AFF5E4:
/* 80AFF5E4  83 BE 09 50 */	lwz r29, 0x950(r30)
/* 80AFF5E8  7F C3 F3 78 */	mr r3, r30
/* 80AFF5EC  38 81 00 0C */	addi r4, r1, 0xc
/* 80AFF5F0  38 A1 00 08 */	addi r5, r1, 8
/* 80AFF5F4  7F C6 F3 78 */	mr r6, r30
/* 80AFF5F8  38 E0 00 00 */	li r7, 0
/* 80AFF5FC  4B 65 41 1C */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80AFF600  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF604  41 82 00 58 */	beq lbl_80AFF65C
/* 80AFF608  88 1E 09 EB */	lbz r0, 0x9eb(r30)
/* 80AFF60C  28 00 00 00 */	cmplwi r0, 0
/* 80AFF610  40 82 00 80 */	bne lbl_80AFF690
/* 80AFF614  7F C3 F3 78 */	mr r3, r30
/* 80AFF618  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80AFF61C  3C A0 80 B0 */	lis r5, lit_5126@ha
/* 80AFF620  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)
/* 80AFF624  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AFF628  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFF62C  7D 89 03 A6 */	mtctr r12
/* 80AFF630  4E 80 04 21 */	bctrl 
/* 80AFF634  7F C3 F3 78 */	mr r3, r30
/* 80AFF638  80 81 00 08 */	lwz r4, 8(r1)
/* 80AFF63C  3C A0 80 B0 */	lis r5, lit_5126@ha
/* 80AFF640  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)
/* 80AFF644  38 A0 00 00 */	li r5, 0
/* 80AFF648  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AFF64C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF650  7D 89 03 A6 */	mtctr r12
/* 80AFF654  4E 80 04 21 */	bctrl 
/* 80AFF658  48 00 00 38 */	b lbl_80AFF690
lbl_80AFF65C:
/* 80AFF65C  2C 1D 00 00 */	cmpwi r29, 0
/* 80AFF660  41 82 00 30 */	beq lbl_80AFF690
/* 80AFF664  88 1E 09 EB */	lbz r0, 0x9eb(r30)
/* 80AFF668  28 00 00 00 */	cmplwi r0, 0
/* 80AFF66C  40 82 00 24 */	bne lbl_80AFF690
/* 80AFF670  7F C3 F3 78 */	mr r3, r30
/* 80AFF674  38 80 00 03 */	li r4, 3
/* 80AFF678  3C A0 80 B0 */	lis r5, lit_5126@ha
/* 80AFF67C  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)
/* 80AFF680  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AFF684  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFF688  7D 89 03 A6 */	mtctr r12
/* 80AFF68C  4E 80 04 21 */	bctrl 
lbl_80AFF690:
/* 80AFF690  7F E3 FB 78 */	mr r3, r31
/* 80AFF694  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFF698  4B 86 2B 90 */	b _restgpr_29
/* 80AFF69C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AFF6A0  7C 08 03 A6 */	mtlr r0
/* 80AFF6A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AFF6A8  4E 80 00 20 */	blr 
