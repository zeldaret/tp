lbl_80BF77F0:
/* 80BF77F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF77F4  7C 08 02 A6 */	mflr r0
/* 80BF77F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF77FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF7800  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF7804  41 82 00 1C */	beq lbl_80BF7820
/* 80BF7808  3C A0 80 C0 */	lis r5, __vt__8cM3dGLin@ha /* 0x80BF920C@ha */
/* 80BF780C  38 05 92 0C */	addi r0, r5, __vt__8cM3dGLin@l /* 0x80BF920C@l */
/* 80BF7810  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BF7814  7C 80 07 35 */	extsh. r0, r4
/* 80BF7818  40 81 00 08 */	ble lbl_80BF7820
/* 80BF781C  4B 6D 75 21 */	bl __dl__FPv
lbl_80BF7820:
/* 80BF7820  7F E3 FB 78 */	mr r3, r31
/* 80BF7824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF7828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF782C  7C 08 03 A6 */	mtlr r0
/* 80BF7830  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF7834  4E 80 00 20 */	blr 
