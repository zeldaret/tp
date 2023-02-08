lbl_80D450E0:
/* 80D450E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D450E4  7C 08 02 A6 */	mflr r0
/* 80D450E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D450EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D450F0  4B 61 D0 ED */	bl _savegpr_29
/* 80D450F4  7C 7F 1B 78 */	mr r31, r3
/* 80D450F8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D450FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D45100  40 82 00 90 */	bne lbl_80D45190
/* 80D45104  7F E0 FB 79 */	or. r0, r31, r31
/* 80D45108  41 82 00 7C */	beq lbl_80D45184
/* 80D4510C  7C 1E 03 78 */	mr r30, r0
/* 80D45110  4B 33 35 15 */	bl __ct__16dBgS_MoveBgActorFv
/* 80D45114  3C 60 80 D4 */	lis r3, __vt__14daObjZraRock_c@ha /* 0x80D45674@ha */
/* 80D45118  38 03 56 74 */	addi r0, r3, __vt__14daObjZraRock_c@l /* 0x80D45674@l */
/* 80D4511C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D45120  3B BE 05 B0 */	addi r29, r30, 0x5b0
/* 80D45124  3C 60 80 D4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D45668@ha */
/* 80D45128  38 03 56 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D45668@l */
/* 80D4512C  90 1E 05 B0 */	stw r0, 0x5b0(r30)
/* 80D45130  7F A3 EB 78 */	mr r3, r29
/* 80D45134  38 80 00 00 */	li r4, 0
/* 80D45138  4B 5E 32 C5 */	bl init__12J3DFrameCtrlFs
/* 80D4513C  38 00 00 00 */	li r0, 0
/* 80D45140  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80D45144  3B BE 05 C8 */	addi r29, r30, 0x5c8
/* 80D45148  7F A3 EB 78 */	mr r3, r29
/* 80D4514C  4B 33 0F 55 */	bl __ct__9dBgS_AcchFv
/* 80D45150  3C 60 80 D4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D45644@ha */
/* 80D45154  38 63 56 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D45644@l */
/* 80D45158  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80D4515C  38 03 00 0C */	addi r0, r3, 0xc
/* 80D45160  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80D45164  38 03 00 18 */	addi r0, r3, 0x18
/* 80D45168  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80D4516C  38 7D 00 14 */	addi r3, r29, 0x14
/* 80D45170  4B 33 3C F9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D45174  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 80D45178  4B 33 0D 35 */	bl __ct__12dBgS_AcchCirFv
/* 80D4517C  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80D45180  4B 52 2A 9D */	bl __ct__11cBgS_GndChkFv
lbl_80D45184:
/* 80D45184  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D45188  60 00 00 08 */	ori r0, r0, 8
/* 80D4518C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D45190:
/* 80D45190  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D45194  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D455F0@ha */
/* 80D45198  38 84 55 F0 */	addi r4, r4, l_arcName@l /* 0x80D455F0@l */
/* 80D4519C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D451A0  4B 2E 7D 1D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D451A4  7C 7E 1B 78 */	mr r30, r3
/* 80D451A8  2C 1E 00 05 */	cmpwi r30, 5
/* 80D451AC  41 82 00 0C */	beq lbl_80D451B8
/* 80D451B0  2C 1E 00 03 */	cmpwi r30, 3
/* 80D451B4  40 82 00 0C */	bne lbl_80D451C0
lbl_80D451B8:
/* 80D451B8  38 60 00 05 */	li r3, 5
/* 80D451BC  48 00 00 90 */	b lbl_80D4524C
lbl_80D451C0:
/* 80D451C0  2C 1E 00 04 */	cmpwi r30, 4
/* 80D451C4  40 82 00 84 */	bne lbl_80D45248
/* 80D451C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D451CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D451D0  3C 63 00 02 */	addis r3, r3, 2
/* 80D451D4  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D455F0@ha */
/* 80D451D8  38 84 55 F0 */	addi r4, r4, l_arcName@l /* 0x80D455F0@l */
/* 80D451DC  80 84 00 00 */	lwz r4, 0(r4)
/* 80D451E0  3C A0 80 D4 */	lis r5, d_a_obj_zra_rock__stringBase0@ha /* 0x80D455D4@ha */
/* 80D451E4  38 A5 55 D4 */	addi r5, r5, d_a_obj_zra_rock__stringBase0@l /* 0x80D455D4@l */
/* 80D451E8  38 A5 00 0A */	addi r5, r5, 0xa
/* 80D451EC  38 63 C2 F8 */	addi r3, r3, -15624
/* 80D451F0  4B 2F 74 C9 */	bl getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80D451F4  7C 65 1B 78 */	mr r5, r3
/* 80D451F8  7F E3 FB 78 */	mr r3, r31
/* 80D451FC  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D455F0@ha */
/* 80D45200  38 84 55 F0 */	addi r4, r4, l_arcName@l /* 0x80D455F0@l */
/* 80D45204  80 84 00 00 */	lwz r4, 0(r4)
/* 80D45208  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075B44@ha */
/* 80D4520C  38 C6 5B 44 */	addi r6, r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075B44@l */
/* 80D45210  38 E0 20 50 */	li r7, 0x2050
/* 80D45214  39 00 00 00 */	li r8, 0
/* 80D45218  4B 33 35 A5 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80D4521C  7C 7E 1B 78 */	mr r30, r3
/* 80D45220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D45224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D45228  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D4522C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D45230  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D45234  7C 05 07 74 */	extsb r5, r0
/* 80D45238  4B 2F 01 29 */	bl isSwitch__10dSv_info_cCFii
/* 80D4523C  2C 03 00 00 */	cmpwi r3, 0
/* 80D45240  41 82 00 08 */	beq lbl_80D45248
/* 80D45244  3B C0 00 05 */	li r30, 5
lbl_80D45248:
/* 80D45248  7F C3 F3 78 */	mr r3, r30
lbl_80D4524C:
/* 80D4524C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D45250  4B 61 CF D9 */	bl _restgpr_29
/* 80D45254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D45258  7C 08 03 A6 */	mtlr r0
/* 80D4525C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D45260  4E 80 00 20 */	blr 
