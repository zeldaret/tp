lbl_80A856BC:
/* 80A856BC  3C 80 80 A9 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A886B4@ha */
/* 80A856C0  38 C4 86 B4 */	addi r6, r4, cNullVec__6Z2Calc@l /* 0x80A886B4@l */
/* 80A856C4  3C 80 80 3A */	lis r4, __ptmf_null@ha /* 0x803A2180@ha */
/* 80A856C8  38 A4 21 80 */	addi r5, r4, __ptmf_null@l /* 0x803A2180@l */
/* 80A856CC  80 85 00 00 */	lwz r4, 0(r5)
/* 80A856D0  80 05 00 04 */	lwz r0, 4(r5)
/* 80A856D4  90 83 0D C0 */	stw r4, 0xdc0(r3)
/* 80A856D8  90 03 0D C4 */	stw r0, 0xdc4(r3)
/* 80A856DC  80 05 00 08 */	lwz r0, 8(r5)
/* 80A856E0  90 03 0D C8 */	stw r0, 0xdc8(r3)
/* 80A856E4  3C 80 80 A9 */	lis r4, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A856E8  38 84 84 34 */	addi r4, r4, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A856EC  88 04 00 6A */	lbz r0, 0x6a(r4)
/* 80A856F0  28 00 00 00 */	cmplwi r0, 0
/* 80A856F4  41 82 00 20 */	beq lbl_80A85714
/* 80A856F8  80 86 01 C4 */	lwz r4, 0x1c4(r6)
/* 80A856FC  80 06 01 C8 */	lwz r0, 0x1c8(r6)
/* 80A85700  90 83 0D C0 */	stw r4, 0xdc0(r3)
/* 80A85704  90 03 0D C4 */	stw r0, 0xdc4(r3)
/* 80A85708  80 06 01 CC */	lwz r0, 0x1cc(r6)
/* 80A8570C  90 03 0D C8 */	stw r0, 0xdc8(r3)
/* 80A85710  48 00 00 98 */	b lbl_80A857A8
lbl_80A85714:
/* 80A85714  88 03 0E 0C */	lbz r0, 0xe0c(r3)
/* 80A85718  2C 00 00 02 */	cmpwi r0, 2
/* 80A8571C  41 82 00 3C */	beq lbl_80A85758
/* 80A85720  40 80 00 10 */	bge lbl_80A85730
/* 80A85724  2C 00 00 01 */	cmpwi r0, 1
/* 80A85728  40 80 00 14 */	bge lbl_80A8573C
/* 80A8572C  48 00 00 64 */	b lbl_80A85790
lbl_80A85730:
/* 80A85730  2C 00 00 04 */	cmpwi r0, 4
/* 80A85734  40 80 00 5C */	bge lbl_80A85790
/* 80A85738  48 00 00 3C */	b lbl_80A85774
lbl_80A8573C:
/* 80A8573C  80 86 01 D0 */	lwz r4, 0x1d0(r6)
/* 80A85740  80 06 01 D4 */	lwz r0, 0x1d4(r6)
/* 80A85744  90 83 0D C0 */	stw r4, 0xdc0(r3)
/* 80A85748  90 03 0D C4 */	stw r0, 0xdc4(r3)
/* 80A8574C  80 06 01 D8 */	lwz r0, 0x1d8(r6)
/* 80A85750  90 03 0D C8 */	stw r0, 0xdc8(r3)
/* 80A85754  48 00 00 54 */	b lbl_80A857A8
lbl_80A85758:
/* 80A85758  80 86 01 DC */	lwz r4, 0x1dc(r6)
/* 80A8575C  80 06 01 E0 */	lwz r0, 0x1e0(r6)
/* 80A85760  90 83 0D C0 */	stw r4, 0xdc0(r3)
/* 80A85764  90 03 0D C4 */	stw r0, 0xdc4(r3)
/* 80A85768  80 06 01 E4 */	lwz r0, 0x1e4(r6)
/* 80A8576C  90 03 0D C8 */	stw r0, 0xdc8(r3)
/* 80A85770  48 00 00 38 */	b lbl_80A857A8
lbl_80A85774:
/* 80A85774  80 86 01 E8 */	lwz r4, 0x1e8(r6)
/* 80A85778  80 06 01 EC */	lwz r0, 0x1ec(r6)
/* 80A8577C  90 83 0D C0 */	stw r4, 0xdc0(r3)
/* 80A85780  90 03 0D C4 */	stw r0, 0xdc4(r3)
/* 80A85784  80 06 01 F0 */	lwz r0, 0x1f0(r6)
/* 80A85788  90 03 0D C8 */	stw r0, 0xdc8(r3)
/* 80A8578C  48 00 00 1C */	b lbl_80A857A8
lbl_80A85790:
/* 80A85790  80 86 01 F4 */	lwz r4, 0x1f4(r6)
/* 80A85794  80 06 01 F8 */	lwz r0, 0x1f8(r6)
/* 80A85798  90 83 0D C0 */	stw r4, 0xdc0(r3)
/* 80A8579C  90 03 0D C4 */	stw r0, 0xdc4(r3)
/* 80A857A0  80 06 01 FC */	lwz r0, 0x1fc(r6)
/* 80A857A4  90 03 0D C8 */	stw r0, 0xdc8(r3)
lbl_80A857A8:
/* 80A857A8  38 60 00 01 */	li r3, 1
/* 80A857AC  4E 80 00 20 */	blr 
