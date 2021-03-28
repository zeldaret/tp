lbl_8072E498:
/* 8072E498  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8072E49C  7C 08 02 A6 */	mflr r0
/* 8072E4A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072E4A4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8072E4A8  7C 7F 1B 78 */	mr r31, r3
/* 8072E4AC  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 8072E4B0  80 63 00 04 */	lwz r3, 4(r3)
/* 8072E4B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8072E4B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8072E4BC  38 63 00 30 */	addi r3, r3, 0x30
/* 8072E4C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8072E4C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8072E4C8  4B C1 7F E8 */	b PSMTXCopy
/* 8072E4CC  3C 60 80 73 */	lis r3, lit_4962@ha
/* 8072E4D0  C0 03 5B E8 */	lfs f0, lit_4962@l(r3)
/* 8072E4D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8072E4D8  3C 60 80 73 */	lis r3, lit_3912@ha
/* 8072E4DC  C0 03 5B 2C */	lfs f0, lit_3912@l(r3)
/* 8072E4E0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8072E4E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8072E4E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8072E4EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8072E4F0  38 81 00 08 */	addi r4, r1, 8
/* 8072E4F4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8072E4F8  4B C1 88 74 */	b PSMTXMultVec
/* 8072E4FC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8072E500  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 8072E504  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8072E508  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 8072E50C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8072E510  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 8072E514  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8072E518  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8072E51C  7C 08 03 A6 */	mtlr r0
/* 8072E520  38 21 00 30 */	addi r1, r1, 0x30
/* 8072E524  4E 80 00 20 */	blr 
