lbl_802C1CA0:
/* 802C1CA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C1CA4  7C 08 02 A6 */	mflr r0
/* 802C1CA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C1CAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C1CB0  7C 7F 1B 78 */	mr r31, r3
/* 802C1CB4  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802C1CB8  80 83 00 04 */	lwz r4, 4(r3)
/* 802C1CBC  28 04 00 00 */	cmplwi r4, 0
/* 802C1CC0  41 82 00 10 */	beq lbl_802C1CD0
/* 802C1CC4  80 84 00 18 */	lwz r4, 0x18(r4)
/* 802C1CC8  90 81 00 08 */	stw r4, 8(r1)
/* 802C1CCC  48 00 00 08 */	b lbl_802C1CD4
lbl_802C1CD0:
/* 802C1CD0  38 80 FF FF */	li r4, -1
lbl_802C1CD4:
/* 802C1CD4  3C 04 FF 00 */	addis r0, r4, 0xff00
/* 802C1CD8  28 00 00 64 */	cmplwi r0, 0x64
/* 802C1CDC  40 82 00 18 */	bne lbl_802C1CF4
/* 802C1CE0  80 8D 85 FC */	lwz r4, data_80450B7C(r13)
/* 802C1CE4  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 802C1CE8  28 00 00 06 */	cmplwi r0, 6
/* 802C1CEC  41 82 00 08 */	beq lbl_802C1CF4
/* 802C1CF0  4B FE DB 95 */	bl subBgmStop__8Z2SeqMgrFv
lbl_802C1CF4:
/* 802C1CF4  7F E3 FB 78 */	mr r3, r31
/* 802C1CF8  4B FF E7 F1 */	bl deleteObject__10Z2CreatureFv
/* 802C1CFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C1D00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C1D04  7C 08 03 A6 */	mtlr r0
/* 802C1D08  38 21 00 20 */	addi r1, r1, 0x20
/* 802C1D0C  4E 80 00 20 */	blr 
