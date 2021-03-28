lbl_80587B68:
/* 80587B68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80587B6C  7C 08 02 A6 */	mflr r0
/* 80587B70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80587B74  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80587B78  C0 23 0A 04 */	lfs f1, 0xa04(r3)
/* 80587B7C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80587B80  D0 01 00 08 */	stfs f0, 8(r1)
/* 80587B84  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80587B88  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80587B8C  38 81 00 08 */	addi r4, r1, 8
/* 80587B90  3C A0 80 58 */	lis r5, lit_4479@ha
/* 80587B94  C0 25 7E 34 */	lfs f1, lit_4479@l(r5)
/* 80587B98  3C A0 80 58 */	lis r5, lit_4483@ha
/* 80587B9C  C0 45 7E 44 */	lfs f2, lit_4483@l(r5)
/* 80587BA0  38 63 0A 34 */	addi r3, r3, 0xa34
/* 80587BA4  4B A9 55 68 */	b fopAcM_effHamonSet__FPUlPC4cXyzff
/* 80587BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80587BAC  7C 08 03 A6 */	mtlr r0
/* 80587BB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80587BB4  4E 80 00 20 */	blr 
