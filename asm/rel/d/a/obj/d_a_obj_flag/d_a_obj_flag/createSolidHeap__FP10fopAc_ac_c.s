lbl_80BEC0B8:
/* 80BEC0B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BEC0BC  7C 08 02 A6 */	mflr r0
/* 80BEC0C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BEC0C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BEC0C8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BEC0CC  7C 7E 1B 78 */	mr r30, r3
/* 80BEC0D0  A8 03 04 E4 */	lha r0, 0x4e4(r3)
/* 80BEC0D4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BEC0D8  7C 05 07 74 */	extsb r5, r0
/* 80BEC0DC  2C 05 FF FF */	cmpwi r5, -1
/* 80BEC0E0  40 81 00 0C */	ble lbl_80BEC0EC
/* 80BEC0E4  2C 05 00 63 */	cmpwi r5, 0x63
/* 80BEC0E8  40 81 00 0C */	ble lbl_80BEC0F4
lbl_80BEC0EC:
/* 80BEC0EC  3B E0 00 00 */	li r31, 0
/* 80BEC0F0  48 00 00 C0 */	b lbl_80BEC1B0
lbl_80BEC0F4:
/* 80BEC0F4  3B E0 00 01 */	li r31, 1
/* 80BEC0F8  38 61 00 08 */	addi r3, r1, 8
/* 80BEC0FC  3C 80 80 BF */	lis r4, d_a_obj_flag__stringBase0@ha /* 0x80BEC554@ha */
/* 80BEC100  38 84 C5 54 */	addi r4, r4, d_a_obj_flag__stringBase0@l /* 0x80BEC554@l */
/* 80BEC104  38 84 00 09 */	addi r4, r4, 9
/* 80BEC108  4C C6 31 82 */	crclr 6
/* 80BEC10C  4B 77 A3 D1 */	bl sprintf
/* 80BEC110  38 00 00 00 */	li r0, 0
/* 80BEC114  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80BEC118  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80BEC11C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80BEC120  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80BEC124  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80BEC128  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80BEC12C  3C 60 80 BF */	lis r3, d_a_obj_flag__stringBase0@ha /* 0x80BEC554@ha */
/* 80BEC130  38 63 C5 54 */	addi r3, r3, d_a_obj_flag__stringBase0@l /* 0x80BEC554@l */
/* 80BEC134  38 63 00 16 */	addi r3, r3, 0x16
/* 80BEC138  38 81 00 08 */	addi r4, r1, 8
/* 80BEC13C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BEC140  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BEC144  3C A5 00 02 */	addis r5, r5, 2
/* 80BEC148  38 C0 00 80 */	li r6, 0x80
/* 80BEC14C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BEC150  4B 45 02 2D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BEC154  3C 80 00 08 */	lis r4, 8
/* 80BEC158  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BEC15C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BEC160  4B 42 8A F5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BEC164  90 7E 05 68 */	stw r3, 0x568(r30)
/* 80BEC168  38 A0 00 00 */	li r5, 0
/* 80BEC16C  3C 60 80 BF */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80BEBFC8@ha */
/* 80BEC170  38 83 BF C8 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x80BEBFC8@l */
/* 80BEC174  48 00 00 30 */	b lbl_80BEC1A4
lbl_80BEC178:
/* 80BEC178  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BEC17C  80 63 00 04 */	lwz r3, 4(r3)
/* 80BEC180  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80BEC184  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80BEC188  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BEC18C  28 03 00 00 */	cmplwi r3, 0
/* 80BEC190  41 82 00 10 */	beq lbl_80BEC1A0
/* 80BEC194  90 83 00 04 */	stw r4, 4(r3)
/* 80BEC198  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BEC19C  93 C3 00 14 */	stw r30, 0x14(r3)
lbl_80BEC1A0:
/* 80BEC1A0  38 A5 00 01 */	addi r5, r5, 1
lbl_80BEC1A4:
/* 80BEC1A4  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80BEC1A8  28 00 00 05 */	cmplwi r0, 5
/* 80BEC1AC  41 80 FF CC */	blt lbl_80BEC178
lbl_80BEC1B0:
/* 80BEC1B0  7F C3 F3 78 */	mr r3, r30
/* 80BEC1B4  4B 44 56 BD */	bl getArcName__12daSetBgObj_cFP10fopAc_ac_c
/* 80BEC1B8  3C 80 80 BF */	lis r4, d_a_obj_flag__stringBase0@ha /* 0x80BEC554@ha */
/* 80BEC1BC  38 84 C5 54 */	addi r4, r4, d_a_obj_flag__stringBase0@l /* 0x80BEC554@l */
/* 80BEC1C0  38 84 00 1E */	addi r4, r4, 0x1e
/* 80BEC1C4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BEC1C8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BEC1CC  3C A5 00 02 */	addis r5, r5, 2
/* 80BEC1D0  38 C0 00 80 */	li r6, 0x80
/* 80BEC1D4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BEC1D8  4B 45 01 A5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BEC1DC  3C 80 00 08 */	lis r4, 8
/* 80BEC1E0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BEC1E4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BEC1E8  4B 42 8A 6D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BEC1EC  90 7E 05 6C */	stw r3, 0x56c(r30)
/* 80BEC1F0  80 1E 05 6C */	lwz r0, 0x56c(r30)
/* 80BEC1F4  28 00 00 00 */	cmplwi r0, 0
/* 80BEC1F8  40 82 00 20 */	bne lbl_80BEC218
/* 80BEC1FC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80BEC200  41 82 00 18 */	beq lbl_80BEC218
/* 80BEC204  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 80BEC208  28 00 00 00 */	cmplwi r0, 0
/* 80BEC20C  40 82 00 0C */	bne lbl_80BEC218
/* 80BEC210  38 60 00 00 */	li r3, 0
/* 80BEC214  48 00 00 08 */	b lbl_80BEC21C
lbl_80BEC218:
/* 80BEC218  38 60 00 01 */	li r3, 1
lbl_80BEC21C:
/* 80BEC21C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BEC220  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BEC224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BEC228  7C 08 03 A6 */	mtlr r0
/* 80BEC22C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BEC230  4E 80 00 20 */	blr 
