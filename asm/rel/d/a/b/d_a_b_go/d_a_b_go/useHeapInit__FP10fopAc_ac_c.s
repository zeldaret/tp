lbl_8060395C:
/* 8060395C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80603960  7C 08 02 A6 */	mflr r0
/* 80603964  90 01 00 34 */	stw r0, 0x34(r1)
/* 80603968  39 61 00 30 */	addi r11, r1, 0x30
/* 8060396C  4B D5 E8 6C */	b _savegpr_28
/* 80603970  7C 7F 1B 78 */	mr r31, r3
/* 80603974  38 60 00 58 */	li r3, 0x58
/* 80603978  4B CC B2 D4 */	b __nw__FUl
/* 8060397C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80603980  41 82 00 94 */	beq lbl_80603A14
/* 80603984  3C 60 80 60 */	lis r3, stringBase0@ha
/* 80603988  38 63 40 8C */	addi r3, r3, stringBase0@l
/* 8060398C  38 80 00 0F */	li r4, 0xf
/* 80603990  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80603994  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80603998  3F 85 00 02 */	addis r28, r5, 2
/* 8060399C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806039A0  7F 85 E3 78 */	mr r5, r28
/* 806039A4  38 C0 00 80 */	li r6, 0x80
/* 806039A8  4B A3 89 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806039AC  7C 7D 1B 78 */	mr r29, r3
/* 806039B0  3C 60 80 60 */	lis r3, stringBase0@ha
/* 806039B4  38 63 40 8C */	addi r3, r3, stringBase0@l
/* 806039B8  38 80 00 13 */	li r4, 0x13
/* 806039BC  7F 85 E3 78 */	mr r5, r28
/* 806039C0  38 C0 00 80 */	li r6, 0x80
/* 806039C4  4B A3 89 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806039C8  7C 64 1B 78 */	mr r4, r3
/* 806039CC  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 806039D0  90 01 00 08 */	stw r0, 8(r1)
/* 806039D4  3C 00 00 08 */	lis r0, 8
/* 806039D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806039DC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806039E0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806039E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806039E8  7F C3 F3 78 */	mr r3, r30
/* 806039EC  38 A0 00 00 */	li r5, 0
/* 806039F0  38 C0 00 00 */	li r6, 0
/* 806039F4  7F A7 EB 78 */	mr r7, r29
/* 806039F8  39 00 00 02 */	li r8, 2
/* 806039FC  3D 20 80 60 */	lis r9, lit_3703@ha
/* 80603A00  C0 29 40 5C */	lfs f1, lit_3703@l(r9)
/* 80603A04  39 20 00 00 */	li r9, 0
/* 80603A08  39 40 FF FF */	li r10, -1
/* 80603A0C  4B A0 CD C4 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80603A10  7C 7E 1B 78 */	mr r30, r3
lbl_80603A14:
/* 80603A14  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 80603A18  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80603A1C  28 03 00 00 */	cmplwi r3, 0
/* 80603A20  41 82 00 10 */	beq lbl_80603A30
/* 80603A24  80 03 00 04 */	lwz r0, 4(r3)
/* 80603A28  28 00 00 00 */	cmplwi r0, 0
/* 80603A2C  40 82 00 0C */	bne lbl_80603A38
lbl_80603A30:
/* 80603A30  38 60 00 00 */	li r3, 0
/* 80603A34  48 00 00 08 */	b lbl_80603A3C
lbl_80603A38:
/* 80603A38  38 60 00 01 */	li r3, 1
lbl_80603A3C:
/* 80603A3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80603A40  4B D5 E7 E4 */	b _restgpr_28
/* 80603A44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80603A48  7C 08 03 A6 */	mtlr r0
/* 80603A4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80603A50  4E 80 00 20 */	blr 
