lbl_80A0DDC8:
/* 80A0DDC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A0DDCC  7C 08 02 A6 */	mflr r0
/* 80A0DDD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A0DDD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A0DDD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A0DDDC  7C 7F 1B 78 */	mr r31, r3
/* 80A0DDE0  38 60 00 54 */	li r3, 0x54
/* 80A0DDE4  4B 8C 0E 69 */	bl __nw__FUl
/* 80A0DDE8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A0DDEC  41 82 00 7C */	beq lbl_80A0DE68
/* 80A0DDF0  3C 60 80 A1 */	lis r3, d_a_npc_inko__stringBase0@ha /* 0x80A0E0CC@ha */
/* 80A0DDF4  38 63 E0 CC */	addi r3, r3, d_a_npc_inko__stringBase0@l /* 0x80A0E0CC@l */
/* 80A0DDF8  38 80 00 08 */	li r4, 8
/* 80A0DDFC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0DE00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0DE04  3C A5 00 02 */	addis r5, r5, 2
/* 80A0DE08  38 C0 00 80 */	li r6, 0x80
/* 80A0DE0C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A0DE10  4B 62 E4 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A0DE14  7C 64 1B 78 */	mr r4, r3
/* 80A0DE18  38 00 00 01 */	li r0, 1
/* 80A0DE1C  90 01 00 08 */	stw r0, 8(r1)
/* 80A0DE20  38 00 00 00 */	li r0, 0
/* 80A0DE24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A0DE28  3C 00 00 08 */	lis r0, 8
/* 80A0DE2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A0DE30  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80A0DE34  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80A0DE38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0DE3C  7F C3 F3 78 */	mr r3, r30
/* 80A0DE40  38 A0 00 00 */	li r5, 0
/* 80A0DE44  38 C0 00 00 */	li r6, 0
/* 80A0DE48  38 E0 00 00 */	li r7, 0
/* 80A0DE4C  39 00 00 00 */	li r8, 0
/* 80A0DE50  3D 20 80 A1 */	lis r9, lit_4335@ha /* 0x80A0E034@ha */
/* 80A0DE54  C0 29 E0 34 */	lfs f1, lit_4335@l(r9)  /* 0x80A0E034@l */
/* 80A0DE58  39 20 00 00 */	li r9, 0
/* 80A0DE5C  39 40 FF FF */	li r10, -1
/* 80A0DE60  4B 60 1D ED */	bl __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80A0DE64  7C 7E 1B 78 */	mr r30, r3
lbl_80A0DE68:
/* 80A0DE68  93 DF 05 F0 */	stw r30, 0x5f0(r31)
/* 80A0DE6C  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80A0DE70  28 03 00 00 */	cmplwi r3, 0
/* 80A0DE74  41 82 00 10 */	beq lbl_80A0DE84
/* 80A0DE78  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A0DE7C  28 05 00 00 */	cmplwi r5, 0
/* 80A0DE80  40 82 00 0C */	bne lbl_80A0DE8C
lbl_80A0DE84:
/* 80A0DE84  38 60 00 00 */	li r3, 0
/* 80A0DE88  48 00 00 68 */	b lbl_80A0DEF0
lbl_80A0DE8C:
/* 80A0DE8C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80A0DE90  38 E0 00 00 */	li r7, 0
/* 80A0DE94  3C 60 80 A1 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80A0C998@ha */
/* 80A0DE98  38 83 C9 98 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x80A0C998@l */
/* 80A0DE9C  48 00 00 18 */	b lbl_80A0DEB4
lbl_80A0DEA0:
/* 80A0DEA0  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80A0DEA4  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80A0DEA8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A0DEAC  90 83 00 04 */	stw r4, 4(r3)
/* 80A0DEB0  38 E7 00 01 */	addi r7, r7, 1
lbl_80A0DEB4:
/* 80A0DEB4  80 C5 00 04 */	lwz r6, 4(r5)
/* 80A0DEB8  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80A0DEBC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80A0DEC0  7C 00 18 40 */	cmplw r0, r3
/* 80A0DEC4  41 80 FF DC */	blt lbl_80A0DEA0
/* 80A0DEC8  38 05 00 24 */	addi r0, r5, 0x24
/* 80A0DECC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80A0DED0  38 7F 05 74 */	addi r3, r31, 0x574
/* 80A0DED4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A0DED8  38 A0 00 02 */	li r5, 2
/* 80A0DEDC  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80A0DEE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A0DEE4  7D 89 03 A6 */	mtctr r12
/* 80A0DEE8  4E 80 04 21 */	bctrl 
/* 80A0DEEC  38 60 00 01 */	li r3, 1
lbl_80A0DEF0:
/* 80A0DEF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A0DEF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A0DEF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A0DEFC  7C 08 03 A6 */	mtlr r0
/* 80A0DF00  38 21 00 20 */	addi r1, r1, 0x20
/* 80A0DF04  4E 80 00 20 */	blr 
