lbl_80CD3BD8:
/* 80CD3BD8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80CD3BDC  7C 08 02 A6 */	mflr r0
/* 80CD3BE0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80CD3BE4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80CD3BE8  4B 68 E5 E1 */	bl _savegpr_24
/* 80CD3BEC  7C 7A 1B 78 */	mr r26, r3
/* 80CD3BF0  7C 98 23 78 */	mr r24, r4
/* 80CD3BF4  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha /* 0x80CD5CFC@ha */
/* 80CD3BF8  3B C3 5C FC */	addi r30, r3, m__21daObj_Sekizoa_Param_c@l /* 0x80CD5CFC@l */
/* 80CD3BFC  3B 80 00 00 */	li r28, 0
/* 80CD3C00  3B 60 FF FF */	li r27, -1
/* 80CD3C04  3B 20 00 00 */	li r25, 0
/* 80CD3C08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD3C0C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD3C10  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80CD3C14  7F A3 EB 78 */	mr r3, r29
/* 80CD3C18  3C A0 80 CD */	lis r5, d_a_obj_sekizoa__stringBase0@ha /* 0x80CD5E64@ha */
/* 80CD3C1C  38 A5 5E 64 */	addi r5, r5, d_a_obj_sekizoa__stringBase0@l /* 0x80CD5E64@l */
/* 80CD3C20  38 A5 00 5F */	addi r5, r5, 0x5f
/* 80CD3C24  38 C0 00 03 */	li r6, 3
/* 80CD3C28  4B 37 44 C5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD3C2C  28 03 00 00 */	cmplwi r3, 0
/* 80CD3C30  41 82 00 08 */	beq lbl_80CD3C38
/* 80CD3C34  83 63 00 00 */	lwz r27, 0(r3)
lbl_80CD3C38:
/* 80CD3C38  7F A3 EB 78 */	mr r3, r29
/* 80CD3C3C  7F 04 C3 78 */	mr r4, r24
/* 80CD3C40  3C A0 80 CD */	lis r5, d_a_obj_sekizoa__stringBase0@ha /* 0x80CD5E64@ha */
/* 80CD3C44  38 A5 5E 64 */	addi r5, r5, d_a_obj_sekizoa__stringBase0@l /* 0x80CD5E64@l */
/* 80CD3C48  38 A5 00 63 */	addi r5, r5, 0x63
/* 80CD3C4C  38 C0 00 03 */	li r6, 3
/* 80CD3C50  4B 37 44 9D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD3C54  28 03 00 00 */	cmplwi r3, 0
/* 80CD3C58  41 82 00 08 */	beq lbl_80CD3C60
/* 80CD3C5C  83 23 00 00 */	lwz r25, 0(r3)
lbl_80CD3C60:
/* 80CD3C60  7F A3 EB 78 */	mr r3, r29
/* 80CD3C64  7F 04 C3 78 */	mr r4, r24
/* 80CD3C68  4B 37 40 E5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80CD3C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD3C70  41 82 01 DC */	beq lbl_80CD3E4C
/* 80CD3C74  2C 1B 00 02 */	cmpwi r27, 2
/* 80CD3C78  41 82 01 70 */	beq lbl_80CD3DE8
/* 80CD3C7C  40 80 00 14 */	bge lbl_80CD3C90
/* 80CD3C80  2C 1B 00 00 */	cmpwi r27, 0
/* 80CD3C84  41 82 00 18 */	beq lbl_80CD3C9C
/* 80CD3C88  40 80 01 24 */	bge lbl_80CD3DAC
/* 80CD3C8C  48 00 01 C0 */	b lbl_80CD3E4C
lbl_80CD3C90:
/* 80CD3C90  2C 1B 00 63 */	cmpwi r27, 0x63
/* 80CD3C94  41 82 01 5C */	beq lbl_80CD3DF0
/* 80CD3C98  48 00 01 B4 */	b lbl_80CD3E4C
lbl_80CD3C9C:
/* 80CD3C9C  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80CD3CA0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CD3CA4  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD3CA8  41 82 00 18 */	beq lbl_80CD3CC0
/* 80CD3CAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD3CB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD3CB4  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80CD3CB8  7C 05 07 74 */	extsb r5, r0
/* 80CD3CBC  4B 36 15 45 */	bl onSwitch__10dSv_info_cFii
lbl_80CD3CC0:
/* 80CD3CC0  38 7A 10 CC */	addi r3, r26, 0x10cc
/* 80CD3CC4  4B 47 1A 45 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CD3CC8  7C 7D 1B 78 */	mr r29, r3
/* 80CD3CCC  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD3CD0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CD3CD4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CD3CD8  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 80CD3CDC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD3CE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD3CE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD3CE8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80CD3CEC  4B 33 86 F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CD3CF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CD3CF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CD3CF8  38 81 00 0C */	addi r4, r1, 0xc
/* 80CD3CFC  7C 85 23 78 */	mr r5, r4
/* 80CD3D00  4B 67 30 6D */	bl PSMTXMultVec
/* 80CD3D04  38 61 00 0C */	addi r3, r1, 0xc
/* 80CD3D08  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80CD3D0C  7C 65 1B 78 */	mr r5, r3
/* 80CD3D10  4B 67 33 81 */	bl PSVECAdd
/* 80CD3D14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD3D18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD3D1C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80CD3D20  38 81 00 0C */	addi r4, r1, 0xc
/* 80CD3D24  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80CD3D28  3C A5 00 01 */	addis r5, r5, 1
/* 80CD3D2C  38 05 80 00 */	addi r0, r5, -32768
/* 80CD3D30  7C 05 07 34 */	extsh r5, r0
/* 80CD3D34  38 C0 00 00 */	li r6, 0
/* 80CD3D38  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CD3D3C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80CD3D40  7D 89 03 A6 */	mtctr r12
/* 80CD3D44  4E 80 04 21 */	bctrl 
/* 80CD3D48  38 61 00 18 */	addi r3, r1, 0x18
/* 80CD3D4C  3C 80 80 CD */	lis r4, l_evtList@ha /* 0x80CD5F40@ha */
/* 80CD3D50  38 84 5F 40 */	addi r4, r4, l_evtList@l /* 0x80CD5F40@l */
/* 80CD3D54  80 84 00 48 */	lwz r4, 0x48(r4)
/* 80CD3D58  4B 69 4D D5 */	bl strcpy
/* 80CD3D5C  38 61 00 18 */	addi r3, r1, 0x18
/* 80CD3D60  3C 80 80 CD */	lis r4, d_a_obj_sekizoa__stringBase0@ha /* 0x80CD5E64@ha */
/* 80CD3D64  38 84 5E 64 */	addi r4, r4, d_a_obj_sekizoa__stringBase0@l /* 0x80CD5E64@l */
/* 80CD3D68  38 84 00 6F */	addi r4, r4, 0x6f
/* 80CD3D6C  4B 69 4D 51 */	bl strcat
/* 80CD3D70  3B FF 4E C8 */	addi r31, r31, 0x4ec8
/* 80CD3D74  7F E3 FB 78 */	mr r3, r31
/* 80CD3D78  7F A4 EB 78 */	mr r4, r29
/* 80CD3D7C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80CD3D80  4B 36 EB D9 */	bl setSkipZev__14dEvt_control_cFPvPc
/* 80CD3D84  7F E3 FB 78 */	mr r3, r31
/* 80CD3D88  4B 36 EC 21 */	bl onSkipFade__14dEvt_control_cFv
/* 80CD3D8C  38 00 00 00 */	li r0, 0
/* 80CD3D90  98 1D 05 C2 */	stb r0, 0x5c2(r29)
/* 80CD3D94  38 00 00 01 */	li r0, 1
/* 80CD3D98  98 1D 05 C3 */	stb r0, 0x5c3(r29)
/* 80CD3D9C  7F E3 FB 78 */	mr r3, r31
/* 80CD3DA0  7F A4 EB 78 */	mr r4, r29
/* 80CD3DA4  4B 36 F8 B9 */	bl setPt2__14dEvt_control_cFPv
/* 80CD3DA8  48 00 00 A4 */	b lbl_80CD3E4C
lbl_80CD3DAC:
/* 80CD3DAC  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80CD3DB0  D0 1A 06 68 */	stfs f0, 0x668(r26)
/* 80CD3DB4  D0 1A 06 50 */	stfs f0, 0x650(r26)
/* 80CD3DB8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006011A@ha */
/* 80CD3DBC  38 03 01 1A */	addi r0, r3, 0x011A /* 0x0006011A@l */
/* 80CD3DC0  90 01 00 08 */	stw r0, 8(r1)
/* 80CD3DC4  38 7A 05 80 */	addi r3, r26, 0x580
/* 80CD3DC8  38 81 00 08 */	addi r4, r1, 8
/* 80CD3DCC  38 A0 00 00 */	li r5, 0
/* 80CD3DD0  38 C0 FF FF */	li r6, -1
/* 80CD3DD4  81 9A 05 80 */	lwz r12, 0x580(r26)
/* 80CD3DD8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CD3DDC  7D 89 03 A6 */	mtctr r12
/* 80CD3DE0  4E 80 04 21 */	bctrl 
/* 80CD3DE4  48 00 00 68 */	b lbl_80CD3E4C
lbl_80CD3DE8:
/* 80CD3DE8  93 3A 0D C4 */	stw r25, 0xdc4(r26)
/* 80CD3DEC  48 00 00 60 */	b lbl_80CD3E4C
lbl_80CD3DF0:
/* 80CD3DF0  A8 1A 06 64 */	lha r0, 0x664(r26)
/* 80CD3DF4  C8 5E 00 E0 */	lfd f2, 0xe0(r30)
/* 80CD3DF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD3DFC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CD3E00  3C 60 43 30 */	lis r3, 0x4330
/* 80CD3E04  90 61 00 80 */	stw r3, 0x80(r1)
/* 80CD3E08  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80CD3E0C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CD3E10  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80CD3E14  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CD3E18  D0 1A 06 6C */	stfs f0, 0x66c(r26)
/* 80CD3E1C  A8 1A 06 4C */	lha r0, 0x64c(r26)
/* 80CD3E20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD3E24  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80CD3E28  90 61 00 88 */	stw r3, 0x88(r1)
/* 80CD3E2C  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80CD3E30  EC 00 10 28 */	fsubs f0, f0, f2
/* 80CD3E34  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CD3E38  D0 1A 06 54 */	stfs f0, 0x654(r26)
/* 80CD3E3C  D0 3A 06 68 */	stfs f1, 0x668(r26)
/* 80CD3E40  D0 3A 06 50 */	stfs f1, 0x650(r26)
/* 80CD3E44  38 00 00 01 */	li r0, 1
/* 80CD3E48  98 1A 0E 25 */	stb r0, 0xe25(r26)
lbl_80CD3E4C:
/* 80CD3E4C  2C 1B 00 02 */	cmpwi r27, 2
/* 80CD3E50  41 82 00 80 */	beq lbl_80CD3ED0
/* 80CD3E54  40 80 00 14 */	bge lbl_80CD3E68
/* 80CD3E58  2C 1B 00 00 */	cmpwi r27, 0
/* 80CD3E5C  41 82 00 18 */	beq lbl_80CD3E74
/* 80CD3E60  40 80 00 1C */	bge lbl_80CD3E7C
/* 80CD3E64  48 00 00 88 */	b lbl_80CD3EEC
lbl_80CD3E68:
/* 80CD3E68  2C 1B 00 63 */	cmpwi r27, 0x63
/* 80CD3E6C  41 82 00 7C */	beq lbl_80CD3EE8
/* 80CD3E70  48 00 00 7C */	b lbl_80CD3EEC
lbl_80CD3E74:
/* 80CD3E74  3B 80 00 01 */	li r28, 1
/* 80CD3E78  48 00 00 74 */	b lbl_80CD3EEC
lbl_80CD3E7C:
/* 80CD3E7C  A8 1A 06 64 */	lha r0, 0x664(r26)
/* 80CD3E80  C8 3E 00 E0 */	lfd f1, 0xe0(r30)
/* 80CD3E84  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CD3E88  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80CD3E8C  3C 00 43 30 */	lis r0, 0x4330
/* 80CD3E90  90 01 00 88 */	stw r0, 0x88(r1)
/* 80CD3E94  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80CD3E98  EC 40 08 28 */	fsubs f2, f0, f1
/* 80CD3E9C  C0 3A 06 6C */	lfs f1, 0x66c(r26)
/* 80CD3EA0  C0 1A 06 68 */	lfs f0, 0x668(r26)
/* 80CD3EA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80CD3EA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CD3EAC  4C 40 13 82 */	cror 2, 0, 2
/* 80CD3EB0  7C 00 00 26 */	mfcr r0
/* 80CD3EB4  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 80CD3EB8  98 1A 0E 25 */	stb r0, 0xe25(r26)
/* 80CD3EBC  88 1A 0E 25 */	lbz r0, 0xe25(r26)
/* 80CD3EC0  28 00 00 00 */	cmplwi r0, 0
/* 80CD3EC4  41 82 00 28 */	beq lbl_80CD3EEC
/* 80CD3EC8  3B 80 00 01 */	li r28, 1
/* 80CD3ECC  48 00 00 20 */	b lbl_80CD3EEC
lbl_80CD3ED0:
/* 80CD3ED0  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80CD3ED4  48 00 19 B1 */	bl func_80CD5884
/* 80CD3ED8  2C 03 00 00 */	cmpwi r3, 0
/* 80CD3EDC  40 82 00 10 */	bne lbl_80CD3EEC
/* 80CD3EE0  3B 80 00 01 */	li r28, 1
/* 80CD3EE4  48 00 00 08 */	b lbl_80CD3EEC
lbl_80CD3EE8:
/* 80CD3EE8  3B 80 00 01 */	li r28, 1
lbl_80CD3EEC:
/* 80CD3EEC  7F 83 E3 78 */	mr r3, r28
/* 80CD3EF0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80CD3EF4  4B 68 E3 21 */	bl _restgpr_24
/* 80CD3EF8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80CD3EFC  7C 08 03 A6 */	mtlr r0
/* 80CD3F00  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80CD3F04  4E 80 00 20 */	blr 
