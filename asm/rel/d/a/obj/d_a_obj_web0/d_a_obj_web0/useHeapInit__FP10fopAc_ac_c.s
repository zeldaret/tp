lbl_80D34B94:
/* 80D34B94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D34B98  7C 08 02 A6 */	mflr r0
/* 80D34B9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D34BA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D34BA4  4B 62 D6 38 */	b _savegpr_29
/* 80D34BA8  7C 7E 1B 78 */	mr r30, r3
/* 80D34BAC  3C 60 80 D3 */	lis r3, stringBase0@ha
/* 80D34BB0  38 63 51 BC */	addi r3, r3, stringBase0@l
/* 80D34BB4  38 80 00 05 */	li r4, 5
/* 80D34BB8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D34BBC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D34BC0  3F E5 00 02 */	addis r31, r5, 2
/* 80D34BC4  3B FF C2 F8 */	addi r31, r31, -15624
/* 80D34BC8  7F E5 FB 78 */	mr r5, r31
/* 80D34BCC  38 C0 00 80 */	li r6, 0x80
/* 80D34BD0  4B 30 77 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D34BD4  3C 80 00 08 */	lis r4, 8
/* 80D34BD8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D34BDC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D34BE0  4B 2E 00 74 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D34BE4  90 7E 05 74 */	stw r3, 0x574(r30)
/* 80D34BE8  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D34BEC  28 00 00 00 */	cmplwi r0, 0
/* 80D34BF0  40 82 00 0C */	bne lbl_80D34BFC
/* 80D34BF4  38 60 00 00 */	li r3, 0
/* 80D34BF8  48 00 01 34 */	b lbl_80D34D2C
lbl_80D34BFC:
/* 80D34BFC  38 60 00 18 */	li r3, 0x18
/* 80D34C00  4B 59 A0 4C */	b __nw__FUl
/* 80D34C04  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D34C08  41 82 00 20 */	beq lbl_80D34C28
/* 80D34C0C  3C 80 80 D3 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D34C10  38 04 52 70 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D34C14  90 1D 00 00 */	stw r0, 0(r29)
/* 80D34C18  38 80 00 00 */	li r4, 0
/* 80D34C1C  4B 5F 37 E0 */	b init__12J3DFrameCtrlFs
/* 80D34C20  38 00 00 00 */	li r0, 0
/* 80D34C24  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D34C28:
/* 80D34C28  93 BE 05 78 */	stw r29, 0x578(r30)
/* 80D34C2C  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 80D34C30  28 00 00 00 */	cmplwi r0, 0
/* 80D34C34  40 82 00 0C */	bne lbl_80D34C40
/* 80D34C38  38 60 00 00 */	li r3, 0
/* 80D34C3C  48 00 00 F0 */	b lbl_80D34D2C
lbl_80D34C40:
/* 80D34C40  3C 60 80 D3 */	lis r3, stringBase0@ha
/* 80D34C44  38 63 51 BC */	addi r3, r3, stringBase0@l
/* 80D34C48  38 80 00 08 */	li r4, 8
/* 80D34C4C  7F E5 FB 78 */	mr r5, r31
/* 80D34C50  38 C0 00 80 */	li r6, 0x80
/* 80D34C54  4B 30 76 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D34C58  7C 65 1B 78 */	mr r5, r3
/* 80D34C5C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D34C60  80 83 00 04 */	lwz r4, 4(r3)
/* 80D34C64  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D34C68  38 84 00 58 */	addi r4, r4, 0x58
/* 80D34C6C  38 C0 00 01 */	li r6, 1
/* 80D34C70  38 E0 00 00 */	li r7, 0
/* 80D34C74  3D 00 80 D3 */	lis r8, lit_3724@ha
/* 80D34C78  C0 28 51 7C */	lfs f1, lit_3724@l(r8)
/* 80D34C7C  39 00 00 00 */	li r8, 0
/* 80D34C80  39 20 FF FF */	li r9, -1
/* 80D34C84  4B 2D 8A 88 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D34C88  2C 03 00 00 */	cmpwi r3, 0
/* 80D34C8C  40 82 00 0C */	bne lbl_80D34C98
/* 80D34C90  38 60 00 00 */	li r3, 0
/* 80D34C94  48 00 00 98 */	b lbl_80D34D2C
lbl_80D34C98:
/* 80D34C98  3C 60 80 D3 */	lis r3, lit_3917@ha
/* 80D34C9C  C0 03 51 A4 */	lfs f0, lit_3917@l(r3)
/* 80D34CA0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80D34CA4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D34CA8  38 60 00 C0 */	li r3, 0xc0
/* 80D34CAC  4B 59 9F A0 */	b __nw__FUl
/* 80D34CB0  7C 60 1B 79 */	or. r0, r3, r3
/* 80D34CB4  41 82 00 0C */	beq lbl_80D34CC0
/* 80D34CB8  4B 34 6C B8 */	b __ct__4dBgWFv
/* 80D34CBC  7C 60 1B 78 */	mr r0, r3
lbl_80D34CC0:
/* 80D34CC0  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 80D34CC4  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 80D34CC8  28 00 00 00 */	cmplwi r0, 0
/* 80D34CCC  40 82 00 0C */	bne lbl_80D34CD8
/* 80D34CD0  38 60 00 00 */	li r3, 0
/* 80D34CD4  48 00 00 58 */	b lbl_80D34D2C
lbl_80D34CD8:
/* 80D34CD8  3C 60 80 D3 */	lis r3, stringBase0@ha
/* 80D34CDC  38 63 51 BC */	addi r3, r3, stringBase0@l
/* 80D34CE0  38 80 00 0B */	li r4, 0xb
/* 80D34CE4  7F E5 FB 78 */	mr r5, r31
/* 80D34CE8  38 C0 00 80 */	li r6, 0x80
/* 80D34CEC  4B 30 76 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D34CF0  7C 64 1B 78 */	mr r4, r3
/* 80D34CF4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80D34CF8  38 A0 00 01 */	li r5, 1
/* 80D34CFC  38 DE 05 90 */	addi r6, r30, 0x590
/* 80D34D00  4B 34 52 38 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D34D04  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D34D08  28 00 00 01 */	cmplwi r0, 1
/* 80D34D0C  40 82 00 0C */	bne lbl_80D34D18
/* 80D34D10  38 60 00 00 */	li r3, 0
/* 80D34D14  48 00 00 18 */	b lbl_80D34D2C
lbl_80D34D18:
/* 80D34D18  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80D34D1C  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80D34D20  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80D34D24  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80D34D28  38 60 00 01 */	li r3, 1
lbl_80D34D2C:
/* 80D34D2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D34D30  4B 62 D4 F8 */	b _restgpr_29
/* 80D34D34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D34D38  7C 08 03 A6 */	mtlr r0
/* 80D34D3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D34D40  4E 80 00 20 */	blr 
