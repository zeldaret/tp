lbl_80A83054:
/* 80A83054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A83058  7C 08 02 A6 */	mflr r0
/* 80A8305C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A83060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A83064  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A83068  41 82 00 1C */	beq lbl_80A83084
/* 80A8306C  3C A0 80 A8 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80A83CDC@ha */
/* 80A83070  38 05 3C DC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80A83CDC@l */
/* 80A83074  90 1F 00 00 */	stw r0, 0(r31)
/* 80A83078  7C 80 07 35 */	extsh. r0, r4
/* 80A8307C  40 81 00 08 */	ble lbl_80A83084
/* 80A83080  4B 84 BC BD */	bl __dl__FPv
lbl_80A83084:
/* 80A83084  7F E3 FB 78 */	mr r3, r31
/* 80A83088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A8308C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A83090  7C 08 03 A6 */	mtlr r0
/* 80A83094  38 21 00 10 */	addi r1, r1, 0x10
/* 80A83098  4E 80 00 20 */	blr 
