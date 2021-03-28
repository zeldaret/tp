lbl_800B7BF8:
/* 800B7BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B7BFC  7C 08 02 A6 */	mflr r0
/* 800B7C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B7C04  39 61 00 20 */	addi r11, r1, 0x20
/* 800B7C08  48 2A A5 D1 */	bl _savegpr_28
/* 800B7C0C  7C 7C 1B 78 */	mr r28, r3
/* 800B7C10  7C 9D 23 78 */	mr r29, r4
/* 800B7C14  4B FF CD 3D */	bl notTalk__9daAlink_cFv
/* 800B7C18  2C 03 00 00 */	cmpwi r3, 0
/* 800B7C1C  41 82 00 0C */	beq lbl_800B7C28
/* 800B7C20  38 60 00 00 */	li r3, 0
/* 800B7C24  48 00 01 10 */	b lbl_800B7D34
lbl_800B7C28:
/* 800B7C28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B7C2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B7C30  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 800B7C34  28 00 00 1C */	cmplwi r0, 0x1c
/* 800B7C38  41 82 00 2C */	beq lbl_800B7C64
/* 800B7C3C  28 00 00 1B */	cmplwi r0, 0x1b
/* 800B7C40  41 82 00 24 */	beq lbl_800B7C64
/* 800B7C44  28 00 00 80 */	cmplwi r0, 0x80
/* 800B7C48  41 82 00 1C */	beq lbl_800B7C64
/* 800B7C4C  28 00 00 3B */	cmplwi r0, 0x3b
/* 800B7C50  41 82 00 14 */	beq lbl_800B7C64
/* 800B7C54  28 00 00 3C */	cmplwi r0, 0x3c
/* 800B7C58  41 82 00 0C */	beq lbl_800B7C64
/* 800B7C5C  28 00 00 08 */	cmplwi r0, 8
/* 800B7C60  40 82 00 2C */	bne lbl_800B7C8C
lbl_800B7C64:
/* 800B7C64  88 1C 2F 8D */	lbz r0, 0x2f8d(r28)
/* 800B7C68  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B7C6C  41 82 00 20 */	beq lbl_800B7C8C
/* 800B7C70  7F 83 E3 78 */	mr r3, r28
/* 800B7C74  80 9C 27 F4 */	lwz r4, 0x27f4(r28)
/* 800B7C78  38 A0 00 00 */	li r5, 0
/* 800B7C7C  38 C0 00 00 */	li r6, 0
/* 800B7C80  4B F6 33 E9 */	bl fopAcM_orderTalkEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
/* 800B7C84  38 60 00 01 */	li r3, 1
/* 800B7C88  48 00 00 AC */	b lbl_800B7D34
lbl_800B7C8C:
/* 800B7C8C  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800B7C90  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800B7C94  40 82 00 88 */	bne lbl_800B7D1C
/* 800B7C98  7F 83 E3 78 */	mr r3, r28
/* 800B7C9C  80 9C 27 E8 */	lwz r4, 0x27e8(r28)
/* 800B7CA0  80 BC 27 F8 */	lwz r5, 0x27f8(r28)
/* 800B7CA4  4B FF CA D9 */	bl checkRequestTalkActor__9daAlink_cFP10dAttList_cP10fopAc_ac_c
/* 800B7CA8  2C 03 00 00 */	cmpwi r3, 0
/* 800B7CAC  41 82 00 70 */	beq lbl_800B7D1C
/* 800B7CB0  3B C0 00 00 */	li r30, 0
/* 800B7CB4  3B E0 00 01 */	li r31, 1
lbl_800B7CB8:
/* 800B7CB8  7F C3 F3 78 */	mr r3, r30
/* 800B7CBC  4B F7 62 61 */	bl dComIfGp_getSelectItem__Fi
/* 800B7CC0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800B7CC4  48 0A 6F 15 */	bl checkTradeItem__9daPy_py_cFi
/* 800B7CC8  2C 03 00 00 */	cmpwi r3, 0
/* 800B7CCC  41 82 00 44 */	beq lbl_800B7D10
/* 800B7CD0  7F 83 E3 78 */	mr r3, r28
/* 800B7CD4  7F E0 F0 30 */	slw r0, r31, r30
/* 800B7CD8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 800B7CDC  4B FF A8 F1 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800B7CE0  2C 03 00 00 */	cmpwi r3, 0
/* 800B7CE4  41 82 00 2C */	beq lbl_800B7D10
/* 800B7CE8  57 C0 08 3C */	slwi r0, r30, 1
/* 800B7CEC  38 62 98 B0 */	la r3, itemTalkType(r2) /* 804532B0-_SDA2_BASE_ */
/* 800B7CF0  7C 63 02 2E */	lhzx r3, r3, r0
/* 800B7CF4  7F 84 E3 78 */	mr r4, r28
/* 800B7CF8  80 BC 27 F8 */	lwz r5, 0x27f8(r28)
/* 800B7CFC  38 C0 00 00 */	li r6, 0
/* 800B7D00  38 E0 00 00 */	li r7, 0
/* 800B7D04  4B F6 33 F9 */	bl fopAcM_orderTalkItemBtnEvent__FUsP10fopAc_ac_cP10fopAc_ac_cUsUs
/* 800B7D08  38 60 00 01 */	li r3, 1
/* 800B7D0C  48 00 00 28 */	b lbl_800B7D34
lbl_800B7D10:
/* 800B7D10  3B DE 00 01 */	addi r30, r30, 1
/* 800B7D14  2C 1E 00 02 */	cmpwi r30, 2
/* 800B7D18  41 80 FF A0 */	blt lbl_800B7CB8
lbl_800B7D1C:
/* 800B7D1C  2C 1D 00 00 */	cmpwi r29, 0
/* 800B7D20  41 82 00 10 */	beq lbl_800B7D30
/* 800B7D24  7F 83 E3 78 */	mr r3, r28
/* 800B7D28  48 00 03 9D */	bl orderZTalk__9daAlink_cFv
/* 800B7D2C  48 00 00 08 */	b lbl_800B7D34
lbl_800B7D30:
/* 800B7D30  38 60 00 00 */	li r3, 0
lbl_800B7D34:
/* 800B7D34  39 61 00 20 */	addi r11, r1, 0x20
/* 800B7D38  48 2A A4 ED */	bl _restgpr_28
/* 800B7D3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B7D40  7C 08 03 A6 */	mtlr r0
/* 800B7D44  38 21 00 20 */	addi r1, r1, 0x20
/* 800B7D48  4E 80 00 20 */	blr 
