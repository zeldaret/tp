lbl_806A1F5C:
/* 806A1F5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806A1F60  7C 08 02 A6 */	mflr r0
/* 806A1F64  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A1F68  39 61 00 30 */	addi r11, r1, 0x30
/* 806A1F6C  4B CC 02 6C */	b _savegpr_28
/* 806A1F70  7C 7F 1B 78 */	mr r31, r3
/* 806A1F74  38 60 00 54 */	li r3, 0x54
/* 806A1F78  4B C2 CC D4 */	b __nw__FUl
/* 806A1F7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 806A1F80  41 82 00 9C */	beq lbl_806A201C
/* 806A1F84  3C 60 80 6A */	lis r3, stringBase0@ha
/* 806A1F88  38 63 21 18 */	addi r3, r3, stringBase0@l
/* 806A1F8C  38 80 00 13 */	li r4, 0x13
/* 806A1F90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806A1F94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806A1F98  3F 85 00 02 */	addis r28, r5, 2
/* 806A1F9C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806A1FA0  7F 85 E3 78 */	mr r5, r28
/* 806A1FA4  38 C0 00 80 */	li r6, 0x80
/* 806A1FA8  4B 99 A3 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A1FAC  7C 7D 1B 78 */	mr r29, r3
/* 806A1FB0  3C 60 80 6A */	lis r3, stringBase0@ha
/* 806A1FB4  38 63 21 18 */	addi r3, r3, stringBase0@l
/* 806A1FB8  38 80 00 18 */	li r4, 0x18
/* 806A1FBC  7F 85 E3 78 */	mr r5, r28
/* 806A1FC0  38 C0 00 80 */	li r6, 0x80
/* 806A1FC4  4B 99 A3 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A1FC8  7C 64 1B 78 */	mr r4, r3
/* 806A1FCC  38 00 00 01 */	li r0, 1
/* 806A1FD0  90 01 00 08 */	stw r0, 8(r1)
/* 806A1FD4  38 00 00 00 */	li r0, 0
/* 806A1FD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A1FDC  3C 00 00 08 */	lis r0, 8
/* 806A1FE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A1FE4  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806A1FE8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806A1FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A1FF0  7F C3 F3 78 */	mr r3, r30
/* 806A1FF4  38 A0 00 00 */	li r5, 0
/* 806A1FF8  38 C0 00 00 */	li r6, 0
/* 806A1FFC  7F A7 EB 78 */	mr r7, r29
/* 806A2000  39 00 00 02 */	li r8, 2
/* 806A2004  3D 20 80 6A */	lis r9, lit_3699@ha
/* 806A2008  C0 29 21 14 */	lfs f1, lit_3699@l(r9)
/* 806A200C  39 20 00 00 */	li r9, 0
/* 806A2010  39 40 FF FF */	li r10, -1
/* 806A2014  4B 96 DC 38 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 806A2018  7C 7E 1B 78 */	mr r30, r3
lbl_806A201C:
/* 806A201C  93 DF 05 B4 */	stw r30, 0x5b4(r31)
/* 806A2020  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806A2024  28 03 00 00 */	cmplwi r3, 0
/* 806A2028  41 82 00 10 */	beq lbl_806A2038
/* 806A202C  80 03 00 04 */	lwz r0, 4(r3)
/* 806A2030  28 00 00 00 */	cmplwi r0, 0
/* 806A2034  40 82 00 0C */	bne lbl_806A2040
lbl_806A2038:
/* 806A2038  38 60 00 00 */	li r3, 0
/* 806A203C  48 00 00 08 */	b lbl_806A2044
lbl_806A2040:
/* 806A2040  38 60 00 01 */	li r3, 1
lbl_806A2044:
/* 806A2044  39 61 00 30 */	addi r11, r1, 0x30
/* 806A2048  4B CC 01 DC */	b _restgpr_28
/* 806A204C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806A2050  7C 08 03 A6 */	mtlr r0
/* 806A2054  38 21 00 30 */	addi r1, r1, 0x30
/* 806A2058  4E 80 00 20 */	blr 
