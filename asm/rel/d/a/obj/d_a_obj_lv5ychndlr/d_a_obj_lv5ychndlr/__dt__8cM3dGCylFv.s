lbl_80C6E518:
/* 80C6E518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6E51C  7C 08 02 A6 */	mflr r0
/* 80C6E520  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6E524  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6E528  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6E52C  41 82 00 1C */	beq lbl_80C6E548
/* 80C6E530  3C A0 80 C7 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C6EB20@ha */
/* 80C6E534  38 05 EB 20 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C6EB20@l */
/* 80C6E538  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C6E53C  7C 80 07 35 */	extsh. r0, r4
/* 80C6E540  40 81 00 08 */	ble lbl_80C6E548
/* 80C6E544  4B 66 07 F9 */	bl __dl__FPv
lbl_80C6E548:
/* 80C6E548  7F E3 FB 78 */	mr r3, r31
/* 80C6E54C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6E550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6E554  7C 08 03 A6 */	mtlr r0
/* 80C6E558  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6E55C  4E 80 00 20 */	blr 
