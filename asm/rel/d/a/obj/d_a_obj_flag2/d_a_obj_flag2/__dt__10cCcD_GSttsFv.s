lbl_80BEE070:
/* 80BEE070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEE074  7C 08 02 A6 */	mflr r0
/* 80BEE078  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEE07C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEE080  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEE084  41 82 00 1C */	beq lbl_80BEE0A0
/* 80BEE088  3C A0 80 BF */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BEE9AC@ha */
/* 80BEE08C  38 05 E9 AC */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BEE9AC@l */
/* 80BEE090  90 1F 00 00 */	stw r0, 0(r31)
/* 80BEE094  7C 80 07 35 */	extsh. r0, r4
/* 80BEE098  40 81 00 08 */	ble lbl_80BEE0A0
/* 80BEE09C  4B 6E 0C A1 */	bl __dl__FPv
lbl_80BEE0A0:
/* 80BEE0A0  7F E3 FB 78 */	mr r3, r31
/* 80BEE0A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEE0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEE0AC  7C 08 03 A6 */	mtlr r0
/* 80BEE0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEE0B4  4E 80 00 20 */	blr 
