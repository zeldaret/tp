lbl_801A6C58:
/* 801A6C58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A6C5C  7C 08 02 A6 */	mflr r0
/* 801A6C60  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A6C64  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801A6C68  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801A6C6C  39 61 00 20 */	addi r11, r1, 0x20
/* 801A6C70  48 1B B5 6D */	bl _savegpr_29
/* 801A6C74  7C 7D 1B 78 */	mr r29, r3
/* 801A6C78  FF E0 08 90 */	fmr f31, f1
/* 801A6C7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A6C80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A6C84  3B C3 4E C4 */	addi r30, r3, 0x4ec4
/* 801A6C88  7F C3 F3 78 */	mr r3, r30
/* 801A6C8C  7F BF 07 74 */	extsb r31, r29
/* 801A6C90  7F E4 FB 78 */	mr r4, r31
/* 801A6C94  4B E7 D6 F1 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A6C98  28 03 00 00 */	cmplwi r3, 0
/* 801A6C9C  41 82 00 90 */	beq lbl_801A6D2C
/* 801A6CA0  7F C3 F3 78 */	mr r3, r30
/* 801A6CA4  7F E4 FB 78 */	mr r4, r31
/* 801A6CA8  4B E7 D6 DD */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A6CAC  81 83 00 00 */	lwz r12, 0(r3)
/* 801A6CB0  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 801A6CB4  7D 89 03 A6 */	mtctr r12
/* 801A6CB8  4E 80 04 21 */	bctrl 
/* 801A6CBC  28 03 00 00 */	cmplwi r3, 0
/* 801A6CC0  40 82 00 0C */	bne lbl_801A6CCC
/* 801A6CC4  48 00 00 68 */	b lbl_801A6D2C
/* 801A6CC8  48 00 00 64 */	b lbl_801A6D2C
lbl_801A6CCC:
/* 801A6CCC  80 03 00 00 */	lwz r0, 0(r3)
/* 801A6CD0  54 00 CE 3E */	rlwinm r0, r0, 0x19, 0x18, 0x1f
/* 801A6CD4  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A6CD8  41 80 00 0C */	blt lbl_801A6CE4
/* 801A6CDC  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A6CE0  48 00 00 28 */	b lbl_801A6D08
lbl_801A6CE4:
/* 801A6CE4  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A6CE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A6CEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A6CF0  3C 00 43 30 */	lis r0, 0x4330
/* 801A6CF4  90 01 00 08 */	stw r0, 8(r1)
/* 801A6CF8  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A6CFC  EC 20 08 28 */	fsubs f1, f0, f1
/* 801A6D00  C0 02 A2 94 */	lfs f0, lit_5192(r2)
/* 801A6D04  EC 21 00 24 */	fdivs f1, f1, f0
lbl_801A6D08:
/* 801A6D08  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A6D0C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 801A6D10  40 82 00 10 */	bne lbl_801A6D20
/* 801A6D14  7F A3 EB 78 */	mr r3, r29
/* 801A6D18  4B FF F5 61 */	bl dKy_setLight_nowroom_common__Fcf
/* 801A6D1C  48 00 00 10 */	b lbl_801A6D2C
lbl_801A6D20:
/* 801A6D20  7F A3 EB 78 */	mr r3, r29
/* 801A6D24  FC 20 F8 90 */	fmr f1, f31
/* 801A6D28  4B FF F5 51 */	bl dKy_setLight_nowroom_common__Fcf
lbl_801A6D2C:
/* 801A6D2C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801A6D30  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801A6D34  39 61 00 20 */	addi r11, r1, 0x20
/* 801A6D38  48 1B B4 F1 */	bl _restgpr_29
/* 801A6D3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A6D40  7C 08 03 A6 */	mtlr r0
/* 801A6D44  38 21 00 30 */	addi r1, r1, 0x30
/* 801A6D48  4E 80 00 20 */	blr 
