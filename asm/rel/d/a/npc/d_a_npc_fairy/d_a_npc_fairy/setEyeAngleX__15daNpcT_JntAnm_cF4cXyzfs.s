lbl_809B8BBC:
/* 809B8BBC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809B8BC0  7C 08 02 A6 */	mflr r0
/* 809B8BC4  90 01 00 74 */	stw r0, 0x74(r1)
/* 809B8BC8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809B8BCC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809B8BD0  39 61 00 60 */	addi r11, r1, 0x60
/* 809B8BD4  4B 9A 96 08 */	b _savegpr_29
/* 809B8BD8  7C 7F 1B 78 */	mr r31, r3
/* 809B8BDC  7C 80 23 78 */	mr r0, r4
/* 809B8BE0  FF E0 08 90 */	fmr f31, f1
/* 809B8BE4  7C BD 2B 78 */	mr r29, r5
/* 809B8BE8  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha
/* 809B8BEC  3B C3 92 E4 */	addi r30, r3, m__19daNpc_Fairy_Param_c@l
/* 809B8BF0  38 A0 00 00 */	li r5, 0
/* 809B8BF4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 809B8BF8  28 04 00 00 */	cmplwi r4, 0
/* 809B8BFC  41 82 01 40 */	beq lbl_809B8D3C
/* 809B8C00  38 61 00 18 */	addi r3, r1, 0x18
/* 809B8C04  7C 05 03 78 */	mr r5, r0
/* 809B8C08  4B 8A DF 2C */	b __mi__4cXyzCFRC3Vec
/* 809B8C0C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 809B8C10  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 809B8C14  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809B8C18  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809B8C1C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 809B8C20  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 809B8C24  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 809B8C28  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809B8C2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B8C30  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809B8C34  38 61 00 0C */	addi r3, r1, 0xc
/* 809B8C38  4B 98 E5 00 */	b PSVECSquareMag
/* 809B8C3C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809B8C40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B8C44  40 81 00 58 */	ble lbl_809B8C9C
/* 809B8C48  FC 00 08 34 */	frsqrte f0, f1
/* 809B8C4C  C8 9E 01 60 */	lfd f4, 0x160(r30)
/* 809B8C50  FC 44 00 32 */	fmul f2, f4, f0
/* 809B8C54  C8 7E 01 68 */	lfd f3, 0x168(r30)
/* 809B8C58  FC 00 00 32 */	fmul f0, f0, f0
/* 809B8C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 809B8C60  FC 03 00 28 */	fsub f0, f3, f0
/* 809B8C64  FC 02 00 32 */	fmul f0, f2, f0
/* 809B8C68  FC 44 00 32 */	fmul f2, f4, f0
/* 809B8C6C  FC 00 00 32 */	fmul f0, f0, f0
/* 809B8C70  FC 01 00 32 */	fmul f0, f1, f0
/* 809B8C74  FC 03 00 28 */	fsub f0, f3, f0
/* 809B8C78  FC 02 00 32 */	fmul f0, f2, f0
/* 809B8C7C  FC 44 00 32 */	fmul f2, f4, f0
/* 809B8C80  FC 00 00 32 */	fmul f0, f0, f0
/* 809B8C84  FC 01 00 32 */	fmul f0, f1, f0
/* 809B8C88  FC 03 00 28 */	fsub f0, f3, f0
/* 809B8C8C  FC 02 00 32 */	fmul f0, f2, f0
/* 809B8C90  FC 41 00 32 */	fmul f2, f1, f0
/* 809B8C94  FC 40 10 18 */	frsp f2, f2
/* 809B8C98  48 00 00 90 */	b lbl_809B8D28
lbl_809B8C9C:
/* 809B8C9C  C8 1E 01 70 */	lfd f0, 0x170(r30)
/* 809B8CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809B8CA4  40 80 00 10 */	bge lbl_809B8CB4
/* 809B8CA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809B8CAC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809B8CB0  48 00 00 78 */	b lbl_809B8D28
lbl_809B8CB4:
/* 809B8CB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 809B8CB8  80 81 00 08 */	lwz r4, 8(r1)
/* 809B8CBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809B8CC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 809B8CC4  7C 03 00 00 */	cmpw r3, r0
/* 809B8CC8  41 82 00 14 */	beq lbl_809B8CDC
/* 809B8CCC  40 80 00 40 */	bge lbl_809B8D0C
/* 809B8CD0  2C 03 00 00 */	cmpwi r3, 0
/* 809B8CD4  41 82 00 20 */	beq lbl_809B8CF4
/* 809B8CD8  48 00 00 34 */	b lbl_809B8D0C
lbl_809B8CDC:
/* 809B8CDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809B8CE0  41 82 00 0C */	beq lbl_809B8CEC
/* 809B8CE4  38 00 00 01 */	li r0, 1
/* 809B8CE8  48 00 00 28 */	b lbl_809B8D10
lbl_809B8CEC:
/* 809B8CEC  38 00 00 02 */	li r0, 2
/* 809B8CF0  48 00 00 20 */	b lbl_809B8D10
lbl_809B8CF4:
/* 809B8CF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809B8CF8  41 82 00 0C */	beq lbl_809B8D04
/* 809B8CFC  38 00 00 05 */	li r0, 5
/* 809B8D00  48 00 00 10 */	b lbl_809B8D10
lbl_809B8D04:
/* 809B8D04  38 00 00 03 */	li r0, 3
/* 809B8D08  48 00 00 08 */	b lbl_809B8D10
lbl_809B8D0C:
/* 809B8D0C  38 00 00 04 */	li r0, 4
lbl_809B8D10:
/* 809B8D10  2C 00 00 01 */	cmpwi r0, 1
/* 809B8D14  40 82 00 10 */	bne lbl_809B8D24
/* 809B8D18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809B8D1C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 809B8D20  48 00 00 08 */	b lbl_809B8D28
lbl_809B8D24:
/* 809B8D24  FC 40 08 90 */	fmr f2, f1
lbl_809B8D28:
/* 809B8D28  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 809B8D2C  4B 8A E9 48 */	b cM_atan2s__Fff
/* 809B8D30  7C 03 00 D0 */	neg r0, r3
/* 809B8D34  7C 05 07 34 */	extsh r5, r0
/* 809B8D38  7C A5 EA 14 */	add r5, r5, r29
lbl_809B8D3C:
/* 809B8D3C  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 809B8D40  7C A5 02 14 */	add r5, r5, r0
/* 809B8D44  C0 7E 00 94 */	lfs f3, 0x94(r30)
/* 809B8D48  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809B8D4C  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 809B8D50  C8 5E 01 58 */	lfd f2, 0x158(r30)
/* 809B8D54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809B8D58  90 01 00 34 */	stw r0, 0x34(r1)
/* 809B8D5C  3C 60 43 30 */	lis r3, 0x4330
/* 809B8D60  90 61 00 30 */	stw r3, 0x30(r1)
/* 809B8D64  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 809B8D68  EC 20 10 28 */	fsubs f1, f0, f2
/* 809B8D6C  EC 03 20 28 */	fsubs f0, f3, f4
/* 809B8D70  EC 21 00 32 */	fmuls f1, f1, f0
/* 809B8D74  7C A0 07 34 */	extsh r0, r5
/* 809B8D78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809B8D7C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809B8D80  90 61 00 38 */	stw r3, 0x38(r1)
/* 809B8D84  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809B8D88  EC 00 10 28 */	fsubs f0, f0, f2
/* 809B8D8C  EC 00 01 32 */	fmuls f0, f0, f4
/* 809B8D90  EC 01 00 2A */	fadds f0, f1, f0
/* 809B8D94  FC 00 00 1E */	fctiwz f0, f0
/* 809B8D98  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 809B8D9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809B8DA0  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 809B8DA4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 809B8DA8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 809B8DAC  39 61 00 60 */	addi r11, r1, 0x60
/* 809B8DB0  4B 9A 94 78 */	b _restgpr_29
/* 809B8DB4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809B8DB8  7C 08 03 A6 */	mtlr r0
/* 809B8DBC  38 21 00 70 */	addi r1, r1, 0x70
/* 809B8DC0  4E 80 00 20 */	blr 
