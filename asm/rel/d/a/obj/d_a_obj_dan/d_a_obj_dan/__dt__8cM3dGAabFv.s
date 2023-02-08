lbl_80BDC2A0:
/* 80BDC2A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDC2A4  7C 08 02 A6 */	mflr r0
/* 80BDC2A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDC2AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDC2B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BDC2B4  41 82 00 1C */	beq lbl_80BDC2D0
/* 80BDC2B8  3C A0 80 BE */	lis r5, __vt__8cM3dGAab@ha /* 0x80BDC52C@ha */
/* 80BDC2BC  38 05 C5 2C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80BDC52C@l */
/* 80BDC2C0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BDC2C4  7C 80 07 35 */	extsh. r0, r4
/* 80BDC2C8  40 81 00 08 */	ble lbl_80BDC2D0
/* 80BDC2CC  4B 6F 2A 71 */	bl __dl__FPv
lbl_80BDC2D0:
/* 80BDC2D0  7F E3 FB 78 */	mr r3, r31
/* 80BDC2D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDC2D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDC2DC  7C 08 03 A6 */	mtlr r0
/* 80BDC2E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDC2E4  4E 80 00 20 */	blr 
