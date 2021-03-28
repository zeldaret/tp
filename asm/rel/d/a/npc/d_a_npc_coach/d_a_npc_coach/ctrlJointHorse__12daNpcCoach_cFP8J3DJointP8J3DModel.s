lbl_8099DD7C:
/* 8099DD7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099DD80  7C 08 02 A6 */	mflr r0
/* 8099DD84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099DD88  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8099DD8C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8099DD90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099DD94  93 C1 00 08 */	stw r30, 8(r1)
/* 8099DD98  7C 7E 1B 78 */	mr r30, r3
/* 8099DD9C  A0 04 00 14 */	lhz r0, 0x14(r4)
/* 8099DDA0  2C 00 00 0B */	cmpwi r0, 0xb
/* 8099DDA4  41 82 00 0C */	beq lbl_8099DDB0
/* 8099DDA8  2C 00 00 10 */	cmpwi r0, 0x10
/* 8099DDAC  40 82 00 48 */	bne lbl_8099DDF4
lbl_8099DDB0:
/* 8099DDB0  80 1E 0C F4 */	lwz r0, 0xcf4(r30)
/* 8099DDB4  2C 00 00 00 */	cmpwi r0, 0
/* 8099DDB8  41 82 00 3C */	beq lbl_8099DDF4
/* 8099DDBC  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8099DDC0  83 E3 00 14 */	lwz r31, 0x14(r3)
/* 8099DDC4  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8099DDC8  80 84 00 08 */	lwz r4, 8(r4)
/* 8099DDCC  4B 66 FB C4 */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 8099DDD0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8099DDD4  93 E3 00 08 */	stw r31, 8(r3)
/* 8099DDD8  38 00 00 00 */	li r0, 0
/* 8099DDDC  90 03 00 40 */	stw r0, 0x40(r3)
/* 8099DDE0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8099DDE4  C3 E3 00 44 */	lfs f31, 0x44(r3)
/* 8099DDE8  C0 3E 0C E4 */	lfs f1, 0xce4(r30)
/* 8099DDEC  4B 67 41 E0 */	b setAnmRate__15mDoExt_McaMorf2Ff
/* 8099DDF0  D3 FE 0C E4 */	stfs f31, 0xce4(r30)
lbl_8099DDF4:
/* 8099DDF4  38 60 00 01 */	li r3, 1
/* 8099DDF8  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8099DDFC  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8099DE00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099DE04  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099DE08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099DE0C  7C 08 03 A6 */	mtlr r0
/* 8099DE10  38 21 00 20 */	addi r1, r1, 0x20
/* 8099DE14  4E 80 00 20 */	blr 
