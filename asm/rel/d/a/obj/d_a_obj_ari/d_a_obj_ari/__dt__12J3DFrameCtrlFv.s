lbl_80BA2C18:
/* 80BA2C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA2C1C  7C 08 02 A6 */	mflr r0
/* 80BA2C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA2C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA2C28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA2C2C  41 82 00 1C */	beq lbl_80BA2C48
/* 80BA2C30  3C A0 80 BA */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80BA55C0@ha */
/* 80BA2C34  38 05 55 C0 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80BA55C0@l */
/* 80BA2C38  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA2C3C  7C 80 07 35 */	extsh. r0, r4
/* 80BA2C40  40 81 00 08 */	ble lbl_80BA2C48
/* 80BA2C44  4B 72 C0 F9 */	bl __dl__FPv
lbl_80BA2C48:
/* 80BA2C48  7F E3 FB 78 */	mr r3, r31
/* 80BA2C4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA2C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA2C54  7C 08 03 A6 */	mtlr r0
/* 80BA2C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA2C5C  4E 80 00 20 */	blr 
