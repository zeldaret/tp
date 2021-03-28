lbl_80D35AC0:
/* 80D35AC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D35AC4  7C 08 02 A6 */	mflr r0
/* 80D35AC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D35ACC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D35AD0  4B 62 C7 0C */	b _savegpr_29
/* 80D35AD4  7C 7E 1B 78 */	mr r30, r3
/* 80D35AD8  3C 60 80 D3 */	lis r3, stringBase0@ha
/* 80D35ADC  38 63 61 20 */	addi r3, r3, stringBase0@l
/* 80D35AE0  38 80 00 05 */	li r4, 5
/* 80D35AE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D35AE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D35AEC  3F E5 00 02 */	addis r31, r5, 2
/* 80D35AF0  3B FF C2 F8 */	addi r31, r31, -15624
/* 80D35AF4  7F E5 FB 78 */	mr r5, r31
/* 80D35AF8  38 C0 00 80 */	li r6, 0x80
/* 80D35AFC  4B 30 67 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D35B00  3C 80 00 08 */	lis r4, 8
/* 80D35B04  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D35B08  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D35B0C  4B 2D F1 48 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D35B10  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80D35B14  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D35B18  28 00 00 00 */	cmplwi r0, 0
/* 80D35B1C  40 82 00 0C */	bne lbl_80D35B28
/* 80D35B20  38 60 00 00 */	li r3, 0
/* 80D35B24  48 00 01 60 */	b lbl_80D35C84
lbl_80D35B28:
/* 80D35B28  38 60 00 18 */	li r3, 0x18
/* 80D35B2C  4B 59 91 20 */	b __nw__FUl
/* 80D35B30  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D35B34  41 82 00 20 */	beq lbl_80D35B54
/* 80D35B38  3C 80 80 D3 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D35B3C  38 04 61 D8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D35B40  90 1D 00 00 */	stw r0, 0(r29)
/* 80D35B44  38 80 00 00 */	li r4, 0
/* 80D35B48  4B 5F 28 B4 */	b init__12J3DFrameCtrlFs
/* 80D35B4C  38 00 00 00 */	li r0, 0
/* 80D35B50  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D35B54:
/* 80D35B54  93 BE 05 78 */	stw r29, 0x578(r30)
/* 80D35B58  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80D35B5C  28 00 00 00 */	cmplwi r0, 0
/* 80D35B60  40 82 00 0C */	bne lbl_80D35B6C
/* 80D35B64  38 60 00 00 */	li r3, 0
/* 80D35B68  48 00 01 1C */	b lbl_80D35C84
lbl_80D35B6C:
/* 80D35B6C  3C 60 80 D3 */	lis r3, stringBase0@ha
/* 80D35B70  38 63 61 20 */	addi r3, r3, stringBase0@l
/* 80D35B74  38 80 00 08 */	li r4, 8
/* 80D35B78  7F E5 FB 78 */	mr r5, r31
/* 80D35B7C  38 C0 00 80 */	li r6, 0x80
/* 80D35B80  4B 30 67 6C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D35B84  7C 65 1B 78 */	mr r5, r3
/* 80D35B88  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D35B8C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D35B90  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D35B94  38 84 00 58 */	addi r4, r4, 0x58
/* 80D35B98  38 C0 00 01 */	li r6, 1
/* 80D35B9C  38 E0 00 00 */	li r7, 0
/* 80D35BA0  3D 00 80 D3 */	lis r8, lit_3798@ha
/* 80D35BA4  C0 28 60 C8 */	lfs f1, lit_3798@l(r8)
/* 80D35BA8  39 00 00 00 */	li r8, 0
/* 80D35BAC  39 20 FF FF */	li r9, -1
/* 80D35BB0  4B 2D 7B 5C */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D35BB4  2C 03 00 00 */	cmpwi r3, 0
/* 80D35BB8  40 82 00 0C */	bne lbl_80D35BC4
/* 80D35BBC  38 60 00 00 */	li r3, 0
/* 80D35BC0  48 00 00 C4 */	b lbl_80D35C84
lbl_80D35BC4:
/* 80D35BC4  3C 60 80 D3 */	lis r3, lit_3703@ha
/* 80D35BC8  C0 03 60 C0 */	lfs f0, lit_3703@l(r3)
/* 80D35BCC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D35BD0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D35BD4  38 60 00 C0 */	li r3, 0xc0
/* 80D35BD8  4B 59 90 74 */	b __nw__FUl
/* 80D35BDC  7C 60 1B 79 */	or. r0, r3, r3
/* 80D35BE0  41 82 00 0C */	beq lbl_80D35BEC
/* 80D35BE4  4B 34 5D 8C */	b __ct__4dBgWFv
/* 80D35BE8  7C 60 1B 78 */	mr r0, r3
lbl_80D35BEC:
/* 80D35BEC  90 1E 05 F0 */	stw r0, 0x5f0(r30)
/* 80D35BF0  80 1E 05 F0 */	lwz r0, 0x5f0(r30)
/* 80D35BF4  28 00 00 00 */	cmplwi r0, 0
/* 80D35BF8  40 82 00 0C */	bne lbl_80D35C04
/* 80D35BFC  38 60 00 00 */	li r3, 0
/* 80D35C00  48 00 00 84 */	b lbl_80D35C84
lbl_80D35C04:
/* 80D35C04  3C 60 80 D3 */	lis r3, stringBase0@ha
/* 80D35C08  38 63 61 20 */	addi r3, r3, stringBase0@l
/* 80D35C0C  38 80 00 0B */	li r4, 0xb
/* 80D35C10  7F E5 FB 78 */	mr r5, r31
/* 80D35C14  38 C0 00 80 */	li r6, 0x80
/* 80D35C18  4B 30 66 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D35C1C  7C 64 1B 78 */	mr r4, r3
/* 80D35C20  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 80D35C24  38 A0 00 01 */	li r5, 1
/* 80D35C28  38 DE 05 C0 */	addi r6, r30, 0x5c0
/* 80D35C2C  4B 34 43 0C */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D35C30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D35C34  28 00 00 01 */	cmplwi r0, 1
/* 80D35C38  40 82 00 0C */	bne lbl_80D35C44
/* 80D35C3C  38 60 00 00 */	li r3, 0
/* 80D35C40  48 00 00 44 */	b lbl_80D35C84
lbl_80D35C44:
/* 80D35C44  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D35C48  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D35C4C  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 80D35C50  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80D35C54  3C 60 80 D3 */	lis r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80D35C58  38 03 54 40 */	addi r0, r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80D35C5C  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 80D35C60  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80D35C64  38 7E 05 7C */	addi r3, r30, 0x57c
/* 80D35C68  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D35C6C  38 A0 00 01 */	li r5, 1
/* 80D35C70  81 9E 05 8C */	lwz r12, 0x58c(r30)
/* 80D35C74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D35C78  7D 89 03 A6 */	mtctr r12
/* 80D35C7C  4E 80 04 21 */	bctrl 
/* 80D35C80  38 60 00 01 */	li r3, 1
lbl_80D35C84:
/* 80D35C84  39 61 00 20 */	addi r11, r1, 0x20
/* 80D35C88  4B 62 C5 A0 */	b _restgpr_29
/* 80D35C8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D35C90  7C 08 03 A6 */	mtlr r0
/* 80D35C94  38 21 00 20 */	addi r1, r1, 0x20
/* 80D35C98  4E 80 00 20 */	blr 
