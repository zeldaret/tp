lbl_80B28644:
/* 80B28644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B28648  7C 08 02 A6 */	mflr r0
/* 80B2864C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B28650  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B28654  93 C1 00 08 */	stw r30, 8(r1)
/* 80B28658  7C 7E 1B 78 */	mr r30, r3
/* 80B2865C  3C 60 80 B3 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B2D048@ha */
/* 80B28660  3B E3 D0 48 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80B2D048@l */
/* 80B28664  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B28668  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B2866C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B28670  80 04 00 04 */	lwz r0, 4(r4)
/* 80B28674  90 7E 0F C0 */	stw r3, 0xfc0(r30)
/* 80B28678  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80B2867C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B28680  90 1E 0F C8 */	stw r0, 0xfc8(r30)
/* 80B28684  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B28688  2C 00 00 04 */	cmpwi r0, 4
/* 80B2868C  41 82 00 B8 */	beq lbl_80B28744
/* 80B28690  40 80 00 D0 */	bge lbl_80B28760
/* 80B28694  2C 00 00 01 */	cmpwi r0, 1
/* 80B28698  41 82 00 08 */	beq lbl_80B286A0
/* 80B2869C  48 00 00 C4 */	b lbl_80B28760
lbl_80B286A0:
/* 80B286A0  88 1E 10 0D */	lbz r0, 0x100d(r30)
/* 80B286A4  28 00 00 00 */	cmplwi r0, 0
/* 80B286A8  41 82 00 20 */	beq lbl_80B286C8
/* 80B286AC  80 7F 0A B4 */	lwz r3, 0xab4(r31)
/* 80B286B0  80 1F 0A B8 */	lwz r0, 0xab8(r31)
/* 80B286B4  90 7E 0F C0 */	stw r3, 0xfc0(r30)
/* 80B286B8  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80B286BC  80 1F 0A BC */	lwz r0, 0xabc(r31)
/* 80B286C0  90 1E 0F C8 */	stw r0, 0xfc8(r30)
/* 80B286C4  48 00 00 B4 */	b lbl_80B28778
lbl_80B286C8:
/* 80B286C8  88 1E 10 0E */	lbz r0, 0x100e(r30)
/* 80B286CC  28 00 00 00 */	cmplwi r0, 0
/* 80B286D0  41 82 00 58 */	beq lbl_80B28728
/* 80B286D4  38 60 00 07 */	li r3, 7
/* 80B286D8  4B 62 44 95 */	bl daNpcT_chkTmpBit__FUl
/* 80B286DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B286E0  41 82 00 2C */	beq lbl_80B2870C
/* 80B286E4  88 1E 10 0F */	lbz r0, 0x100f(r30)
/* 80B286E8  28 00 00 00 */	cmplwi r0, 0
/* 80B286EC  40 82 00 20 */	bne lbl_80B2870C
/* 80B286F0  80 7F 0A C0 */	lwz r3, 0xac0(r31)
/* 80B286F4  80 1F 0A C4 */	lwz r0, 0xac4(r31)
/* 80B286F8  90 7E 0F C0 */	stw r3, 0xfc0(r30)
/* 80B286FC  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80B28700  80 1F 0A C8 */	lwz r0, 0xac8(r31)
/* 80B28704  90 1E 0F C8 */	stw r0, 0xfc8(r30)
/* 80B28708  48 00 00 70 */	b lbl_80B28778
lbl_80B2870C:
/* 80B2870C  80 7F 0A CC */	lwz r3, 0xacc(r31)
/* 80B28710  80 1F 0A D0 */	lwz r0, 0xad0(r31)
/* 80B28714  90 7E 0F C0 */	stw r3, 0xfc0(r30)
/* 80B28718  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80B2871C  80 1F 0A D4 */	lwz r0, 0xad4(r31)
/* 80B28720  90 1E 0F C8 */	stw r0, 0xfc8(r30)
/* 80B28724  48 00 00 54 */	b lbl_80B28778
lbl_80B28728:
/* 80B28728  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 80B2872C  80 1F 0A DC */	lwz r0, 0xadc(r31)
/* 80B28730  90 7E 0F C0 */	stw r3, 0xfc0(r30)
/* 80B28734  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80B28738  80 1F 0A E0 */	lwz r0, 0xae0(r31)
/* 80B2873C  90 1E 0F C8 */	stw r0, 0xfc8(r30)
/* 80B28740  48 00 00 38 */	b lbl_80B28778
lbl_80B28744:
/* 80B28744  80 7F 0A E4 */	lwz r3, 0xae4(r31)
/* 80B28748  80 1F 0A E8 */	lwz r0, 0xae8(r31)
/* 80B2874C  90 7E 0F C0 */	stw r3, 0xfc0(r30)
/* 80B28750  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80B28754  80 1F 0A EC */	lwz r0, 0xaec(r31)
/* 80B28758  90 1E 0F C8 */	stw r0, 0xfc8(r30)
/* 80B2875C  48 00 00 1C */	b lbl_80B28778
lbl_80B28760:
/* 80B28760  80 7F 0A F0 */	lwz r3, 0xaf0(r31)
/* 80B28764  80 1F 0A F4 */	lwz r0, 0xaf4(r31)
/* 80B28768  90 7E 0F C0 */	stw r3, 0xfc0(r30)
/* 80B2876C  90 1E 0F C4 */	stw r0, 0xfc4(r30)
/* 80B28770  80 1F 0A F8 */	lwz r0, 0xaf8(r31)
/* 80B28774  90 1E 0F C8 */	stw r0, 0xfc8(r30)
lbl_80B28778:
/* 80B28778  38 60 00 01 */	li r3, 1
/* 80B2877C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B28780  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B28784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B28788  7C 08 03 A6 */	mtlr r0
/* 80B2878C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B28790  4E 80 00 20 */	blr 
