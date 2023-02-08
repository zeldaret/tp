lbl_80BD9BF8:
/* 80BD9BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9BFC  7C 08 02 A6 */	mflr r0
/* 80BD9C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9C04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD9C08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD9C0C  41 82 00 1C */	beq lbl_80BD9C28
/* 80BD9C10  3C A0 80 BE */	lis r5, __vt__8cM3dGSph@ha /* 0x80BDA2A8@ha */
/* 80BD9C14  38 05 A2 A8 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BDA2A8@l */
/* 80BD9C18  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BD9C1C  7C 80 07 35 */	extsh. r0, r4
/* 80BD9C20  40 81 00 08 */	ble lbl_80BD9C28
/* 80BD9C24  4B 6F 51 19 */	bl __dl__FPv
lbl_80BD9C28:
/* 80BD9C28  7F E3 FB 78 */	mr r3, r31
/* 80BD9C2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD9C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9C34  7C 08 03 A6 */	mtlr r0
/* 80BD9C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9C3C  4E 80 00 20 */	blr 
