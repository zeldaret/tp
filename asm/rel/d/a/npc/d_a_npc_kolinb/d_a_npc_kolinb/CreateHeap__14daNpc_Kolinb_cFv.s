lbl_80A45DC4:
/* 80A45DC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A45DC8  7C 08 02 A6 */	mflr r0
/* 80A45DCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A45DD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A45DD4  4B 91 C4 08 */	b _savegpr_29
/* 80A45DD8  7C 7E 1B 78 */	mr r30, r3
/* 80A45DDC  88 03 0F B4 */	lbz r0, 0xfb4(r3)
/* 80A45DE0  20 00 00 02 */	subfic r0, r0, 2
/* 80A45DE4  7C 00 00 34 */	cntlzw r0, r0
/* 80A45DE8  54 05 F0 B8 */	rlwinm r5, r0, 0x1e, 2, 0x1c
/* 80A45DEC  3C 60 80 A5 */	lis r3, l_bmdData@ha
/* 80A45DF0  38 83 88 74 */	addi r4, r3, l_bmdData@l
/* 80A45DF4  7C 64 2A 14 */	add r3, r4, r5
/* 80A45DF8  80 03 00 04 */	lwz r0, 4(r3)
/* 80A45DFC  54 00 10 3A */	slwi r0, r0, 2
/* 80A45E00  3C 60 80 A5 */	lis r3, l_resNameList@ha
/* 80A45E04  38 63 88 94 */	addi r3, r3, l_resNameList@l
/* 80A45E08  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A45E0C  7C 84 28 2E */	lwzx r4, r4, r5
/* 80A45E10  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A45E14  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A45E18  3F E5 00 02 */	addis r31, r5, 2
/* 80A45E1C  3B FF C2 F8 */	addi r31, r31, -15624
/* 80A45E20  7F E5 FB 78 */	mr r5, r31
/* 80A45E24  38 C0 00 80 */	li r6, 0x80
/* 80A45E28  4B 5F 64 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A45E2C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A45E30  40 82 00 0C */	bne lbl_80A45E3C
/* 80A45E34  38 60 00 00 */	li r3, 0
/* 80A45E38  48 00 01 EC */	b lbl_80A46024
lbl_80A45E3C:
/* 80A45E3C  38 60 00 58 */	li r3, 0x58
/* 80A45E40  4B 88 8E 0C */	b __nw__FUl
/* 80A45E44  7C 60 1B 79 */	or. r0, r3, r3
/* 80A45E48  41 82 00 4C */	beq lbl_80A45E94
/* 80A45E4C  38 1E 05 80 */	addi r0, r30, 0x580
/* 80A45E50  90 01 00 08 */	stw r0, 8(r1)
/* 80A45E54  3C 00 00 08 */	lis r0, 8
/* 80A45E58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A45E5C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A45E60  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A45E64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A45E68  7F A4 EB 78 */	mr r4, r29
/* 80A45E6C  38 A0 00 00 */	li r5, 0
/* 80A45E70  38 C0 00 00 */	li r6, 0
/* 80A45E74  38 E0 00 00 */	li r7, 0
/* 80A45E78  39 00 FF FF */	li r8, -1
/* 80A45E7C  3D 20 80 A5 */	lis r9, lit_4371@ha
/* 80A45E80  C0 29 87 C8 */	lfs f1, lit_4371@l(r9)
/* 80A45E84  39 20 00 00 */	li r9, 0
/* 80A45E88  39 40 FF FF */	li r10, -1
/* 80A45E8C  4B 5C A9 44 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A45E90  7C 60 1B 78 */	mr r0, r3
lbl_80A45E94:
/* 80A45E94  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80A45E98  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A45E9C  28 03 00 00 */	cmplwi r3, 0
/* 80A45EA0  41 82 00 10 */	beq lbl_80A45EB0
/* 80A45EA4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A45EA8  28 05 00 00 */	cmplwi r5, 0
/* 80A45EAC  40 82 00 0C */	bne lbl_80A45EB8
lbl_80A45EB0:
/* 80A45EB0  38 60 00 00 */	li r3, 0
/* 80A45EB4  48 00 01 70 */	b lbl_80A46024
lbl_80A45EB8:
/* 80A45EB8  38 C0 00 00 */	li r6, 0
/* 80A45EBC  3C 60 80 A4 */	lis r3, ctrlJointCallBack__14daNpc_Kolinb_cFP8J3DJointi@ha
/* 80A45EC0  38 83 61 44 */	addi r4, r3, ctrlJointCallBack__14daNpc_Kolinb_cFP8J3DJointi@l
/* 80A45EC4  48 00 00 18 */	b lbl_80A45EDC
lbl_80A45EC8:
/* 80A45EC8  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80A45ECC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A45ED0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A45ED4  90 83 00 04 */	stw r4, 4(r3)
/* 80A45ED8  38 C6 00 01 */	addi r6, r6, 1
lbl_80A45EDC:
/* 80A45EDC  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A45EE0  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80A45EE4  7C 03 00 40 */	cmplw r3, r0
/* 80A45EE8  41 80 FF E0 */	blt lbl_80A45EC8
/* 80A45EEC  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80A45EF0  38 60 00 C0 */	li r3, 0xc0
/* 80A45EF4  4B 88 8D 58 */	b __nw__FUl
/* 80A45EF8  7C 60 1B 79 */	or. r0, r3, r3
/* 80A45EFC  41 82 00 0C */	beq lbl_80A45F08
/* 80A45F00  4B 63 5A 70 */	b __ct__4dBgWFv
/* 80A45F04  7C 60 1B 78 */	mr r0, r3
lbl_80A45F08:
/* 80A45F08  90 1E 0F B0 */	stw r0, 0xfb0(r30)
/* 80A45F0C  80 1E 0F B0 */	lwz r0, 0xfb0(r30)
/* 80A45F10  28 00 00 00 */	cmplwi r0, 0
/* 80A45F14  40 82 00 0C */	bne lbl_80A45F20
/* 80A45F18  38 60 00 00 */	li r3, 0
/* 80A45F1C  48 00 01 08 */	b lbl_80A46024
lbl_80A45F20:
/* 80A45F20  3C 60 80 A5 */	lis r3, l_resNameList@ha
/* 80A45F24  38 63 88 94 */	addi r3, r3, l_resNameList@l
/* 80A45F28  80 63 00 04 */	lwz r3, 4(r3)
/* 80A45F2C  38 80 00 27 */	li r4, 0x27
/* 80A45F30  7F E5 FB 78 */	mr r5, r31
/* 80A45F34  38 C0 00 80 */	li r6, 0x80
/* 80A45F38  4B 5F 63 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A45F3C  7C 64 1B 78 */	mr r4, r3
/* 80A45F40  80 7E 0F B0 */	lwz r3, 0xfb0(r30)
/* 80A45F44  38 A0 00 01 */	li r5, 1
/* 80A45F48  38 DE 0F 80 */	addi r6, r30, 0xf80
/* 80A45F4C  4B 63 3F EC */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80A45F50  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80A45F54  28 00 00 01 */	cmplwi r0, 1
/* 80A45F58  40 82 00 0C */	bne lbl_80A45F64
/* 80A45F5C  38 60 00 00 */	li r3, 0
/* 80A45F60  48 00 00 C4 */	b lbl_80A46024
lbl_80A45F64:
/* 80A45F64  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80A45F68  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80A45F6C  80 7E 0F B0 */	lwz r3, 0xfb0(r30)
/* 80A45F70  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80A45F74  88 1E 0F B4 */	lbz r0, 0xfb4(r30)
/* 80A45F78  28 00 00 02 */	cmplwi r0, 2
/* 80A45F7C  41 82 00 58 */	beq lbl_80A45FD4
/* 80A45F80  7F C3 F3 78 */	mr r3, r30
/* 80A45F84  38 80 00 01 */	li r4, 1
/* 80A45F88  38 A0 00 00 */	li r5, 0
/* 80A45F8C  4B 70 43 FC */	b setFaceMotionAnm__8daNpcT_cFib
/* 80A45F90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A45F94  41 82 00 38 */	beq lbl_80A45FCC
/* 80A45F98  7F C3 F3 78 */	mr r3, r30
/* 80A45F9C  38 80 00 00 */	li r4, 0
/* 80A45FA0  3C A0 80 A5 */	lis r5, lit_4212@ha
/* 80A45FA4  C0 25 87 BC */	lfs f1, lit_4212@l(r5)
/* 80A45FA8  38 A0 00 00 */	li r5, 0
/* 80A45FAC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A45FB0  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A45FB4  7D 89 03 A6 */	mtctr r12
/* 80A45FB8  4E 80 04 21 */	bctrl 
/* 80A45FBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A45FC0  41 82 00 0C */	beq lbl_80A45FCC
/* 80A45FC4  38 60 00 01 */	li r3, 1
/* 80A45FC8  48 00 00 5C */	b lbl_80A46024
lbl_80A45FCC:
/* 80A45FCC  38 60 00 00 */	li r3, 0
/* 80A45FD0  48 00 00 54 */	b lbl_80A46024
lbl_80A45FD4:
/* 80A45FD4  7F C3 F3 78 */	mr r3, r30
/* 80A45FD8  38 80 00 07 */	li r4, 7
/* 80A45FDC  38 A0 00 00 */	li r5, 0
/* 80A45FE0  4B 70 43 A8 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80A45FE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A45FE8  41 82 00 38 */	beq lbl_80A46020
/* 80A45FEC  7F C3 F3 78 */	mr r3, r30
/* 80A45FF0  38 80 00 06 */	li r4, 6
/* 80A45FF4  3C A0 80 A5 */	lis r5, lit_4212@ha
/* 80A45FF8  C0 25 87 BC */	lfs f1, lit_4212@l(r5)
/* 80A45FFC  38 A0 00 00 */	li r5, 0
/* 80A46000  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A46004  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A46008  7D 89 03 A6 */	mtctr r12
/* 80A4600C  4E 80 04 21 */	bctrl 
/* 80A46010  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A46014  41 82 00 0C */	beq lbl_80A46020
/* 80A46018  38 60 00 01 */	li r3, 1
/* 80A4601C  48 00 00 08 */	b lbl_80A46024
lbl_80A46020:
/* 80A46020  38 60 00 00 */	li r3, 0
lbl_80A46024:
/* 80A46024  39 61 00 30 */	addi r11, r1, 0x30
/* 80A46028  4B 91 C2 00 */	b _restgpr_29
/* 80A4602C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A46030  7C 08 03 A6 */	mtlr r0
/* 80A46034  38 21 00 30 */	addi r1, r1, 0x30
/* 80A46038  4E 80 00 20 */	blr 
