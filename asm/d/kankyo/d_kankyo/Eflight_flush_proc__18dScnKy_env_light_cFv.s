lbl_801A4F64:
/* 801A4F64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801A4F68  7C 08 02 A6 */	mflr r0
/* 801A4F6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A4F70  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801A4F74  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801A4F78  39 61 00 30 */	addi r11, r1, 0x30
/* 801A4F7C  48 1B D2 61 */	bl _savegpr_29
/* 801A4F80  7C 7E 1B 78 */	mr r30, r3
/* 801A4F84  3C 60 80 3C */	lis r3, cNullVec__6Z2Calc@ha
/* 801A4F88  38 63 BD B8 */	addi r3, r3, cNullVec__6Z2Calc@l
/* 801A4F8C  80 1E 07 A8 */	lwz r0, 0x7a8(r30)
/* 801A4F90  2C 00 00 00 */	cmpwi r0, 0
/* 801A4F94  40 82 00 14 */	bne lbl_801A4FA8
/* 801A4F98  3B E3 02 B8 */	addi r31, r3, 0x2b8
/* 801A4F9C  C0 22 A2 94 */	lfs f1, lit_5192(r2)
/* 801A4FA0  C0 02 A2 B8 */	lfs f0, lit_5365(r2)
/* 801A4FA4  48 00 00 28 */	b lbl_801A4FCC
lbl_801A4FA8:
/* 801A4FA8  2C 00 00 01 */	cmpwi r0, 1
/* 801A4FAC  40 82 00 14 */	bne lbl_801A4FC0
/* 801A4FB0  3B E3 02 C8 */	addi r31, r3, 0x2c8
/* 801A4FB4  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801A4FB8  C0 02 A2 B8 */	lfs f0, lit_5365(r2)
/* 801A4FBC  48 00 00 10 */	b lbl_801A4FCC
lbl_801A4FC0:
/* 801A4FC0  3B E3 02 D8 */	addi r31, r3, 0x2d8
/* 801A4FC4  C0 22 A2 94 */	lfs f1, lit_5192(r2)
/* 801A4FC8  C0 02 A3 20 */	lfs f0, lit_6764(r2)
lbl_801A4FCC:
/* 801A4FCC  88 1E 07 A4 */	lbz r0, 0x7a4(r30)
/* 801A4FD0  2C 00 00 02 */	cmpwi r0, 2
/* 801A4FD4  41 82 00 68 */	beq lbl_801A503C
/* 801A4FD8  40 80 00 14 */	bge lbl_801A4FEC
/* 801A4FDC  2C 00 00 00 */	cmpwi r0, 0
/* 801A4FE0  41 82 01 6C */	beq lbl_801A514C
/* 801A4FE4  40 80 00 18 */	bge lbl_801A4FFC
/* 801A4FE8  48 00 01 64 */	b lbl_801A514C
lbl_801A4FEC:
/* 801A4FEC  2C 00 00 04 */	cmpwi r0, 4
/* 801A4FF0  41 82 01 4C */	beq lbl_801A513C
/* 801A4FF4  40 80 01 58 */	bge lbl_801A514C
/* 801A4FF8  48 00 01 30 */	b lbl_801A5128
lbl_801A4FFC:
/* 801A4FFC  38 00 00 00 */	li r0, 0
/* 801A5000  98 1E 07 A5 */	stb r0, 0x7a5(r30)
/* 801A5004  88 1F 00 01 */	lbz r0, 1(r31)
/* 801A5008  B0 1E 07 B8 */	sth r0, 0x7b8(r30)
/* 801A500C  88 1F 00 02 */	lbz r0, 2(r31)
/* 801A5010  B0 1E 07 BA */	sth r0, 0x7ba(r30)
/* 801A5014  88 1F 00 03 */	lbz r0, 3(r31)
/* 801A5018  B0 1E 07 BC */	sth r0, 0x7bc(r30)
/* 801A501C  D0 1E 07 C0 */	stfs f0, 0x7c0(r30)
/* 801A5020  D0 3E 07 C4 */	stfs f1, 0x7c4(r30)
/* 801A5024  38 7E 07 AC */	addi r3, r30, 0x7ac
/* 801A5028  48 00 29 55 */	bl dKy_efplight_set__FP15LIGHT_INFLUENCE
/* 801A502C  88 7E 07 A4 */	lbz r3, 0x7a4(r30)
/* 801A5030  38 03 00 01 */	addi r0, r3, 1
/* 801A5034  98 1E 07 A4 */	stb r0, 0x7a4(r30)
/* 801A5038  48 00 01 14 */	b lbl_801A514C
lbl_801A503C:
/* 801A503C  3B A0 00 00 */	li r29, 0
/* 801A5040  38 00 00 03 */	li r0, 3
/* 801A5044  7C 09 03 A6 */	mtctr r0
lbl_801A5048:
/* 801A5048  88 1E 07 A5 */	lbz r0, 0x7a5(r30)
/* 801A504C  7C BF EA 14 */	add r5, r31, r29
/* 801A5050  88 C5 00 00 */	lbz r6, 0(r5)
/* 801A5054  7C 00 30 40 */	cmplw r0, r6
/* 801A5058  41 80 00 9C */	blt lbl_801A50F4
/* 801A505C  88 85 00 04 */	lbz r4, 4(r5)
/* 801A5060  7C 00 20 40 */	cmplw r0, r4
/* 801A5064  41 81 00 90 */	bgt lbl_801A50F4
/* 801A5068  C0 62 A2 48 */	lfs f3, lit_4505(r2)
/* 801A506C  7C 00 20 50 */	subf r0, r0, r4
/* 801A5070  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801A5074  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A5078  90 01 00 0C */	stw r0, 0xc(r1)
/* 801A507C  3C 60 43 30 */	lis r3, 0x4330
/* 801A5080  90 61 00 08 */	stw r3, 8(r1)
/* 801A5084  C8 01 00 08 */	lfd f0, 8(r1)
/* 801A5088  EC 20 10 28 */	fsubs f1, f0, f2
/* 801A508C  7C 06 20 50 */	subf r0, r6, r4
/* 801A5090  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A5094  90 01 00 14 */	stw r0, 0x14(r1)
/* 801A5098  90 61 00 10 */	stw r3, 0x10(r1)
/* 801A509C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801A50A0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801A50A4  EC 01 00 24 */	fdivs f0, f1, f0
/* 801A50A8  EF E3 00 28 */	fsubs f31, f3, f0
/* 801A50AC  88 65 00 01 */	lbz r3, 1(r5)
/* 801A50B0  88 85 00 05 */	lbz r4, 5(r5)
/* 801A50B4  FC 20 F8 90 */	fmr f1, f31
/* 801A50B8  4B FF 84 69 */	bl u8_data_ratio_set__FUcUcf
/* 801A50BC  B0 7E 07 B8 */	sth r3, 0x7b8(r30)
/* 801A50C0  7C 9F EA 14 */	add r4, r31, r29
/* 801A50C4  88 64 00 02 */	lbz r3, 2(r4)
/* 801A50C8  88 84 00 06 */	lbz r4, 6(r4)
/* 801A50CC  FC 20 F8 90 */	fmr f1, f31
/* 801A50D0  4B FF 84 51 */	bl u8_data_ratio_set__FUcUcf
/* 801A50D4  B0 7E 07 BA */	sth r3, 0x7ba(r30)
/* 801A50D8  7C 9F EA 14 */	add r4, r31, r29
/* 801A50DC  88 64 00 03 */	lbz r3, 3(r4)
/* 801A50E0  88 84 00 07 */	lbz r4, 7(r4)
/* 801A50E4  FC 20 F8 90 */	fmr f1, f31
/* 801A50E8  4B FF 84 39 */	bl u8_data_ratio_set__FUcUcf
/* 801A50EC  B0 7E 07 BC */	sth r3, 0x7bc(r30)
/* 801A50F0  48 00 00 0C */	b lbl_801A50FC
lbl_801A50F4:
/* 801A50F4  3B BD 00 04 */	addi r29, r29, 4
/* 801A50F8  42 00 FF 50 */	bdnz lbl_801A5048
lbl_801A50FC:
/* 801A50FC  88 7E 07 A5 */	lbz r3, 0x7a5(r30)
/* 801A5100  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 801A5104  7C 03 00 40 */	cmplw r3, r0
/* 801A5108  40 81 00 10 */	ble lbl_801A5118
/* 801A510C  88 7E 07 A4 */	lbz r3, 0x7a4(r30)
/* 801A5110  38 03 00 01 */	addi r0, r3, 1
/* 801A5114  98 1E 07 A4 */	stb r0, 0x7a4(r30)
lbl_801A5118:
/* 801A5118  88 7E 07 A5 */	lbz r3, 0x7a5(r30)
/* 801A511C  38 03 00 01 */	addi r0, r3, 1
/* 801A5120  98 1E 07 A5 */	stb r0, 0x7a5(r30)
/* 801A5124  48 00 00 28 */	b lbl_801A514C
lbl_801A5128:
/* 801A5128  38 7E 07 AC */	addi r3, r30, 0x7ac
/* 801A512C  48 00 28 D5 */	bl dKy_efplight_cut__FP15LIGHT_INFLUENCE
/* 801A5130  38 00 00 00 */	li r0, 0
/* 801A5134  98 1E 07 A4 */	stb r0, 0x7a4(r30)
/* 801A5138  48 00 00 14 */	b lbl_801A514C
lbl_801A513C:
/* 801A513C  38 7E 07 AC */	addi r3, r30, 0x7ac
/* 801A5140  48 00 28 C1 */	bl dKy_efplight_cut__FP15LIGHT_INFLUENCE
/* 801A5144  38 00 00 01 */	li r0, 1
/* 801A5148  98 1E 07 A4 */	stb r0, 0x7a4(r30)
lbl_801A514C:
/* 801A514C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801A5150  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801A5154  39 61 00 30 */	addi r11, r1, 0x30
/* 801A5158  48 1B D0 D1 */	bl _restgpr_29
/* 801A515C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A5160  7C 08 03 A6 */	mtlr r0
/* 801A5164  38 21 00 40 */	addi r1, r1, 0x40
/* 801A5168  4E 80 00 20 */	blr 
