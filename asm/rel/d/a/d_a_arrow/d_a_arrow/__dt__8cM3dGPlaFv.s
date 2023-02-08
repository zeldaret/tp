lbl_8049C6B8:
/* 8049C6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049C6BC  7C 08 02 A6 */	mflr r0
/* 8049C6C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049C6C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049C6C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8049C6CC  41 82 00 1C */	beq lbl_8049C6E8
/* 8049C6D0  3C A0 80 4A */	lis r5, __vt__8cM3dGPla@ha /* 0x8049DF4C@ha */
/* 8049C6D4  38 05 DF 4C */	addi r0, r5, __vt__8cM3dGPla@l /* 0x8049DF4C@l */
/* 8049C6D8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8049C6DC  7C 80 07 35 */	extsh. r0, r4
/* 8049C6E0  40 81 00 08 */	ble lbl_8049C6E8
/* 8049C6E4  4B E3 26 59 */	bl __dl__FPv
lbl_8049C6E8:
/* 8049C6E8  7F E3 FB 78 */	mr r3, r31
/* 8049C6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049C6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049C6F4  7C 08 03 A6 */	mtlr r0
/* 8049C6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8049C6FC  4E 80 00 20 */	blr 
