lbl_80728990:
/* 80728990  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80728994  7C 08 02 A6 */	mflr r0
/* 80728998  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072899C  39 61 00 30 */	addi r11, r1, 0x30
/* 807289A0  4B C3 98 38 */	b _savegpr_28
/* 807289A4  7C 7F 1B 78 */	mr r31, r3
/* 807289A8  38 60 00 58 */	li r3, 0x58
/* 807289AC  4B BA 62 A0 */	b __nw__FUl
/* 807289B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 807289B4  41 82 00 94 */	beq lbl_80728A48
/* 807289B8  3C 60 80 73 */	lis r3, stringBase0@ha
/* 807289BC  38 63 95 FC */	addi r3, r3, stringBase0@l
/* 807289C0  38 80 00 10 */	li r4, 0x10
/* 807289C4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807289C8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807289CC  3F 85 00 02 */	addis r28, r5, 2
/* 807289D0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807289D4  7F 85 E3 78 */	mr r5, r28
/* 807289D8  38 C0 00 80 */	li r6, 0x80
/* 807289DC  4B 91 39 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807289E0  7C 7D 1B 78 */	mr r29, r3
/* 807289E4  3C 60 80 73 */	lis r3, stringBase0@ha
/* 807289E8  38 63 95 FC */	addi r3, r3, stringBase0@l
/* 807289EC  38 80 00 14 */	li r4, 0x14
/* 807289F0  7F 85 E3 78 */	mr r5, r28
/* 807289F4  38 C0 00 80 */	li r6, 0x80
/* 807289F8  4B 91 38 F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807289FC  7C 64 1B 78 */	mr r4, r3
/* 80728A00  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 80728A04  90 01 00 08 */	stw r0, 8(r1)
/* 80728A08  3C 00 00 08 */	lis r0, 8
/* 80728A0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80728A10  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80728A14  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80728A18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80728A1C  7F C3 F3 78 */	mr r3, r30
/* 80728A20  38 A0 00 00 */	li r5, 0
/* 80728A24  38 C0 00 00 */	li r6, 0
/* 80728A28  7F A7 EB 78 */	mr r7, r29
/* 80728A2C  39 00 00 02 */	li r8, 2
/* 80728A30  3D 20 80 73 */	lis r9, lit_3802@ha
/* 80728A34  C0 29 95 0C */	lfs f1, lit_3802@l(r9)
/* 80728A38  39 20 00 00 */	li r9, 0
/* 80728A3C  39 40 FF FF */	li r10, -1
/* 80728A40  4B 8E 7D 90 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80728A44  7C 7E 1B 78 */	mr r30, r3
lbl_80728A48:
/* 80728A48  93 DF 05 CC */	stw r30, 0x5cc(r31)
/* 80728A4C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80728A50  28 03 00 00 */	cmplwi r3, 0
/* 80728A54  41 82 00 10 */	beq lbl_80728A64
/* 80728A58  80 03 00 04 */	lwz r0, 4(r3)
/* 80728A5C  28 00 00 00 */	cmplwi r0, 0
/* 80728A60  40 82 00 0C */	bne lbl_80728A6C
lbl_80728A64:
/* 80728A64  38 60 00 00 */	li r3, 0
/* 80728A68  48 00 00 08 */	b lbl_80728A70
lbl_80728A6C:
/* 80728A6C  38 60 00 01 */	li r3, 1
lbl_80728A70:
/* 80728A70  39 61 00 30 */	addi r11, r1, 0x30
/* 80728A74  4B C3 97 B0 */	b _restgpr_28
/* 80728A78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80728A7C  7C 08 03 A6 */	mtlr r0
/* 80728A80  38 21 00 30 */	addi r1, r1, 0x30
/* 80728A84  4E 80 00 20 */	blr 
