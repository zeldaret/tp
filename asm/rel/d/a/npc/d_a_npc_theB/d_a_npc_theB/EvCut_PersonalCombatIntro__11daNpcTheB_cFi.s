lbl_80AFF6AC:
/* 80AFF6AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AFF6B0  7C 08 02 A6 */	mflr r0
/* 80AFF6B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFF6B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFF6BC  4B 86 2B 1D */	bl _savegpr_28
/* 80AFF6C0  7C 7E 1B 78 */	mr r30, r3
/* 80AFF6C4  7C 9C 23 78 */	mr r28, r4
/* 80AFF6C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFF6CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFF6D0  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80AFF6D4  7F A3 EB 78 */	mr r3, r29
/* 80AFF6D8  4B 54 88 85 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80AFF6DC  7C 7F 1B 78 */	mr r31, r3
/* 80AFF6E0  7F A3 EB 78 */	mr r3, r29
/* 80AFF6E4  7F 84 E3 78 */	mr r4, r28
/* 80AFF6E8  4B 54 86 65 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80AFF6EC  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF6F0  41 82 00 58 */	beq lbl_80AFF748
/* 80AFF6F4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80AFF6F8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80AFF6FC  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80AFF700  7C 04 00 00 */	cmpw r4, r0
/* 80AFF704  41 82 00 0C */	beq lbl_80AFF710
/* 80AFF708  40 80 00 40 */	bge lbl_80AFF748
/* 80AFF70C  48 00 00 3C */	b lbl_80AFF748
lbl_80AFF710:
/* 80AFF710  7F C3 F3 78 */	mr r3, r30
/* 80AFF714  38 80 00 16 */	li r4, 0x16
/* 80AFF718  38 A0 00 00 */	li r5, 0
/* 80AFF71C  4B 65 46 01 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AFF720  A8 1E 0E 00 */	lha r0, 0xe00(r30)
/* 80AFF724  2C 00 00 02 */	cmpwi r0, 2
/* 80AFF728  41 82 00 0C */	beq lbl_80AFF734
/* 80AFF72C  38 00 00 02 */	li r0, 2
/* 80AFF730  B0 1E 0E 00 */	sth r0, 0xe00(r30)
lbl_80AFF734:
/* 80AFF734  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AFF738  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFF73C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFF740  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AFF744  4B 65 0F 79 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80AFF748:
/* 80AFF748  83 BE 09 50 */	lwz r29, 0x950(r30)
/* 80AFF74C  7F C3 F3 78 */	mr r3, r30
/* 80AFF750  38 81 00 0C */	addi r4, r1, 0xc
/* 80AFF754  38 A1 00 08 */	addi r5, r1, 8
/* 80AFF758  7F C6 F3 78 */	mr r6, r30
/* 80AFF75C  38 E0 00 00 */	li r7, 0
/* 80AFF760  4B 65 3F B9 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80AFF764  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF768  41 82 00 58 */	beq lbl_80AFF7C0
/* 80AFF76C  88 1E 09 EB */	lbz r0, 0x9eb(r30)
/* 80AFF770  28 00 00 00 */	cmplwi r0, 0
/* 80AFF774  40 82 00 80 */	bne lbl_80AFF7F4
/* 80AFF778  7F C3 F3 78 */	mr r3, r30
/* 80AFF77C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80AFF780  3C A0 80 B0 */	lis r5, lit_5126@ha /* 0x80B00F88@ha */
/* 80AFF784  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)  /* 0x80B00F88@l */
/* 80AFF788  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AFF78C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFF790  7D 89 03 A6 */	mtctr r12
/* 80AFF794  4E 80 04 21 */	bctrl 
/* 80AFF798  7F C3 F3 78 */	mr r3, r30
/* 80AFF79C  80 81 00 08 */	lwz r4, 8(r1)
/* 80AFF7A0  3C A0 80 B0 */	lis r5, lit_5126@ha /* 0x80B00F88@ha */
/* 80AFF7A4  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)  /* 0x80B00F88@l */
/* 80AFF7A8  38 A0 00 00 */	li r5, 0
/* 80AFF7AC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AFF7B0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFF7B4  7D 89 03 A6 */	mtctr r12
/* 80AFF7B8  4E 80 04 21 */	bctrl 
/* 80AFF7BC  48 00 00 38 */	b lbl_80AFF7F4
lbl_80AFF7C0:
/* 80AFF7C0  2C 1D 00 00 */	cmpwi r29, 0
/* 80AFF7C4  41 82 00 30 */	beq lbl_80AFF7F4
/* 80AFF7C8  88 1E 09 EB */	lbz r0, 0x9eb(r30)
/* 80AFF7CC  28 00 00 00 */	cmplwi r0, 0
/* 80AFF7D0  40 82 00 24 */	bne lbl_80AFF7F4
/* 80AFF7D4  7F C3 F3 78 */	mr r3, r30
/* 80AFF7D8  38 80 00 03 */	li r4, 3
/* 80AFF7DC  3C A0 80 B0 */	lis r5, lit_5126@ha /* 0x80B00F88@ha */
/* 80AFF7E0  C0 25 0F 88 */	lfs f1, lit_5126@l(r5)  /* 0x80B00F88@l */
/* 80AFF7E4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AFF7E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFF7EC  7D 89 03 A6 */	mtctr r12
/* 80AFF7F0  4E 80 04 21 */	bctrl 
lbl_80AFF7F4:
/* 80AFF7F4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80AFF7F8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80AFF7FC  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80AFF800  7C 04 00 00 */	cmpw r4, r0
/* 80AFF804  41 82 00 20 */	beq lbl_80AFF824
/* 80AFF808  40 80 00 64 */	bge lbl_80AFF86C
/* 80AFF80C  38 03 30 31 */	addi r0, r3, 0x3031
/* 80AFF810  7C 04 00 00 */	cmpw r4, r0
/* 80AFF814  40 80 00 08 */	bge lbl_80AFF81C
/* 80AFF818  48 00 00 54 */	b lbl_80AFF86C
lbl_80AFF81C:
/* 80AFF81C  38 60 00 01 */	li r3, 1
/* 80AFF820  48 00 00 50 */	b lbl_80AFF870
lbl_80AFF824:
/* 80AFF824  7F C3 F3 78 */	mr r3, r30
/* 80AFF828  38 80 00 00 */	li r4, 0
/* 80AFF82C  38 A0 00 01 */	li r5, 1
/* 80AFF830  38 C0 00 00 */	li r6, 0
/* 80AFF834  4B 65 45 51 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AFF838  2C 03 00 00 */	cmpwi r3, 0
/* 80AFF83C  41 82 00 30 */	beq lbl_80AFF86C
/* 80AFF840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFF844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFF848  3B A3 09 78 */	addi r29, r3, 0x978
/* 80AFF84C  7F A3 EB 78 */	mr r3, r29
/* 80AFF850  38 80 00 34 */	li r4, 0x34
/* 80AFF854  4B 53 53 45 */	bl onSwitch__12dSv_danBit_cFi
/* 80AFF858  7F A3 EB 78 */	mr r3, r29
/* 80AFF85C  38 80 00 35 */	li r4, 0x35
/* 80AFF860  4B 53 53 39 */	bl onSwitch__12dSv_danBit_cFi
/* 80AFF864  38 60 00 01 */	li r3, 1
/* 80AFF868  48 00 00 08 */	b lbl_80AFF870
lbl_80AFF86C:
/* 80AFF86C  38 60 00 00 */	li r3, 0
lbl_80AFF870:
/* 80AFF870  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFF874  4B 86 29 B1 */	bl _restgpr_28
/* 80AFF878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AFF87C  7C 08 03 A6 */	mtlr r0
/* 80AFF880  38 21 00 20 */	addi r1, r1, 0x20
/* 80AFF884  4E 80 00 20 */	blr 
