lbl_80AFFEF4:
/* 80AFFEF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AFFEF8  7C 08 02 A6 */	mflr r0
/* 80AFFEFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFFF00  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFFF04  4B 86 22 D4 */	b _savegpr_28
/* 80AFFF08  7C 9C 23 78 */	mr r28, r4
/* 80AFFF0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AFFF10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AFFF14  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80AFFF18  38 00 03 06 */	li r0, 0x306
/* 80AFFF1C  B0 01 00 08 */	sth r0, 8(r1)
/* 80AFFF20  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80AFFF24  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80AFFF28  38 81 00 08 */	addi r4, r1, 8
/* 80AFFF2C  4B 52 1D 34 */	b fpcLyIt_AllJudge__FPFPvPv_PvPv
/* 80AFFF30  7C 7D 1B 79 */	or. r29, r3, r3
/* 80AFFF34  40 82 00 0C */	bne lbl_80AFFF40
/* 80AFFF38  38 60 00 00 */	li r3, 0
/* 80AFFF3C  48 00 00 8C */	b lbl_80AFFFC8
lbl_80AFFF40:
/* 80AFFF40  7F C3 F3 78 */	mr r3, r30
/* 80AFFF44  7F 84 E3 78 */	mr r4, r28
/* 80AFFF48  4B 54 80 14 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80AFFF4C  7C 7F 1B 78 */	mr r31, r3
/* 80AFFF50  7F C3 F3 78 */	mr r3, r30
/* 80AFFF54  7F 84 E3 78 */	mr r4, r28
/* 80AFFF58  4B 54 7D F4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80AFFF5C  2C 03 00 00 */	cmpwi r3, 0
/* 80AFFF60  41 82 00 2C */	beq lbl_80AFFF8C
/* 80AFFF64  80 9F 00 00 */	lwz r4, 0(r31)
/* 80AFFF68  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80AFFF6C  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80AFFF70  7C 04 00 00 */	cmpw r4, r0
/* 80AFFF74  41 82 00 08 */	beq lbl_80AFFF7C
/* 80AFFF78  48 00 00 14 */	b lbl_80AFFF8C
lbl_80AFFF7C:
/* 80AFFF7C  28 1D 00 00 */	cmplwi r29, 0
/* 80AFFF80  41 82 00 0C */	beq lbl_80AFFF8C
/* 80AFFF84  7F A3 EB 78 */	mr r3, r29
/* 80AFFF88  48 24 DB A8 */	b readyStartTimer__16daStartAndGoal_cFv
lbl_80AFFF8C:
/* 80AFFF8C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80AFFF90  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80AFFF94  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80AFFF98  7C 04 00 00 */	cmpw r4, r0
/* 80AFFF9C  41 82 00 08 */	beq lbl_80AFFFA4
/* 80AFFFA0  48 00 00 24 */	b lbl_80AFFFC4
lbl_80AFFFA4:
/* 80AFFFA4  28 1D 00 00 */	cmplwi r29, 0
/* 80AFFFA8  41 82 00 1C */	beq lbl_80AFFFC4
/* 80AFFFAC  7F A3 EB 78 */	mr r3, r29
/* 80AFFFB0  48 24 DB FC */	b isStartCheck__16daStartAndGoal_cFv
/* 80AFFFB4  2C 03 00 00 */	cmpwi r3, 0
/* 80AFFFB8  41 82 00 0C */	beq lbl_80AFFFC4
/* 80AFFFBC  38 60 00 01 */	li r3, 1
/* 80AFFFC0  48 00 00 08 */	b lbl_80AFFFC8
lbl_80AFFFC4:
/* 80AFFFC4  38 60 00 00 */	li r3, 0
lbl_80AFFFC8:
/* 80AFFFC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AFFFCC  4B 86 22 58 */	b _restgpr_28
/* 80AFFFD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AFFFD4  7C 08 03 A6 */	mtlr r0
/* 80AFFFD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AFFFDC  4E 80 00 20 */	blr 
