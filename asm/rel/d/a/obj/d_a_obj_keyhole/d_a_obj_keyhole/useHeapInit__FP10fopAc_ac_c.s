lbl_80C42DC8:
/* 80C42DC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C42DCC  7C 08 02 A6 */	mflr r0
/* 80C42DD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C42DD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80C42DD8  4B 71 F3 F0 */	b _savegpr_24
/* 80C42DDC  7C 7C 1B 78 */	mr r28, r3
/* 80C42DE0  3C 60 80 C4 */	lis r3, cNullVec__6Z2Calc@ha
/* 80C42DE4  3B C3 3A EC */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80C42DE8  3C 60 80 C4 */	lis r3, lit_3655@ha
/* 80C42DEC  3B E3 39 E4 */	addi r31, r3, lit_3655@l
/* 80C42DF0  88 1C 05 84 */	lbz r0, 0x584(r28)
/* 80C42DF4  28 00 00 00 */	cmplwi r0, 0
/* 80C42DF8  41 82 00 0C */	beq lbl_80C42E04
/* 80C42DFC  28 00 00 03 */	cmplwi r0, 3
/* 80C42E00  40 82 00 B0 */	bne lbl_80C42EB0
lbl_80C42E04:
/* 80C42E04  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80C42E08  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80C42E0C  38 9E 00 20 */	addi r4, r30, 0x20
/* 80C42E10  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C42E14  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C42E18  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C42E1C  3C A5 00 02 */	addis r5, r5, 2
/* 80C42E20  38 C0 00 80 */	li r6, 0x80
/* 80C42E24  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C42E28  4B 3F 94 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C42E2C  88 1C 05 84 */	lbz r0, 0x584(r28)
/* 80C42E30  54 00 10 3A */	slwi r0, r0, 2
/* 80C42E34  38 9E 00 48 */	addi r4, r30, 0x48
/* 80C42E38  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C42E3C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C42E40  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C42E44  4B 3D 1E 10 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C42E48  90 7C 05 78 */	stw r3, 0x578(r28)
/* 80C42E4C  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80C42E50  28 03 00 00 */	cmplwi r3, 0
/* 80C42E54  40 82 00 0C */	bne lbl_80C42E60
/* 80C42E58  38 60 00 00 */	li r3, 0
/* 80C42E5C  48 00 02 08 */	b lbl_80C43064
lbl_80C42E60:
/* 80C42E60  93 83 00 14 */	stw r28, 0x14(r3)
/* 80C42E64  38 C0 00 00 */	li r6, 0
/* 80C42E68  3C 60 80 C4 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80C42E6C  38 83 12 70 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80C42E70  48 00 00 24 */	b lbl_80C42E94
lbl_80C42E74:
/* 80C42E74  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80C42E78  28 00 00 01 */	cmplwi r0, 1
/* 80C42E7C  40 82 00 14 */	bne lbl_80C42E90
/* 80C42E80  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80C42E84  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80C42E88  7C 63 00 2E */	lwzx r3, r3, r0
/* 80C42E8C  90 83 00 04 */	stw r4, 4(r3)
lbl_80C42E90:
/* 80C42E90  38 C6 00 01 */	addi r6, r6, 1
lbl_80C42E94:
/* 80C42E94  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80C42E98  80 A3 00 04 */	lwz r5, 4(r3)
/* 80C42E9C  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80C42EA0  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80C42EA4  7C 00 18 40 */	cmplw r0, r3
/* 80C42EA8  41 80 FF CC */	blt lbl_80C42E74
/* 80C42EAC  48 00 01 10 */	b lbl_80C42FBC
lbl_80C42EB0:
/* 80C42EB0  38 60 00 54 */	li r3, 0x54
/* 80C42EB4  4B 68 BD 98 */	b __nw__FUl
/* 80C42EB8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C42EBC  41 82 00 8C */	beq lbl_80C42F48
/* 80C42EC0  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80C42EC4  88 1C 05 84 */	lbz r0, 0x584(r28)
/* 80C42EC8  54 00 10 3A */	slwi r0, r0, 2
/* 80C42ECC  38 9E 00 20 */	addi r4, r30, 0x20
/* 80C42ED0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C42ED4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C42ED8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C42EDC  3C A5 00 02 */	addis r5, r5, 2
/* 80C42EE0  38 C0 00 80 */	li r6, 0x80
/* 80C42EE4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C42EE8  4B 3F 94 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C42EEC  7C 64 1B 78 */	mr r4, r3
/* 80C42EF0  38 00 00 01 */	li r0, 1
/* 80C42EF4  90 01 00 08 */	stw r0, 8(r1)
/* 80C42EF8  38 00 00 00 */	li r0, 0
/* 80C42EFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C42F00  88 1C 05 84 */	lbz r0, 0x584(r28)
/* 80C42F04  54 00 10 3A */	slwi r0, r0, 2
/* 80C42F08  38 7E 00 48 */	addi r3, r30, 0x48
/* 80C42F0C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C42F10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C42F14  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80C42F18  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80C42F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C42F20  7F A3 EB 78 */	mr r3, r29
/* 80C42F24  38 A0 00 00 */	li r5, 0
/* 80C42F28  38 C0 00 00 */	li r6, 0
/* 80C42F2C  38 E0 00 00 */	li r7, 0
/* 80C42F30  39 00 00 00 */	li r8, 0
/* 80C42F34  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C42F38  39 20 00 00 */	li r9, 0
/* 80C42F3C  39 40 FF FF */	li r10, -1
/* 80C42F40  4B 3C CD 0C */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80C42F44  7C 7D 1B 78 */	mr r29, r3
lbl_80C42F48:
/* 80C42F48  93 BC 05 74 */	stw r29, 0x574(r28)
/* 80C42F4C  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80C42F50  28 03 00 00 */	cmplwi r3, 0
/* 80C42F54  41 82 00 10 */	beq lbl_80C42F64
/* 80C42F58  80 03 00 04 */	lwz r0, 4(r3)
/* 80C42F5C  28 00 00 00 */	cmplwi r0, 0
/* 80C42F60  40 82 00 0C */	bne lbl_80C42F6C
lbl_80C42F64:
/* 80C42F64  38 60 00 00 */	li r3, 0
/* 80C42F68  48 00 00 FC */	b lbl_80C43064
lbl_80C42F6C:
/* 80C42F6C  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80C42F70  88 1C 05 84 */	lbz r0, 0x584(r28)
/* 80C42F74  54 00 10 3A */	slwi r0, r0, 2
/* 80C42F78  38 9E 00 70 */	addi r4, r30, 0x70
/* 80C42F7C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C42F80  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C42F84  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C42F88  3C A5 00 02 */	addis r5, r5, 2
/* 80C42F8C  38 C0 00 80 */	li r6, 0x80
/* 80C42F90  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C42F94  4B 3F 93 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C42F98  7C 64 1B 78 */	mr r4, r3
/* 80C42F9C  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80C42FA0  38 A0 00 00 */	li r5, 0
/* 80C42FA4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C42FA8  FC 40 08 90 */	fmr f2, f1
/* 80C42FAC  FC 60 08 90 */	fmr f3, f1
/* 80C42FB0  C0 9F 00 AC */	lfs f4, 0xac(r31)
/* 80C42FB4  38 C0 00 00 */	li r6, 0
/* 80C42FB8  4B 3C D3 C4 */	b setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
lbl_80C42FBC:
/* 80C42FBC  88 1C 05 84 */	lbz r0, 0x584(r28)
/* 80C42FC0  54 00 10 3A */	slwi r0, r0, 2
/* 80C42FC4  38 7E 00 98 */	addi r3, r30, 0x98
/* 80C42FC8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C42FCC  90 1C 05 80 */	stw r0, 0x580(r28)
/* 80C42FD0  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80C42FD4  80 9C 05 80 */	lwz r4, 0x580(r28)
/* 80C42FD8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C42FDC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C42FE0  3C A5 00 02 */	addis r5, r5, 2
/* 80C42FE4  38 C0 00 80 */	li r6, 0x80
/* 80C42FE8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C42FEC  4B 3F 93 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C42FF0  7C 7B 1B 78 */	mr r27, r3
/* 80C42FF4  3B 20 00 00 */	li r25, 0
/* 80C42FF8  3B A0 00 00 */	li r29, 0
/* 80C42FFC  3F E0 11 00 */	lis r31, 0x1100
lbl_80C43000:
/* 80C43000  3B 00 00 00 */	li r24, 0
/* 80C43004  3B C0 00 00 */	li r30, 0
/* 80C43008  7F 5C EA 14 */	add r26, r28, r29
/* 80C4300C  48 00 00 38 */	b lbl_80C43044
lbl_80C43010:
/* 80C43010  7F 63 DB 78 */	mr r3, r27
/* 80C43014  3C 80 00 02 */	lis r4, 2
/* 80C43018  38 BF 00 84 */	addi r5, r31, 0x84
/* 80C4301C  4B 3D 1C 38 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C43020  38 1E 06 24 */	addi r0, r30, 0x624
/* 80C43024  7C 7A 01 2E */	stwx r3, r26, r0
/* 80C43028  7C 1A 00 2E */	lwzx r0, r26, r0
/* 80C4302C  28 00 00 00 */	cmplwi r0, 0
/* 80C43030  40 82 00 0C */	bne lbl_80C4303C
/* 80C43034  38 60 00 00 */	li r3, 0
/* 80C43038  48 00 00 2C */	b lbl_80C43064
lbl_80C4303C:
/* 80C4303C  3B 18 00 01 */	addi r24, r24, 1
/* 80C43040  3B DE 00 04 */	addi r30, r30, 4
lbl_80C43044:
/* 80C43044  80 1C 05 7C */	lwz r0, 0x57c(r28)
/* 80C43048  7C 18 00 00 */	cmpw r24, r0
/* 80C4304C  41 80 FF C4 */	blt lbl_80C43010
/* 80C43050  3B 39 00 01 */	addi r25, r25, 1
/* 80C43054  2C 19 00 06 */	cmpwi r25, 6
/* 80C43058  3B BD 06 20 */	addi r29, r29, 0x620
/* 80C4305C  41 80 FF A4 */	blt lbl_80C43000
/* 80C43060  38 60 00 01 */	li r3, 1
lbl_80C43064:
/* 80C43064  39 61 00 40 */	addi r11, r1, 0x40
/* 80C43068  4B 71 F1 AC */	b _restgpr_24
/* 80C4306C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C43070  7C 08 03 A6 */	mtlr r0
/* 80C43074  38 21 00 40 */	addi r1, r1, 0x40
/* 80C43078  4E 80 00 20 */	blr 
