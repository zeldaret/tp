lbl_80663D28:
/* 80663D28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80663D2C  7C 08 02 A6 */	mflr r0
/* 80663D30  90 01 00 44 */	stw r0, 0x44(r1)
/* 80663D34  39 61 00 40 */	addi r11, r1, 0x40
/* 80663D38  4B CF E4 85 */	bl _savegpr_21
/* 80663D3C  7C 7C 1B 78 */	mr r28, r3
/* 80663D40  3C 80 80 66 */	lis r4, cNullVec__6Z2Calc@ha /* 0x806679B0@ha */
/* 80663D44  3B C4 79 B0 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x806679B0@l */
/* 80663D48  3C 80 80 66 */	lis r4, lit_3768@ha /* 0x80667698@ha */
/* 80663D4C  3B E4 76 98 */	addi r31, r4, lit_3768@l /* 0x80667698@l */
/* 80663D50  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80663D54  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80663D58  40 82 01 48 */	bne lbl_80663EA0
/* 80663D5C  7F 80 E3 79 */	or. r0, r28, r28
/* 80663D60  41 82 01 34 */	beq lbl_80663E94
/* 80663D64  7C 1D 03 78 */	mr r29, r0
/* 80663D68  4B 9B 4D FD */	bl __ct__10fopAc_ac_cFv
/* 80663D6C  3A BD 05 7C */	addi r21, r29, 0x57c
/* 80663D70  3C 60 80 66 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80667B44@ha */
/* 80663D74  38 03 7B 44 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80667B44@l */
/* 80663D78  90 1D 05 7C */	stw r0, 0x57c(r29)
/* 80663D7C  7E A3 AB 78 */	mr r3, r21
/* 80663D80  38 80 00 00 */	li r4, 0
/* 80663D84  4B CC 46 79 */	bl init__12J3DFrameCtrlFs
/* 80663D88  38 00 00 00 */	li r0, 0
/* 80663D8C  90 15 00 14 */	stw r0, 0x14(r21)
/* 80663D90  3A BD 05 94 */	addi r21, r29, 0x594
/* 80663D94  3C 60 80 66 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80667B44@ha */
/* 80663D98  38 03 7B 44 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80667B44@l */
/* 80663D9C  90 1D 05 94 */	stw r0, 0x594(r29)
/* 80663DA0  7E A3 AB 78 */	mr r3, r21
/* 80663DA4  38 80 00 00 */	li r4, 0
/* 80663DA8  4B CC 46 55 */	bl init__12J3DFrameCtrlFs
/* 80663DAC  38 00 00 00 */	li r0, 0
/* 80663DB0  90 15 00 14 */	stw r0, 0x14(r21)
/* 80663DB4  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80663DB8  3C 80 80 07 */	lis r4, __ct__12dBgS_AcchCirFv@ha /* 0x80075EAC@ha */
/* 80663DBC  38 84 5E AC */	addi r4, r4, __ct__12dBgS_AcchCirFv@l /* 0x80075EAC@l */
/* 80663DC0  3C A0 80 66 */	lis r5, __dt__12dBgS_AcchCirFv@ha /* 0x80664768@ha */
/* 80663DC4  38 A5 47 68 */	addi r5, r5, __dt__12dBgS_AcchCirFv@l /* 0x80664768@l */
/* 80663DC8  38 C0 00 40 */	li r6, 0x40
/* 80663DCC  38 E0 00 04 */	li r7, 4
/* 80663DD0  4B CF DF 91 */	bl __construct_array
/* 80663DD4  3A BD 06 AC */	addi r21, r29, 0x6ac
/* 80663DD8  7E A3 AB 78 */	mr r3, r21
/* 80663DDC  4B A1 22 C5 */	bl __ct__9dBgS_AcchFv
/* 80663DE0  3C 60 80 66 */	lis r3, __vt__15dBgS_StatueAcch@ha /* 0x80667B20@ha */
/* 80663DE4  38 63 7B 20 */	addi r3, r3, __vt__15dBgS_StatueAcch@l /* 0x80667B20@l */
/* 80663DE8  90 75 00 10 */	stw r3, 0x10(r21)
/* 80663DEC  38 03 00 0C */	addi r0, r3, 0xc
/* 80663DF0  90 15 00 14 */	stw r0, 0x14(r21)
/* 80663DF4  38 03 00 18 */	addi r0, r3, 0x18
/* 80663DF8  90 15 00 24 */	stw r0, 0x24(r21)
/* 80663DFC  38 75 00 14 */	addi r3, r21, 0x14
/* 80663E00  4B A1 51 7D */	bl SetStatue__16dBgS_PolyPassChkFv
/* 80663E04  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80663E08  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80663E0C  90 1D 08 9C */	stw r0, 0x89c(r29)
/* 80663E10  38 7D 08 A0 */	addi r3, r29, 0x8a0
/* 80663E14  4B A1 F9 4D */	bl __ct__10dCcD_GSttsFv
/* 80663E18  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80663E1C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80663E20  90 7D 08 9C */	stw r3, 0x89c(r29)
/* 80663E24  38 03 00 20 */	addi r0, r3, 0x20
/* 80663E28  90 1D 08 A0 */	stw r0, 0x8a0(r29)
/* 80663E2C  3B 7D 08 C0 */	addi r27, r29, 0x8c0
/* 80663E30  7F 63 DB 78 */	mr r3, r27
/* 80663E34  4B A1 FB F5 */	bl __ct__12dCcD_GObjInfFv
/* 80663E38  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80663E3C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80663E40  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80663E44  3C 60 80 66 */	lis r3, __vt__8cM3dGAab@ha /* 0x80667B68@ha */
/* 80663E48  38 03 7B 68 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80667B68@l */
/* 80663E4C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80663E50  3C 60 80 66 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80667B5C@ha */
/* 80663E54  38 03 7B 5C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80667B5C@l */
/* 80663E58  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80663E5C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80663E60  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80663E64  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80663E68  38 03 00 58 */	addi r0, r3, 0x58
/* 80663E6C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80663E70  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80663E74  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80663E78  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80663E7C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80663E80  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80663E84  38 03 00 84 */	addi r0, r3, 0x84
/* 80663E88  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80663E8C  38 7D 0A 14 */	addi r3, r29, 0xa14
/* 80663E90  4B C5 C5 39 */	bl __ct__10Z2CreatureFv
lbl_80663E94:
/* 80663E94  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80663E98  60 00 00 08 */	ori r0, r0, 8
/* 80663E9C  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80663EA0:
/* 80663EA0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80663EA4  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80663EA8  98 1C 0A DD */	stb r0, 0xadd(r28)
/* 80663EAC  88 7C 0A DD */	lbz r3, 0xadd(r28)
/* 80663EB0  28 03 00 02 */	cmplwi r3, 2
/* 80663EB4  40 82 00 1C */	bne lbl_80663ED0
/* 80663EB8  38 00 00 01 */	li r0, 1
/* 80663EBC  98 1C 0A DD */	stb r0, 0xadd(r28)
/* 80663EC0  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80663EC4  60 00 00 08 */	ori r0, r0, 8
/* 80663EC8  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 80663ECC  48 00 00 48 */	b lbl_80663F14
lbl_80663ED0:
/* 80663ED0  28 03 00 03 */	cmplwi r3, 3
/* 80663ED4  40 82 00 1C */	bne lbl_80663EF0
/* 80663ED8  38 00 00 00 */	li r0, 0
/* 80663EDC  98 1C 0A DD */	stb r0, 0xadd(r28)
/* 80663EE0  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80663EE4  60 00 04 00 */	ori r0, r0, 0x400
/* 80663EE8  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 80663EEC  48 00 00 28 */	b lbl_80663F14
lbl_80663EF0:
/* 80663EF0  28 03 00 02 */	cmplwi r3, 2
/* 80663EF4  40 81 00 20 */	ble lbl_80663F14
/* 80663EF8  38 03 FF FE */	addi r0, r3, -2
/* 80663EFC  98 1C 0A DD */	stb r0, 0xadd(r28)
/* 80663F00  88 1C 0A DD */	lbz r0, 0xadd(r28)
/* 80663F04  28 00 00 05 */	cmplwi r0, 5
/* 80663F08  41 80 00 0C */	blt lbl_80663F14
/* 80663F0C  38 00 00 00 */	li r0, 0
/* 80663F10  98 1C 0A DD */	stb r0, 0xadd(r28)
lbl_80663F14:
/* 80663F14  38 00 00 00 */	li r0, 0
/* 80663F18  88 7C 0A DD */	lbz r3, 0xadd(r28)
/* 80663F1C  28 03 00 04 */	cmplwi r3, 4
/* 80663F20  41 82 00 0C */	beq lbl_80663F2C
/* 80663F24  28 03 00 03 */	cmplwi r3, 3
/* 80663F28  40 82 00 08 */	bne lbl_80663F30
lbl_80663F2C:
/* 80663F2C  38 00 00 01 */	li r0, 1
lbl_80663F30:
/* 80663F30  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80663F34  41 82 00 10 */	beq lbl_80663F44
/* 80663F38  38 1F 00 14 */	addi r0, r31, 0x14
/* 80663F3C  90 1C 05 68 */	stw r0, 0x568(r28)
/* 80663F40  48 00 00 0C */	b lbl_80663F4C
lbl_80663F44:
/* 80663F44  38 1F 00 0C */	addi r0, r31, 0xc
/* 80663F48  90 1C 05 68 */	stw r0, 0x568(r28)
lbl_80663F4C:
/* 80663F4C  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80663F50  80 9C 05 68 */	lwz r4, 0x568(r28)
/* 80663F54  4B 9C 8F 69 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80663F58  7C 7D 1B 78 */	mr r29, r3
/* 80663F5C  2C 1D 00 04 */	cmpwi r29, 4
/* 80663F60  40 82 07 20 */	bne lbl_80664680
/* 80663F64  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80663F68  98 1C 0A DE */	stb r0, 0xade(r28)
/* 80663F6C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80663F70  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 80663F74  98 1C 0A E2 */	stb r0, 0xae2(r28)
/* 80663F78  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80663F7C  54 00 66 BE */	rlwinm r0, r0, 0xc, 0x1a, 0x1f
/* 80663F80  98 1C 0A E4 */	stb r0, 0xae4(r28)
/* 80663F84  88 7C 0A DD */	lbz r3, 0xadd(r28)
/* 80663F88  28 03 00 00 */	cmplwi r3, 0
/* 80663F8C  40 82 00 9C */	bne lbl_80664028
/* 80663F90  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80663F94  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80663F98  40 82 00 90 */	bne lbl_80664028
/* 80663F9C  88 9C 0A DE */	lbz r4, 0xade(r28)
/* 80663FA0  28 04 00 FF */	cmplwi r4, 0xff
/* 80663FA4  41 82 00 28 */	beq lbl_80663FCC
/* 80663FA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80663FAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80663FB0  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80663FB4  7C 05 07 74 */	extsb r5, r0
/* 80663FB8  4B 9D 13 A9 */	bl isSwitch__10dSv_info_cCFii
/* 80663FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80663FC0  40 82 00 0C */	bne lbl_80663FCC
/* 80663FC4  38 60 00 05 */	li r3, 5
/* 80663FC8  48 00 06 BC */	b lbl_80664684
lbl_80663FCC:
/* 80663FCC  88 9C 0A DE */	lbz r4, 0xade(r28)
/* 80663FD0  38 04 FF 01 */	addi r0, r4, -255
/* 80663FD4  30 00 FF FF */	addic r0, r0, -1
/* 80663FD8  7C 60 01 10 */	subfe r3, r0, r0
/* 80663FDC  38 04 00 01 */	addi r0, r4, 1
/* 80663FE0  7C 19 18 78 */	andc r25, r0, r3
/* 80663FE4  3B 40 00 06 */	li r26, 6
/* 80663FE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80663FEC  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80663FF0  48 00 00 2C */	b lbl_8066401C
lbl_80663FF4:
/* 80663FF4  7F 03 C3 78 */	mr r3, r24
/* 80663FF8  7F 44 D3 78 */	mr r4, r26
/* 80663FFC  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80664000  7C 05 07 74 */	extsb r5, r0
/* 80664004  4B 9D 13 5D */	bl isSwitch__10dSv_info_cCFii
/* 80664008  2C 03 00 00 */	cmpwi r3, 0
/* 8066400C  41 82 00 0C */	beq lbl_80664018
/* 80664010  38 60 00 05 */	li r3, 5
/* 80664014  48 00 06 70 */	b lbl_80664684
lbl_80664018:
/* 80664018  3B 5A FF FF */	addi r26, r26, -1
lbl_8066401C:
/* 8066401C  7C 1A C8 00 */	cmpw r26, r25
/* 80664020  40 80 FF D4 */	bge lbl_80663FF4
/* 80664024  48 00 00 3C */	b lbl_80664060
lbl_80664028:
/* 80664028  28 03 00 02 */	cmplwi r3, 2
/* 8066402C  40 82 00 34 */	bne lbl_80664060
/* 80664030  88 9C 0A DE */	lbz r4, 0xade(r28)
/* 80664034  28 04 00 FF */	cmplwi r4, 0xff
/* 80664038  41 82 00 28 */	beq lbl_80664060
/* 8066403C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80664040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80664044  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80664048  7C 05 07 74 */	extsb r5, r0
/* 8066404C  4B 9D 13 15 */	bl isSwitch__10dSv_info_cCFii
/* 80664050  2C 03 00 00 */	cmpwi r3, 0
/* 80664054  41 82 00 0C */	beq lbl_80664060
/* 80664058  38 60 00 05 */	li r3, 5
/* 8066405C  48 00 06 28 */	b lbl_80664684
lbl_80664060:
/* 80664060  7F 83 E3 78 */	mr r3, r28
/* 80664064  3C 80 80 66 */	lis r4, daCstatue_createHeap__FP10fopAc_ac_c@ha /* 0x80663D08@ha */
/* 80664068  38 84 3D 08 */	addi r4, r4, daCstatue_createHeap__FP10fopAc_ac_c@l /* 0x80663D08@l */
/* 8066406C  88 1C 0A DD */	lbz r0, 0xadd(r28)
/* 80664070  54 00 10 3A */	slwi r0, r0, 2
/* 80664074  38 BF 00 CC */	addi r5, r31, 0xcc
/* 80664078  7C A5 00 2E */	lwzx r5, r5, r0
/* 8066407C  4B 9B 64 35 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80664080  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80664084  40 82 00 0C */	bne lbl_80664090
/* 80664088  38 60 00 05 */	li r3, 5
/* 8066408C  48 00 05 F8 */	b lbl_80664684
lbl_80664090:
/* 80664090  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80664094  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80664098  4B 9A BA E5 */	bl setMorf__13mDoExt_morf_cFf
/* 8066409C  88 1C 0A DD */	lbz r0, 0xadd(r28)
/* 806640A0  28 00 00 00 */	cmplwi r0, 0
/* 806640A4  40 82 00 10 */	bne lbl_806640B4
/* 806640A8  38 00 00 04 */	li r0, 4
/* 806640AC  98 1C 0A DF */	stb r0, 0xadf(r28)
/* 806640B0  48 00 00 0C */	b lbl_806640BC
lbl_806640B4:
/* 806640B4  38 00 00 00 */	li r0, 0
/* 806640B8  98 1C 0A DF */	stb r0, 0xadf(r28)
lbl_806640BC:
/* 806640BC  88 1C 0A DD */	lbz r0, 0xadd(r28)
/* 806640C0  28 00 00 00 */	cmplwi r0, 0
/* 806640C4  41 82 00 0C */	beq lbl_806640D0
/* 806640C8  28 00 00 02 */	cmplwi r0, 2
/* 806640CC  40 82 00 14 */	bne lbl_806640E0
lbl_806640D0:
/* 806640D0  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 806640D4  D0 1C 04 EC */	stfs f0, 0x4ec(r28)
/* 806640D8  D0 1C 04 F0 */	stfs f0, 0x4f0(r28)
/* 806640DC  D0 1C 04 F4 */	stfs f0, 0x4f4(r28)
lbl_806640E0:
/* 806640E0  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 806640E4  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 806640E8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806640EC  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 806640F0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806640F4  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 806640F8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 806640FC  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80664100  38 80 00 00 */	li r4, 0
/* 80664104  38 A0 00 00 */	li r5, 0
/* 80664108  4B 9A CF A9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8066410C  38 7C 08 C0 */	addi r3, r28, 0x8c0
/* 80664110  38 9E 00 6C */	addi r4, r30, 0x6c
/* 80664114  4B A2 07 A1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80664118  38 1C 08 84 */	addi r0, r28, 0x884
/* 8066411C  90 1C 09 04 */	stw r0, 0x904(r28)
/* 80664120  38 7C 08 C0 */	addi r3, r28, 0x8c0
/* 80664124  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80664128  4B A2 07 E1 */	bl StartCAt__8dCcD_CylFR4cXyz
/* 8066412C  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80664130  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80664134  41 82 00 10 */	beq lbl_80664144
/* 80664138  80 1C 08 E8 */	lwz r0, 0x8e8(r28)
/* 8066413C  54 00 02 0C */	rlwinm r0, r0, 0, 8, 6
/* 80664140  90 1C 08 E8 */	stw r0, 0x8e8(r28)
lbl_80664144:
/* 80664144  88 1C 0A DD */	lbz r0, 0xadd(r28)
/* 80664148  28 00 00 00 */	cmplwi r0, 0
/* 8066414C  40 82 01 00 */	bne lbl_8066424C
/* 80664150  80 7C 0A 00 */	lwz r3, 0xa00(r28)
/* 80664154  38 9E 00 20 */	addi r4, r30, 0x20
/* 80664158  4B A2 06 79 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 8066415C  38 1C 08 84 */	addi r0, r28, 0x884
/* 80664160  80 7C 0A 00 */	lwz r3, 0xa00(r28)
/* 80664164  90 03 00 44 */	stw r0, 0x44(r3)
/* 80664168  80 7C 0A 04 */	lwz r3, 0xa04(r28)
/* 8066416C  38 9E 00 20 */	addi r4, r30, 0x20
/* 80664170  4B A2 06 61 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80664174  38 1C 08 84 */	addi r0, r28, 0x884
/* 80664178  80 7C 0A 04 */	lwz r3, 0xa04(r28)
/* 8066417C  90 03 00 44 */	stw r0, 0x44(r3)
/* 80664180  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80664184  80 7C 0A 04 */	lwz r3, 0xa04(r28)
/* 80664188  D0 03 01 40 */	stfs f0, 0x140(r3)
/* 8066418C  80 7C 09 FC */	lwz r3, 0x9fc(r28)
/* 80664190  38 9E 00 6C */	addi r4, r30, 0x6c
/* 80664194  4B A2 07 21 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80664198  38 1C 08 84 */	addi r0, r28, 0x884
/* 8066419C  80 7C 09 FC */	lwz r3, 0x9fc(r28)
/* 806641A0  90 03 00 44 */	stw r0, 0x44(r3)
/* 806641A4  3C 00 02 00 */	lis r0, 0x200
/* 806641A8  80 7C 09 FC */	lwz r3, 0x9fc(r28)
/* 806641AC  90 03 00 10 */	stw r0, 0x10(r3)
/* 806641B0  38 00 00 01 */	li r0, 1
/* 806641B4  80 7C 09 FC */	lwz r3, 0x9fc(r28)
/* 806641B8  98 03 00 14 */	stb r0, 0x14(r3)
/* 806641BC  80 7C 09 FC */	lwz r3, 0x9fc(r28)
/* 806641C0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 806641C4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806641C8  90 03 00 18 */	stw r0, 0x18(r3)
/* 806641CC  80 7C 09 FC */	lwz r3, 0x9fc(r28)
/* 806641D0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 806641D4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806641D8  90 03 00 2C */	stw r0, 0x2c(r3)
/* 806641DC  38 00 00 15 */	li r0, 0x15
/* 806641E0  80 7C 09 FC */	lwz r3, 0x9fc(r28)
/* 806641E4  98 03 00 74 */	stb r0, 0x74(r3)
/* 806641E8  80 7C 09 FC */	lwz r3, 0x9fc(r28)
/* 806641EC  38 63 01 24 */	addi r3, r3, 0x124
/* 806641F0  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 806641F4  4B C0 B0 0D */	bl SetR__8cM3dGCylFf
/* 806641F8  80 7C 09 FC */	lwz r3, 0x9fc(r28)
/* 806641FC  38 63 01 24 */	addi r3, r3, 0x124
/* 80664200  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80664204  4B C0 AF F5 */	bl SetH__8cM3dGCylFf
/* 80664208  88 1C 0A E4 */	lbz r0, 0xae4(r28)
/* 8066420C  28 00 00 3F */	cmplwi r0, 0x3f
/* 80664210  41 82 00 D4 */	beq lbl_806642E4
/* 80664214  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80664218  60 00 10 00 */	ori r0, r0, 0x1000
/* 8066421C  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 80664220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80664224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80664228  3B 03 09 58 */	addi r24, r3, 0x958
/* 8066422C  7F 03 C3 78 */	mr r3, r24
/* 80664230  88 9C 0A E4 */	lbz r4, 0xae4(r28)
/* 80664234  4B 9D 05 6D */	bl onTbox__12dSv_memBit_cFi
/* 80664238  7F 03 C3 78 */	mr r3, r24
/* 8066423C  88 9C 0A E4 */	lbz r4, 0xae4(r28)
/* 80664240  38 84 FF FF */	addi r4, r4, -1
/* 80664244  4B 9D 05 81 */	bl offTbox__12dSv_memBit_cFi
/* 80664248  48 00 00 9C */	b lbl_806642E4
lbl_8066424C:
/* 8066424C  28 00 00 02 */	cmplwi r0, 2
/* 80664250  40 82 00 94 */	bne lbl_806642E4
/* 80664254  3B 20 00 00 */	li r25, 0
/* 80664258  3B 40 00 15 */	li r26, 0x15
/* 8066425C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80664260  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80664264  3B 03 09 58 */	addi r24, r3, 0x958
lbl_80664268:
/* 80664268  7F 03 C3 78 */	mr r3, r24
/* 8066426C  7F 44 D3 78 */	mr r4, r26
/* 80664270  4B 9D 05 79 */	bl isTbox__12dSv_memBit_cCFi
/* 80664274  2C 03 00 00 */	cmpwi r3, 0
/* 80664278  41 82 00 20 */	beq lbl_80664298
/* 8066427C  7F 03 C3 78 */	mr r3, r24
/* 80664280  38 9A FF FF */	addi r4, r26, -1
/* 80664284  4B 9D 05 1D */	bl onTbox__12dSv_memBit_cFi
/* 80664288  7F 03 C3 78 */	mr r3, r24
/* 8066428C  7F 44 D3 78 */	mr r4, r26
/* 80664290  4B 9D 05 35 */	bl offTbox__12dSv_memBit_cFi
/* 80664294  48 00 00 10 */	b lbl_806642A4
lbl_80664298:
/* 80664298  3B 5A 00 02 */	addi r26, r26, 2
/* 8066429C  2C 1A 00 1F */	cmpwi r26, 0x1f
/* 806642A0  40 81 FF C8 */	ble lbl_80664268
lbl_806642A4:
/* 806642A4  3B 40 00 15 */	li r26, 0x15
lbl_806642A8:
/* 806642A8  7F 03 C3 78 */	mr r3, r24
/* 806642AC  7F 44 D3 78 */	mr r4, r26
/* 806642B0  4B 9D 05 39 */	bl isTbox__12dSv_memBit_cCFi
/* 806642B4  2C 03 00 00 */	cmpwi r3, 0
/* 806642B8  41 82 00 0C */	beq lbl_806642C4
/* 806642BC  3B 20 00 01 */	li r25, 1
/* 806642C0  48 00 00 10 */	b lbl_806642D0
lbl_806642C4:
/* 806642C4  3B 5A 00 01 */	addi r26, r26, 1
/* 806642C8  2C 1A 00 21 */	cmpwi r26, 0x21
/* 806642CC  40 81 FF DC */	ble lbl_806642A8
lbl_806642D0:
/* 806642D0  2C 19 00 00 */	cmpwi r25, 0
/* 806642D4  40 82 00 10 */	bne lbl_806642E4
/* 806642D8  7F 03 C3 78 */	mr r3, r24
/* 806642DC  38 80 00 14 */	li r4, 0x14
/* 806642E0  4B 9D 04 C1 */	bl onTbox__12dSv_memBit_cFi
lbl_806642E4:
/* 806642E4  38 00 00 08 */	li r0, 8
/* 806642E8  98 1C 05 48 */	stb r0, 0x548(r28)
/* 806642EC  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 806642F0  38 03 00 24 */	addi r0, r3, 0x24
/* 806642F4  90 1C 05 04 */	stw r0, 0x504(r28)
/* 806642F8  88 1C 0A DD */	lbz r0, 0xadd(r28)
/* 806642FC  28 00 00 00 */	cmplwi r0, 0
/* 80664300  41 82 00 0C */	beq lbl_8066430C
/* 80664304  28 00 00 02 */	cmplwi r0, 2
/* 80664308  40 82 01 04 */	bne lbl_8066440C
lbl_8066430C:
/* 8066430C  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 80664310  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80664314  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 80664318  4B A1 1C 41 */	bl SetWall__12dBgS_AcchCirFff
/* 8066431C  38 7C 05 EC */	addi r3, r28, 0x5ec
/* 80664320  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 80664324  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 80664328  4B A1 1C 31 */	bl SetWall__12dBgS_AcchCirFff
/* 8066432C  38 7C 06 2C */	addi r3, r28, 0x62c
/* 80664330  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 80664334  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 80664338  4B A1 1C 21 */	bl SetWall__12dBgS_AcchCirFff
/* 8066433C  38 7C 06 6C */	addi r3, r28, 0x66c
/* 80664340  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80664344  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 80664348  4B A1 1C 11 */	bl SetWall__12dBgS_AcchCirFff
/* 8066434C  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80664350  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80664354  41 82 00 1C */	beq lbl_80664370
/* 80664358  38 7C 08 84 */	addi r3, r28, 0x884
/* 8066435C  38 80 00 FF */	li r4, 0xff
/* 80664360  38 A0 00 00 */	li r5, 0
/* 80664364  7F 86 E3 78 */	mr r6, r28
/* 80664368  4B A1 F4 F9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8066436C  48 00 00 18 */	b lbl_80664384
lbl_80664370:
/* 80664370  38 7C 08 84 */	addi r3, r28, 0x884
/* 80664374  38 80 00 FE */	li r4, 0xfe
/* 80664378  38 A0 00 00 */	li r5, 0
/* 8066437C  7F 86 E3 78 */	mr r6, r28
/* 80664380  4B A1 F4 E1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
lbl_80664384:
/* 80664384  7F 83 E3 78 */	mr r3, r28
/* 80664388  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 8066438C  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80664390  FC 60 08 90 */	fmr f3, f1
/* 80664394  4B 9B 61 A5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80664398  7F 83 E3 78 */	mr r3, r28
/* 8066439C  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 806643A0  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 806643A4  FC 60 08 90 */	fmr f3, f1
/* 806643A8  4B 9B 61 81 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806643AC  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 806643B0  D0 1C 0A F4 */	stfs f0, 0xaf4(r28)
/* 806643B4  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 806643B8  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 806643BC  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 806643C0  D0 1C 05 34 */	stfs f0, 0x534(r28)
/* 806643C4  3A E0 00 04 */	li r23, 4
/* 806643C8  C0 1C 09 F0 */	lfs f0, 0x9f0(r28)
/* 806643CC  EC 40 00 32 */	fmuls f2, f0, f0
/* 806643D0  C0 3F 01 18 */	lfs f1, 0x118(r31)
/* 806643D4  C0 1C 09 F4 */	lfs f0, 0x9f4(r28)
/* 806643D8  EC 00 00 32 */	fmuls f0, f0, f0
/* 806643DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 806643E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 806643E4  EC 22 00 2A */	fadds f1, f2, f0
/* 806643E8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 806643EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806643F0  40 81 00 0C */	ble lbl_806643FC
/* 806643F4  FC 00 08 34 */	frsqrte f0, f1
/* 806643F8  EC 20 00 72 */	fmuls f1, f0, f1
lbl_806643FC:
/* 806643FC  D0 3C 0B 00 */	stfs f1, 0xb00(r28)
/* 80664400  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80664404  D0 1C 0B 04 */	stfs f0, 0xb04(r28)
/* 80664408  48 00 01 A4 */	b lbl_806645AC
lbl_8066440C:
/* 8066440C  28 00 00 01 */	cmplwi r0, 1
/* 80664410  40 82 00 AC */	bne lbl_806644BC
/* 80664414  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 80664418  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8066441C  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 80664420  4B A1 1B 39 */	bl SetWall__12dBgS_AcchCirFff
/* 80664424  38 7C 09 E4 */	addi r3, r28, 0x9e4
/* 80664428  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 8066442C  4B C0 AD D5 */	bl SetR__8cM3dGCylFf
/* 80664430  38 7C 09 E4 */	addi r3, r28, 0x9e4
/* 80664434  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 80664438  4B C0 AD C1 */	bl SetH__8cM3dGCylFf
/* 8066443C  38 7C 08 84 */	addi r3, r28, 0x884
/* 80664440  38 80 00 B4 */	li r4, 0xb4
/* 80664444  38 A0 00 00 */	li r5, 0
/* 80664448  7F 86 E3 78 */	mr r6, r28
/* 8066444C  4B A1 F4 15 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80664450  7F 83 E3 78 */	mr r3, r28
/* 80664454  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 80664458  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 8066445C  FC 60 08 90 */	fmr f3, f1
/* 80664460  4B 9B 60 D9 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80664464  7F 83 E3 78 */	mr r3, r28
/* 80664468  C0 3F 01 2C */	lfs f1, 0x12c(r31)
/* 8066446C  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80664470  FC 60 08 90 */	fmr f3, f1
/* 80664474  4B 9B 60 B5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80664478  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 8066447C  D0 1C 0A F4 */	stfs f0, 0xaf4(r28)
/* 80664480  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 80664484  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80664488  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8066448C  D0 1C 05 34 */	stfs f0, 0x534(r28)
/* 80664490  88 1C 04 9A */	lbz r0, 0x49a(r28)
/* 80664494  60 00 00 02 */	ori r0, r0, 2
/* 80664498  98 1C 04 9A */	stb r0, 0x49a(r28)
/* 8066449C  3A E0 00 01 */	li r23, 1
/* 806644A0  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 806644A4  FC 00 08 34 */	frsqrte f0, f1
/* 806644A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 806644AC  D0 1C 0B 00 */	stfs f0, 0xb00(r28)
/* 806644B0  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 806644B4  D0 1C 0B 04 */	stfs f0, 0xb04(r28)
/* 806644B8  48 00 00 F4 */	b lbl_806645AC
lbl_806644BC:
/* 806644BC  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 806644C0  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 806644C4  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 806644C8  38 7C 09 E4 */	addi r3, r28, 0x9e4
/* 806644CC  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 806644D0  4B C0 AD 31 */	bl SetR__8cM3dGCylFf
/* 806644D4  38 7C 09 E4 */	addi r3, r28, 0x9e4
/* 806644D8  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 806644DC  4B C0 AD 1D */	bl SetH__8cM3dGCylFf
/* 806644E0  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 806644E4  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 806644E8  C0 5F 01 30 */	lfs f2, 0x130(r31)
/* 806644EC  4B A1 1A 6D */	bl SetWall__12dBgS_AcchCirFff
/* 806644F0  38 7C 08 84 */	addi r3, r28, 0x884
/* 806644F4  38 80 00 FE */	li r4, 0xfe
/* 806644F8  38 A0 00 00 */	li r5, 0
/* 806644FC  7F 86 E3 78 */	mr r6, r28
/* 80664500  4B A1 F3 61 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80664504  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80664508  D0 1C 0A F4 */	stfs f0, 0xaf4(r28)
/* 8066450C  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80664510  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80664514  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80664518  D0 1C 05 34 */	stfs f0, 0x534(r28)
/* 8066451C  3A E0 00 01 */	li r23, 1
/* 80664520  82 DC 0A 08 */	lwz r22, 0xa08(r28)
/* 80664524  3A A0 00 00 */	li r21, 0
/* 80664528  3B 60 00 00 */	li r27, 0
/* 8066452C  3B 1C 08 84 */	addi r24, r28, 0x884
/* 80664530  3B 3F 00 A8 */	addi r25, r31, 0xa8
/* 80664534  3C 60 80 66 */	lis r3, daCstatue_atHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x806636C8@ha */
/* 80664538  3B 43 36 C8 */	addi r26, r3, daCstatue_atHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x806636C8@l */
lbl_8066453C:
/* 8066453C  7E C3 B3 78 */	mr r3, r22
/* 80664540  38 9E 00 B0 */	addi r4, r30, 0xb0
/* 80664544  4B A2 04 F1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80664548  93 16 00 44 */	stw r24, 0x44(r22)
/* 8066454C  38 76 01 24 */	addi r3, r22, 0x124
/* 80664550  7C 39 DC 2E */	lfsx f1, r25, r27
/* 80664554  4B C0 B1 B5 */	bl SetR__8cM3dGSphFf
/* 80664558  93 56 00 60 */	stw r26, 0x60(r22)
/* 8066455C  3A B5 00 01 */	addi r21, r21, 1
/* 80664560  2C 15 00 09 */	cmpwi r21, 9
/* 80664564  3B 7B 00 04 */	addi r27, r27, 4
/* 80664568  3A D6 01 38 */	addi r22, r22, 0x138
/* 8066456C  41 80 FF D0 */	blt lbl_8066453C
/* 80664570  3C 60 D9 7B */	lis r3, 0xD97B /* 0xD97AFDDF@ha */
/* 80664574  38 03 FD DF */	addi r0, r3, 0xFDDF /* 0xD97AFDDF@l */
/* 80664578  80 7C 0A 08 */	lwz r3, 0xa08(r28)
/* 8066457C  90 03 00 28 */	stw r0, 0x28(r3)
/* 80664580  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80664584  FC 00 08 34 */	frsqrte f0, f1
/* 80664588  EC 00 00 72 */	fmuls f0, f0, f1
/* 8066458C  D0 1C 0B 00 */	stfs f0, 0xb00(r28)
/* 80664590  38 00 00 5C */	li r0, 0x5c
/* 80664594  98 1C 05 44 */	stb r0, 0x544(r28)
/* 80664598  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 8066459C  60 00 00 01 */	ori r0, r0, 1
/* 806645A0  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806645A4  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 806645A8  D0 1C 0B 04 */	stfs f0, 0xb04(r28)
lbl_806645AC:
/* 806645AC  C0 3C 0B 00 */	lfs f1, 0xb00(r28)
/* 806645B0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 806645B4  EC 01 00 2A */	fadds f0, f1, f0
/* 806645B8  D0 1C 0B 00 */	stfs f0, 0xb00(r28)
/* 806645BC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806645C0  D0 1C 0A F8 */	stfs f0, 0xaf8(r28)
/* 806645C4  38 7C 06 AC */	addi r3, r28, 0x6ac
/* 806645C8  7F 84 E3 78 */	mr r4, r28
/* 806645CC  7E E5 BB 78 */	mr r5, r23
/* 806645D0  38 DC 05 AC */	addi r6, r28, 0x5ac
/* 806645D4  4B A1 1C B5 */	bl Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir
/* 806645D8  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 806645DC  90 1C 05 24 */	stw r0, 0x524(r28)
/* 806645E0  7F 83 E3 78 */	mr r3, r28
/* 806645E4  48 00 26 15 */	bl initStopBrkBtk__11daCstatue_cFv
/* 806645E8  A8 1C 05 9C */	lha r0, 0x59c(r28)
/* 806645EC  C8 3F 01 50 */	lfd f1, 0x150(r31)
/* 806645F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806645F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806645F8  3C 00 43 30 */	lis r0, 0x4330
/* 806645FC  90 01 00 08 */	stw r0, 8(r1)
/* 80664600  C8 01 00 08 */	lfd f0, 8(r1)
/* 80664604  EC 00 08 28 */	fsubs f0, f0, f1
/* 80664608  D0 1C 05 A4 */	stfs f0, 0x5a4(r28)
/* 8066460C  38 7C 06 AC */	addi r3, r28, 0x6ac
/* 80664610  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80664614  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80664618  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8066461C  4B A1 24 91 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80664620  7F 83 E3 78 */	mr r3, r28
/* 80664624  48 00 05 15 */	bl setMatrix__11daCstatue_cFv
/* 80664628  7F 83 E3 78 */	mr r3, r28
/* 8066462C  48 00 04 75 */	bl setRoomInfo__11daCstatue_cFv
/* 80664630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80664634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80664638  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8066463C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80664640  D0 1C 0B 08 */	stfs f0, 0xb08(r28)
/* 80664644  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80664648  D0 1C 0B 0C */	stfs f0, 0xb0c(r28)
/* 8066464C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80664650  D0 1C 0B 10 */	stfs f0, 0xb10(r28)
/* 80664654  38 7C 0A A4 */	addi r3, r28, 0xaa4
/* 80664658  38 9C 06 AC */	addi r4, r28, 0x6ac
/* 8066465C  C0 3F 01 4C */	lfs f1, 0x14c(r31)
/* 80664660  C0 5C 09 F4 */	lfs f2, 0x9f4(r28)
/* 80664664  4B 9E C6 39 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 80664668  38 7C 0A 14 */	addi r3, r28, 0xa14
/* 8066466C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80664670  38 BC 05 38 */	addi r5, r28, 0x538
/* 80664674  38 C0 00 04 */	li r6, 4
/* 80664678  38 E0 00 01 */	li r7, 1
/* 8066467C  4B C5 BE B5 */	bl init__10Z2CreatureFP3VecP3VecUcUc
lbl_80664680:
/* 80664680  7F A3 EB 78 */	mr r3, r29
lbl_80664684:
/* 80664684  39 61 00 40 */	addi r11, r1, 0x40
/* 80664688  4B CF DB 81 */	bl _restgpr_21
/* 8066468C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80664690  7C 08 03 A6 */	mtlr r0
/* 80664694  38 21 00 40 */	addi r1, r1, 0x40
/* 80664698  4E 80 00 20 */	blr 
