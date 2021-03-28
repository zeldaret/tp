lbl_805C7B2C:
/* 805C7B2C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805C7B30  7C 08 02 A6 */	mflr r0
/* 805C7B34  90 01 00 34 */	stw r0, 0x34(r1)
/* 805C7B38  39 61 00 30 */	addi r11, r1, 0x30
/* 805C7B3C  4B D9 A6 9C */	b _savegpr_28
/* 805C7B40  7C 7F 1B 78 */	mr r31, r3
/* 805C7B44  3C 60 80 5D */	lis r3, stringBase0@ha
/* 805C7B48  38 63 AE CC */	addi r3, r3, stringBase0@l
/* 805C7B4C  38 80 00 49 */	li r4, 0x49
/* 805C7B50  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805C7B54  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805C7B58  3F A5 00 02 */	addis r29, r5, 2
/* 805C7B5C  3B BD C2 F8 */	addi r29, r29, -15624
/* 805C7B60  7F A5 EB 78 */	mr r5, r29
/* 805C7B64  38 C0 00 80 */	li r6, 0x80
/* 805C7B68  4B A7 47 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805C7B6C  7C 7E 1B 78 */	mr r30, r3
/* 805C7B70  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 805C7B74  28 00 00 00 */	cmplwi r0, 0
/* 805C7B78  40 82 00 80 */	bne lbl_805C7BF8
/* 805C7B7C  38 60 00 58 */	li r3, 0x58
/* 805C7B80  4B D0 70 CC */	b __nw__FUl
/* 805C7B84  7C 7C 1B 79 */	or. r28, r3, r3
/* 805C7B88  41 82 00 68 */	beq lbl_805C7BF0
/* 805C7B8C  3C 60 80 5D */	lis r3, stringBase0@ha
/* 805C7B90  38 63 AE CC */	addi r3, r3, stringBase0@l
/* 805C7B94  38 80 00 1D */	li r4, 0x1d
/* 805C7B98  7F A5 EB 78 */	mr r5, r29
/* 805C7B9C  38 C0 00 80 */	li r6, 0x80
/* 805C7BA0  4B A7 47 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805C7BA4  7C 67 1B 78 */	mr r7, r3
/* 805C7BA8  38 1F 06 44 */	addi r0, r31, 0x644
/* 805C7BAC  90 01 00 08 */	stw r0, 8(r1)
/* 805C7BB0  38 00 00 00 */	li r0, 0
/* 805C7BB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C7BB8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805C7BBC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805C7BC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C7BC4  7F 83 E3 78 */	mr r3, r28
/* 805C7BC8  7F C4 F3 78 */	mr r4, r30
/* 805C7BCC  38 A0 00 00 */	li r5, 0
/* 805C7BD0  38 C0 00 00 */	li r6, 0
/* 805C7BD4  39 00 00 00 */	li r8, 0
/* 805C7BD8  3D 20 80 5D */	lis r9, lit_3844@ha
/* 805C7BDC  C0 29 AD 5C */	lfs f1, lit_3844@l(r9)
/* 805C7BE0  39 20 00 00 */	li r9, 0
/* 805C7BE4  39 40 FF FF */	li r10, -1
/* 805C7BE8  4B A4 8B E8 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805C7BEC  7C 7C 1B 78 */	mr r28, r3
lbl_805C7BF0:
/* 805C7BF0  93 9F 06 EC */	stw r28, 0x6ec(r31)
/* 805C7BF4  48 00 01 3C */	b lbl_805C7D30
lbl_805C7BF8:
/* 805C7BF8  38 60 00 58 */	li r3, 0x58
/* 805C7BFC  4B D0 70 50 */	b __nw__FUl
/* 805C7C00  7C 7C 1B 79 */	or. r28, r3, r3
/* 805C7C04  41 82 00 68 */	beq lbl_805C7C6C
/* 805C7C08  3C 60 80 5D */	lis r3, stringBase0@ha
/* 805C7C0C  38 63 AE CC */	addi r3, r3, stringBase0@l
/* 805C7C10  38 80 00 1F */	li r4, 0x1f
/* 805C7C14  7F A5 EB 78 */	mr r5, r29
/* 805C7C18  38 C0 00 80 */	li r6, 0x80
/* 805C7C1C  4B A7 46 D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805C7C20  7C 67 1B 78 */	mr r7, r3
/* 805C7C24  38 1F 06 44 */	addi r0, r31, 0x644
/* 805C7C28  90 01 00 08 */	stw r0, 8(r1)
/* 805C7C2C  38 00 00 00 */	li r0, 0
/* 805C7C30  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C7C34  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805C7C38  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805C7C3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805C7C40  7F 83 E3 78 */	mr r3, r28
/* 805C7C44  7F C4 F3 78 */	mr r4, r30
/* 805C7C48  38 A0 00 00 */	li r5, 0
/* 805C7C4C  38 C0 00 00 */	li r6, 0
/* 805C7C50  39 00 00 02 */	li r8, 2
/* 805C7C54  3D 20 80 5D */	lis r9, lit_3844@ha
/* 805C7C58  C0 29 AD 5C */	lfs f1, lit_3844@l(r9)
/* 805C7C5C  39 20 00 00 */	li r9, 0
/* 805C7C60  39 40 FF FF */	li r10, -1
/* 805C7C64  4B A4 8B 6C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805C7C68  7C 7C 1B 78 */	mr r28, r3
lbl_805C7C6C:
/* 805C7C6C  93 9F 06 EC */	stw r28, 0x6ec(r31)
/* 805C7C70  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 805C7C74  28 03 00 00 */	cmplwi r3, 0
/* 805C7C78  41 82 00 10 */	beq lbl_805C7C88
/* 805C7C7C  80 03 00 04 */	lwz r0, 4(r3)
/* 805C7C80  28 00 00 00 */	cmplwi r0, 0
/* 805C7C84  40 82 00 0C */	bne lbl_805C7C90
lbl_805C7C88:
/* 805C7C88  38 60 00 00 */	li r3, 0
/* 805C7C8C  48 00 00 C8 */	b lbl_805C7D54
lbl_805C7C90:
/* 805C7C90  38 60 00 18 */	li r3, 0x18
/* 805C7C94  4B D0 6F B8 */	b __nw__FUl
/* 805C7C98  7C 7E 1B 79 */	or. r30, r3, r3
/* 805C7C9C  41 82 00 20 */	beq lbl_805C7CBC
/* 805C7CA0  3C 80 80 5D */	lis r4, __vt__12J3DFrameCtrl@ha
/* 805C7CA4  38 04 B0 28 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 805C7CA8  90 1E 00 00 */	stw r0, 0(r30)
/* 805C7CAC  38 80 00 00 */	li r4, 0
/* 805C7CB0  4B D6 07 4C */	b init__12J3DFrameCtrlFs
/* 805C7CB4  38 00 00 00 */	li r0, 0
/* 805C7CB8  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_805C7CBC:
/* 805C7CBC  93 DF 06 04 */	stw r30, 0x604(r31)
/* 805C7CC0  80 1F 06 04 */	lwz r0, 0x604(r31)
/* 805C7CC4  28 00 00 00 */	cmplwi r0, 0
/* 805C7CC8  40 82 00 0C */	bne lbl_805C7CD4
/* 805C7CCC  38 60 00 00 */	li r3, 0
/* 805C7CD0  48 00 00 84 */	b lbl_805C7D54
lbl_805C7CD4:
/* 805C7CD4  3C 60 80 5D */	lis r3, stringBase0@ha
/* 805C7CD8  38 63 AE CC */	addi r3, r3, stringBase0@l
/* 805C7CDC  38 80 00 51 */	li r4, 0x51
/* 805C7CE0  7F A5 EB 78 */	mr r5, r29
/* 805C7CE4  38 C0 00 80 */	li r6, 0x80
/* 805C7CE8  4B A7 46 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805C7CEC  7C 65 1B 78 */	mr r5, r3
/* 805C7CF0  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 805C7CF4  80 63 00 04 */	lwz r3, 4(r3)
/* 805C7CF8  80 83 00 04 */	lwz r4, 4(r3)
/* 805C7CFC  80 7F 06 04 */	lwz r3, 0x604(r31)
/* 805C7D00  38 84 00 58 */	addi r4, r4, 0x58
/* 805C7D04  38 C0 00 01 */	li r6, 1
/* 805C7D08  38 E0 00 02 */	li r7, 2
/* 805C7D0C  3D 00 80 5D */	lis r8, lit_3844@ha
/* 805C7D10  C0 28 AD 5C */	lfs f1, lit_3844@l(r8)
/* 805C7D14  39 00 00 00 */	li r8, 0
/* 805C7D18  39 20 FF FF */	li r9, -1
/* 805C7D1C  4B A4 59 F0 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805C7D20  2C 03 00 00 */	cmpwi r3, 0
/* 805C7D24  40 82 00 0C */	bne lbl_805C7D30
/* 805C7D28  38 60 00 00 */	li r3, 0
/* 805C7D2C  48 00 00 28 */	b lbl_805C7D54
lbl_805C7D30:
/* 805C7D30  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 805C7D34  28 03 00 00 */	cmplwi r3, 0
/* 805C7D38  41 82 00 10 */	beq lbl_805C7D48
/* 805C7D3C  80 03 00 04 */	lwz r0, 4(r3)
/* 805C7D40  28 00 00 00 */	cmplwi r0, 0
/* 805C7D44  40 82 00 0C */	bne lbl_805C7D50
lbl_805C7D48:
/* 805C7D48  38 60 00 00 */	li r3, 0
/* 805C7D4C  48 00 00 08 */	b lbl_805C7D54
lbl_805C7D50:
/* 805C7D50  38 60 00 01 */	li r3, 1
lbl_805C7D54:
/* 805C7D54  39 61 00 30 */	addi r11, r1, 0x30
/* 805C7D58  4B D9 A4 CC */	b _restgpr_28
/* 805C7D5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805C7D60  7C 08 03 A6 */	mtlr r0
/* 805C7D64  38 21 00 30 */	addi r1, r1, 0x30
/* 805C7D68  4E 80 00 20 */	blr 
