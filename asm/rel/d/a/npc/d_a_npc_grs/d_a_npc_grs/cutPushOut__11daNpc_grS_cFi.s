lbl_809E6B74:
/* 809E6B74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809E6B78  7C 08 02 A6 */	mflr r0
/* 809E6B7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 809E6B80  39 61 00 40 */	addi r11, r1, 0x40
/* 809E6B84  4B 97 B6 51 */	bl _savegpr_27
/* 809E6B88  7C 7D 1B 78 */	mr r29, r3
/* 809E6B8C  7C 9B 23 78 */	mr r27, r4
/* 809E6B90  3B E0 00 00 */	li r31, 0
/* 809E6B94  3B C0 FF FF */	li r30, -1
/* 809E6B98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E6B9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E6BA0  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 809E6BA4  7F 83 E3 78 */	mr r3, r28
/* 809E6BA8  3C A0 80 9E */	lis r5, d_a_npc_grs__stringBase0@ha /* 0x809E7F9C@ha */
/* 809E6BAC  38 A5 7F 9C */	addi r5, r5, d_a_npc_grs__stringBase0@l /* 0x809E7F9C@l */
/* 809E6BB0  38 A5 00 14 */	addi r5, r5, 0x14
/* 809E6BB4  38 C0 00 03 */	li r6, 3
/* 809E6BB8  4B 66 15 35 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809E6BBC  28 03 00 00 */	cmplwi r3, 0
/* 809E6BC0  41 82 00 08 */	beq lbl_809E6BC8
/* 809E6BC4  83 C3 00 00 */	lwz r30, 0(r3)
lbl_809E6BC8:
/* 809E6BC8  7F 83 E3 78 */	mr r3, r28
/* 809E6BCC  7F 64 DB 78 */	mr r4, r27
/* 809E6BD0  4B 66 11 7D */	bl getIsAddvance__16dEvent_manager_cFi
/* 809E6BD4  2C 03 00 00 */	cmpwi r3, 0
/* 809E6BD8  41 82 01 20 */	beq lbl_809E6CF8
/* 809E6BDC  2C 1E 00 01 */	cmpwi r30, 1
/* 809E6BE0  41 82 00 98 */	beq lbl_809E6C78
/* 809E6BE4  40 80 01 14 */	bge lbl_809E6CF8
/* 809E6BE8  2C 1E 00 00 */	cmpwi r30, 0
/* 809E6BEC  40 80 00 08 */	bge lbl_809E6BF4
/* 809E6BF0  48 00 01 08 */	b lbl_809E6CF8
lbl_809E6BF4:
/* 809E6BF4  38 7D 08 24 */	addi r3, r29, 0x824
/* 809E6BF8  4B 76 9A F5 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809E6BFC  7C 64 1B 78 */	mr r4, r3
/* 809E6C00  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 809E6C04  54 05 86 3E */	rlwinm r5, r0, 0x10, 0x18, 0x1f
/* 809E6C08  28 05 00 FF */	cmplwi r5, 0xff
/* 809E6C0C  38 00 FF FF */	li r0, -1
/* 809E6C10  41 82 00 08 */	beq lbl_809E6C18
/* 809E6C14  7C A0 2B 78 */	mr r0, r5
lbl_809E6C18:
/* 809E6C18  2C 00 FF FF */	cmpwi r0, -1
/* 809E6C1C  40 81 00 DC */	ble lbl_809E6CF8
/* 809E6C20  28 05 00 FF */	cmplwi r5, 0xff
/* 809E6C24  38 60 FF FF */	li r3, -1
/* 809E6C28  41 82 00 08 */	beq lbl_809E6C30
/* 809E6C2C  54 A3 04 3E */	clrlwi r3, r5, 0x10
lbl_809E6C30:
/* 809E6C30  88 84 04 E2 */	lbz r4, 0x4e2(r4)
/* 809E6C34  7C 84 07 74 */	extsb r4, r4
/* 809E6C38  38 A1 00 10 */	addi r5, r1, 0x10
/* 809E6C3C  38 C1 00 08 */	addi r6, r1, 8
/* 809E6C40  4B 76 58 C1 */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 809E6C44  2C 03 00 00 */	cmpwi r3, 0
/* 809E6C48  41 82 00 B0 */	beq lbl_809E6CF8
/* 809E6C4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E6C50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E6C54  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809E6C58  38 81 00 10 */	addi r4, r1, 0x10
/* 809E6C5C  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 809E6C60  38 C0 00 00 */	li r6, 0
/* 809E6C64  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809E6C68  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809E6C6C  7D 89 03 A6 */	mtctr r12
/* 809E6C70  4E 80 04 21 */	bctrl 
/* 809E6C74  48 00 00 84 */	b lbl_809E6CF8
lbl_809E6C78:
/* 809E6C78  7F A3 EB 78 */	mr r3, r29
/* 809E6C7C  38 80 00 03 */	li r4, 3
/* 809E6C80  3C A0 80 9E */	lis r5, lit_4491@ha /* 0x809E7E4C@ha */
/* 809E6C84  C0 25 7E 4C */	lfs f1, lit_4491@l(r5)  /* 0x809E7E4C@l */
/* 809E6C88  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E6C8C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E6C90  7D 89 03 A6 */	mtctr r12
/* 809E6C94  4E 80 04 21 */	bctrl 
/* 809E6C98  7F A3 EB 78 */	mr r3, r29
/* 809E6C9C  38 80 00 00 */	li r4, 0
/* 809E6CA0  3C A0 80 9E */	lis r5, lit_4491@ha /* 0x809E7E4C@ha */
/* 809E6CA4  C0 25 7E 4C */	lfs f1, lit_4491@l(r5)  /* 0x809E7E4C@l */
/* 809E6CA8  38 A0 00 01 */	li r5, 1
/* 809E6CAC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809E6CB0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E6CB4  7D 89 03 A6 */	mtctr r12
/* 809E6CB8  4E 80 04 21 */	bctrl 
/* 809E6CBC  7F A3 EB 78 */	mr r3, r29
/* 809E6CC0  38 80 00 01 */	li r4, 1
/* 809E6CC4  4B FF FB 91 */	bl setLookMode__11daNpc_grS_cFi
/* 809E6CC8  7F A3 EB 78 */	mr r3, r29
/* 809E6CCC  80 9D 09 B4 */	lwz r4, 0x9b4(r29)
/* 809E6CD0  38 A0 00 00 */	li r5, 0
/* 809E6CD4  4B 76 D0 49 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809E6CD8  7F A3 EB 78 */	mr r3, r29
/* 809E6CDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E6CE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E6CE4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809E6CE8  4B 63 3A 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809E6CEC  7C 64 1B 78 */	mr r4, r3
/* 809E6CF0  7F A3 EB 78 */	mr r3, r29
/* 809E6CF4  4B 76 D5 5D */	bl setAngle__8daNpcF_cFs
lbl_809E6CF8:
/* 809E6CF8  2C 1E 00 01 */	cmpwi r30, 1
/* 809E6CFC  41 82 00 1C */	beq lbl_809E6D18
/* 809E6D00  40 80 00 38 */	bge lbl_809E6D38
/* 809E6D04  2C 1E 00 00 */	cmpwi r30, 0
/* 809E6D08  40 80 00 08 */	bge lbl_809E6D10
/* 809E6D0C  48 00 00 2C */	b lbl_809E6D38
lbl_809E6D10:
/* 809E6D10  3B E0 00 01 */	li r31, 1
/* 809E6D14  48 00 00 24 */	b lbl_809E6D38
lbl_809E6D18:
/* 809E6D18  7F A3 EB 78 */	mr r3, r29
/* 809E6D1C  38 80 00 00 */	li r4, 0
/* 809E6D20  38 A0 00 01 */	li r5, 1
/* 809E6D24  38 C0 00 00 */	li r6, 0
/* 809E6D28  4B 76 D0 5D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809E6D2C  2C 03 00 00 */	cmpwi r3, 0
/* 809E6D30  41 82 00 08 */	beq lbl_809E6D38
/* 809E6D34  3B E0 00 01 */	li r31, 1
lbl_809E6D38:
/* 809E6D38  7F E3 FB 78 */	mr r3, r31
/* 809E6D3C  39 61 00 40 */	addi r11, r1, 0x40
/* 809E6D40  4B 97 B4 E1 */	bl _restgpr_27
/* 809E6D44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809E6D48  7C 08 03 A6 */	mtlr r0
/* 809E6D4C  38 21 00 40 */	addi r1, r1, 0x40
/* 809E6D50  4E 80 00 20 */	blr 
