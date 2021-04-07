lbl_804F8CE8:
/* 804F8CE8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804F8CEC  7C 08 02 A6 */	mflr r0
/* 804F8CF0  90 01 00 74 */	stw r0, 0x74(r1)
/* 804F8CF4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804F8CF8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804F8CFC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 804F8D00  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 804F8D04  39 61 00 50 */	addi r11, r1, 0x50
/* 804F8D08  4B E6 94 B1 */	bl _savegpr_20
/* 804F8D0C  7C 7F 1B 78 */	mr r31, r3
/* 804F8D10  3C 60 80 50 */	lis r3, cNullVec__6Z2Calc@ha /* 0x804FA950@ha */
/* 804F8D14  3B 43 A9 50 */	addi r26, r3, cNullVec__6Z2Calc@l /* 0x804FA950@l */
/* 804F8D18  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F8D1C  3B A3 A6 BC */	addi r29, r3, lit_3777@l /* 0x804FA6BC@l */
/* 804F8D20  38 60 00 54 */	li r3, 0x54
/* 804F8D24  4B DD 5F 29 */	bl __nw__FUl
/* 804F8D28  7C 75 1B 79 */	or. r21, r3, r3
/* 804F8D2C  41 82 00 98 */	beq lbl_804F8DC4
/* 804F8D30  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F8D34  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F8D38  38 80 00 22 */	li r4, 0x22
/* 804F8D3C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F8D40  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F8D44  3E C5 00 02 */	addis r22, r5, 2
/* 804F8D48  3A D6 C2 F8 */	addi r22, r22, -15624
/* 804F8D4C  7E C5 B3 78 */	mr r5, r22
/* 804F8D50  38 C0 00 80 */	li r6, 0x80
/* 804F8D54  4B B4 35 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F8D58  7C 74 1B 78 */	mr r20, r3
/* 804F8D5C  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F8D60  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F8D64  38 80 00 2C */	li r4, 0x2c
/* 804F8D68  7E C5 B3 78 */	mr r5, r22
/* 804F8D6C  38 C0 00 80 */	li r6, 0x80
/* 804F8D70  4B B4 35 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F8D74  7C 64 1B 78 */	mr r4, r3
/* 804F8D78  38 00 00 01 */	li r0, 1
/* 804F8D7C  90 01 00 08 */	stw r0, 8(r1)
/* 804F8D80  38 00 00 00 */	li r0, 0
/* 804F8D84  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F8D88  3C 00 00 08 */	lis r0, 8
/* 804F8D8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F8D90  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 804F8D94  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 804F8D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F8D9C  7E A3 AB 78 */	mr r3, r21
/* 804F8DA0  38 A0 00 00 */	li r5, 0
/* 804F8DA4  38 C0 00 00 */	li r6, 0
/* 804F8DA8  7E 87 A3 78 */	mr r7, r20
/* 804F8DAC  39 00 00 00 */	li r8, 0
/* 804F8DB0  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804F8DB4  39 20 00 00 */	li r9, 0
/* 804F8DB8  39 40 FF FF */	li r10, -1
/* 804F8DBC  4B B1 6E 91 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 804F8DC0  7C 75 1B 78 */	mr r21, r3
lbl_804F8DC4:
/* 804F8DC4  92 BF 05 D0 */	stw r21, 0x5d0(r31)
/* 804F8DC8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804F8DCC  28 03 00 00 */	cmplwi r3, 0
/* 804F8DD0  41 82 00 10 */	beq lbl_804F8DE0
/* 804F8DD4  80 A3 00 04 */	lwz r5, 4(r3)
/* 804F8DD8  28 05 00 00 */	cmplwi r5, 0
/* 804F8DDC  40 82 00 0C */	bne lbl_804F8DE8
lbl_804F8DE0:
/* 804F8DE0  38 60 00 00 */	li r3, 0
/* 804F8DE4  48 00 07 C0 */	b lbl_804F95A4
lbl_804F8DE8:
/* 804F8DE8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 804F8DEC  38 E0 00 00 */	li r7, 0
/* 804F8DF0  3C 60 80 4F */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x804EF8B8@ha */
/* 804F8DF4  38 83 F8 B8 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x804EF8B8@l */
/* 804F8DF8  48 00 00 2C */	b lbl_804F8E24
lbl_804F8DFC:
/* 804F8DFC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 804F8E00  28 00 00 01 */	cmplwi r0, 1
/* 804F8E04  41 82 00 0C */	beq lbl_804F8E10
/* 804F8E08  28 00 00 02 */	cmplwi r0, 2
/* 804F8E0C  40 82 00 14 */	bne lbl_804F8E20
lbl_804F8E10:
/* 804F8E10  80 66 00 28 */	lwz r3, 0x28(r6)
/* 804F8E14  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 804F8E18  7C 63 00 2E */	lwzx r3, r3, r0
/* 804F8E1C  90 83 00 04 */	stw r4, 4(r3)
lbl_804F8E20:
/* 804F8E20  38 E7 00 01 */	addi r7, r7, 1
lbl_804F8E24:
/* 804F8E24  80 C5 00 04 */	lwz r6, 4(r5)
/* 804F8E28  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 804F8E2C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 804F8E30  7C 00 18 40 */	cmplw r0, r3
/* 804F8E34  41 80 FF C8 */	blt lbl_804F8DFC
/* 804F8E38  3B 80 00 00 */	li r28, 0
/* 804F8E3C  3B 20 00 00 */	li r25, 0
/* 804F8E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F8E44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F8E48  3F C3 00 02 */	addis r30, r3, 2
/* 804F8E4C  3B DE C2 F8 */	addi r30, r30, -15624
/* 804F8E50  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F8E54  3A E3 A9 48 */	addi r23, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F8E58  3B 1A 02 20 */	addi r24, r26, 0x220
/* 804F8E5C  3A BA 02 44 */	addi r21, r26, 0x244
lbl_804F8E60:
/* 804F8E60  38 60 00 18 */	li r3, 0x18
/* 804F8E64  4B DD 5D E9 */	bl __nw__FUl
/* 804F8E68  7C 74 1B 79 */	or. r20, r3, r3
/* 804F8E6C  41 82 00 20 */	beq lbl_804F8E8C
/* 804F8E70  3C 80 80 50 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804FAE38@ha */
/* 804F8E74  38 04 AE 38 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804FAE38@l */
/* 804F8E78  90 14 00 00 */	stw r0, 0(r20)
/* 804F8E7C  38 80 00 00 */	li r4, 0
/* 804F8E80  4B E2 F5 7D */	bl init__12J3DFrameCtrlFs
/* 804F8E84  38 00 00 00 */	li r0, 0
/* 804F8E88  90 14 00 14 */	stw r0, 0x14(r20)
lbl_804F8E8C:
/* 804F8E8C  7E DF CA 14 */	add r22, r31, r25
/* 804F8E90  92 96 05 F8 */	stw r20, 0x5f8(r22)
/* 804F8E94  80 16 05 F8 */	lwz r0, 0x5f8(r22)
/* 804F8E98  28 00 00 00 */	cmplwi r0, 0
/* 804F8E9C  40 82 00 0C */	bne lbl_804F8EA8
/* 804F8EA0  38 60 00 00 */	li r3, 0
/* 804F8EA4  48 00 07 00 */	b lbl_804F95A4
lbl_804F8EA8:
/* 804F8EA8  38 00 00 07 */	li r0, 7
/* 804F8EAC  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 804F8EB0  38 1C FF F9 */	addi r0, r28, -7
/* 804F8EB4  7C 00 18 14 */	addc r0, r0, r3
/* 804F8EB8  7C 60 01 10 */	subfe r3, r0, r0
/* 804F8EBC  38 00 00 02 */	li r0, 2
/* 804F8EC0  7C 1B 18 78 */	andc r27, r0, r3
/* 804F8EC4  7E E3 BB 78 */	mr r3, r23
/* 804F8EC8  7C 98 C8 2E */	lwzx r4, r24, r25
/* 804F8ECC  7F C5 F3 78 */	mr r5, r30
/* 804F8ED0  38 C0 00 80 */	li r6, 0x80
/* 804F8ED4  4B B4 34 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F8ED8  7C 65 1B 78 */	mr r5, r3
/* 804F8EDC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804F8EE0  80 63 00 04 */	lwz r3, 4(r3)
/* 804F8EE4  80 83 00 04 */	lwz r4, 4(r3)
/* 804F8EE8  80 76 05 F8 */	lwz r3, 0x5f8(r22)
/* 804F8EEC  38 84 00 58 */	addi r4, r4, 0x58
/* 804F8EF0  38 C0 00 01 */	li r6, 1
/* 804F8EF4  7F 67 DB 78 */	mr r7, r27
/* 804F8EF8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804F8EFC  39 00 00 00 */	li r8, 0
/* 804F8F00  39 20 FF FF */	li r9, -1
/* 804F8F04  4B B1 48 09 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 804F8F08  2C 03 00 00 */	cmpwi r3, 0
/* 804F8F0C  40 82 00 0C */	bne lbl_804F8F18
/* 804F8F10  38 60 00 00 */	li r3, 0
/* 804F8F14  48 00 06 90 */	b lbl_804F95A4
lbl_804F8F18:
/* 804F8F18  38 60 00 18 */	li r3, 0x18
/* 804F8F1C  4B DD 5D 31 */	bl __nw__FUl
/* 804F8F20  7C 74 1B 79 */	or. r20, r3, r3
/* 804F8F24  41 82 00 20 */	beq lbl_804F8F44
/* 804F8F28  3C 80 80 50 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804FAE38@ha */
/* 804F8F2C  38 04 AE 38 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804FAE38@l */
/* 804F8F30  90 14 00 00 */	stw r0, 0(r20)
/* 804F8F34  38 80 00 00 */	li r4, 0
/* 804F8F38  4B E2 F4 C5 */	bl init__12J3DFrameCtrlFs
/* 804F8F3C  38 00 00 00 */	li r0, 0
/* 804F8F40  90 14 00 14 */	stw r0, 0x14(r20)
lbl_804F8F44:
/* 804F8F44  92 96 05 D4 */	stw r20, 0x5d4(r22)
/* 804F8F48  80 16 05 D4 */	lwz r0, 0x5d4(r22)
/* 804F8F4C  28 00 00 00 */	cmplwi r0, 0
/* 804F8F50  40 82 00 0C */	bne lbl_804F8F5C
/* 804F8F54  38 60 00 00 */	li r3, 0
/* 804F8F58  48 00 06 4C */	b lbl_804F95A4
lbl_804F8F5C:
/* 804F8F5C  7E E3 BB 78 */	mr r3, r23
/* 804F8F60  7C 95 C8 2E */	lwzx r4, r21, r25
/* 804F8F64  7F C5 F3 78 */	mr r5, r30
/* 804F8F68  38 C0 00 80 */	li r6, 0x80
/* 804F8F6C  4B B4 33 81 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F8F70  7C 65 1B 78 */	mr r5, r3
/* 804F8F74  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804F8F78  80 63 00 04 */	lwz r3, 4(r3)
/* 804F8F7C  80 83 00 04 */	lwz r4, 4(r3)
/* 804F8F80  80 76 05 D4 */	lwz r3, 0x5d4(r22)
/* 804F8F84  38 84 00 58 */	addi r4, r4, 0x58
/* 804F8F88  38 C0 00 01 */	li r6, 1
/* 804F8F8C  7F 67 DB 78 */	mr r7, r27
/* 804F8F90  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804F8F94  39 00 00 00 */	li r8, 0
/* 804F8F98  39 20 FF FF */	li r9, -1
/* 804F8F9C  4B B1 46 A1 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 804F8FA0  2C 03 00 00 */	cmpwi r3, 0
/* 804F8FA4  40 82 00 0C */	bne lbl_804F8FB0
/* 804F8FA8  38 60 00 00 */	li r3, 0
/* 804F8FAC  48 00 05 F8 */	b lbl_804F95A4
lbl_804F8FB0:
/* 804F8FB0  3B 9C 00 01 */	addi r28, r28, 1
/* 804F8FB4  2C 1C 00 09 */	cmpwi r28, 9
/* 804F8FB8  3B 39 00 04 */	addi r25, r25, 4
/* 804F8FBC  41 80 FE A4 */	blt lbl_804F8E60
/* 804F8FC0  38 60 00 54 */	li r3, 0x54
/* 804F8FC4  4B DD 5C 89 */	bl __nw__FUl
/* 804F8FC8  7C 74 1B 79 */	or. r20, r3, r3
/* 804F8FCC  41 82 00 88 */	beq lbl_804F9054
/* 804F8FD0  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F8FD4  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F8FD8  38 80 00 17 */	li r4, 0x17
/* 804F8FDC  7F C5 F3 78 */	mr r5, r30
/* 804F8FE0  38 C0 00 80 */	li r6, 0x80
/* 804F8FE4  4B B4 33 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F8FE8  7C 75 1B 78 */	mr r21, r3
/* 804F8FEC  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F8FF0  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F8FF4  38 80 00 2C */	li r4, 0x2c
/* 804F8FF8  7F C5 F3 78 */	mr r5, r30
/* 804F8FFC  38 C0 00 80 */	li r6, 0x80
/* 804F9000  4B B4 32 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F9004  7C 64 1B 78 */	mr r4, r3
/* 804F9008  38 00 00 01 */	li r0, 1
/* 804F900C  90 01 00 08 */	stw r0, 8(r1)
/* 804F9010  38 00 00 00 */	li r0, 0
/* 804F9014  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F9018  3C 00 00 08 */	lis r0, 8
/* 804F901C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F9020  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 804F9024  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 804F9028  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F902C  7E 83 A3 78 */	mr r3, r20
/* 804F9030  38 A0 00 00 */	li r5, 0
/* 804F9034  38 C0 00 00 */	li r6, 0
/* 804F9038  7E A7 AB 78 */	mr r7, r21
/* 804F903C  39 00 00 00 */	li r8, 0
/* 804F9040  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804F9044  39 20 00 00 */	li r9, 0
/* 804F9048  39 40 FF FF */	li r10, -1
/* 804F904C  4B B1 6C 01 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 804F9050  7C 74 1B 78 */	mr r20, r3
lbl_804F9054:
/* 804F9054  92 9F 06 28 */	stw r20, 0x628(r31)
/* 804F9058  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 804F905C  28 03 00 00 */	cmplwi r3, 0
/* 804F9060  41 82 00 10 */	beq lbl_804F9070
/* 804F9064  80 03 00 04 */	lwz r0, 4(r3)
/* 804F9068  28 00 00 00 */	cmplwi r0, 0
/* 804F906C  40 82 00 0C */	bne lbl_804F9078
lbl_804F9070:
/* 804F9070  38 60 00 00 */	li r3, 0
/* 804F9074  48 00 05 30 */	b lbl_804F95A4
lbl_804F9078:
/* 804F9078  38 60 00 18 */	li r3, 0x18
/* 804F907C  4B DD 5B D1 */	bl __nw__FUl
/* 804F9080  7C 75 1B 79 */	or. r21, r3, r3
/* 804F9084  41 82 00 20 */	beq lbl_804F90A4
/* 804F9088  3C 80 80 50 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804FAE38@ha */
/* 804F908C  38 04 AE 38 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804FAE38@l */
/* 804F9090  90 15 00 00 */	stw r0, 0(r21)
/* 804F9094  38 80 00 00 */	li r4, 0
/* 804F9098  4B E2 F3 65 */	bl init__12J3DFrameCtrlFs
/* 804F909C  38 00 00 00 */	li r0, 0
/* 804F90A0  90 15 00 14 */	stw r0, 0x14(r21)
lbl_804F90A4:
/* 804F90A4  92 BF 06 30 */	stw r21, 0x630(r31)
/* 804F90A8  80 1F 06 30 */	lwz r0, 0x630(r31)
/* 804F90AC  28 00 00 00 */	cmplwi r0, 0
/* 804F90B0  40 82 00 0C */	bne lbl_804F90BC
/* 804F90B4  38 60 00 00 */	li r3, 0
/* 804F90B8  48 00 04 EC */	b lbl_804F95A4
lbl_804F90BC:
/* 804F90BC  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F90C0  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F90C4  38 80 00 38 */	li r4, 0x38
/* 804F90C8  7F C5 F3 78 */	mr r5, r30
/* 804F90CC  38 C0 00 80 */	li r6, 0x80
/* 804F90D0  4B B4 32 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F90D4  7C 65 1B 78 */	mr r5, r3
/* 804F90D8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804F90DC  80 63 00 04 */	lwz r3, 4(r3)
/* 804F90E0  80 83 00 04 */	lwz r4, 4(r3)
/* 804F90E4  80 7F 06 30 */	lwz r3, 0x630(r31)
/* 804F90E8  38 84 00 58 */	addi r4, r4, 0x58
/* 804F90EC  38 C0 00 01 */	li r6, 1
/* 804F90F0  38 E0 00 00 */	li r7, 0
/* 804F90F4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804F90F8  39 00 00 00 */	li r8, 0
/* 804F90FC  39 20 FF FF */	li r9, -1
/* 804F9100  4B B1 46 0D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 804F9104  2C 03 00 00 */	cmpwi r3, 0
/* 804F9108  40 82 00 0C */	bne lbl_804F9114
/* 804F910C  38 60 00 00 */	li r3, 0
/* 804F9110  48 00 04 94 */	b lbl_804F95A4
lbl_804F9114:
/* 804F9114  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F9118  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F911C  38 80 00 27 */	li r4, 0x27
/* 804F9120  7F C5 F3 78 */	mr r5, r30
/* 804F9124  38 C0 00 80 */	li r6, 0x80
/* 804F9128  4B B4 31 C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F912C  38 80 00 00 */	li r4, 0
/* 804F9130  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020203@ha */
/* 804F9134  38 A5 02 03 */	addi r5, r5, 0x0203 /* 0x11020203@l */
/* 804F9138  4B B1 BB 1D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804F913C  90 7F 07 60 */	stw r3, 0x760(r31)
/* 804F9140  80 1F 07 60 */	lwz r0, 0x760(r31)
/* 804F9144  28 00 00 00 */	cmplwi r0, 0
/* 804F9148  40 82 00 0C */	bne lbl_804F9154
/* 804F914C  38 60 00 00 */	li r3, 0
/* 804F9150  48 00 04 54 */	b lbl_804F95A4
lbl_804F9154:
/* 804F9154  38 60 00 18 */	li r3, 0x18
/* 804F9158  4B DD 5A F5 */	bl __nw__FUl
/* 804F915C  7C 75 1B 79 */	or. r21, r3, r3
/* 804F9160  41 82 00 20 */	beq lbl_804F9180
/* 804F9164  3C 80 80 50 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804FAE38@ha */
/* 804F9168  38 04 AE 38 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804FAE38@l */
/* 804F916C  90 15 00 00 */	stw r0, 0(r21)
/* 804F9170  38 80 00 00 */	li r4, 0
/* 804F9174  4B E2 F2 89 */	bl init__12J3DFrameCtrlFs
/* 804F9178  38 00 00 00 */	li r0, 0
/* 804F917C  90 15 00 14 */	stw r0, 0x14(r21)
lbl_804F9180:
/* 804F9180  92 BF 07 68 */	stw r21, 0x768(r31)
/* 804F9184  80 1F 07 68 */	lwz r0, 0x768(r31)
/* 804F9188  28 00 00 00 */	cmplwi r0, 0
/* 804F918C  40 82 00 0C */	bne lbl_804F9198
/* 804F9190  38 60 00 00 */	li r3, 0
/* 804F9194  48 00 04 10 */	b lbl_804F95A4
lbl_804F9198:
/* 804F9198  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F919C  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F91A0  38 80 00 31 */	li r4, 0x31
/* 804F91A4  7F C5 F3 78 */	mr r5, r30
/* 804F91A8  38 C0 00 80 */	li r6, 0x80
/* 804F91AC  4B B4 31 41 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F91B0  7C 65 1B 78 */	mr r5, r3
/* 804F91B4  80 7F 07 60 */	lwz r3, 0x760(r31)
/* 804F91B8  80 83 00 04 */	lwz r4, 4(r3)
/* 804F91BC  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 804F91C0  38 84 00 58 */	addi r4, r4, 0x58
/* 804F91C4  38 C0 00 01 */	li r6, 1
/* 804F91C8  38 E0 00 02 */	li r7, 2
/* 804F91CC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804F91D0  39 00 00 00 */	li r8, 0
/* 804F91D4  39 20 FF FF */	li r9, -1
/* 804F91D8  4B B1 45 35 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 804F91DC  2C 03 00 00 */	cmpwi r3, 0
/* 804F91E0  40 82 00 0C */	bne lbl_804F91EC
/* 804F91E4  38 60 00 00 */	li r3, 0
/* 804F91E8  48 00 03 BC */	b lbl_804F95A4
lbl_804F91EC:
/* 804F91EC  38 60 00 18 */	li r3, 0x18
/* 804F91F0  4B DD 5A 5D */	bl __nw__FUl
/* 804F91F4  7C 75 1B 79 */	or. r21, r3, r3
/* 804F91F8  41 82 00 20 */	beq lbl_804F9218
/* 804F91FC  3C 80 80 50 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804FAE38@ha */
/* 804F9200  38 04 AE 38 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804FAE38@l */
/* 804F9204  90 15 00 00 */	stw r0, 0(r21)
/* 804F9208  38 80 00 00 */	li r4, 0
/* 804F920C  4B E2 F1 F1 */	bl init__12J3DFrameCtrlFs
/* 804F9210  38 00 00 00 */	li r0, 0
/* 804F9214  90 15 00 14 */	stw r0, 0x14(r21)
lbl_804F9218:
/* 804F9218  92 BF 07 64 */	stw r21, 0x764(r31)
/* 804F921C  80 1F 07 64 */	lwz r0, 0x764(r31)
/* 804F9220  28 00 00 00 */	cmplwi r0, 0
/* 804F9224  40 82 00 0C */	bne lbl_804F9230
/* 804F9228  38 60 00 00 */	li r3, 0
/* 804F922C  48 00 03 78 */	b lbl_804F95A4
lbl_804F9230:
/* 804F9230  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F9234  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F9238  38 80 00 3F */	li r4, 0x3f
/* 804F923C  7F C5 F3 78 */	mr r5, r30
/* 804F9240  38 C0 00 80 */	li r6, 0x80
/* 804F9244  4B B4 30 A9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F9248  7C 65 1B 78 */	mr r5, r3
/* 804F924C  80 7F 07 60 */	lwz r3, 0x760(r31)
/* 804F9250  80 83 00 04 */	lwz r4, 4(r3)
/* 804F9254  80 7F 07 64 */	lwz r3, 0x764(r31)
/* 804F9258  38 84 00 58 */	addi r4, r4, 0x58
/* 804F925C  38 C0 00 01 */	li r6, 1
/* 804F9260  38 E0 00 00 */	li r7, 0
/* 804F9264  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804F9268  39 00 00 00 */	li r8, 0
/* 804F926C  39 20 FF FF */	li r9, -1
/* 804F9270  4B B1 43 CD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 804F9274  2C 03 00 00 */	cmpwi r3, 0
/* 804F9278  40 82 00 0C */	bne lbl_804F9284
/* 804F927C  38 60 00 00 */	li r3, 0
/* 804F9280  48 00 03 24 */	b lbl_804F95A4
lbl_804F9284:
/* 804F9284  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 804F9288  80 7F 07 64 */	lwz r3, 0x764(r31)
/* 804F928C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804F9290  3B 60 00 00 */	li r27, 0
/* 804F9294  3B 80 00 00 */	li r28, 0
/* 804F9298  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F929C  3A A3 A9 48 */	addi r21, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F92A0  3A DA 02 70 */	addi r22, r26, 0x270
lbl_804F92A4:
/* 804F92A4  38 60 00 54 */	li r3, 0x54
/* 804F92A8  4B DD 59 A5 */	bl __nw__FUl
/* 804F92AC  7C 77 1B 79 */	or. r23, r3, r3
/* 804F92B0  41 82 00 70 */	beq lbl_804F9320
/* 804F92B4  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F92B8  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F92BC  38 9A 02 68 */	addi r4, r26, 0x268
/* 804F92C0  7C 84 E0 2E */	lwzx r4, r4, r28
/* 804F92C4  7F C5 F3 78 */	mr r5, r30
/* 804F92C8  38 C0 00 80 */	li r6, 0x80
/* 804F92CC  4B B4 30 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F92D0  7C 64 1B 78 */	mr r4, r3
/* 804F92D4  38 00 00 01 */	li r0, 1
/* 804F92D8  90 01 00 08 */	stw r0, 8(r1)
/* 804F92DC  38 00 00 00 */	li r0, 0
/* 804F92E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F92E4  3C 00 00 08 */	lis r0, 8
/* 804F92E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F92EC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 804F92F0  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 804F92F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F92F8  7E E3 BB 78 */	mr r3, r23
/* 804F92FC  38 A0 00 00 */	li r5, 0
/* 804F9300  38 C0 00 00 */	li r6, 0
/* 804F9304  38 E0 00 00 */	li r7, 0
/* 804F9308  39 00 00 00 */	li r8, 0
/* 804F930C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804F9310  39 20 00 00 */	li r9, 0
/* 804F9314  39 40 FF FF */	li r10, -1
/* 804F9318  4B B1 69 35 */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 804F931C  7C 77 1B 78 */	mr r23, r3
lbl_804F9320:
/* 804F9320  7F 1F E2 14 */	add r24, r31, r28
/* 804F9324  92 F8 07 7C */	stw r23, 0x77c(r24)
/* 804F9328  80 78 07 7C */	lwz r3, 0x77c(r24)
/* 804F932C  28 03 00 00 */	cmplwi r3, 0
/* 804F9330  41 82 00 10 */	beq lbl_804F9340
/* 804F9334  80 03 00 04 */	lwz r0, 4(r3)
/* 804F9338  28 00 00 00 */	cmplwi r0, 0
/* 804F933C  40 82 00 0C */	bne lbl_804F9348
lbl_804F9340:
/* 804F9340  38 60 00 00 */	li r3, 0
/* 804F9344  48 00 02 60 */	b lbl_804F95A4
lbl_804F9348:
/* 804F9348  2C 1B 00 00 */	cmpwi r27, 0
/* 804F934C  41 82 00 A0 */	beq lbl_804F93EC
/* 804F9350  38 60 00 18 */	li r3, 0x18
/* 804F9354  4B DD 58 F9 */	bl __nw__FUl
/* 804F9358  7C 77 1B 79 */	or. r23, r3, r3
/* 804F935C  41 82 00 20 */	beq lbl_804F937C
/* 804F9360  3C 80 80 50 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804FAE38@ha */
/* 804F9364  38 04 AE 38 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804FAE38@l */
/* 804F9368  90 17 00 00 */	stw r0, 0(r23)
/* 804F936C  38 80 00 00 */	li r4, 0
/* 804F9370  4B E2 F0 8D */	bl init__12J3DFrameCtrlFs
/* 804F9374  38 00 00 00 */	li r0, 0
/* 804F9378  90 17 00 14 */	stw r0, 0x14(r23)
lbl_804F937C:
/* 804F937C  92 FF 07 8C */	stw r23, 0x78c(r31)
/* 804F9380  80 1F 07 8C */	lwz r0, 0x78c(r31)
/* 804F9384  28 00 00 00 */	cmplwi r0, 0
/* 804F9388  40 82 00 0C */	bne lbl_804F9394
/* 804F938C  38 60 00 00 */	li r3, 0
/* 804F9390  48 00 02 14 */	b lbl_804F95A4
lbl_804F9394:
/* 804F9394  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F9398  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F939C  38 80 00 32 */	li r4, 0x32
/* 804F93A0  7F C5 F3 78 */	mr r5, r30
/* 804F93A4  38 C0 00 80 */	li r6, 0x80
/* 804F93A8  4B B4 2F 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F93AC  7C 65 1B 78 */	mr r5, r3
/* 804F93B0  80 78 07 7C */	lwz r3, 0x77c(r24)
/* 804F93B4  80 63 00 04 */	lwz r3, 4(r3)
/* 804F93B8  80 83 00 04 */	lwz r4, 4(r3)
/* 804F93BC  80 7F 07 8C */	lwz r3, 0x78c(r31)
/* 804F93C0  38 84 00 58 */	addi r4, r4, 0x58
/* 804F93C4  38 C0 00 01 */	li r6, 1
/* 804F93C8  38 E0 00 02 */	li r7, 2
/* 804F93CC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804F93D0  39 00 00 00 */	li r8, 0
/* 804F93D4  39 20 FF FF */	li r9, -1
/* 804F93D8  4B B1 43 35 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 804F93DC  2C 03 00 00 */	cmpwi r3, 0
/* 804F93E0  40 82 00 0C */	bne lbl_804F93EC
/* 804F93E4  38 60 00 00 */	li r3, 0
/* 804F93E8  48 00 01 BC */	b lbl_804F95A4
lbl_804F93EC:
/* 804F93EC  38 60 00 18 */	li r3, 0x18
/* 804F93F0  4B DD 58 5D */	bl __nw__FUl
/* 804F93F4  7C 77 1B 79 */	or. r23, r3, r3
/* 804F93F8  41 82 00 20 */	beq lbl_804F9418
/* 804F93FC  3C 80 80 50 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804FAE38@ha */
/* 804F9400  38 04 AE 38 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804FAE38@l */
/* 804F9404  90 17 00 00 */	stw r0, 0(r23)
/* 804F9408  38 80 00 00 */	li r4, 0
/* 804F940C  4B E2 EF F1 */	bl init__12J3DFrameCtrlFs
/* 804F9410  38 00 00 00 */	li r0, 0
/* 804F9414  90 17 00 14 */	stw r0, 0x14(r23)
lbl_804F9418:
/* 804F9418  92 F8 07 84 */	stw r23, 0x784(r24)
/* 804F941C  80 18 07 84 */	lwz r0, 0x784(r24)
/* 804F9420  28 00 00 00 */	cmplwi r0, 0
/* 804F9424  40 82 00 0C */	bne lbl_804F9430
/* 804F9428  38 60 00 00 */	li r3, 0
/* 804F942C  48 00 01 78 */	b lbl_804F95A4
lbl_804F9430:
/* 804F9430  7E A3 AB 78 */	mr r3, r21
/* 804F9434  7C 96 E0 2E */	lwzx r4, r22, r28
/* 804F9438  7F C5 F3 78 */	mr r5, r30
/* 804F943C  38 C0 00 80 */	li r6, 0x80
/* 804F9440  4B B4 2E AD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F9444  7C 65 1B 78 */	mr r5, r3
/* 804F9448  80 78 07 7C */	lwz r3, 0x77c(r24)
/* 804F944C  80 63 00 04 */	lwz r3, 4(r3)
/* 804F9450  80 83 00 04 */	lwz r4, 4(r3)
/* 804F9454  80 78 07 84 */	lwz r3, 0x784(r24)
/* 804F9458  38 84 00 58 */	addi r4, r4, 0x58
/* 804F945C  38 C0 00 01 */	li r6, 1
/* 804F9460  38 E0 00 02 */	li r7, 2
/* 804F9464  C0 3D 00 00 */	lfs f1, 0(r29)
/* 804F9468  39 00 00 00 */	li r8, 0
/* 804F946C  39 20 FF FF */	li r9, -1
/* 804F9470  4B B1 41 CD */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 804F9474  2C 03 00 00 */	cmpwi r3, 0
/* 804F9478  40 82 00 0C */	bne lbl_804F9484
/* 804F947C  38 60 00 00 */	li r3, 0
/* 804F9480  48 00 01 24 */	b lbl_804F95A4
lbl_804F9484:
/* 804F9484  3B 7B 00 01 */	addi r27, r27, 1
/* 804F9488  2C 1B 00 02 */	cmpwi r27, 2
/* 804F948C  3B 9C 00 04 */	addi r28, r28, 4
/* 804F9490  41 80 FE 14 */	blt lbl_804F92A4
/* 804F9494  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F9498  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F949C  38 80 00 2E */	li r4, 0x2e
/* 804F94A0  7F C5 F3 78 */	mr r5, r30
/* 804F94A4  38 C0 00 80 */	li r6, 0x80
/* 804F94A8  4B B4 2E 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F94AC  7C 75 1B 78 */	mr r21, r3
/* 804F94B0  3C 60 80 50 */	lis r3, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F94B4  38 63 A9 48 */	addi r3, r3, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F94B8  38 80 00 2D */	li r4, 0x2d
/* 804F94BC  7F C5 F3 78 */	mr r5, r30
/* 804F94C0  38 C0 00 80 */	li r6, 0x80
/* 804F94C4  4B B4 2E 29 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804F94C8  7C 76 1B 78 */	mr r22, r3
/* 804F94CC  3A E0 00 00 */	li r23, 0
/* 804F94D0  3B 00 00 00 */	li r24, 0
/* 804F94D4  C3 DD 00 E0 */	lfs f30, 0xe0(r29)
/* 804F94D8  C3 FD 00 B4 */	lfs f31, 0xb4(r29)
lbl_804F94DC:
/* 804F94DC  3B 60 00 00 */	li r27, 0
/* 804F94E0  3B 20 00 00 */	li r25, 0
/* 804F94E4  3B 40 00 00 */	li r26, 0
/* 804F94E8  7E 9F C2 14 */	add r20, r31, r24
lbl_804F94EC:
/* 804F94EC  2C 1B 00 18 */	cmpwi r27, 0x18
/* 804F94F0  40 82 00 24 */	bne lbl_804F9514
/* 804F94F4  7E C3 B3 78 */	mr r3, r22
/* 804F94F8  3C 80 00 08 */	lis r4, 8
/* 804F94FC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804F9500  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804F9504  4B B1 B7 51 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804F9508  38 1A 23 BC */	addi r0, r26, 0x23bc
/* 804F950C  7C 74 01 2E */	stwx r3, r20, r0
/* 804F9510  48 00 00 20 */	b lbl_804F9530
lbl_804F9514:
/* 804F9514  7E A3 AB 78 */	mr r3, r21
/* 804F9518  3C 80 00 08 */	lis r4, 8
/* 804F951C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804F9520  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804F9524  4B B1 B7 31 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804F9528  38 1A 23 BC */	addi r0, r26, 0x23bc
/* 804F952C  7C 74 01 2E */	stwx r3, r20, r0
lbl_804F9530:
/* 804F9530  38 1A 23 BC */	addi r0, r26, 0x23bc
/* 804F9534  7C 14 00 2E */	lwzx r0, r20, r0
/* 804F9538  28 00 00 00 */	cmplwi r0, 0
/* 804F953C  40 82 00 0C */	bne lbl_804F9548
/* 804F9540  38 60 00 00 */	li r3, 0
/* 804F9544  48 00 00 60 */	b lbl_804F95A4
lbl_804F9548:
/* 804F9548  38 79 28 74 */	addi r3, r25, 0x2874
/* 804F954C  7C 74 1A 14 */	add r3, r20, r3
/* 804F9550  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804F9554  7C 04 07 74 */	extsb r4, r0
/* 804F9558  38 A0 00 FF */	li r5, 0xff
/* 804F955C  4B CA F3 91 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
/* 804F9560  3B 7B 00 01 */	addi r27, r27, 1
/* 804F9564  2C 1B 00 1A */	cmpwi r27, 0x1a
/* 804F9568  3B 39 03 88 */	addi r25, r25, 0x388
/* 804F956C  3B 5A 00 04 */	addi r26, r26, 4
/* 804F9570  41 80 FF 7C */	blt lbl_804F94EC
/* 804F9574  38 00 00 1A */	li r0, 0x1a
/* 804F9578  3C 74 00 01 */	addis r3, r20, 1
/* 804F957C  90 03 85 8C */	stw r0, -0x7a74(r3)
/* 804F9580  38 00 D8 F0 */	li r0, -10000
/* 804F9584  B0 03 85 5A */	sth r0, -0x7aa6(r3)
/* 804F9588  D3 C3 85 5C */	stfs f30, -0x7aa4(r3)
/* 804F958C  D3 E3 85 60 */	stfs f31, -0x7aa0(r3)
/* 804F9590  3A F7 00 01 */	addi r23, r23, 1
/* 804F9594  2C 17 00 04 */	cmpwi r23, 4
/* 804F9598  3B 18 61 D4 */	addi r24, r24, 0x61d4
/* 804F959C  41 80 FF 40 */	blt lbl_804F94DC
/* 804F95A0  38 60 00 01 */	li r3, 1
lbl_804F95A4:
/* 804F95A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804F95A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804F95AC  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 804F95B0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 804F95B4  39 61 00 50 */	addi r11, r1, 0x50
/* 804F95B8  4B E6 8C 4D */	bl _restgpr_20
/* 804F95BC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804F95C0  7C 08 03 A6 */	mtlr r0
/* 804F95C4  38 21 00 70 */	addi r1, r1, 0x70
/* 804F95C8  4E 80 00 20 */	blr 
