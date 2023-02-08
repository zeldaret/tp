lbl_802A6F70:
/* 802A6F70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A6F74  7C 08 02 A6 */	mflr r0
/* 802A6F78  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A6F7C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802A6F80  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 802A6F84  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6F88  48 0B B2 51 */	bl _savegpr_28
/* 802A6F8C  7C 7C 1B 78 */	mr r28, r3
/* 802A6F90  FF E0 08 90 */	fmr f31, f1
/* 802A6F94  3B A0 00 00 */	li r29, 0
/* 802A6F98  3B E0 00 00 */	li r31, 0
/* 802A6F9C  83 C3 00 04 */	lwz r30, 4(r3)
/* 802A6FA0  48 00 00 4C */	b lbl_802A6FEC
lbl_802A6FA4:
/* 802A6FA4  28 1E 00 00 */	cmplwi r30, 0
/* 802A6FA8  41 82 00 24 */	beq lbl_802A6FCC
/* 802A6FAC  7F C3 F3 78 */	mr r3, r30
/* 802A6FB0  7F 84 E3 78 */	mr r4, r28
/* 802A6FB4  7F A5 EB 78 */	mr r5, r29
/* 802A6FB8  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A6FBC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A6FC0  7D 89 03 A6 */	mtctr r12
/* 802A6FC4  4E 80 04 21 */	bctrl 
/* 802A6FC8  48 00 00 0C */	b lbl_802A6FD4
lbl_802A6FCC:
/* 802A6FCC  38 7F 00 08 */	addi r3, r31, 8
/* 802A6FD0  7C 7C 1A 14 */	add r3, r28, r3
lbl_802A6FD4:
/* 802A6FD4  C0 03 00 04 */	lfs f0, 4(r3)
/* 802A6FD8  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 802A6FDC  4C 41 13 82 */	cror 2, 1, 2
/* 802A6FE0  41 82 00 40 */	beq lbl_802A7020
/* 802A6FE4  3B BD 00 01 */	addi r29, r29, 1
/* 802A6FE8  3B FF 00 20 */	addi r31, r31, 0x20
lbl_802A6FEC:
/* 802A6FEC  28 1E 00 00 */	cmplwi r30, 0
/* 802A6FF0  41 82 00 20 */	beq lbl_802A7010
/* 802A6FF4  7F C3 F3 78 */	mr r3, r30
/* 802A6FF8  7F 84 E3 78 */	mr r4, r28
/* 802A6FFC  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A7000  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A7004  7D 89 03 A6 */	mtctr r12
/* 802A7008  4E 80 04 21 */	bctrl 
/* 802A700C  48 00 00 08 */	b lbl_802A7014
lbl_802A7010:
/* 802A7010  A0 7C 00 00 */	lhz r3, 0(r28)
lbl_802A7014:
/* 802A7014  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802A7018  7C 1D 00 00 */	cmpw r29, r0
/* 802A701C  41 80 FF 88 */	blt lbl_802A6FA4
lbl_802A7020:
/* 802A7020  7F A3 EB 78 */	mr r3, r29
/* 802A7024  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 802A7028  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802A702C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A7030  48 0B B1 F5 */	bl _restgpr_28
/* 802A7034  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A7038  7C 08 03 A6 */	mtlr r0
/* 802A703C  38 21 00 30 */	addi r1, r1, 0x30
/* 802A7040  4E 80 00 20 */	blr 
