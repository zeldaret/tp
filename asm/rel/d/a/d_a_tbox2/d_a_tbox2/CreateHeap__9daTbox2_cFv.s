lbl_80496C20:
/* 80496C20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80496C24  7C 08 02 A6 */	mflr r0
/* 80496C28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80496C2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80496C30  4B EC B5 A8 */	b _savegpr_28
/* 80496C34  7C 7E 1B 78 */	mr r30, r3
/* 80496C38  3C 60 80 4A */	lis r3, l_arcName@ha
/* 80496C3C  38 63 82 7C */	addi r3, r3, l_arcName@l
/* 80496C40  80 63 00 00 */	lwz r3, 0(r3)
/* 80496C44  88 1E 0A BC */	lbz r0, 0xabc(r30)
/* 80496C48  54 00 20 36 */	slwi r0, r0, 4
/* 80496C4C  3C 80 80 4A */	lis r4, l_resInfo@ha
/* 80496C50  38 84 81 60 */	addi r4, r4, l_resInfo@l
/* 80496C54  7C 84 00 2E */	lwzx r4, r4, r0
/* 80496C58  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80496C5C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80496C60  3F E5 00 02 */	addis r31, r5, 2
/* 80496C64  3B FF C2 F8 */	addi r31, r31, -15624
/* 80496C68  7F E5 FB 78 */	mr r5, r31
/* 80496C6C  38 C0 00 80 */	li r6, 0x80
/* 80496C70  4B BA 56 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80496C74  3C 80 00 08 */	lis r4, 8
/* 80496C78  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80496C7C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80496C80  4B B7 DF D4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80496C84  90 7E 07 24 */	stw r3, 0x724(r30)
/* 80496C88  80 1E 07 24 */	lwz r0, 0x724(r30)
/* 80496C8C  28 00 00 00 */	cmplwi r0, 0
/* 80496C90  40 82 00 0C */	bne lbl_80496C9C
/* 80496C94  38 60 00 00 */	li r3, 0
/* 80496C98  48 00 01 44 */	b lbl_80496DDC
lbl_80496C9C:
/* 80496C9C  3C 60 80 4A */	lis r3, l_arcName@ha
/* 80496CA0  38 63 82 7C */	addi r3, r3, l_arcName@l
/* 80496CA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80496CA8  3C 80 80 4A */	lis r4, l_resInfo@ha
/* 80496CAC  38 84 81 60 */	addi r4, r4, l_resInfo@l
/* 80496CB0  88 1E 0A BC */	lbz r0, 0xabc(r30)
/* 80496CB4  54 00 20 36 */	slwi r0, r0, 4
/* 80496CB8  7C 84 02 14 */	add r4, r4, r0
/* 80496CBC  80 84 00 04 */	lwz r4, 4(r4)
/* 80496CC0  7F E5 FB 78 */	mr r5, r31
/* 80496CC4  38 C0 00 80 */	li r6, 0x80
/* 80496CC8  4B BA 56 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80496CCC  7C 7C 1B 78 */	mr r28, r3
/* 80496CD0  38 60 00 1C */	li r3, 0x1c
/* 80496CD4  4B E3 7F 78 */	b __nw__FUl
/* 80496CD8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80496CDC  41 82 00 20 */	beq lbl_80496CFC
/* 80496CE0  3C 80 80 4A */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80496CE4  38 04 84 44 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80496CE8  90 1D 00 00 */	stw r0, 0(r29)
/* 80496CEC  38 80 00 00 */	li r4, 0
/* 80496CF0  4B E9 17 0C */	b init__12J3DFrameCtrlFs
/* 80496CF4  38 00 00 00 */	li r0, 0
/* 80496CF8  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_80496CFC:
/* 80496CFC  93 BE 07 28 */	stw r29, 0x728(r30)
/* 80496D00  80 7E 07 28 */	lwz r3, 0x728(r30)
/* 80496D04  28 03 00 00 */	cmplwi r3, 0
/* 80496D08  41 82 00 30 */	beq lbl_80496D38
/* 80496D0C  7F 84 E3 78 */	mr r4, r28
/* 80496D10  38 A0 00 01 */	li r5, 1
/* 80496D14  38 C0 00 00 */	li r6, 0
/* 80496D18  3C E0 80 4A */	lis r7, lit_3763@ha
/* 80496D1C  C0 27 81 D0 */	lfs f1, lit_3763@l(r7)
/* 80496D20  38 E0 00 00 */	li r7, 0
/* 80496D24  39 00 FF FF */	li r8, -1
/* 80496D28  39 20 00 00 */	li r9, 0
/* 80496D2C  4B B7 6A B0 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80496D30  2C 03 00 00 */	cmpwi r3, 0
/* 80496D34  40 82 00 0C */	bne lbl_80496D40
lbl_80496D38:
/* 80496D38  38 60 00 00 */	li r3, 0
/* 80496D3C  48 00 00 A0 */	b lbl_80496DDC
lbl_80496D40:
/* 80496D40  38 60 00 C0 */	li r3, 0xc0
/* 80496D44  4B E3 7F 08 */	b __nw__FUl
/* 80496D48  7C 60 1B 79 */	or. r0, r3, r3
/* 80496D4C  41 82 00 0C */	beq lbl_80496D58
/* 80496D50  4B BE 4C 20 */	b __ct__4dBgWFv
/* 80496D54  7C 60 1B 78 */	mr r0, r3
lbl_80496D58:
/* 80496D58  90 1E 0A C8 */	stw r0, 0xac8(r30)
/* 80496D5C  80 1E 0A C8 */	lwz r0, 0xac8(r30)
/* 80496D60  28 00 00 00 */	cmplwi r0, 0
/* 80496D64  41 82 00 64 */	beq lbl_80496DC8
/* 80496D68  3C 60 80 4A */	lis r3, l_arcName@ha
/* 80496D6C  38 63 82 7C */	addi r3, r3, l_arcName@l
/* 80496D70  80 63 00 00 */	lwz r3, 0(r3)
/* 80496D74  3C 80 80 4A */	lis r4, l_resInfo@ha
/* 80496D78  38 84 81 60 */	addi r4, r4, l_resInfo@l
/* 80496D7C  88 1E 0A BC */	lbz r0, 0xabc(r30)
/* 80496D80  54 00 20 36 */	slwi r0, r0, 4
/* 80496D84  7C 84 02 14 */	add r4, r4, r0
/* 80496D88  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80496D8C  7F E5 FB 78 */	mr r5, r31
/* 80496D90  38 C0 00 80 */	li r6, 0x80
/* 80496D94  4B BA 55 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80496D98  7C 64 1B 78 */	mr r4, r3
/* 80496D9C  80 7E 0A C8 */	lwz r3, 0xac8(r30)
/* 80496DA0  38 A0 00 01 */	li r5, 1
/* 80496DA4  38 DE 05 6C */	addi r6, r30, 0x56c
/* 80496DA8  4B BE 31 90 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80496DAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80496DB0  40 82 00 18 */	bne lbl_80496DC8
/* 80496DB4  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80496DB8  38 03 5A D8 */	addi r0, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80496DBC  80 7E 0A C8 */	lwz r3, 0xac8(r30)
/* 80496DC0  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80496DC4  48 00 00 14 */	b lbl_80496DD8
lbl_80496DC8:
/* 80496DC8  38 00 00 00 */	li r0, 0
/* 80496DCC  90 1E 0A C8 */	stw r0, 0xac8(r30)
/* 80496DD0  38 60 00 00 */	li r3, 0
/* 80496DD4  48 00 00 08 */	b lbl_80496DDC
lbl_80496DD8:
/* 80496DD8  38 60 00 01 */	li r3, 1
lbl_80496DDC:
/* 80496DDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80496DE0  4B EC B4 44 */	b _restgpr_28
/* 80496DE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80496DE8  7C 08 03 A6 */	mtlr r0
/* 80496DEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80496DF0  4E 80 00 20 */	blr 
