lbl_805B6348:
/* 805B6348  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B634C  7C 08 02 A6 */	mflr r0
/* 805B6350  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B6354  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805B6358  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805B635C  39 61 00 30 */	addi r11, r1, 0x30
/* 805B6360  4B DA BE 78 */	b _savegpr_28
/* 805B6364  7C 7C 1B 78 */	mr r28, r3
/* 805B6368  3B A0 00 00 */	li r29, 0
/* 805B636C  3B E0 00 00 */	li r31, 0
/* 805B6370  3C 60 80 5C */	lis r3, lf_pos@ha
/* 805B6374  3B C3 AA 4C */	addi r30, r3, lf_pos@l
/* 805B6378  3C 60 80 5C */	lis r3, lit_5284@ha
/* 805B637C  C3 E3 A6 00 */	lfs f31, lit_5284@l(r3)
lbl_805B6380:
/* 805B6380  7C 9E FA 14 */	add r4, r30, r31
/* 805B6384  C0 04 00 04 */	lfs f0, 4(r4)
/* 805B6388  D0 01 00 08 */	stfs f0, 8(r1)
/* 805B638C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 805B6390  C0 04 00 08 */	lfs f0, 8(r4)
/* 805B6394  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805B6398  38 60 01 0F */	li r3, 0x10f
/* 805B639C  88 84 00 00 */	lbz r4, 0(r4)
/* 805B63A0  38 A1 00 08 */	addi r5, r1, 8
/* 805B63A4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 805B63A8  7C 06 07 74 */	extsb r6, r0
/* 805B63AC  38 E0 00 00 */	li r7, 0
/* 805B63B0  39 00 00 00 */	li r8, 0
/* 805B63B4  39 20 FF FF */	li r9, -1
/* 805B63B8  4B A6 39 E0 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 805B63BC  3B BD 00 01 */	addi r29, r29, 1
/* 805B63C0  2C 1D 00 02 */	cmpwi r29, 2
/* 805B63C4  3B FF 00 0C */	addi r31, r31, 0xc
/* 805B63C8  41 80 FF B8 */	blt lbl_805B6380
/* 805B63CC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805B63D0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805B63D4  39 61 00 30 */	addi r11, r1, 0x30
/* 805B63D8  4B DA BE 4C */	b _restgpr_28
/* 805B63DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B63E0  7C 08 03 A6 */	mtlr r0
/* 805B63E4  38 21 00 40 */	addi r1, r1, 0x40
/* 805B63E8  4E 80 00 20 */	blr 
