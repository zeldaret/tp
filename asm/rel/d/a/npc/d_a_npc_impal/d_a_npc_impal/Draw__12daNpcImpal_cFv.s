lbl_80A0857C:
/* 80A0857C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A08580  7C 08 02 A6 */	mflr r0
/* 80A08584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A08588  88 03 0D E9 */	lbz r0, 0xde9(r3)
/* 80A0858C  28 00 00 00 */	cmplwi r0, 0
/* 80A08590  40 82 00 0C */	bne lbl_80A0859C
/* 80A08594  38 60 00 01 */	li r3, 1
/* 80A08598  48 00 00 44 */	b lbl_80A085DC
lbl_80A0859C:
/* 80A0859C  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80A085A0  80 84 00 04 */	lwz r4, 4(r4)
/* 80A085A4  80 84 00 04 */	lwz r4, 4(r4)
/* 80A085A8  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80A085AC  80 84 00 08 */	lwz r4, 8(r4)
/* 80A085B0  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80A085B4  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80A085B8  38 80 00 00 */	li r4, 0
/* 80A085BC  38 A0 00 00 */	li r5, 0
/* 80A085C0  3C C0 80 A1 */	lis r6, m__18daNpcImpal_Param_c@ha
/* 80A085C4  38 C6 C2 70 */	addi r6, r6, m__18daNpcImpal_Param_c@l
/* 80A085C8  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80A085CC  38 C0 00 00 */	li r6, 0
/* 80A085D0  38 E0 00 00 */	li r7, 0
/* 80A085D4  4B 74 9C D8 */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 80A085D8  38 60 00 01 */	li r3, 1
lbl_80A085DC:
/* 80A085DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A085E0  7C 08 03 A6 */	mtlr r0
/* 80A085E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A085E8  4E 80 00 20 */	blr 
