lbl_80C70790:
/* 80C70790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70794  7C 08 02 A6 */	mflr r0
/* 80C70798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7079C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C707A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C707A4  41 82 00 1C */	beq lbl_80C707C0
/* 80C707A8  3C A0 80 C7 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C70AF4@ha */
/* 80C707AC  38 05 0A F4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C70AF4@l */
/* 80C707B0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C707B4  7C 80 07 35 */	extsh. r0, r4
/* 80C707B8  40 81 00 08 */	ble lbl_80C707C0
/* 80C707BC  4B 65 E5 81 */	bl __dl__FPv
lbl_80C707C0:
/* 80C707C0  7F E3 FB 78 */	mr r3, r31
/* 80C707C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C707C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C707CC  7C 08 03 A6 */	mtlr r0
/* 80C707D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C707D4  4E 80 00 20 */	blr 
