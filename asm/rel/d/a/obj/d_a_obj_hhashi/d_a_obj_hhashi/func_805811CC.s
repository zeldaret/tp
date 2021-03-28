lbl_805811CC:
/* 805811CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805811D0  7C 08 02 A6 */	mflr r0
/* 805811D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805811D8  3C 80 80 58 */	lis r4, ccCylSrc@ha
/* 805811DC  38 84 14 AC */	addi r4, r4, ccCylSrc@l
/* 805811E0  C0 24 00 EC */	lfs f1, 0xec(r4)
/* 805811E4  C0 44 00 F0 */	lfs f2, 0xf0(r4)
/* 805811E8  FC 60 08 90 */	fmr f3, f1
/* 805811EC  C0 84 00 F4 */	lfs f4, 0xf4(r4)
/* 805811F0  C0 A4 00 F8 */	lfs f5, 0xf8(r4)
/* 805811F4  FC C0 20 90 */	fmr f6, f4
/* 805811F8  4B A9 93 50 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 805811FC  38 60 00 04 */	li r3, 4
/* 80581200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581204  7C 08 03 A6 */	mtlr r0
/* 80581208  38 21 00 10 */	addi r1, r1, 0x10
/* 8058120C  4E 80 00 20 */	blr 
