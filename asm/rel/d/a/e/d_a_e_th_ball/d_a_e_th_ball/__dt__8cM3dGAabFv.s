lbl_807B7DA4:
/* 807B7DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B7DA8  7C 08 02 A6 */	mflr r0
/* 807B7DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B7DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B7DB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807B7DB8  41 82 00 1C */	beq lbl_807B7DD4
/* 807B7DBC  3C A0 80 7C */	lis r5, __vt__8cM3dGAab@ha
/* 807B7DC0  38 05 80 AC */	addi r0, r5, __vt__8cM3dGAab@l
/* 807B7DC4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807B7DC8  7C 80 07 35 */	extsh. r0, r4
/* 807B7DCC  40 81 00 08 */	ble lbl_807B7DD4
/* 807B7DD0  4B B1 6F 6C */	b __dl__FPv
lbl_807B7DD4:
/* 807B7DD4  7F E3 FB 78 */	mr r3, r31
/* 807B7DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B7DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B7DE0  7C 08 03 A6 */	mtlr r0
/* 807B7DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B7DE8  4E 80 00 20 */	blr 
