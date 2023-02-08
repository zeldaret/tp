lbl_8066EC88:
/* 8066EC88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066EC8C  7C 08 02 A6 */	mflr r0
/* 8066EC90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066EC94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066EC98  7C 7F 1B 79 */	or. r31, r3, r3
/* 8066EC9C  41 82 00 1C */	beq lbl_8066ECB8
/* 8066ECA0  3C A0 80 67 */	lis r5, __vt__8cM3dGAab@ha /* 0x8066F228@ha */
/* 8066ECA4  38 05 F2 28 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8066F228@l */
/* 8066ECA8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8066ECAC  7C 80 07 35 */	extsh. r0, r4
/* 8066ECB0  40 81 00 08 */	ble lbl_8066ECB8
/* 8066ECB4  4B C6 00 89 */	bl __dl__FPv
lbl_8066ECB8:
/* 8066ECB8  7F E3 FB 78 */	mr r3, r31
/* 8066ECBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066ECC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066ECC4  7C 08 03 A6 */	mtlr r0
/* 8066ECC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8066ECCC  4E 80 00 20 */	blr 
