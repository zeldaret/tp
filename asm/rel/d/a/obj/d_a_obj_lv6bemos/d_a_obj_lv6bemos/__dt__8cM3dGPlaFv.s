lbl_80C7DA74:
/* 80C7DA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7DA78  7C 08 02 A6 */	mflr r0
/* 80C7DA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7DA80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7DA84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7DA88  41 82 00 1C */	beq lbl_80C7DAA4
/* 80C7DA8C  3C A0 80 C8 */	lis r5, __vt__8cM3dGPla@ha /* 0x80C7E0F8@ha */
/* 80C7DA90  38 05 E0 F8 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80C7E0F8@l */
/* 80C7DA94  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C7DA98  7C 80 07 35 */	extsh. r0, r4
/* 80C7DA9C  40 81 00 08 */	ble lbl_80C7DAA4
/* 80C7DAA0  4B 65 12 9D */	bl __dl__FPv
lbl_80C7DAA4:
/* 80C7DAA4  7F E3 FB 78 */	mr r3, r31
/* 80C7DAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7DAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7DAB0  7C 08 03 A6 */	mtlr r0
/* 80C7DAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7DAB8  4E 80 00 20 */	blr 
