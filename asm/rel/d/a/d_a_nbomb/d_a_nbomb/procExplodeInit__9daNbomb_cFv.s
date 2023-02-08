lbl_804C8CF8:
/* 804C8CF8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804C8CFC  7C 08 02 A6 */	mflr r0
/* 804C8D00  90 01 00 94 */	stw r0, 0x94(r1)
/* 804C8D04  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804C8D08  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804C8D0C  39 61 00 80 */	addi r11, r1, 0x80
/* 804C8D10  4B E9 94 B5 */	bl _savegpr_23
/* 804C8D14  7C 7B 1B 78 */	mr r27, r3
/* 804C8D18  3C 60 80 4D */	lis r3, lit_3767@ha /* 0x804CC340@ha */
/* 804C8D1C  3B C3 C3 40 */	addi r30, r3, lit_3767@l /* 0x804CC340@l */
/* 804C8D20  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 804C8D24  64 00 00 02 */	oris r0, r0, 2
/* 804C8D28  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 804C8D2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C8D30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C8D34  83 A3 5D B4 */	lwz r29, 0x5db4(r3)
/* 804C8D38  7F A3 EB 78 */	mr r3, r29
/* 804C8D3C  4B C1 AA 85 */	bl getBombEffScale__9daAlink_cCFv
/* 804C8D40  D0 3B 04 EC */	stfs f1, 0x4ec(r27)
/* 804C8D44  C0 1B 04 EC */	lfs f0, 0x4ec(r27)
/* 804C8D48  D0 1B 04 F0 */	stfs f0, 0x4f0(r27)
/* 804C8D4C  C0 1B 04 EC */	lfs f0, 0x4ec(r27)
/* 804C8D50  D0 1B 04 F4 */	stfs f0, 0x4f4(r27)
/* 804C8D54  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 804C8D58  4B D9 EB FD */	bl cM_rndF__Ff
/* 804C8D5C  FC 00 08 1E */	fctiwz f0, f1
/* 804C8D60  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804C8D64  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804C8D68  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 804C8D6C  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 804C8D70  3B E3 0C F4 */	addi r31, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 804C8D74  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804C8D78  D0 1B 0B E4 */	stfs f0, 0xbe4(r27)
/* 804C8D7C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804C8D80  D0 1B 0B E8 */	stfs f0, 0xbe8(r27)
/* 804C8D84  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804C8D88  D0 1B 0B EC */	stfs f0, 0xbec(r27)
/* 804C8D8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804C8D90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804C8D94  38 80 00 00 */	li r4, 0
/* 804C8D98  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804C8D9C  38 DB 01 0C */	addi r6, r27, 0x10c
/* 804C8DA0  4B CD AA 25 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804C8DA4  80 1B 0B 4C */	lwz r0, 0xb4c(r27)
/* 804C8DA8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804C8DAC  40 82 00 10 */	bne lbl_804C8DBC
/* 804C8DB0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 804C8DB4  28 00 00 12 */	cmplwi r0, 0x12
/* 804C8DB8  40 82 00 54 */	bne lbl_804C8E0C
lbl_804C8DBC:
/* 804C8DBC  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 804C8DC0  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804C8DC4  41 82 00 34 */	beq lbl_804C8DF8
/* 804C8DC8  C3 FB 07 44 */	lfs f31, 0x744(r27)
/* 804C8DCC  7F A3 EB 78 */	mr r3, r29
/* 804C8DD0  4B C1 AA 41 */	bl getBombExplodeWaterEffectLimit__9daAlink_cCFv
/* 804C8DD4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 804C8DD8  EC 1F 00 28 */	fsubs f0, f31, f0
/* 804C8DDC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804C8DE0  40 80 00 18 */	bge lbl_804C8DF8
/* 804C8DE4  3B 3E 00 E4 */	addi r25, r30, 0xe4
/* 804C8DE8  3B 00 00 09 */	li r24, 9
/* 804C8DEC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080028@ha */
/* 804C8DF0  3B 83 00 28 */	addi r28, r3, 0x0028 /* 0x00080028@l */
/* 804C8DF4  48 00 00 28 */	b lbl_804C8E1C
lbl_804C8DF8:
/* 804C8DF8  3B 3E 00 D4 */	addi r25, r30, 0xd4
/* 804C8DFC  3B 00 00 08 */	li r24, 8
/* 804C8E00  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008001A@ha */
/* 804C8E04  3B 83 00 1A */	addi r28, r3, 0x001A /* 0x0008001A@l */
/* 804C8E08  48 00 00 14 */	b lbl_804C8E1C
lbl_804C8E0C:
/* 804C8E0C  3B 3E 00 C0 */	addi r25, r30, 0xc0
/* 804C8E10  3B 00 00 09 */	li r24, 9
/* 804C8E14  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000B@ha */
/* 804C8E18  3B 83 00 0B */	addi r28, r3, 0x000B /* 0x0008000B@l */
lbl_804C8E1C:
/* 804C8E1C  3A E0 00 00 */	li r23, 0
/* 804C8E20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C8E24  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C8E28  48 00 00 50 */	b lbl_804C8E78
lbl_804C8E2C:
/* 804C8E2C  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 804C8E30  38 80 00 00 */	li r4, 0
/* 804C8E34  90 81 00 08 */	stw r4, 8(r1)
/* 804C8E38  38 00 FF FF */	li r0, -1
/* 804C8E3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C8E40  90 81 00 10 */	stw r4, 0x10(r1)
/* 804C8E44  90 81 00 14 */	stw r4, 0x14(r1)
/* 804C8E48  90 81 00 18 */	stw r4, 0x18(r1)
/* 804C8E4C  38 80 00 00 */	li r4, 0
/* 804C8E50  A0 B9 00 00 */	lhz r5, 0(r25)
/* 804C8E54  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 804C8E58  38 FB 01 0C */	addi r7, r27, 0x10c
/* 804C8E5C  39 1B 04 E4 */	addi r8, r27, 0x4e4
/* 804C8E60  39 3B 04 EC */	addi r9, r27, 0x4ec
/* 804C8E64  39 40 00 FF */	li r10, 0xff
/* 804C8E68  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804C8E6C  4B B8 3C 25 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804C8E70  3A F7 00 01 */	addi r23, r23, 1
/* 804C8E74  3B 39 00 02 */	addi r25, r25, 2
lbl_804C8E78:
/* 804C8E78  7C 17 C0 00 */	cmpw r23, r24
/* 804C8E7C  41 80 FF B0 */	blt lbl_804C8E2C
/* 804C8E80  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 804C8E84  D0 1B 0B 60 */	stfs f0, 0xb60(r27)
/* 804C8E88  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 804C8E8C  D0 1B 0B 64 */	stfs f0, 0xb64(r27)
/* 804C8E90  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 804C8E94  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
/* 804C8E98  C0 1B 0B 64 */	lfs f0, 0xb64(r27)
/* 804C8E9C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 804C8EA0  EC 00 08 2A */	fadds f0, f0, f1
/* 804C8EA4  D0 1B 0B 64 */	stfs f0, 0xb64(r27)
/* 804C8EA8  38 00 00 64 */	li r0, 0x64
/* 804C8EAC  B0 1B 0B 6C */	sth r0, 0xb6c(r27)
/* 804C8EB0  B0 1B 0B 6E */	sth r0, 0xb6e(r27)
/* 804C8EB4  38 00 00 50 */	li r0, 0x50
/* 804C8EB8  B0 1B 0B 70 */	sth r0, 0xb70(r27)
/* 804C8EBC  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 804C8EC0  D0 1B 0B 74 */	stfs f0, 0xb74(r27)
/* 804C8EC4  D0 3B 0B 78 */	stfs f1, 0xb78(r27)
/* 804C8EC8  38 7B 0B 60 */	addi r3, r27, 0xb60
/* 804C8ECC  4B CD E8 C5 */	bl dKy_plight_set__FP15LIGHT_INFLUENCE
/* 804C8ED0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 804C8ED4  D0 1B 0B 80 */	stfs f0, 0xb80(r27)
/* 804C8ED8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 804C8EDC  D0 1B 0B 84 */	stfs f0, 0xb84(r27)
/* 804C8EE0  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 804C8EE4  D0 1B 0B 88 */	stfs f0, 0xb88(r27)
/* 804C8EE8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804C8EEC  D0 3B 0B 8C */	stfs f1, 0xb8c(r27)
/* 804C8EF0  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804C8EF4  D0 1B 0B 90 */	stfs f0, 0xb90(r27)
/* 804C8EF8  D0 3B 0B 94 */	stfs f1, 0xb94(r27)
/* 804C8EFC  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 804C8F00  D0 1B 0B 98 */	stfs f0, 0xb98(r27)
/* 804C8F04  D0 3B 0B A0 */	stfs f1, 0xba0(r27)
/* 804C8F08  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 804C8F0C  D0 1B 0B 9C */	stfs f0, 0xb9c(r27)
/* 804C8F10  38 7B 0B 80 */	addi r3, r27, 0xb80
/* 804C8F14  4B B9 1E E9 */	bl dKyw_pntwind_set__FP14WIND_INFLUENCE
/* 804C8F18  38 A0 00 00 */	li r5, 0
/* 804C8F1C  98 BB 0B 50 */	stb r5, 0xb50(r27)
/* 804C8F20  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804C8F24  D0 3B 0B AC */	stfs f1, 0xbac(r27)
/* 804C8F28  3C 60 80 4D */	lis r3, lit_5313@ha /* 0x804CC53C@ha */
/* 804C8F2C  38 83 C5 3C */	addi r4, r3, lit_5313@l /* 0x804CC53C@l */
/* 804C8F30  80 64 00 00 */	lwz r3, 0(r4)
/* 804C8F34  80 04 00 04 */	lwz r0, 4(r4)
/* 804C8F38  90 7B 0C 38 */	stw r3, 0xc38(r27)
/* 804C8F3C  90 1B 0C 3C */	stw r0, 0xc3c(r27)
/* 804C8F40  80 04 00 08 */	lwz r0, 8(r4)
/* 804C8F44  90 1B 0C 40 */	stw r0, 0xc40(r27)
/* 804C8F48  D0 3B 05 2C */	stfs f1, 0x52c(r27)
/* 804C8F4C  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 804C8F50  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 804C8F54  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 804C8F58  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804C8F5C  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 804C8F60  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804C8F64  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 804C8F68  D0 3B 05 30 */	stfs f1, 0x530(r27)
/* 804C8F6C  90 BB 00 B0 */	stw r5, 0xb0(r27)
/* 804C8F70  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 804C8F74  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804C8F78  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 804C8F7C  80 1B 07 E4 */	lwz r0, 0x7e4(r27)
/* 804C8F80  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C8F84  90 1B 07 E4 */	stw r0, 0x7e4(r27)
/* 804C8F88  80 1B 07 F8 */	lwz r0, 0x7f8(r27)
/* 804C8F8C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C8F90  90 1B 07 F8 */	stw r0, 0x7f8(r27)
/* 804C8F94  80 1B 07 CC */	lwz r0, 0x7cc(r27)
/* 804C8F98  60 00 00 01 */	ori r0, r0, 1
/* 804C8F9C  90 1B 07 CC */	stw r0, 0x7cc(r27)
/* 804C8FA0  7F A3 EB 78 */	mr r3, r29
/* 804C8FA4  4B C1 A8 2D */	bl getBombAtR__9daAlink_cCFv
/* 804C8FA8  38 7B 08 F0 */	addi r3, r27, 0x8f0
/* 804C8FAC  4B DA 67 5D */	bl SetR__8cM3dGSphFf
/* 804C8FB0  38 7B 08 F0 */	addi r3, r27, 0x8f0
/* 804C8FB4  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 804C8FB8  4B DA 66 91 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804C8FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C8FC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C8FC4  38 63 23 3C */	addi r3, r3, 0x233c
/* 804C8FC8  38 9B 07 CC */	addi r4, r27, 0x7cc
/* 804C8FCC  4B D9 BB DD */	bl Set__4cCcSFP8cCcD_Obj
/* 804C8FD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C8FD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C8FD8  38 63 4B 88 */	addi r3, r3, 0x4b88
/* 804C8FDC  38 9B 07 CC */	addi r4, r27, 0x7cc
/* 804C8FE0  38 A0 00 01 */	li r5, 1
/* 804C8FE4  4B BB CD B5 */	bl Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 804C8FE8  93 81 00 20 */	stw r28, 0x20(r1)
/* 804C8FEC  38 7B 0B 20 */	addi r3, r27, 0xb20
/* 804C8FF0  38 81 00 20 */	addi r4, r1, 0x20
/* 804C8FF4  38 A0 00 00 */	li r5, 0
/* 804C8FF8  88 DB 0B 53 */	lbz r6, 0xb53(r27)
/* 804C8FFC  81 9B 0B 30 */	lwz r12, 0xb30(r27)
/* 804C9000  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804C9004  7D 89 03 A6 */	mtctr r12
/* 804C9008  4E 80 04 21 */	bctrl 
/* 804C900C  7F 63 DB 78 */	mr r3, r27
/* 804C9010  4B B5 3B 91 */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 804C9014  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 804C9018  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 804C901C  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 804C9020  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 804C9024  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804C9028  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 804C902C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804C9030  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 804C9034  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804C9038  38 61 00 3C */	addi r3, r1, 0x3c
/* 804C903C  38 80 00 FF */	li r4, 0xff
/* 804C9040  28 1B 00 00 */	cmplwi r27, 0
/* 804C9044  41 82 00 0C */	beq lbl_804C9050
/* 804C9048  80 BB 00 04 */	lwz r5, 4(r27)
/* 804C904C  48 00 00 08 */	b lbl_804C9054
lbl_804C9050:
/* 804C9050  38 A0 FF FF */	li r5, -1
lbl_804C9054:
/* 804C9054  38 C0 00 0A */	li r6, 0xa
/* 804C9058  4B CD F1 69 */	bl dKy_Sound_set__F4cXyziUii
/* 804C905C  38 00 00 00 */	li r0, 0
/* 804C9060  B0 1B 0B 58 */	sth r0, 0xb58(r27)
/* 804C9064  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 804C9068  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804C906C  4B E7 E3 31 */	bl PSVECSquareDistance
/* 804C9070  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 804C9074  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C9078  40 80 00 38 */	bge lbl_804C90B0
/* 804C907C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804C9080  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804C9084  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804C9088  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804C908C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804C9090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C9094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C9098  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804C909C  38 80 00 04 */	li r4, 4
/* 804C90A0  38 A0 00 1F */	li r5, 0x1f
/* 804C90A4  38 C1 00 30 */	addi r6, r1, 0x30
/* 804C90A8  4B BA 69 7D */	bl StartShock__12dVibration_cFii4cXyz
/* 804C90AC  48 00 00 40 */	b lbl_804C90EC
lbl_804C90B0:
/* 804C90B0  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 804C90B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C90B8  40 80 00 34 */	bge lbl_804C90EC
/* 804C90BC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804C90C0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804C90C4  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804C90C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804C90CC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804C90D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C90D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C90D8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804C90DC  38 80 00 02 */	li r4, 2
/* 804C90E0  38 A0 00 1F */	li r5, 0x1f
/* 804C90E4  38 C1 00 24 */	addi r6, r1, 0x24
/* 804C90E8  4B BA 69 3D */	bl StartShock__12dVibration_cFii4cXyz
lbl_804C90EC:
/* 804C90EC  38 00 00 01 */	li r0, 1
/* 804C90F0  98 1B 0B 51 */	stb r0, 0xb51(r27)
/* 804C90F4  38 60 00 01 */	li r3, 1
/* 804C90F8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804C90FC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804C9100  39 61 00 80 */	addi r11, r1, 0x80
/* 804C9104  4B E9 91 0D */	bl _restgpr_23
/* 804C9108  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804C910C  7C 08 03 A6 */	mtlr r0
/* 804C9110  38 21 00 90 */	addi r1, r1, 0x90
/* 804C9114  4E 80 00 20 */	blr 
