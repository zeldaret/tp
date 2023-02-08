lbl_80CBD7B4:
/* 80CBD7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD7B8  7C 08 02 A6 */	mflr r0
/* 80CBD7BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD7C0  3C 80 80 CC */	lis r4, lit_3631@ha /* 0x80CBDA5C@ha */
/* 80CBD7C4  38 84 DA 5C */	addi r4, r4, lit_3631@l /* 0x80CBDA5C@l */
/* 80CBD7C8  C0 E3 05 CC */	lfs f7, 0x5cc(r3)
/* 80CBD7CC  C0 A3 05 C8 */	lfs f5, 0x5c8(r3)
/* 80CBD7D0  C0 83 05 C4 */	lfs f4, 0x5c4(r3)
/* 80CBD7D4  C0 64 00 B0 */	lfs f3, 0xb0(r4)
/* 80CBD7D8  EC 23 01 32 */	fmuls f1, f3, f4
/* 80CBD7DC  C0 04 00 A4 */	lfs f0, 0xa4(r4)
/* 80CBD7E0  EC 40 01 72 */	fmuls f2, f0, f5
/* 80CBD7E4  EC 63 01 F2 */	fmuls f3, f3, f7
/* 80CBD7E8  C0 C4 00 48 */	lfs f6, 0x48(r4)
/* 80CBD7EC  EC 86 01 32 */	fmuls f4, f6, f4
/* 80CBD7F0  C0 04 00 B4 */	lfs f0, 0xb4(r4)
/* 80CBD7F4  EC A0 01 72 */	fmuls f5, f0, f5
/* 80CBD7F8  EC C6 01 F2 */	fmuls f6, f6, f7
/* 80CBD7FC  4B 35 CD 4D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CBD800  38 60 00 04 */	li r3, 4
/* 80CBD804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBD808  7C 08 03 A6 */	mtlr r0
/* 80CBD80C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBD810  4E 80 00 20 */	blr 
