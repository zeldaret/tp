lbl_809D68C8:
/* 809D68C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809D68CC  7C 08 02 A6 */	mflr r0
/* 809D68D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 809D68D4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809D68D8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809D68DC  39 61 00 50 */	addi r11, r1, 0x50
/* 809D68E0  4B 98 B8 F8 */	b _savegpr_28
/* 809D68E4  7C 7F 1B 78 */	mr r31, r3
/* 809D68E8  7C 80 23 78 */	mr r0, r4
/* 809D68EC  7C BC 2B 78 */	mr r28, r5
/* 809D68F0  7C DD 33 78 */	mr r29, r6
/* 809D68F4  FF E0 08 90 */	fmr f31, f1
/* 809D68F8  7C FE 3B 78 */	mr r30, r7
/* 809D68FC  38 A0 00 00 */	li r5, 0
/* 809D6900  80 83 00 20 */	lwz r4, 0x20(r3)
/* 809D6904  28 04 00 00 */	cmplwi r4, 0
/* 809D6908  41 82 00 44 */	beq lbl_809D694C
/* 809D690C  38 61 00 08 */	addi r3, r1, 8
/* 809D6910  7C 05 03 78 */	mr r5, r0
/* 809D6914  4B 89 02 20 */	b __mi__4cXyzCFRC3Vec
/* 809D6918  C0 21 00 08 */	lfs f1, 8(r1)
/* 809D691C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 809D6920  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 809D6924  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809D6928  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 809D692C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 809D6930  4B 89 0D 44 */	b cM_atan2s__Fff
/* 809D6934  7C BC 18 50 */	subf r5, r28, r3
/* 809D6938  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 809D693C  7C 1C 00 50 */	subf r0, r28, r0
/* 809D6940  7C 00 07 34 */	extsh r0, r0
/* 809D6944  7C A0 28 50 */	subf r5, r0, r5
/* 809D6948  7C A5 F2 14 */	add r5, r5, r30
lbl_809D694C:
/* 809D694C  2C 1D 00 00 */	cmpwi r29, 0
/* 809D6950  41 82 00 0C */	beq lbl_809D695C
/* 809D6954  7C 05 00 D0 */	neg r0, r5
/* 809D6958  7C 05 07 34 */	extsh r5, r0
lbl_809D695C:
/* 809D695C  3C 60 80 9D */	lis r3, lit_4373@ha
/* 809D6960  C0 63 6E 2C */	lfs f3, lit_4373@l(r3)
/* 809D6964  EC 83 F8 24 */	fdivs f4, f3, f31
/* 809D6968  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 809D696C  3C 60 80 9D */	lis r3, lit_4800@ha
/* 809D6970  C8 43 6E 40 */	lfd f2, lit_4800@l(r3)
/* 809D6974  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809D6978  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D697C  3C 60 43 30 */	lis r3, 0x4330
/* 809D6980  90 61 00 20 */	stw r3, 0x20(r1)
/* 809D6984  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 809D6988  EC 20 10 28 */	fsubs f1, f0, f2
/* 809D698C  EC 03 20 28 */	fsubs f0, f3, f4
/* 809D6990  EC 21 00 32 */	fmuls f1, f1, f0
/* 809D6994  7C A0 07 34 */	extsh r0, r5
/* 809D6998  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809D699C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809D69A0  90 61 00 28 */	stw r3, 0x28(r1)
/* 809D69A4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809D69A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 809D69AC  EC 00 01 32 */	fmuls f0, f0, f4
/* 809D69B0  EC 01 00 2A */	fadds f0, f1, f0
/* 809D69B4  FC 00 00 1E */	fctiwz f0, f0
/* 809D69B8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 809D69BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809D69C0  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 809D69C4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809D69C8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809D69CC  39 61 00 50 */	addi r11, r1, 0x50
/* 809D69D0  4B 98 B8 54 */	b _restgpr_28
/* 809D69D4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809D69D8  7C 08 03 A6 */	mtlr r0
/* 809D69DC  38 21 00 60 */	addi r1, r1, 0x60
/* 809D69E0  4E 80 00 20 */	blr 
