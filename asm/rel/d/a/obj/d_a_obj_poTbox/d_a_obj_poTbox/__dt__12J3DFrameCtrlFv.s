lbl_80CB4954:
/* 80CB4954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB4958  7C 08 02 A6 */	mflr r0
/* 80CB495C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB4960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB4964  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB4968  41 82 00 1C */	beq lbl_80CB4984
/* 80CB496C  3C A0 80 CB */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80CB50D4@ha */
/* 80CB4970  38 05 50 D4 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80CB50D4@l */
/* 80CB4974  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB4978  7C 80 07 35 */	extsh. r0, r4
/* 80CB497C  40 81 00 08 */	ble lbl_80CB4984
/* 80CB4980  4B 61 A3 BD */	bl __dl__FPv
lbl_80CB4984:
/* 80CB4984  7F E3 FB 78 */	mr r3, r31
/* 80CB4988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB498C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB4990  7C 08 03 A6 */	mtlr r0
/* 80CB4994  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB4998  4E 80 00 20 */	blr 
