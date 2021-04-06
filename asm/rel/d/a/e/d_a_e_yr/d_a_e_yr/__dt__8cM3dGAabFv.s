lbl_80827FCC:
/* 80827FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80827FD0  7C 08 02 A6 */	mflr r0
/* 80827FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80827FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80827FDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80827FE0  41 82 00 1C */	beq lbl_80827FFC
/* 80827FE4  3C A0 80 83 */	lis r5, __vt__8cM3dGAab@ha /* 0x80828D50@ha */
/* 80827FE8  38 05 8D 50 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80828D50@l */
/* 80827FEC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80827FF0  7C 80 07 35 */	extsh. r0, r4
/* 80827FF4  40 81 00 08 */	ble lbl_80827FFC
/* 80827FF8  4B AA 6D 45 */	bl __dl__FPv
lbl_80827FFC:
/* 80827FFC  7F E3 FB 78 */	mr r3, r31
/* 80828000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80828004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80828008  7C 08 03 A6 */	mtlr r0
/* 8082800C  38 21 00 10 */	addi r1, r1, 0x10
/* 80828010  4E 80 00 20 */	blr 
