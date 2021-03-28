lbl_80C14F50:
/* 80C14F50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C14F54  7C 08 02 A6 */	mflr r0
/* 80C14F58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C14F5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C14F60  4B 74 D2 7C */	b _savegpr_29
/* 80C14F64  7C 7F 1B 78 */	mr r31, r3
/* 80C14F68  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C14F6C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C14F70  40 82 00 6C */	bne lbl_80C14FDC
/* 80C14F74  7F E0 FB 79 */	or. r0, r31, r31
/* 80C14F78  41 82 00 58 */	beq lbl_80C14FD0
/* 80C14F7C  7C 1E 03 78 */	mr r30, r0
/* 80C14F80  4B 46 36 A4 */	b __ct__16dBgS_MoveBgActorFv
/* 80C14F84  3C 60 80 C1 */	lis r3, __vt__14daObjGrzRock_c@ha
/* 80C14F88  38 03 54 04 */	addi r0, r3, __vt__14daObjGrzRock_c@l
/* 80C14F8C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C14F90  3B BE 05 AC */	addi r29, r30, 0x5ac
/* 80C14F94  7F A3 EB 78 */	mr r3, r29
/* 80C14F98  4B 46 11 08 */	b __ct__9dBgS_AcchFv
/* 80C14F9C  3C 60 80 C1 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C14FA0  38 63 53 E0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C14FA4  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80C14FA8  38 03 00 0C */	addi r0, r3, 0xc
/* 80C14FAC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C14FB0  38 03 00 18 */	addi r0, r3, 0x18
/* 80C14FB4  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80C14FB8  38 7D 00 14 */	addi r3, r29, 0x14
/* 80C14FBC  4B 46 3E AC */	b SetObj__16dBgS_PolyPassChkFv
/* 80C14FC0  38 7E 07 84 */	addi r3, r30, 0x784
/* 80C14FC4  4B 46 0E E8 */	b __ct__12dBgS_AcchCirFv
/* 80C14FC8  38 7E 07 C4 */	addi r3, r30, 0x7c4
/* 80C14FCC  4B 65 2C 50 */	b __ct__11cBgS_GndChkFv
lbl_80C14FD0:
/* 80C14FD0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C14FD4  60 00 00 08 */	ori r0, r0, 8
/* 80C14FD8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C14FDC:
/* 80C14FDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C14FE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C14FE4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C14FE8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C14FEC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C14FF0  7C 05 07 74 */	extsb r5, r0
/* 80C14FF4  4B 42 03 6C */	b isSwitch__10dSv_info_cCFii
/* 80C14FF8  2C 03 00 00 */	cmpwi r3, 0
/* 80C14FFC  41 82 00 0C */	beq lbl_80C15008
/* 80C15000  38 60 00 05 */	li r3, 5
/* 80C15004  48 00 00 C0 */	b lbl_80C150C4
lbl_80C15008:
/* 80C15008  3B C0 00 00 */	li r30, 0
/* 80C1500C  3C 60 80 C1 */	lis r3, l_arcName@ha
/* 80C15010  38 83 53 8C */	addi r4, r3, l_arcName@l
/* 80C15014  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C15018  80 84 00 00 */	lwz r4, 0(r4)
/* 80C1501C  4B 41 7E A0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C15020  7C 64 1B 78 */	mr r4, r3
/* 80C15024  2C 04 00 05 */	cmpwi r4, 5
/* 80C15028  41 82 00 0C */	beq lbl_80C15034
/* 80C1502C  2C 04 00 03 */	cmpwi r4, 3
/* 80C15030  40 82 00 0C */	bne lbl_80C1503C
lbl_80C15034:
/* 80C15034  38 60 00 05 */	li r3, 5
/* 80C15038  48 00 00 8C */	b lbl_80C150C4
lbl_80C1503C:
/* 80C1503C  2C 04 00 04 */	cmpwi r4, 4
/* 80C15040  40 82 00 08 */	bne lbl_80C15048
/* 80C15044  3B C0 00 01 */	li r30, 1
lbl_80C15048:
/* 80C15048  38 00 00 01 */	li r0, 1
/* 80C1504C  7C 00 F0 00 */	cmpw r0, r30
/* 80C15050  40 82 00 70 */	bne lbl_80C150C0
/* 80C15054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C15058  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C1505C  3C 63 00 02 */	addis r3, r3, 2
/* 80C15060  3C 80 80 C1 */	lis r4, l_arcName@ha
/* 80C15064  38 84 53 8C */	addi r4, r4, l_arcName@l
/* 80C15068  80 84 00 00 */	lwz r4, 0(r4)
/* 80C1506C  3C A0 80 C1 */	lis r5, stringBase0@ha
/* 80C15070  38 A5 53 78 */	addi r5, r5, stringBase0@l
/* 80C15074  38 A5 00 08 */	addi r5, r5, 8
/* 80C15078  38 63 C2 F8 */	addi r3, r3, -15624
/* 80C1507C  4B 42 76 3C */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80C15080  7C 65 1B 78 */	mr r5, r3
/* 80C15084  7F E3 FB 78 */	mr r3, r31
/* 80C15088  3C 80 80 C1 */	lis r4, l_arcName@ha
/* 80C1508C  38 84 53 8C */	addi r4, r4, l_arcName@l
/* 80C15090  80 84 00 00 */	lwz r4, 0(r4)
/* 80C15094  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C15098  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C1509C  38 E0 10 30 */	li r7, 0x1030
/* 80C150A0  39 00 00 00 */	li r8, 0
/* 80C150A4  4B 46 37 18 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C150A8  7C 64 1B 78 */	mr r4, r3
/* 80C150AC  2C 04 00 05 */	cmpwi r4, 5
/* 80C150B0  40 82 00 08 */	bne lbl_80C150B8
/* 80C150B4  48 00 00 10 */	b lbl_80C150C4
lbl_80C150B8:
/* 80C150B8  38 00 00 00 */	li r0, 0
/* 80C150BC  98 1F 08 01 */	stb r0, 0x801(r31)
lbl_80C150C0:
/* 80C150C0  7C 83 23 78 */	mr r3, r4
lbl_80C150C4:
/* 80C150C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C150C8  4B 74 D1 60 */	b _restgpr_29
/* 80C150CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C150D0  7C 08 03 A6 */	mtlr r0
/* 80C150D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C150D8  4E 80 00 20 */	blr 
