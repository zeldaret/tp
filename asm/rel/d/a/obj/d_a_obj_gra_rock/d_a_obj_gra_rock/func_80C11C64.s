lbl_80C11C64:
/* 80C11C64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C11C68  7C 08 02 A6 */	mflr r0
/* 80C11C6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C11C70  39 61 00 30 */	addi r11, r1, 0x30
/* 80C11C74  4B 75 05 58 */	b _savegpr_25
/* 80C11C78  7C 7F 1B 78 */	mr r31, r3
/* 80C11C7C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C11C80  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C11C84  40 82 01 18 */	bne lbl_80C11D9C
/* 80C11C88  7F E0 FB 79 */	or. r0, r31, r31
/* 80C11C8C  41 82 01 04 */	beq lbl_80C11D90
/* 80C11C90  7C 1E 03 78 */	mr r30, r0
/* 80C11C94  4B 46 69 90 */	b __ct__16dBgS_MoveBgActorFv
/* 80C11C98  3C 60 80 C1 */	lis r3, __vt__14daObjGraRock_c@ha
/* 80C11C9C  38 03 25 48 */	addi r0, r3, __vt__14daObjGraRock_c@l
/* 80C11CA0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C11CA4  3B 3E 05 CC */	addi r25, r30, 0x5cc
/* 80C11CA8  3C 60 80 C1 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80C11CAC  38 03 25 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80C11CB0  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 80C11CB4  7F 23 CB 78 */	mr r3, r25
/* 80C11CB8  38 80 00 00 */	li r4, 0
/* 80C11CBC  4B 71 67 40 */	b init__12J3DFrameCtrlFs
/* 80C11CC0  38 00 00 00 */	li r0, 0
/* 80C11CC4  90 19 00 14 */	stw r0, 0x14(r25)
/* 80C11CC8  3B 3E 05 E4 */	addi r25, r30, 0x5e4
/* 80C11CCC  7F 23 CB 78 */	mr r3, r25
/* 80C11CD0  4B 46 43 D0 */	b __ct__9dBgS_AcchFv
/* 80C11CD4  3C 60 80 C1 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80C11CD8  38 63 25 18 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80C11CDC  90 79 00 10 */	stw r3, 0x10(r25)
/* 80C11CE0  38 03 00 0C */	addi r0, r3, 0xc
/* 80C11CE4  90 19 00 14 */	stw r0, 0x14(r25)
/* 80C11CE8  38 03 00 18 */	addi r0, r3, 0x18
/* 80C11CEC  90 19 00 24 */	stw r0, 0x24(r25)
/* 80C11CF0  38 79 00 14 */	addi r3, r25, 0x14
/* 80C11CF4  4B 46 71 74 */	b SetObj__16dBgS_PolyPassChkFv
/* 80C11CF8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C11CFC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C11D00  90 1E 07 D4 */	stw r0, 0x7d4(r30)
/* 80C11D04  38 7E 07 D8 */	addi r3, r30, 0x7d8
/* 80C11D08  4B 47 1A 58 */	b __ct__10dCcD_GSttsFv
/* 80C11D0C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C11D10  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C11D14  90 7E 07 D4 */	stw r3, 0x7d4(r30)
/* 80C11D18  38 03 00 20 */	addi r0, r3, 0x20
/* 80C11D1C  90 1E 07 D8 */	stw r0, 0x7d8(r30)
/* 80C11D20  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80C11D24  4B 46 41 88 */	b __ct__12dBgS_AcchCirFv
/* 80C11D28  3B 3E 08 38 */	addi r25, r30, 0x838
/* 80C11D2C  7F 23 CB 78 */	mr r3, r25
/* 80C11D30  4B 47 1C F8 */	b __ct__12dCcD_GObjInfFv
/* 80C11D34  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C11D38  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C11D3C  90 19 01 20 */	stw r0, 0x120(r25)
/* 80C11D40  3C 60 80 C1 */	lis r3, __vt__8cM3dGAab@ha
/* 80C11D44  38 03 25 0C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C11D48  90 19 01 1C */	stw r0, 0x11c(r25)
/* 80C11D4C  3C 60 80 C1 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C11D50  38 03 25 00 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C11D54  90 19 01 38 */	stw r0, 0x138(r25)
/* 80C11D58  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C11D5C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C11D60  90 79 01 20 */	stw r3, 0x120(r25)
/* 80C11D64  38 03 00 58 */	addi r0, r3, 0x58
/* 80C11D68  90 19 01 38 */	stw r0, 0x138(r25)
/* 80C11D6C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C11D70  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C11D74  90 79 00 3C */	stw r3, 0x3c(r25)
/* 80C11D78  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C11D7C  90 19 01 20 */	stw r0, 0x120(r25)
/* 80C11D80  38 03 00 84 */	addi r0, r3, 0x84
/* 80C11D84  90 19 01 38 */	stw r0, 0x138(r25)
/* 80C11D88  38 7E 09 74 */	addi r3, r30, 0x974
/* 80C11D8C  4B 65 5E 90 */	b __ct__11cBgS_GndChkFv
lbl_80C11D90:
/* 80C11D90  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C11D94  60 00 00 08 */	ori r0, r0, 8
/* 80C11D98  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C11D9C:
/* 80C11D9C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C11DA0  98 1F 09 C8 */	stb r0, 0x9c8(r31)
/* 80C11DA4  3B 40 00 00 */	li r26, 0
/* 80C11DA8  3B 60 00 00 */	li r27, 0
/* 80C11DAC  3B C0 00 00 */	li r30, 0
/* 80C11DB0  3B A0 00 00 */	li r29, 0
/* 80C11DB4  3C 60 80 C1 */	lis r3, l_arcName@ha
/* 80C11DB8  3B 83 24 9C */	addi r28, r3, l_arcName@l
lbl_80C11DBC:
/* 80C11DBC  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C11DC0  7C 7F 1A 14 */	add r3, r31, r3
/* 80C11DC4  7C 9C F0 2E */	lwzx r4, r28, r30
/* 80C11DC8  4B 41 B0 F4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C11DCC  7C 79 1B 78 */	mr r25, r3
/* 80C11DD0  2C 19 00 05 */	cmpwi r25, 5
/* 80C11DD4  41 82 00 0C */	beq lbl_80C11DE0
/* 80C11DD8  2C 19 00 03 */	cmpwi r25, 3
/* 80C11DDC  40 82 00 0C */	bne lbl_80C11DE8
lbl_80C11DE0:
/* 80C11DE0  38 60 00 05 */	li r3, 5
/* 80C11DE4  48 00 00 AC */	b lbl_80C11E90
lbl_80C11DE8:
/* 80C11DE8  2C 19 00 04 */	cmpwi r25, 4
/* 80C11DEC  40 82 00 08 */	bne lbl_80C11DF4
/* 80C11DF0  3B 5A 00 01 */	addi r26, r26, 1
lbl_80C11DF4:
/* 80C11DF4  3B 7B 00 01 */	addi r27, r27, 1
/* 80C11DF8  2C 1B 00 05 */	cmpwi r27, 5
/* 80C11DFC  3B DE 00 04 */	addi r30, r30, 4
/* 80C11E00  3B BD 00 08 */	addi r29, r29, 8
/* 80C11E04  41 80 FF B8 */	blt lbl_80C11DBC
/* 80C11E08  7C 1B D0 00 */	cmpw r27, r26
/* 80C11E0C  40 82 00 80 */	bne lbl_80C11E8C
/* 80C11E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C11E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C11E18  3C 63 00 02 */	addis r3, r3, 2
/* 80C11E1C  3C 80 80 C1 */	lis r4, l_arcName@ha
/* 80C11E20  38 84 24 9C */	addi r4, r4, l_arcName@l
/* 80C11E24  80 84 00 00 */	lwz r4, 0(r4)
/* 80C11E28  3C A0 80 C1 */	lis r5, struct_80C12440+0x0@ha
/* 80C11E2C  38 A5 24 40 */	addi r5, r5, struct_80C12440+0x0@l
/* 80C11E30  38 A5 00 4B */	addi r5, r5, 0x4b
/* 80C11E34  38 63 C2 F8 */	addi r3, r3, -15624
/* 80C11E38  4B 42 A8 80 */	b getObjectResName2Index__14dRes_control_cFPCcPCc
/* 80C11E3C  7C 65 1B 78 */	mr r5, r3
/* 80C11E40  7F E3 FB 78 */	mr r3, r31
/* 80C11E44  3C 80 80 C1 */	lis r4, l_arcName@ha
/* 80C11E48  38 84 24 9C */	addi r4, r4, l_arcName@l
/* 80C11E4C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C11E50  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C11E54  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C11E58  38 E0 2D 50 */	li r7, 0x2d50
/* 80C11E5C  39 00 00 00 */	li r8, 0
/* 80C11E60  4B 46 69 5C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C11E64  7C 79 1B 78 */	mr r25, r3
/* 80C11E68  38 60 01 50 */	li r3, 0x150
/* 80C11E6C  4B 54 37 C8 */	b daNpcF_chkEvtBit__FUl
/* 80C11E70  2C 03 00 00 */	cmpwi r3, 0
/* 80C11E74  41 82 00 08 */	beq lbl_80C11E7C
/* 80C11E78  3B 20 00 05 */	li r25, 5
lbl_80C11E7C:
/* 80C11E7C  2C 19 00 05 */	cmpwi r25, 5
/* 80C11E80  40 82 00 0C */	bne lbl_80C11E8C
/* 80C11E84  7F 23 CB 78 */	mr r3, r25
/* 80C11E88  48 00 00 08 */	b lbl_80C11E90
lbl_80C11E8C:
/* 80C11E8C  7F 23 CB 78 */	mr r3, r25
lbl_80C11E90:
/* 80C11E90  39 61 00 30 */	addi r11, r1, 0x30
/* 80C11E94  4B 75 03 84 */	b _restgpr_25
/* 80C11E98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C11E9C  7C 08 03 A6 */	mtlr r0
/* 80C11EA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C11EA4  4E 80 00 20 */	blr 
