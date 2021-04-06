lbl_80BC3C98:
/* 80BC3C98  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BC3C9C  7C 08 02 A6 */	mflr r0
/* 80BC3CA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BC3CA4  39 61 00 50 */	addi r11, r1, 0x50
/* 80BC3CA8  4B 79 E5 21 */	bl _savegpr_24
/* 80BC3CAC  7C 7E 1B 78 */	mr r30, r3
/* 80BC3CB0  3C 60 80 BC */	lis r3, mCcDObjInfo__13daBubbPilar_c@ha /* 0x80BC4070@ha */
/* 80BC3CB4  3B E3 40 70 */	addi r31, r3, mCcDObjInfo__13daBubbPilar_c@l /* 0x80BC4070@l */
/* 80BC3CB8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BC3CBC  7C 03 07 74 */	extsb r3, r0
/* 80BC3CC0  4B 46 93 AD */	bl dComIfGp_getReverb__Fi
/* 80BC3CC4  7C 67 1B 78 */	mr r7, r3
/* 80BC3CC8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080299@ha */
/* 80BC3CCC  38 03 02 99 */	addi r0, r3, 0x0299 /* 0x00080299@l */
/* 80BC3CD0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BC3CD4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BC3CD8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BC3CDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BC3CE0  38 81 00 20 */	addi r4, r1, 0x20
/* 80BC3CE4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BC3CE8  38 C0 00 00 */	li r6, 0
/* 80BC3CEC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80BC3CF0  FC 40 08 90 */	fmr f2, f1
/* 80BC3CF4  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80BC3CF8  FC 80 18 90 */	fmr f4, f3
/* 80BC3CFC  39 00 00 00 */	li r8, 0
/* 80BC3D00  4B 6E 88 0D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BC3D04  3B 00 00 00 */	li r24, 0
/* 80BC3D08  3B A0 00 00 */	li r29, 0
/* 80BC3D0C  3B 80 00 00 */	li r28, 0
/* 80BC3D10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BC3D14  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BC3D18  3B 7F 00 3C */	addi r27, r31, 0x3c
lbl_80BC3D1C:
/* 80BC3D1C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80BC3D20  38 00 00 FF */	li r0, 0xff
/* 80BC3D24  90 01 00 08 */	stw r0, 8(r1)
/* 80BC3D28  38 80 00 00 */	li r4, 0
/* 80BC3D2C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BC3D30  38 00 FF FF */	li r0, -1
/* 80BC3D34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BC3D38  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BC3D3C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BC3D40  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BC3D44  7F 3E E2 14 */	add r25, r30, r28
/* 80BC3D48  80 99 07 30 */	lwz r4, 0x730(r25)
/* 80BC3D4C  38 A0 00 00 */	li r5, 0
/* 80BC3D50  7C DB EA 2E */	lhzx r6, r27, r29
/* 80BC3D54  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80BC3D58  39 00 00 00 */	li r8, 0
/* 80BC3D5C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80BC3D60  39 5E 04 EC */	addi r10, r30, 0x4ec
/* 80BC3D64  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80BC3D68  4B 48 97 65 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BC3D6C  90 79 07 30 */	stw r3, 0x730(r25)
/* 80BC3D70  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80BC3D74  38 63 02 10 */	addi r3, r3, 0x210
/* 80BC3D78  80 99 07 30 */	lwz r4, 0x730(r25)
/* 80BC3D7C  4B 48 7B 9D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80BC3D80  90 79 07 40 */	stw r3, 0x740(r25)
/* 80BC3D84  3B 18 00 01 */	addi r24, r24, 1
/* 80BC3D88  2C 18 00 03 */	cmpwi r24, 3
/* 80BC3D8C  3B BD 00 02 */	addi r29, r29, 2
/* 80BC3D90  3B 9C 00 04 */	addi r28, r28, 4
/* 80BC3D94  41 80 FF 88 */	blt lbl_80BC3D1C
/* 80BC3D98  39 61 00 50 */	addi r11, r1, 0x50
/* 80BC3D9C  4B 79 E4 79 */	bl _restgpr_24
/* 80BC3DA0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BC3DA4  7C 08 03 A6 */	mtlr r0
/* 80BC3DA8  38 21 00 50 */	addi r1, r1, 0x50
/* 80BC3DAC  4E 80 00 20 */	blr 
