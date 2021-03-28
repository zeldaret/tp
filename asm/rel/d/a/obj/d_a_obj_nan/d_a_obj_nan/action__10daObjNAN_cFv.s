lbl_80CA270C:
/* 80CA270C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA2710  7C 08 02 A6 */	mflr r0
/* 80CA2714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA2718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA271C  7C 7F 1B 78 */	mr r31, r3
/* 80CA2720  39 9F 07 B8 */	addi r12, r31, 0x7b8
/* 80CA2724  4B 6B F9 60 */	b __ptmf_scall
/* 80CA2728  60 00 00 00 */	nop 
/* 80CA272C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80CA2730  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CA2734  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80CA2738  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80CA273C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80CA2740  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CA2744  88 1F 07 FA */	lbz r0, 0x7fa(r31)
/* 80CA2748  28 00 00 00 */	cmplwi r0, 0
/* 80CA274C  40 82 00 0C */	bne lbl_80CA2758
/* 80CA2750  7F E3 FB 78 */	mr r3, r31
/* 80CA2754  4B 4B B9 24 */	b Insect_GetDemoMain__9dInsect_cFv
lbl_80CA2758:
/* 80CA2758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA275C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA2760  7C 08 03 A6 */	mtlr r0
/* 80CA2764  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA2768  4E 80 00 20 */	blr 
