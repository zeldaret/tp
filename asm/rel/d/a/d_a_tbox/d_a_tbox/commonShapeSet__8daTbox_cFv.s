lbl_80490E6C:
/* 80490E6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80490E70  7C 08 02 A6 */	mflr r0
/* 80490E74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80490E78  39 61 00 20 */	addi r11, r1, 0x20
/* 80490E7C  4B ED 13 54 */	b _savegpr_26
/* 80490E80  7C 7B 1B 78 */	mr r27, r3
/* 80490E84  3C 80 80 49 */	lis r4, l_cull_size_box@ha
/* 80490E88  3B C4 61 D4 */	addi r30, r4, l_cull_size_box@l
/* 80490E8C  4B FF FF C5 */	bl getModelInfo__8daTbox_cFv
/* 80490E90  7C 7F 1B 78 */	mr r31, r3
/* 80490E94  80 63 00 00 */	lwz r3, 0(r3)
/* 80490E98  80 9F 00 04 */	lwz r4, 4(r31)
/* 80490E9C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80490EA0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80490EA4  3F A5 00 02 */	addis r29, r5, 2
/* 80490EA8  3B BD C2 F8 */	addi r29, r29, -15624
/* 80490EAC  7F A5 EB 78 */	mr r5, r29
/* 80490EB0  38 C0 00 80 */	li r6, 0x80
/* 80490EB4  4B BA B4 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80490EB8  7C 7C 1B 78 */	mr r28, r3
/* 80490EBC  38 60 00 1C */	li r3, 0x1c
/* 80490EC0  4B E3 DD 8C */	b __nw__FUl
/* 80490EC4  7C 7A 1B 79 */	or. r26, r3, r3
/* 80490EC8  41 82 00 20 */	beq lbl_80490EE8
/* 80490ECC  3C 80 80 49 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80490ED0  38 04 68 68 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80490ED4  90 1A 00 00 */	stw r0, 0(r26)
/* 80490ED8  38 80 00 00 */	li r4, 0
/* 80490EDC  4B E9 75 20 */	b init__12J3DFrameCtrlFs
/* 80490EE0  38 00 00 00 */	li r0, 0
/* 80490EE4  90 1A 00 18 */	stw r0, 0x18(r26)
lbl_80490EE8:
/* 80490EE8  93 5B 07 2C */	stw r26, 0x72c(r27)
/* 80490EEC  80 1B 07 2C */	lwz r0, 0x72c(r27)
/* 80490EF0  28 00 00 00 */	cmplwi r0, 0
/* 80490EF4  40 82 00 0C */	bne lbl_80490F00
/* 80490EF8  38 60 00 05 */	li r3, 5
/* 80490EFC  48 00 02 5C */	b lbl_80491158
lbl_80490F00:
/* 80490F00  80 7F 00 00 */	lwz r3, 0(r31)
/* 80490F04  80 9F 00 08 */	lwz r4, 8(r31)
/* 80490F08  7F A5 EB 78 */	mr r5, r29
/* 80490F0C  38 C0 00 80 */	li r6, 0x80
/* 80490F10  4B BA B3 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80490F14  7C 64 1B 78 */	mr r4, r3
/* 80490F18  80 7B 07 2C */	lwz r3, 0x72c(r27)
/* 80490F1C  38 A0 00 01 */	li r5, 1
/* 80490F20  38 C0 00 00 */	li r6, 0
/* 80490F24  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80490F28  38 E0 00 00 */	li r7, 0
/* 80490F2C  39 00 FF FF */	li r8, -1
/* 80490F30  39 20 00 00 */	li r9, 0
/* 80490F34  4B B7 C8 A8 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80490F38  2C 03 00 00 */	cmpwi r3, 0
/* 80490F3C  40 82 00 0C */	bne lbl_80490F48
/* 80490F40  38 60 00 05 */	li r3, 5
/* 80490F44  48 00 02 14 */	b lbl_80491158
lbl_80490F48:
/* 80490F48  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80490F4C  54 00 76 BA */	rlwinm r0, r0, 0xe, 0x1a, 0x1d
/* 80490F50  38 7E 00 64 */	addi r3, r30, 0x64
/* 80490F54  7C 03 00 2E */	lwzx r0, r3, r0
/* 80490F58  90 1B 09 F8 */	stw r0, 0x9f8(r27)
/* 80490F5C  3C 80 00 08 */	lis r4, 8
/* 80490F60  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80490F64  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80490F68  2C 00 00 02 */	cmpwi r0, 2
/* 80490F6C  40 82 00 08 */	bne lbl_80490F74
/* 80490F70  38 80 00 00 */	li r4, 0
lbl_80490F74:
/* 80490F74  7F 83 E3 78 */	mr r3, r28
/* 80490F78  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80490F7C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80490F80  4B B8 3C D4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80490F84  90 7B 07 24 */	stw r3, 0x724(r27)
/* 80490F88  80 1B 07 24 */	lwz r0, 0x724(r27)
/* 80490F8C  28 00 00 00 */	cmplwi r0, 0
/* 80490F90  40 82 00 0C */	bne lbl_80490F9C
/* 80490F94  38 60 00 05 */	li r3, 5
/* 80490F98  48 00 01 C0 */	b lbl_80491158
lbl_80490F9C:
/* 80490F9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80490FA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80490FA4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80490FA8  3C 80 80 49 */	lis r4, struct_80496334+0x0@ha
/* 80490FAC  38 84 63 34 */	addi r4, r4, struct_80496334+0x0@l
/* 80490FB0  38 84 00 16 */	addi r4, r4, 0x16
/* 80490FB4  4B ED 79 E0 */	b strcmp
/* 80490FB8  2C 03 00 00 */	cmpwi r3, 0
/* 80490FBC  40 82 00 48 */	bne lbl_80491004
/* 80490FC0  3C 60 80 49 */	lis r3, struct_80496334+0x0@ha
/* 80490FC4  38 63 63 34 */	addi r3, r3, struct_80496334+0x0@l
/* 80490FC8  38 63 00 09 */	addi r3, r3, 9
/* 80490FCC  38 80 00 0F */	li r4, 0xf
/* 80490FD0  7F A5 EB 78 */	mr r5, r29
/* 80490FD4  38 C0 00 80 */	li r6, 0x80
/* 80490FD8  4B BA B3 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80490FDC  3C 80 00 08 */	lis r4, 8
/* 80490FE0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80490FE4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80490FE8  4B B8 3C 6C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80490FEC  90 7B 07 28 */	stw r3, 0x728(r27)
/* 80490FF0  80 1B 07 28 */	lwz r0, 0x728(r27)
/* 80490FF4  28 00 00 00 */	cmplwi r0, 0
/* 80490FF8  40 82 00 0C */	bne lbl_80491004
/* 80490FFC  38 60 00 05 */	li r3, 5
/* 80491000  48 00 01 58 */	b lbl_80491158
lbl_80491004:
/* 80491004  7F 63 DB 78 */	mr r3, r27
/* 80491008  48 00 03 5D */	bl checkAppear__8daTbox_cFv
/* 8049100C  2C 03 00 00 */	cmpwi r3, 0
/* 80491010  41 82 00 D0 */	beq lbl_804910E0
/* 80491014  80 7F 00 00 */	lwz r3, 0(r31)
/* 80491018  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8049101C  7F A5 EB 78 */	mr r5, r29
/* 80491020  38 C0 00 80 */	li r6, 0x80
/* 80491024  4B BA B2 C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80491028  7C 7A 1B 78 */	mr r26, r3
/* 8049102C  3C 80 00 08 */	lis r4, 8
/* 80491030  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80491034  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80491038  4B B8 3C 1C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8049103C  90 7B 07 30 */	stw r3, 0x730(r27)
/* 80491040  80 1B 07 30 */	lwz r0, 0x730(r27)
/* 80491044  28 00 00 00 */	cmplwi r0, 0
/* 80491048  40 82 00 0C */	bne lbl_80491054
/* 8049104C  38 60 00 05 */	li r3, 5
/* 80491050  48 00 01 08 */	b lbl_80491158
lbl_80491054:
/* 80491054  38 60 00 18 */	li r3, 0x18
/* 80491058  4B E3 DB F4 */	b __nw__FUl
/* 8049105C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80491060  41 82 00 20 */	beq lbl_80491080
/* 80491064  3C 80 80 49 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80491068  38 04 68 68 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8049106C  90 1C 00 00 */	stw r0, 0(r28)
/* 80491070  38 80 00 00 */	li r4, 0
/* 80491074  4B E9 73 88 */	b init__12J3DFrameCtrlFs
/* 80491078  38 00 00 00 */	li r0, 0
/* 8049107C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80491080:
/* 80491080  93 9B 07 34 */	stw r28, 0x734(r27)
/* 80491084  80 1B 07 34 */	lwz r0, 0x734(r27)
/* 80491088  28 00 00 00 */	cmplwi r0, 0
/* 8049108C  40 82 00 0C */	bne lbl_80491098
/* 80491090  38 60 00 05 */	li r3, 5
/* 80491094  48 00 00 C4 */	b lbl_80491158
lbl_80491098:
/* 80491098  80 7F 00 00 */	lwz r3, 0(r31)
/* 8049109C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 804910A0  7F A5 EB 78 */	mr r5, r29
/* 804910A4  38 C0 00 80 */	li r6, 0x80
/* 804910A8  4B BA B2 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804910AC  7C 65 1B 78 */	mr r5, r3
/* 804910B0  80 7B 07 34 */	lwz r3, 0x734(r27)
/* 804910B4  38 9A 00 58 */	addi r4, r26, 0x58
/* 804910B8  38 C0 00 01 */	li r6, 1
/* 804910BC  38 E0 00 00 */	li r7, 0
/* 804910C0  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 804910C4  39 00 00 00 */	li r8, 0
/* 804910C8  39 20 FF FF */	li r9, -1
/* 804910CC  4B B7 C6 40 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 804910D0  2C 03 00 00 */	cmpwi r3, 0
/* 804910D4  40 82 00 0C */	bne lbl_804910E0
/* 804910D8  38 60 00 05 */	li r3, 5
/* 804910DC  48 00 00 7C */	b lbl_80491158
lbl_804910E0:
/* 804910E0  80 7B 07 24 */	lwz r3, 0x724(r27)
/* 804910E4  C0 1B 04 EC */	lfs f0, 0x4ec(r27)
/* 804910E8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804910EC  C0 1B 04 F0 */	lfs f0, 0x4f0(r27)
/* 804910F0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804910F4  C0 1B 04 F4 */	lfs f0, 0x4f4(r27)
/* 804910F8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804910FC  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80491100  4B B7 BC 64 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80491104  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80491108  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049110C  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80491110  4B B7 B3 24 */	b mDoMtx_YrotM__FPA4_fs
/* 80491114  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80491118  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049111C  80 9B 07 24 */	lwz r4, 0x724(r27)
/* 80491120  38 84 00 24 */	addi r4, r4, 0x24
/* 80491124  4B EB 53 8C */	b PSMTXCopy
/* 80491128  80 9B 07 30 */	lwz r4, 0x730(r27)
/* 8049112C  28 04 00 00 */	cmplwi r4, 0
/* 80491130  41 82 00 14 */	beq lbl_80491144
/* 80491134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80491138  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049113C  38 84 00 24 */	addi r4, r4, 0x24
/* 80491140  4B EB 53 70 */	b PSMTXCopy
lbl_80491144:
/* 80491144  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80491148  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8049114C  38 9B 05 6C */	addi r4, r27, 0x56c
/* 80491150  4B EB 53 60 */	b PSMTXCopy
/* 80491154  38 60 00 04 */	li r3, 4
lbl_80491158:
/* 80491158  39 61 00 20 */	addi r11, r1, 0x20
/* 8049115C  4B ED 10 C0 */	b _restgpr_26
/* 80491160  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80491164  7C 08 03 A6 */	mtlr r0
/* 80491168  38 21 00 20 */	addi r1, r1, 0x20
/* 8049116C  4E 80 00 20 */	blr 
