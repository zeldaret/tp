lbl_80C44E7C:
/* 80C44E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44E80  7C 08 02 A6 */	mflr r0
/* 80C44E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44E88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C44E8C  7C 7F 1B 78 */	mr r31, r3
/* 80C44E90  48 00 00 69 */	bl procMain__9daKiPot_cFv
/* 80C44E94  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C44E98  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80C44E9C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C44EA0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C44EA4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C44EA8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80C44EAC  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80C44EB0  3C 60 80 C4 */	lis r3, lit_3683@ha /* 0x80C45194@ha */
/* 80C44EB4  C0 03 51 94 */	lfs f0, lit_3683@l(r3)  /* 0x80C45194@l */
/* 80C44EB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C44EBC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C44EC0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C44EC4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80C44EC8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C44ECC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C44ED0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C44ED4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C44ED8  7F E3 FB 78 */	mr r3, r31
/* 80C44EDC  4B FF FE 9D */	bl setBaseMtx__9daKiPot_cFv
/* 80C44EE0  38 60 00 01 */	li r3, 1
/* 80C44EE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C44EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44EEC  7C 08 03 A6 */	mtlr r0
/* 80C44EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44EF4  4E 80 00 20 */	blr 
