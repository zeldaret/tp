lbl_80492F50:
/* 80492F50  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80492F54  7C 08 02 A6 */	mflr r0
/* 80492F58  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80492F5C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80492F60  4B EC F2 69 */	bl _savegpr_24
/* 80492F64  7C 7E 1B 78 */	mr r30, r3
/* 80492F68  3C 60 80 49 */	lis r3, l_cull_size_box@ha /* 0x804961D4@ha */
/* 80492F6C  3B E3 61 D4 */	addi r31, r3, l_cull_size_box@l /* 0x804961D4@l */
/* 80492F70  88 1E 09 C8 */	lbz r0, 0x9c8(r30)
/* 80492F74  28 00 00 00 */	cmplwi r0, 0
/* 80492F78  41 82 00 44 */	beq lbl_80492FBC
/* 80492F7C  A8 9E 09 C6 */	lha r4, 0x9c6(r30)
/* 80492F80  38 00 0D 48 */	li r0, 0xd48
/* 80492F84  B0 1E 09 C4 */	sth r0, 0x9c4(r30)
/* 80492F88  A8 7E 09 C6 */	lha r3, 0x9c6(r30)
/* 80492F8C  A8 1E 09 C4 */	lha r0, 0x9c4(r30)
/* 80492F90  7C 03 02 14 */	add r0, r3, r0
/* 80492F94  B0 1E 09 C6 */	sth r0, 0x9c6(r30)
/* 80492F98  7C 80 07 35 */	extsh. r0, r4
/* 80492F9C  40 80 00 34 */	bge lbl_80492FD0
/* 80492FA0  A8 1E 09 C6 */	lha r0, 0x9c6(r30)
/* 80492FA4  2C 00 00 00 */	cmpwi r0, 0
/* 80492FA8  40 81 00 28 */	ble lbl_80492FD0
/* 80492FAC  88 7E 09 C8 */	lbz r3, 0x9c8(r30)
/* 80492FB0  38 03 FF FF */	addi r0, r3, -1
/* 80492FB4  98 1E 09 C8 */	stb r0, 0x9c8(r30)
/* 80492FB8  48 00 00 18 */	b lbl_80492FD0
lbl_80492FBC:
/* 80492FBC  40 82 00 14 */	bne lbl_80492FD0
/* 80492FC0  38 00 00 00 */	li r0, 0
/* 80492FC4  B0 1E 09 C4 */	sth r0, 0x9c4(r30)
/* 80492FC8  38 7E 09 88 */	addi r3, r30, 0x988
/* 80492FCC  4B EB 34 B9 */	bl PSMTXIdentity
lbl_80492FD0:
/* 80492FD0  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 80492FD4  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80492FD8  41 82 01 C8 */	beq lbl_804931A0
/* 80492FDC  88 1E 09 7D */	lbz r0, 0x97d(r30)
/* 80492FE0  28 00 00 00 */	cmplwi r0, 0
/* 80492FE4  41 82 01 BC */	beq lbl_804931A0
/* 80492FE8  38 00 00 00 */	li r0, 0
/* 80492FEC  98 1E 09 C8 */	stb r0, 0x9c8(r30)
/* 80492FF0  B0 1E 09 C4 */	sth r0, 0x9c4(r30)
/* 80492FF4  38 7E 09 88 */	addi r3, r30, 0x988
/* 80492FF8  4B EB 34 8D */	bl PSMTXIdentity
/* 80492FFC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80493000  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80493004  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80493008  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8049300C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80493010  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80493014  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80493018  7C 03 07 74 */	extsb r3, r0
/* 8049301C  38 00 00 00 */	li r0, 0
/* 80493020  90 01 00 08 */	stw r0, 8(r1)
/* 80493024  90 61 00 0C */	stw r3, 0xc(r1)
/* 80493028  90 01 00 10 */	stw r0, 0x10(r1)
/* 8049302C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80493030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80493034  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80493038  38 80 00 E7 */	li r4, 0xe7
/* 8049303C  38 BE 08 50 */	addi r5, r30, 0x850
/* 80493040  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80493044  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80493048  39 1E 04 B4 */	addi r8, r30, 0x4b4
/* 8049304C  39 21 00 38 */	addi r9, r1, 0x38
/* 80493050  39 40 00 00 */	li r10, 0
/* 80493054  4B BB A0 15 */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80493058  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8049305C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80493060  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80493064  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80493068  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8049306C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80493070  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80493074  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80493078  38 7D 4C 9C */	addi r3, r29, 0x4c9c
/* 8049307C  38 80 00 04 */	li r4, 4
/* 80493080  38 A0 00 1F */	li r5, 0x1f
/* 80493084  38 C1 00 20 */	addi r6, r1, 0x20
/* 80493088  4B BD C9 9D */	bl StartShock__12dVibration_cFii4cXyz
/* 8049308C  3B 20 00 00 */	li r25, 0
/* 80493090  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80493094  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80493098  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8049309C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804930A0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804930A4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804930A8  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 804930AC  EC 01 00 2A */	fadds f0, f1, f0
/* 804930B0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804930B4  3B 01 00 44 */	addi r24, r1, 0x44
/* 804930B8  7F 03 C3 78 */	mr r3, r24
/* 804930BC  4B BE 44 C1 */	bl __ct__11dBgS_GndChkFv
/* 804930C0  3C 60 80 49 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x8049680C@ha */
/* 804930C4  38 63 68 0C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x8049680C@l */
/* 804930C8  90 61 00 54 */	stw r3, 0x54(r1)
/* 804930CC  3B 83 00 0C */	addi r28, r3, 0xc
/* 804930D0  93 81 00 64 */	stw r28, 0x64(r1)
/* 804930D4  3B 63 00 18 */	addi r27, r3, 0x18
/* 804930D8  93 61 00 80 */	stw r27, 0x80(r1)
/* 804930DC  3B 43 00 24 */	addi r26, r3, 0x24
/* 804930E0  93 41 00 90 */	stw r26, 0x90(r1)
/* 804930E4  38 78 00 3C */	addi r3, r24, 0x3c
/* 804930E8  4B BE 5D 81 */	bl SetObj__16dBgS_PolyPassChkFv
/* 804930EC  7F 03 C3 78 */	mr r3, r24
/* 804930F0  38 81 00 2C */	addi r4, r1, 0x2c
/* 804930F4  4B DD 4C 35 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804930F8  80 1E 00 04 */	lwz r0, 4(r30)
/* 804930FC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80493100  7F A3 EB 78 */	mr r3, r29
/* 80493104  7F 04 C3 78 */	mr r4, r24
/* 80493108  4B BE 13 99 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8049310C  A0 01 00 5A */	lhz r0, 0x5a(r1)
/* 80493110  2C 00 00 00 */	cmpwi r0, 0
/* 80493114  41 80 00 1C */	blt lbl_80493130
/* 80493118  2C 00 01 00 */	cmpwi r0, 0x100
/* 8049311C  40 80 00 14 */	bge lbl_80493130
/* 80493120  38 61 00 58 */	addi r3, r1, 0x58
/* 80493124  4B D1 83 9D */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 80493128  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8049312C  7C 19 03 78 */	mr r25, r0
lbl_80493130:
/* 80493130  88 7E 04 BA */	lbz r3, 0x4ba(r30)
/* 80493134  7C 63 07 74 */	extsb r3, r3
/* 80493138  4B B9 9F 35 */	bl dComIfGp_getReverb__Fi
/* 8049313C  7C 67 1B 78 */	mr r7, r3
/* 80493140  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008002F@ha */
/* 80493144  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0008002F@l */
/* 80493148  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049314C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80493150  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80493154  80 63 00 00 */	lwz r3, 0(r3)
/* 80493158  38 81 00 1C */	addi r4, r1, 0x1c
/* 8049315C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80493160  7F 26 CB 78 */	mr r6, r25
/* 80493164  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80493168  FC 40 08 90 */	fmr f2, f1
/* 8049316C  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80493170  FC 80 18 90 */	fmr f4, f3
/* 80493174  39 00 00 00 */	li r8, 0
/* 80493178  4B E1 88 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8049317C  3C 60 80 49 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x8049680C@ha */
/* 80493180  38 03 68 0C */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x8049680C@l */
/* 80493184  90 01 00 54 */	stw r0, 0x54(r1)
/* 80493188  93 81 00 64 */	stw r28, 0x64(r1)
/* 8049318C  93 61 00 80 */	stw r27, 0x80(r1)
/* 80493190  93 41 00 90 */	stw r26, 0x90(r1)
/* 80493194  38 61 00 44 */	addi r3, r1, 0x44
/* 80493198  38 80 00 00 */	li r4, 0
/* 8049319C  4B BE 44 55 */	bl __dt__11dBgS_GndChkFv
lbl_804931A0:
/* 804931A0  38 7E 04 A8 */	addi r3, r30, 0x4a8
/* 804931A4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804931A8  4B EB 41 F5 */	bl PSVECSquareDistance
/* 804931AC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804931B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804931B4  40 81 00 58 */	ble lbl_8049320C
/* 804931B8  FC 00 08 34 */	frsqrte f0, f1
/* 804931BC  C8 9F 01 00 */	lfd f4, 0x100(r31)
/* 804931C0  FC 44 00 32 */	fmul f2, f4, f0
/* 804931C4  C8 7F 01 08 */	lfd f3, 0x108(r31)
/* 804931C8  FC 00 00 32 */	fmul f0, f0, f0
/* 804931CC  FC 01 00 32 */	fmul f0, f1, f0
/* 804931D0  FC 03 00 28 */	fsub f0, f3, f0
/* 804931D4  FC 02 00 32 */	fmul f0, f2, f0
/* 804931D8  FC 44 00 32 */	fmul f2, f4, f0
/* 804931DC  FC 00 00 32 */	fmul f0, f0, f0
/* 804931E0  FC 01 00 32 */	fmul f0, f1, f0
/* 804931E4  FC 03 00 28 */	fsub f0, f3, f0
/* 804931E8  FC 02 00 32 */	fmul f0, f2, f0
/* 804931EC  FC 44 00 32 */	fmul f2, f4, f0
/* 804931F0  FC 00 00 32 */	fmul f0, f0, f0
/* 804931F4  FC 01 00 32 */	fmul f0, f1, f0
/* 804931F8  FC 03 00 28 */	fsub f0, f3, f0
/* 804931FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80493200  FC 21 00 32 */	fmul f1, f1, f0
/* 80493204  FC 20 08 18 */	frsp f1, f1
/* 80493208  48 00 00 88 */	b lbl_80493290
lbl_8049320C:
/* 8049320C  C8 1F 01 10 */	lfd f0, 0x110(r31)
/* 80493210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80493214  40 80 00 10 */	bge lbl_80493224
/* 80493218  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8049321C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80493220  48 00 00 70 */	b lbl_80493290
lbl_80493224:
/* 80493224  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80493228  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8049322C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80493230  3C 00 7F 80 */	lis r0, 0x7f80
/* 80493234  7C 03 00 00 */	cmpw r3, r0
/* 80493238  41 82 00 14 */	beq lbl_8049324C
/* 8049323C  40 80 00 40 */	bge lbl_8049327C
/* 80493240  2C 03 00 00 */	cmpwi r3, 0
/* 80493244  41 82 00 20 */	beq lbl_80493264
/* 80493248  48 00 00 34 */	b lbl_8049327C
lbl_8049324C:
/* 8049324C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80493250  41 82 00 0C */	beq lbl_8049325C
/* 80493254  38 00 00 01 */	li r0, 1
/* 80493258  48 00 00 28 */	b lbl_80493280
lbl_8049325C:
/* 8049325C  38 00 00 02 */	li r0, 2
/* 80493260  48 00 00 20 */	b lbl_80493280
lbl_80493264:
/* 80493264  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80493268  41 82 00 0C */	beq lbl_80493274
/* 8049326C  38 00 00 05 */	li r0, 5
/* 80493270  48 00 00 10 */	b lbl_80493280
lbl_80493274:
/* 80493274  38 00 00 03 */	li r0, 3
/* 80493278  48 00 00 08 */	b lbl_80493280
lbl_8049327C:
/* 8049327C  38 00 00 04 */	li r0, 4
lbl_80493280:
/* 80493280  2C 00 00 01 */	cmpwi r0, 1
/* 80493284  40 82 00 0C */	bne lbl_80493290
/* 80493288  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8049328C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80493290:
/* 80493290  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80493294  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80493298  40 81 00 10 */	ble lbl_804932A8
/* 8049329C  38 00 00 01 */	li r0, 1
/* 804932A0  98 1E 09 7C */	stb r0, 0x97c(r30)
/* 804932A4  98 1E 09 7D */	stb r0, 0x97d(r30)
lbl_804932A8:
/* 804932A8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 804932AC  4B EC EF 69 */	bl _restgpr_24
/* 804932B0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 804932B4  7C 08 03 A6 */	mtlr r0
/* 804932B8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 804932BC  4E 80 00 20 */	blr 
