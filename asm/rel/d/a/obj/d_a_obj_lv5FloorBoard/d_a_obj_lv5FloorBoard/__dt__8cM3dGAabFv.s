lbl_80C6AA08:
/* 80C6AA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6AA0C  7C 08 02 A6 */	mflr r0
/* 80C6AA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6AA14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6AA18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6AA1C  41 82 00 1C */	beq lbl_80C6AA38
/* 80C6AA20  3C A0 80 C7 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C6B2A0@ha */
/* 80C6AA24  38 05 B2 A0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C6B2A0@l */
/* 80C6AA28  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C6AA2C  7C 80 07 35 */	extsh. r0, r4
/* 80C6AA30  40 81 00 08 */	ble lbl_80C6AA38
/* 80C6AA34  4B 66 43 09 */	bl __dl__FPv
lbl_80C6AA38:
/* 80C6AA38  7F E3 FB 78 */	mr r3, r31
/* 80C6AA3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6AA40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6AA44  7C 08 03 A6 */	mtlr r0
/* 80C6AA48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6AA4C  4E 80 00 20 */	blr 
