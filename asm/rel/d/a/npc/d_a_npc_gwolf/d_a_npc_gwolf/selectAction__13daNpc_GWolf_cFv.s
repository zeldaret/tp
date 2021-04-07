lbl_809F56A4:
/* 809F56A4  3C 80 80 A0 */	lis r4, cNullVec__6Z2Calc@ha /* 0x809F87F4@ha */
/* 809F56A8  38 C4 87 F4 */	addi r6, r4, cNullVec__6Z2Calc@l /* 0x809F87F4@l */
/* 809F56AC  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 809F56B0  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 809F56B4  80 85 00 00 */	lwz r4, 0(r5)
/* 809F56B8  80 05 00 04 */	lwz r0, 4(r5)
/* 809F56BC  90 83 0D C8 */	stw r4, 0xdc8(r3)
/* 809F56C0  90 03 0D CC */	stw r0, 0xdcc(r3)
/* 809F56C4  80 05 00 08 */	lwz r0, 8(r5)
/* 809F56C8  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 809F56CC  3C 80 80 A0 */	lis r4, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F56D0  38 84 84 F4 */	addi r4, r4, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F56D4  88 04 00 6A */	lbz r0, 0x6a(r4)
/* 809F56D8  28 00 00 00 */	cmplwi r0, 0
/* 809F56DC  41 82 00 20 */	beq lbl_809F56FC
/* 809F56E0  80 86 02 98 */	lwz r4, 0x298(r6)
/* 809F56E4  80 06 02 9C */	lwz r0, 0x29c(r6)
/* 809F56E8  90 83 0D C8 */	stw r4, 0xdc8(r3)
/* 809F56EC  90 03 0D CC */	stw r0, 0xdcc(r3)
/* 809F56F0  80 06 02 A0 */	lwz r0, 0x2a0(r6)
/* 809F56F4  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 809F56F8  48 00 00 70 */	b lbl_809F5768
lbl_809F56FC:
/* 809F56FC  88 03 0E 10 */	lbz r0, 0xe10(r3)
/* 809F5700  2C 00 00 02 */	cmpwi r0, 2
/* 809F5704  41 82 00 14 */	beq lbl_809F5718
/* 809F5708  40 80 00 48 */	bge lbl_809F5750
/* 809F570C  2C 00 00 01 */	cmpwi r0, 1
/* 809F5710  40 80 00 24 */	bge lbl_809F5734
/* 809F5714  48 00 00 3C */	b lbl_809F5750
lbl_809F5718:
/* 809F5718  80 86 02 A4 */	lwz r4, 0x2a4(r6)
/* 809F571C  80 06 02 A8 */	lwz r0, 0x2a8(r6)
/* 809F5720  90 83 0D C8 */	stw r4, 0xdc8(r3)
/* 809F5724  90 03 0D CC */	stw r0, 0xdcc(r3)
/* 809F5728  80 06 02 AC */	lwz r0, 0x2ac(r6)
/* 809F572C  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 809F5730  48 00 00 38 */	b lbl_809F5768
lbl_809F5734:
/* 809F5734  80 86 02 B0 */	lwz r4, 0x2b0(r6)
/* 809F5738  80 06 02 B4 */	lwz r0, 0x2b4(r6)
/* 809F573C  90 83 0D C8 */	stw r4, 0xdc8(r3)
/* 809F5740  90 03 0D CC */	stw r0, 0xdcc(r3)
/* 809F5744  80 06 02 B8 */	lwz r0, 0x2b8(r6)
/* 809F5748  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 809F574C  48 00 00 1C */	b lbl_809F5768
lbl_809F5750:
/* 809F5750  80 86 02 BC */	lwz r4, 0x2bc(r6)
/* 809F5754  80 06 02 C0 */	lwz r0, 0x2c0(r6)
/* 809F5758  90 83 0D C8 */	stw r4, 0xdc8(r3)
/* 809F575C  90 03 0D CC */	stw r0, 0xdcc(r3)
/* 809F5760  80 06 02 C4 */	lwz r0, 0x2c4(r6)
/* 809F5764  90 03 0D D0 */	stw r0, 0xdd0(r3)
lbl_809F5768:
/* 809F5768  38 60 00 01 */	li r3, 1
/* 809F576C  4E 80 00 20 */	blr 
