lbl_809E63C4:
/* 809E63C4  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 809E63C8  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 809E63CC  80 85 00 00 */	lwz r4, 0(r5)
/* 809E63D0  80 05 00 04 */	lwz r0, 4(r5)
/* 809E63D4  90 83 0D CC */	stw r4, 0xdcc(r3)
/* 809E63D8  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 809E63DC  80 05 00 08 */	lwz r0, 8(r5)
/* 809E63E0  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 809E63E4  3C 80 80 9E */	lis r4, m__17daNpc_grS_Param_c@ha /* 0x809E7DCC@ha */
/* 809E63E8  38 84 7D CC */	addi r4, r4, m__17daNpc_grS_Param_c@l /* 0x809E7DCC@l */
/* 809E63EC  88 04 00 6A */	lbz r0, 0x6a(r4)
/* 809E63F0  28 00 00 00 */	cmplwi r0, 0
/* 809E63F4  41 82 00 28 */	beq lbl_809E641C
/* 809E63F8  3C 80 80 9F */	lis r4, lit_5142@ha /* 0x809E80CC@ha */
/* 809E63FC  38 A4 80 CC */	addi r5, r4, lit_5142@l /* 0x809E80CC@l */
/* 809E6400  80 85 00 00 */	lwz r4, 0(r5)
/* 809E6404  80 05 00 04 */	lwz r0, 4(r5)
/* 809E6408  90 83 0D CC */	stw r4, 0xdcc(r3)
/* 809E640C  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 809E6410  80 05 00 08 */	lwz r0, 8(r5)
/* 809E6414  90 03 0D D4 */	stw r0, 0xdd4(r3)
/* 809E6418  48 00 00 24 */	b lbl_809E643C
lbl_809E641C:
/* 809E641C  3C 80 80 9F */	lis r4, lit_5146@ha /* 0x809E80D8@ha */
/* 809E6420  38 A4 80 D8 */	addi r5, r4, lit_5146@l /* 0x809E80D8@l */
/* 809E6424  80 85 00 00 */	lwz r4, 0(r5)
/* 809E6428  80 05 00 04 */	lwz r0, 4(r5)
/* 809E642C  90 83 0D CC */	stw r4, 0xdcc(r3)
/* 809E6430  90 03 0D D0 */	stw r0, 0xdd0(r3)
/* 809E6434  80 05 00 08 */	lwz r0, 8(r5)
/* 809E6438  90 03 0D D4 */	stw r0, 0xdd4(r3)
lbl_809E643C:
/* 809E643C  38 60 00 01 */	li r3, 1
/* 809E6440  4E 80 00 20 */	blr 
