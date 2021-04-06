lbl_80A16EFC:
/* 80A16EFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A16F00  7C 08 02 A6 */	mflr r0
/* 80A16F04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A16F08  39 61 00 30 */	addi r11, r1, 0x30
/* 80A16F0C  4B 94 B2 C5 */	bl _savegpr_26
/* 80A16F10  7C 7C 1B 78 */	mr r28, r3
/* 80A16F14  7C 9D 23 78 */	mr r29, r4
/* 80A16F18  38 7C 0B A0 */	addi r3, r28, 0xba0
/* 80A16F1C  4B 72 E7 ED */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A16F20  7C 7B 1B 78 */	mr r27, r3
/* 80A16F24  3B E0 00 00 */	li r31, 0
/* 80A16F28  3B C0 FF FF */	li r30, -1
/* 80A16F2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A16F30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A16F34  3B 43 4F F8 */	addi r26, r3, 0x4ff8
/* 80A16F38  7F 43 D3 78 */	mr r3, r26
/* 80A16F3C  7F A4 EB 78 */	mr r4, r29
/* 80A16F40  3C A0 80 A2 */	lis r5, d_a_npc_jagar__stringBase0@ha /* 0x80A1A49C@ha */
/* 80A16F44  38 A5 A4 9C */	addi r5, r5, d_a_npc_jagar__stringBase0@l /* 0x80A1A49C@l */
/* 80A16F48  38 A5 00 8E */	addi r5, r5, 0x8e
/* 80A16F4C  38 C0 00 03 */	li r6, 3
/* 80A16F50  4B 63 11 9D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A16F54  28 03 00 00 */	cmplwi r3, 0
/* 80A16F58  41 82 00 08 */	beq lbl_80A16F60
/* 80A16F5C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A16F60:
/* 80A16F60  3C 60 80 A2 */	lis r3, lit_5412@ha /* 0x80A1A45C@ha */
/* 80A16F64  38 83 A4 5C */	addi r4, r3, lit_5412@l /* 0x80A1A45C@l */
/* 80A16F68  80 64 00 00 */	lwz r3, 0(r4)
/* 80A16F6C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A16F70  90 61 00 08 */	stw r3, 8(r1)
/* 80A16F74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A16F78  93 81 00 08 */	stw r28, 8(r1)
/* 80A16F7C  38 7C 0F 94 */	addi r3, r28, 0xf94
/* 80A16F80  4B 72 E7 89 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A16F84  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A16F88  80 01 00 08 */	lwz r0, 8(r1)
/* 80A16F8C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A16F90  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A16F94  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80A16F98  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 80A16F9C  38 00 00 00 */	li r0, 0
/* 80A16FA0  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80A16FA4  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80A16FA8  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80A16FAC  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80A16FB0  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80A16FB4  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80A16FB8  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80A16FBC  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80A16FC0  7F 43 D3 78 */	mr r3, r26
/* 80A16FC4  7F A4 EB 78 */	mr r4, r29
/* 80A16FC8  4B 63 0D 85 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A16FCC  2C 03 00 00 */	cmpwi r3, 0
/* 80A16FD0  41 82 00 34 */	beq lbl_80A17004
/* 80A16FD4  2C 1E 00 00 */	cmpwi r30, 0
/* 80A16FD8  41 82 00 08 */	beq lbl_80A16FE0
/* 80A16FDC  48 00 00 28 */	b lbl_80A17004
lbl_80A16FE0:
/* 80A16FE0  A8 7B 04 B4 */	lha r3, 0x4b4(r27)
/* 80A16FE4  3C 03 00 00 */	addis r0, r3, 0
/* 80A16FE8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A16FEC  38 80 FF FF */	li r4, -1
/* 80A16FF0  41 82 00 08 */	beq lbl_80A16FF8
/* 80A16FF4  54 64 04 3E */	clrlwi r4, r3, 0x10
lbl_80A16FF8:
/* 80A16FF8  7F 83 E3 78 */	mr r3, r28
/* 80A16FFC  38 A1 00 08 */	addi r5, r1, 8
/* 80A17000  4B 73 4B F1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A17004:
/* 80A17004  2C 1E 00 00 */	cmpwi r30, 0
/* 80A17008  41 82 00 08 */	beq lbl_80A17010
/* 80A1700C  48 00 00 34 */	b lbl_80A17040
lbl_80A17010:
/* 80A17010  7F 83 E3 78 */	mr r3, r28
/* 80A17014  38 80 00 00 */	li r4, 0
/* 80A17018  38 A0 00 00 */	li r5, 0
/* 80A1701C  38 C1 00 08 */	addi r6, r1, 8
/* 80A17020  38 E0 00 00 */	li r7, 0
/* 80A17024  4B 73 4C 55 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A17028  2C 03 00 00 */	cmpwi r3, 0
/* 80A1702C  41 82 00 14 */	beq lbl_80A17040
/* 80A17030  88 1C 09 9A */	lbz r0, 0x99a(r28)
/* 80A17034  28 00 00 01 */	cmplwi r0, 1
/* 80A17038  40 82 00 08 */	bne lbl_80A17040
/* 80A1703C  3B E0 00 01 */	li r31, 1
lbl_80A17040:
/* 80A17040  7F E3 FB 78 */	mr r3, r31
/* 80A17044  39 61 00 30 */	addi r11, r1, 0x30
/* 80A17048  4B 94 B1 D5 */	bl _restgpr_26
/* 80A1704C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A17050  7C 08 03 A6 */	mtlr r0
/* 80A17054  38 21 00 30 */	addi r1, r1, 0x30
/* 80A17058  4E 80 00 20 */	blr 
