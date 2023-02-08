lbl_80670D10:
/* 80670D10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80670D14  7C 08 02 A6 */	mflr r0
/* 80670D18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80670D1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80670D20  4B CF 14 B9 */	bl _savegpr_28
/* 80670D24  7C 7E 1B 78 */	mr r30, r3
/* 80670D28  4B FF FF 6D */	bl getDoorModelData__11daBdoorL5_cFv
/* 80670D2C  3C 80 00 08 */	lis r4, 8
/* 80670D30  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80670D34  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80670D38  4B 9A 3F 1D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80670D3C  90 7E 05 80 */	stw r3, 0x580(r30)
/* 80670D40  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 80670D44  28 00 00 00 */	cmplwi r0, 0
/* 80670D48  40 82 00 0C */	bne lbl_80670D54
/* 80670D4C  38 60 00 00 */	li r3, 0
/* 80670D50  48 00 01 58 */	b lbl_80670EA8
lbl_80670D54:
/* 80670D54  7F C3 F3 78 */	mr r3, r30
/* 80670D58  4B FF FF 2D */	bl getOpenAnm__11daBdoorL5_cFv
/* 80670D5C  7C 7D 1B 78 */	mr r29, r3
/* 80670D60  7F C3 F3 78 */	mr r3, r30
/* 80670D64  4B FF FF 11 */	bl getAnmArcName__11daBdoorL5_cFv
/* 80670D68  7F A4 EB 78 */	mr r4, r29
/* 80670D6C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80670D70  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80670D74  3F E5 00 02 */	addis r31, r5, 2
/* 80670D78  3B FF C2 F8 */	addi r31, r31, -15624
/* 80670D7C  7F E5 FB 78 */	mr r5, r31
/* 80670D80  38 C0 00 80 */	li r6, 0x80
/* 80670D84  4B 9C B5 69 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80670D88  7C 7C 1B 78 */	mr r28, r3
/* 80670D8C  38 60 00 1C */	li r3, 0x1c
/* 80670D90  4B C5 DE BD */	bl __nw__FUl
/* 80670D94  7C 7D 1B 79 */	or. r29, r3, r3
/* 80670D98  41 82 00 20 */	beq lbl_80670DB8
/* 80670D9C  3C 80 80 67 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80672790@ha */
/* 80670DA0  38 04 27 90 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80672790@l */
/* 80670DA4  90 1D 00 00 */	stw r0, 0(r29)
/* 80670DA8  38 80 00 00 */	li r4, 0
/* 80670DAC  4B CB 76 51 */	bl init__12J3DFrameCtrlFs
/* 80670DB0  38 00 00 00 */	li r0, 0
/* 80670DB4  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_80670DB8:
/* 80670DB8  93 BE 05 84 */	stw r29, 0x584(r30)
/* 80670DBC  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80670DC0  28 03 00 00 */	cmplwi r3, 0
/* 80670DC4  41 82 00 30 */	beq lbl_80670DF4
/* 80670DC8  7F 84 E3 78 */	mr r4, r28
/* 80670DCC  38 A0 00 01 */	li r5, 1
/* 80670DD0  38 C0 00 00 */	li r6, 0
/* 80670DD4  3C E0 80 67 */	lis r7, lit_3757@ha /* 0x8067250C@ha */
/* 80670DD8  C0 27 25 0C */	lfs f1, lit_3757@l(r7)  /* 0x8067250C@l */
/* 80670DDC  38 E0 00 00 */	li r7, 0
/* 80670DE0  39 00 FF FF */	li r8, -1
/* 80670DE4  39 20 00 00 */	li r9, 0
/* 80670DE8  4B 99 C9 F5 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80670DEC  2C 03 00 00 */	cmpwi r3, 0
/* 80670DF0  40 82 00 0C */	bne lbl_80670DFC
lbl_80670DF4:
/* 80670DF4  38 60 00 00 */	li r3, 0
/* 80670DF8  48 00 00 B0 */	b lbl_80670EA8
lbl_80670DFC:
/* 80670DFC  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80670E00  80 83 00 04 */	lwz r4, 4(r3)
/* 80670E04  80 7E 05 84 */	lwz r3, 0x584(r30)
/* 80670E08  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80670E0C  4B 99 CB C1 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80670E10  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80670E14  81 83 00 00 */	lwz r12, 0(r3)
/* 80670E18  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80670E1C  7D 89 03 A6 */	mtctr r12
/* 80670E20  4E 80 04 21 */	bctrl 
/* 80670E24  7F C3 F3 78 */	mr r3, r30
/* 80670E28  48 00 00 E1 */	bl calcMtx__11daBdoorL5_cFv
/* 80670E2C  38 60 00 C0 */	li r3, 0xc0
/* 80670E30  4B C5 DE 1D */	bl __nw__FUl
/* 80670E34  7C 60 1B 79 */	or. r0, r3, r3
/* 80670E38  41 82 00 0C */	beq lbl_80670E44
/* 80670E3C  4B A0 AB 35 */	bl __ct__4dBgWFv
/* 80670E40  7C 60 1B 78 */	mr r0, r3
lbl_80670E44:
/* 80670E44  90 1E 05 88 */	stw r0, 0x588(r30)
/* 80670E48  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 80670E4C  28 00 00 00 */	cmplwi r0, 0
/* 80670E50  41 82 00 4C */	beq lbl_80670E9C
/* 80670E54  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80670E58  3B 83 00 24 */	addi r28, r3, 0x24
/* 80670E5C  7F C3 F3 78 */	mr r3, r30
/* 80670E60  4B FF FE 05 */	bl getDzb__11daBdoorL5_cFv
/* 80670E64  7C 7D 1B 78 */	mr r29, r3
/* 80670E68  7F C3 F3 78 */	mr r3, r30
/* 80670E6C  4B FF FD D9 */	bl getAlwaysArcName__11daBdoorL5_cFv
/* 80670E70  7F A4 EB 78 */	mr r4, r29
/* 80670E74  7F E5 FB 78 */	mr r5, r31
/* 80670E78  38 C0 00 80 */	li r6, 0x80
/* 80670E7C  4B 9C B5 01 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80670E80  7C 64 1B 78 */	mr r4, r3
/* 80670E84  80 7E 05 88 */	lwz r3, 0x588(r30)
/* 80670E88  38 A0 00 01 */	li r5, 1
/* 80670E8C  7F 86 E3 78 */	mr r6, r28
/* 80670E90  4B A0 90 A9 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80670E94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80670E98  41 82 00 0C */	beq lbl_80670EA4
lbl_80670E9C:
/* 80670E9C  38 60 00 00 */	li r3, 0
/* 80670EA0  48 00 00 08 */	b lbl_80670EA8
lbl_80670EA4:
/* 80670EA4  38 60 00 01 */	li r3, 1
lbl_80670EA8:
/* 80670EA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80670EAC  4B CF 13 79 */	bl _restgpr_28
/* 80670EB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80670EB4  7C 08 03 A6 */	mtlr r0
/* 80670EB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80670EBC  4E 80 00 20 */	blr 
