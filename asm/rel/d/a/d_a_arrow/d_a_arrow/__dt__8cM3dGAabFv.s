lbl_8049D8C8:
/* 8049D8C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049D8CC  7C 08 02 A6 */	mflr r0
/* 8049D8D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049D8D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049D8D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8049D8DC  41 82 00 1C */	beq lbl_8049D8F8
/* 8049D8E0  3C A0 80 4A */	lis r5, __vt__8cM3dGAab@ha
/* 8049D8E4  38 05 DF 40 */	addi r0, r5, __vt__8cM3dGAab@l
/* 8049D8E8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8049D8EC  7C 80 07 35 */	extsh. r0, r4
/* 8049D8F0  40 81 00 08 */	ble lbl_8049D8F8
/* 8049D8F4  4B E3 14 48 */	b __dl__FPv
lbl_8049D8F8:
/* 8049D8F8  7F E3 FB 78 */	mr r3, r31
/* 8049D8FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049D900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049D904  7C 08 03 A6 */	mtlr r0
/* 8049D908  38 21 00 10 */	addi r1, r1, 0x10
/* 8049D90C  4E 80 00 20 */	blr 
