lbl_80C7F8BC:
/* 80C7F8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7F8C0  7C 08 02 A6 */	mflr r0
/* 80C7F8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7F8C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7F8CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7F8D0  41 82 00 1C */	beq lbl_80C7F8EC
/* 80C7F8D4  3C A0 80 C8 */	lis r5, __vt__8cM3dGPla@ha /* 0x80C81FA4@ha */
/* 80C7F8D8  38 05 1F A4 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80C81FA4@l */
/* 80C7F8DC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C7F8E0  7C 80 07 35 */	extsh. r0, r4
/* 80C7F8E4  40 81 00 08 */	ble lbl_80C7F8EC
/* 80C7F8E8  4B 64 F4 55 */	bl __dl__FPv
lbl_80C7F8EC:
/* 80C7F8EC  7F E3 FB 78 */	mr r3, r31
/* 80C7F8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7F8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7F8F8  7C 08 03 A6 */	mtlr r0
/* 80C7F8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7F900  4E 80 00 20 */	blr 
