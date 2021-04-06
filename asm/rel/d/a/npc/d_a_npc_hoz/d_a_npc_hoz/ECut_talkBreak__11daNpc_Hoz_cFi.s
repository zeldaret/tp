lbl_80A051C8:
/* 80A051C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A051CC  7C 08 02 A6 */	mflr r0
/* 80A051D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A051D4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A051D8  4B 95 CF FD */	bl _savegpr_27
/* 80A051DC  7C 7B 1B 78 */	mr r27, r3
/* 80A051E0  7C 9C 23 78 */	mr r28, r4
/* 80A051E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A051E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A051EC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A051F0  3B C0 00 00 */	li r30, 0
/* 80A051F4  3B A0 FF FF */	li r29, -1
/* 80A051F8  7F E3 FB 78 */	mr r3, r31
/* 80A051FC  3C A0 80 A0 */	lis r5, d_a_npc_hoz__stringBase0@ha /* 0x80A06764@ha */
/* 80A05200  38 A5 67 64 */	addi r5, r5, d_a_npc_hoz__stringBase0@l /* 0x80A06764@l */
/* 80A05204  38 A5 00 9C */	addi r5, r5, 0x9c
/* 80A05208  38 C0 00 03 */	li r6, 3
/* 80A0520C  4B 64 2E E1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A05210  28 03 00 00 */	cmplwi r3, 0
/* 80A05214  41 82 00 08 */	beq lbl_80A0521C
/* 80A05218  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A0521C:
/* 80A0521C  7F E3 FB 78 */	mr r3, r31
/* 80A05220  7F 84 E3 78 */	mr r4, r28
/* 80A05224  4B 64 2B 29 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A05228  2C 03 00 00 */	cmpwi r3, 0
/* 80A0522C  41 82 00 2C */	beq lbl_80A05258
/* 80A05230  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A05234  41 82 00 14 */	beq lbl_80A05248
/* 80A05238  40 80 00 20 */	bge lbl_80A05258
/* 80A0523C  2C 1D 00 00 */	cmpwi r29, 0
/* 80A05240  41 82 00 18 */	beq lbl_80A05258
/* 80A05244  48 00 00 14 */	b lbl_80A05258
lbl_80A05248:
/* 80A05248  7F 63 DB 78 */	mr r3, r27
/* 80A0524C  38 80 03 E1 */	li r4, 0x3e1
/* 80A05250  38 A0 00 00 */	li r5, 0
/* 80A05254  4B 74 69 9D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A05258:
/* 80A05258  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A0525C  41 82 00 6C */	beq lbl_80A052C8
/* 80A05260  40 80 00 90 */	bge lbl_80A052F0
/* 80A05264  2C 1D 00 00 */	cmpwi r29, 0
/* 80A05268  41 82 00 08 */	beq lbl_80A05270
/* 80A0526C  48 00 00 84 */	b lbl_80A052F0
lbl_80A05270:
/* 80A05270  7F 63 DB 78 */	mr r3, r27
/* 80A05274  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A05278  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0527C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A05280  4B 61 54 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A05284  A8 9B 0D 7A */	lha r4, 0xd7a(r27)
/* 80A05288  7C 60 07 34 */	extsh r0, r3
/* 80A0528C  7C 04 00 00 */	cmpw r4, r0
/* 80A05290  41 82 00 30 */	beq lbl_80A052C0
/* 80A05294  7F 63 DB 78 */	mr r3, r27
/* 80A05298  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A0529C  4B 61 54 75 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A052A0  7C 64 1B 78 */	mr r4, r3
/* 80A052A4  7F 63 DB 78 */	mr r3, r27
/* 80A052A8  38 A0 FF FF */	li r5, -1
/* 80A052AC  38 C0 FF FF */	li r6, -1
/* 80A052B0  38 E0 00 0F */	li r7, 0xf
/* 80A052B4  39 00 00 00 */	li r8, 0
/* 80A052B8  4B 74 63 91 */	bl step__8daNpcT_cFsiiii
/* 80A052BC  48 00 00 38 */	b lbl_80A052F4
lbl_80A052C0:
/* 80A052C0  3B C0 00 01 */	li r30, 1
/* 80A052C4  48 00 00 30 */	b lbl_80A052F4
lbl_80A052C8:
/* 80A052C8  7F 63 DB 78 */	mr r3, r27
/* 80A052CC  38 80 00 00 */	li r4, 0
/* 80A052D0  38 A0 00 00 */	li r5, 0
/* 80A052D4  38 C0 00 00 */	li r6, 0
/* 80A052D8  38 E0 00 00 */	li r7, 0
/* 80A052DC  4B 74 69 9D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A052E0  2C 03 00 00 */	cmpwi r3, 0
/* 80A052E4  41 82 00 10 */	beq lbl_80A052F4
/* 80A052E8  3B C0 00 01 */	li r30, 1
/* 80A052EC  48 00 00 08 */	b lbl_80A052F4
lbl_80A052F0:
/* 80A052F0  3B C0 00 01 */	li r30, 1
lbl_80A052F4:
/* 80A052F4  7F C3 F3 78 */	mr r3, r30
/* 80A052F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A052FC  4B 95 CF 25 */	bl _restgpr_27
/* 80A05300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A05304  7C 08 03 A6 */	mtlr r0
/* 80A05308  38 21 00 20 */	addi r1, r1, 0x20
/* 80A0530C  4E 80 00 20 */	blr 
