lbl_80AF4F54:
/* 80AF4F54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF4F58  7C 08 02 A6 */	mflr r0
/* 80AF4F5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF4F60  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF4F64  4B 86 D2 70 */	b _savegpr_27
/* 80AF4F68  7C 7B 1B 78 */	mr r27, r3
/* 80AF4F6C  7C 9C 23 78 */	mr r28, r4
/* 80AF4F70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF4F74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF4F78  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AF4F7C  3B C0 00 00 */	li r30, 0
/* 80AF4F80  3B A0 FF FF */	li r29, -1
/* 80AF4F84  7F E3 FB 78 */	mr r3, r31
/* 80AF4F88  3C A0 80 AF */	lis r5, stringBase0@ha
/* 80AF4F8C  38 A5 5B F4 */	addi r5, r5, stringBase0@l
/* 80AF4F90  38 A5 00 15 */	addi r5, r5, 0x15
/* 80AF4F94  38 C0 00 03 */	li r6, 3
/* 80AF4F98  4B 55 31 54 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AF4F9C  28 03 00 00 */	cmplwi r3, 0
/* 80AF4FA0  41 82 00 08 */	beq lbl_80AF4FA8
/* 80AF4FA4  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80AF4FA8:
/* 80AF4FA8  7F E3 FB 78 */	mr r3, r31
/* 80AF4FAC  7F 84 E3 78 */	mr r4, r28
/* 80AF4FB0  4B 55 2D 9C */	b getIsAddvance__16dEvent_manager_cFi
/* 80AF4FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80AF4FB8  41 82 00 8C */	beq lbl_80AF5044
/* 80AF4FBC  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80AF4FC0  41 82 00 60 */	beq lbl_80AF5020
/* 80AF4FC4  40 80 00 10 */	bge lbl_80AF4FD4
/* 80AF4FC8  2C 1D 00 00 */	cmpwi r29, 0
/* 80AF4FCC  41 82 00 14 */	beq lbl_80AF4FE0
/* 80AF4FD0  48 00 00 74 */	b lbl_80AF5044
lbl_80AF4FD4:
/* 80AF4FD4  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80AF4FD8  41 82 00 6C */	beq lbl_80AF5044
/* 80AF4FDC  48 00 00 68 */	b lbl_80AF5044
lbl_80AF4FE0:
/* 80AF4FE0  38 7B 0C 88 */	addi r3, r27, 0xc88
/* 80AF4FE4  4B 65 B7 08 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80AF4FE8  28 03 00 00 */	cmplwi r3, 0
/* 80AF4FEC  40 82 00 58 */	bne lbl_80AF5044
/* 80AF4FF0  3C 60 80 AF */	lis r3, s_sub__FPvPv@ha
/* 80AF4FF4  38 63 4C A4 */	addi r3, r3, s_sub__FPvPv@l
/* 80AF4FF8  7F 64 DB 78 */	mr r4, r27
/* 80AF4FFC  4B 52 C3 3C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80AF5000  7C 64 1B 79 */	or. r4, r3, r3
/* 80AF5004  41 82 00 40 */	beq lbl_80AF5044
/* 80AF5008  38 7B 0C 88 */	addi r3, r27, 0xc88
/* 80AF500C  4B 65 B6 B0 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AF5010  7F 63 DB 78 */	mr r3, r27
/* 80AF5014  38 80 00 05 */	li r4, 5
/* 80AF5018  4B FF F9 CD */	bl setLookMode__16daNpc_SoldierB_cFi
/* 80AF501C  48 00 00 28 */	b lbl_80AF5044
lbl_80AF5020:
/* 80AF5020  7F 63 DB 78 */	mr r3, r27
/* 80AF5024  38 80 00 01 */	li r4, 1
/* 80AF5028  3C A0 80 AF */	lis r5, lit_5036@ha
/* 80AF502C  C0 25 5B D8 */	lfs f1, lit_5036@l(r5)
/* 80AF5030  38 A0 00 00 */	li r5, 0
/* 80AF5034  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80AF5038  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF503C  7D 89 03 A6 */	mtctr r12
/* 80AF5040  4E 80 04 21 */	bctrl 
lbl_80AF5044:
/* 80AF5044  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80AF5048  41 82 00 28 */	beq lbl_80AF5070
/* 80AF504C  40 80 00 10 */	bge lbl_80AF505C
/* 80AF5050  2C 1D 00 00 */	cmpwi r29, 0
/* 80AF5054  41 82 00 14 */	beq lbl_80AF5068
/* 80AF5058  48 00 00 34 */	b lbl_80AF508C
lbl_80AF505C:
/* 80AF505C  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80AF5060  41 82 00 24 */	beq lbl_80AF5084
/* 80AF5064  48 00 00 28 */	b lbl_80AF508C
lbl_80AF5068:
/* 80AF5068  3B C0 00 01 */	li r30, 1
/* 80AF506C  48 00 00 24 */	b lbl_80AF5090
lbl_80AF5070:
/* 80AF5070  A8 1B 09 DA */	lha r0, 0x9da(r27)
/* 80AF5074  2C 00 00 00 */	cmpwi r0, 0
/* 80AF5078  40 81 00 18 */	ble lbl_80AF5090
/* 80AF507C  3B C0 00 01 */	li r30, 1
/* 80AF5080  48 00 00 10 */	b lbl_80AF5090
lbl_80AF5084:
/* 80AF5084  3B C0 00 01 */	li r30, 1
/* 80AF5088  48 00 00 08 */	b lbl_80AF5090
lbl_80AF508C:
/* 80AF508C  3B C0 00 01 */	li r30, 1
lbl_80AF5090:
/* 80AF5090  7F C3 F3 78 */	mr r3, r30
/* 80AF5094  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF5098  4B 86 D1 88 */	b _restgpr_27
/* 80AF509C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF50A0  7C 08 03 A6 */	mtlr r0
/* 80AF50A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF50A8  4E 80 00 20 */	blr 
