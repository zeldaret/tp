lbl_8079C438:
/* 8079C438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079C43C  7C 08 02 A6 */	mflr r0
/* 8079C440  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079C444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079C448  7C 7F 1B 79 */	or. r31, r3, r3
/* 8079C44C  41 82 00 1C */	beq lbl_8079C468
/* 8079C450  3C A0 80 7A */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8079DB1C@ha */
/* 8079C454  38 05 DB 1C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8079DB1C@l */
/* 8079C458  90 1F 00 00 */	stw r0, 0(r31)
/* 8079C45C  7C 80 07 35 */	extsh. r0, r4
/* 8079C460  40 81 00 08 */	ble lbl_8079C468
/* 8079C464  4B B3 28 D9 */	bl __dl__FPv
lbl_8079C468:
/* 8079C468  7F E3 FB 78 */	mr r3, r31
/* 8079C46C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079C470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079C474  7C 08 03 A6 */	mtlr r0
/* 8079C478  38 21 00 10 */	addi r1, r1, 0x10
/* 8079C47C  4E 80 00 20 */	blr 
