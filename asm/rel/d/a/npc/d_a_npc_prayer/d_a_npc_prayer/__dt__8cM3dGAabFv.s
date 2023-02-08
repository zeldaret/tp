lbl_80AB2FB8:
/* 80AB2FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB2FBC  7C 08 02 A6 */	mflr r0
/* 80AB2FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB2FC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB2FC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB2FCC  41 82 00 1C */	beq lbl_80AB2FE8
/* 80AB2FD0  3C A0 80 AB */	lis r5, __vt__8cM3dGAab@ha /* 0x80AB5B7C@ha */
/* 80AB2FD4  38 05 5B 7C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AB5B7C@l */
/* 80AB2FD8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AB2FDC  7C 80 07 35 */	extsh. r0, r4
/* 80AB2FE0  40 81 00 08 */	ble lbl_80AB2FE8
/* 80AB2FE4  4B 81 BD 59 */	bl __dl__FPv
lbl_80AB2FE8:
/* 80AB2FE8  7F E3 FB 78 */	mr r3, r31
/* 80AB2FEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB2FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB2FF4  7C 08 03 A6 */	mtlr r0
/* 80AB2FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB2FFC  4E 80 00 20 */	blr 
