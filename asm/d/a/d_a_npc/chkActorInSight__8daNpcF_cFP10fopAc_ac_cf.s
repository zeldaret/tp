lbl_801539F0:
/* 801539F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801539F4  7C 08 02 A6 */	mflr r0
/* 801539F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801539FC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80153A00  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80153A04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80153A08  FF E0 08 90 */	fmr f31, f1
/* 80153A0C  AB E3 09 04 */	lha r31, 0x904(r3)
/* 80153A10  4B EC 6D 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80153A14  7C 1F 18 50 */	subf r0, r31, r3
/* 80153A18  7C 03 07 34 */	extsh r3, r0
/* 80153A1C  48 21 16 B5 */	bl abs
/* 80153A20  7C 64 07 34 */	extsh r4, r3
/* 80153A24  38 60 00 00 */	li r3, 0
/* 80153A28  C0 02 9A 4C */	lfs f0, lit_6775(r2)
/* 80153A2C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80153A30  41 82 00 24 */	beq lbl_80153A54
/* 80153A34  C0 02 9A 20 */	lfs f0, lit_5239(r2)
/* 80153A38  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80153A3C  FC 00 00 1E */	fctiwz f0, f0
/* 80153A40  D8 01 00 08 */	stfd f0, 8(r1)
/* 80153A44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80153A48  7C 00 07 34 */	extsh r0, r0
/* 80153A4C  7C 04 00 00 */	cmpw r4, r0
/* 80153A50  40 80 00 08 */	bge lbl_80153A58
lbl_80153A54:
/* 80153A54  38 60 00 01 */	li r3, 1
lbl_80153A58:
/* 80153A58  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80153A5C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80153A60  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80153A64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80153A68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80153A6C  7C 08 03 A6 */	mtlr r0
/* 80153A70  38 21 00 30 */	addi r1, r1, 0x30
/* 80153A74  4E 80 00 20 */	blr 
