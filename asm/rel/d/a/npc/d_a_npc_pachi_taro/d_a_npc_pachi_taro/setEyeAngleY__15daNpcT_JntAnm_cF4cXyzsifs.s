lbl_80AA0F40:
/* 80AA0F40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AA0F44  7C 08 02 A6 */	mflr r0
/* 80AA0F48  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AA0F4C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80AA0F50  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80AA0F54  39 61 00 50 */	addi r11, r1, 0x50
/* 80AA0F58  4B 8C 12 80 */	b _savegpr_28
/* 80AA0F5C  7C 7F 1B 78 */	mr r31, r3
/* 80AA0F60  7C 80 23 78 */	mr r0, r4
/* 80AA0F64  7C BC 2B 78 */	mr r28, r5
/* 80AA0F68  7C DD 33 78 */	mr r29, r6
/* 80AA0F6C  FF E0 08 90 */	fmr f31, f1
/* 80AA0F70  7C FE 3B 78 */	mr r30, r7
/* 80AA0F74  38 A0 00 00 */	li r5, 0
/* 80AA0F78  80 83 00 20 */	lwz r4, 0x20(r3)
/* 80AA0F7C  28 04 00 00 */	cmplwi r4, 0
/* 80AA0F80  41 82 00 44 */	beq lbl_80AA0FC4
/* 80AA0F84  38 61 00 08 */	addi r3, r1, 8
/* 80AA0F88  7C 05 03 78 */	mr r5, r0
/* 80AA0F8C  4B 7C 5B A8 */	b __mi__4cXyzCFRC3Vec
/* 80AA0F90  C0 21 00 08 */	lfs f1, 8(r1)
/* 80AA0F94  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80AA0F98  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80AA0F9C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AA0FA0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80AA0FA4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80AA0FA8  4B 7C 66 CC */	b cM_atan2s__Fff
/* 80AA0FAC  7C BC 18 50 */	subf r5, r28, r3
/* 80AA0FB0  A8 1F 01 52 */	lha r0, 0x152(r31)
/* 80AA0FB4  7C 1C 00 50 */	subf r0, r28, r0
/* 80AA0FB8  7C 00 07 34 */	extsh r0, r0
/* 80AA0FBC  7C A0 28 50 */	subf r5, r0, r5
/* 80AA0FC0  7C A5 F2 14 */	add r5, r5, r30
lbl_80AA0FC4:
/* 80AA0FC4  2C 1D 00 00 */	cmpwi r29, 0
/* 80AA0FC8  41 82 00 0C */	beq lbl_80AA0FD4
/* 80AA0FCC  7C 05 00 D0 */	neg r0, r5
/* 80AA0FD0  7C 05 07 34 */	extsh r5, r0
lbl_80AA0FD4:
/* 80AA0FD4  3C 60 80 AA */	lis r3, lit_4548@ha
/* 80AA0FD8  C0 63 16 B8 */	lfs f3, lit_4548@l(r3)
/* 80AA0FDC  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80AA0FE0  A8 1F 01 34 */	lha r0, 0x134(r31)
/* 80AA0FE4  3C 60 80 AA */	lis r3, lit_4953@ha
/* 80AA0FE8  C8 43 16 CC */	lfd f2, lit_4953@l(r3)
/* 80AA0FEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AA0FF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA0FF4  3C 60 43 30 */	lis r3, 0x4330
/* 80AA0FF8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AA0FFC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80AA1000  EC 20 10 28 */	fsubs f1, f0, f2
/* 80AA1004  EC 03 20 28 */	fsubs f0, f3, f4
/* 80AA1008  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AA100C  7C A0 07 34 */	extsh r0, r5
/* 80AA1010  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AA1014  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80AA1018  90 61 00 28 */	stw r3, 0x28(r1)
/* 80AA101C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80AA1020  EC 00 10 28 */	fsubs f0, f0, f2
/* 80AA1024  EC 00 01 32 */	fmuls f0, f0, f4
/* 80AA1028  EC 01 00 2A */	fadds f0, f1, f0
/* 80AA102C  FC 00 00 1E */	fctiwz f0, f0
/* 80AA1030  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80AA1034  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AA1038  B0 1F 01 2E */	sth r0, 0x12e(r31)
/* 80AA103C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80AA1040  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80AA1044  39 61 00 50 */	addi r11, r1, 0x50
/* 80AA1048  4B 8C 11 DC */	b _restgpr_28
/* 80AA104C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AA1050  7C 08 03 A6 */	mtlr r0
/* 80AA1054  38 21 00 60 */	addi r1, r1, 0x60
/* 80AA1058  4E 80 00 20 */	blr 
