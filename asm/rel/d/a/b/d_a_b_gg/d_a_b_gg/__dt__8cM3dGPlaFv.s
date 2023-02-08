lbl_805E82A8:
/* 805E82A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E82AC  7C 08 02 A6 */	mflr r0
/* 805E82B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E82B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E82B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805E82BC  41 82 00 1C */	beq lbl_805E82D8
/* 805E82C0  3C A0 80 5F */	lis r5, __vt__8cM3dGPla@ha /* 0x805ED69C@ha */
/* 805E82C4  38 05 D6 9C */	addi r0, r5, __vt__8cM3dGPla@l /* 0x805ED69C@l */
/* 805E82C8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805E82CC  7C 80 07 35 */	extsh. r0, r4
/* 805E82D0  40 81 00 08 */	ble lbl_805E82D8
/* 805E82D4  4B CE 6A 69 */	bl __dl__FPv
lbl_805E82D8:
/* 805E82D8  7F E3 FB 78 */	mr r3, r31
/* 805E82DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E82E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E82E4  7C 08 03 A6 */	mtlr r0
/* 805E82E8  38 21 00 10 */	addi r1, r1, 0x10
/* 805E82EC  4E 80 00 20 */	blr 
