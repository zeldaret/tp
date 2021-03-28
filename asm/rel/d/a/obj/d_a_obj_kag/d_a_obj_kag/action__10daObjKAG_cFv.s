lbl_80C303C4:
/* 80C303C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C303C8  7C 08 02 A6 */	mflr r0
/* 80C303CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C303D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C303D4  7C 7F 1B 78 */	mr r31, r3
/* 80C303D8  39 9F 08 24 */	addi r12, r31, 0x824
/* 80C303DC  4B 73 1C A8 */	b __ptmf_scall
/* 80C303E0  60 00 00 00 */	nop 
/* 80C303E4  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80C303E8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80C303EC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80C303F0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80C303F4  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80C303F8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80C303FC  88 1F 08 5E */	lbz r0, 0x85e(r31)
/* 80C30400  28 00 00 00 */	cmplwi r0, 0
/* 80C30404  40 82 00 0C */	bne lbl_80C30410
/* 80C30408  7F E3 FB 78 */	mr r3, r31
/* 80C3040C  4B 52 DC 6C */	b Insect_GetDemoMain__9dInsect_cFv
lbl_80C30410:
/* 80C30410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C30414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C30418  7C 08 03 A6 */	mtlr r0
/* 80C3041C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C30420  4E 80 00 20 */	blr 
