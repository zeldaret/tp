lbl_80550F70:
/* 80550F70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80550F74  7C 08 02 A6 */	mflr r0
/* 80550F78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80550F7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80550F80  4B E1 12 50 */	b _savegpr_26
/* 80550F84  7C 7F 1B 78 */	mr r31, r3
/* 80550F88  7C 9A 23 78 */	mr r26, r4
/* 80550F8C  3B A0 00 00 */	li r29, 0
/* 80550F90  3B 80 FF FF */	li r28, -1
/* 80550F94  3B 60 00 00 */	li r27, 0
/* 80550F98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80550F9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80550FA0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80550FA4  7F C3 F3 78 */	mr r3, r30
/* 80550FA8  3C A0 80 55 */	lis r5, struct_805535A4+0x0@ha
/* 80550FAC  38 A5 35 A4 */	addi r5, r5, struct_805535A4+0x0@l
/* 80550FB0  38 A5 00 4A */	addi r5, r5, 0x4a
/* 80550FB4  38 C0 00 03 */	li r6, 3
/* 80550FB8  4B AF 71 34 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80550FBC  28 03 00 00 */	cmplwi r3, 0
/* 80550FC0  41 82 00 08 */	beq lbl_80550FC8
/* 80550FC4  83 83 00 00 */	lwz r28, 0(r3)
lbl_80550FC8:
/* 80550FC8  7F C3 F3 78 */	mr r3, r30
/* 80550FCC  7F 44 D3 78 */	mr r4, r26
/* 80550FD0  3C A0 80 55 */	lis r5, struct_805535A4+0x0@ha
/* 80550FD4  38 A5 35 A4 */	addi r5, r5, struct_805535A4+0x0@l
/* 80550FD8  38 A5 00 4E */	addi r5, r5, 0x4e
/* 80550FDC  38 C0 00 03 */	li r6, 3
/* 80550FE0  4B AF 71 0C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80550FE4  28 03 00 00 */	cmplwi r3, 0
/* 80550FE8  41 82 00 08 */	beq lbl_80550FF0
/* 80550FEC  83 63 00 00 */	lwz r27, 0(r3)
lbl_80550FF0:
/* 80550FF0  7F C3 F3 78 */	mr r3, r30
/* 80550FF4  7F 44 D3 78 */	mr r4, r26
/* 80550FF8  4B AF 6D 54 */	b getIsAddvance__16dEvent_manager_cFi
/* 80550FFC  2C 03 00 00 */	cmpwi r3, 0
/* 80551000  41 82 00 14 */	beq lbl_80551014
/* 80551004  2C 1C 00 00 */	cmpwi r28, 0
/* 80551008  41 82 00 08 */	beq lbl_80551010
/* 8055100C  48 00 00 08 */	b lbl_80551014
lbl_80551010:
/* 80551010  93 7F 0D C4 */	stw r27, 0xdc4(r31)
lbl_80551014:
/* 80551014  2C 1C 00 00 */	cmpwi r28, 0
/* 80551018  41 82 00 08 */	beq lbl_80551020
/* 8055101C  48 00 00 4C */	b lbl_80551068
lbl_80551020:
/* 80551020  38 00 00 00 */	li r0, 0
/* 80551024  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80551028  90 03 0F DC */	stw r0, mFindCount__8daNpcT_c@l(r3)
/* 8055102C  3C 60 80 55 */	lis r3, srchYm__12daNpc_Kkri_cFPvPv@ha
/* 80551030  38 63 FD 78 */	addi r3, r3, srchYm__12daNpc_Kkri_cFPvPv@l
/* 80551034  7F E4 FB 78 */	mr r4, r31
/* 80551038  4B AC 87 C0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8055103C  3C 60 80 45 */	lis r3, mFindCount__8daNpcT_c@ha
/* 80551040  80 03 0F DC */	lwz r0, mFindCount__8daNpcT_c@l(r3)
/* 80551044  2C 00 00 00 */	cmpwi r0, 0
/* 80551048  40 82 00 20 */	bne lbl_80551068
/* 8055104C  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80551050  48 00 21 81 */	bl func_805531D0
/* 80551054  2C 03 00 00 */	cmpwi r3, 0
/* 80551058  40 82 00 10 */	bne lbl_80551068
/* 8055105C  38 00 00 01 */	li r0, 1
/* 80551060  98 1F 0F D7 */	stb r0, 0xfd7(r31)
/* 80551064  3B A0 00 01 */	li r29, 1
lbl_80551068:
/* 80551068  7F A3 EB 78 */	mr r3, r29
/* 8055106C  39 61 00 20 */	addi r11, r1, 0x20
/* 80551070  4B E1 11 AC */	b _restgpr_26
/* 80551074  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80551078  7C 08 03 A6 */	mtlr r0
/* 8055107C  38 21 00 20 */	addi r1, r1, 0x20
/* 80551080  4E 80 00 20 */	blr 
