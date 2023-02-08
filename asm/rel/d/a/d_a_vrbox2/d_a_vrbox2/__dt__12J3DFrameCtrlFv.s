lbl_80499A1C:
/* 80499A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80499A20  7C 08 02 A6 */	mflr r0
/* 80499A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80499A28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80499A2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80499A30  41 82 00 1C */	beq lbl_80499A4C
/* 80499A34  3C A0 80 4A */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80499B68@ha */
/* 80499A38  38 05 9B 68 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80499B68@l */
/* 80499A3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80499A40  7C 80 07 35 */	extsh. r0, r4
/* 80499A44  40 81 00 08 */	ble lbl_80499A4C
/* 80499A48  4B E3 52 F5 */	bl __dl__FPv
lbl_80499A4C:
/* 80499A4C  7F E3 FB 78 */	mr r3, r31
/* 80499A50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80499A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80499A58  7C 08 03 A6 */	mtlr r0
/* 80499A5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80499A60  4E 80 00 20 */	blr 
