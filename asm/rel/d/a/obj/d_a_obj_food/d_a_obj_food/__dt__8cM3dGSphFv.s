lbl_80BF1BE8:
/* 80BF1BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF1BEC  7C 08 02 A6 */	mflr r0
/* 80BF1BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF1BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF1BF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF1BFC  41 82 00 1C */	beq lbl_80BF1C18
/* 80BF1C00  3C A0 80 BF */	lis r5, __vt__8cM3dGSph@ha
/* 80BF1C04  38 05 1E F0 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80BF1C08  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BF1C0C  7C 80 07 35 */	extsh. r0, r4
/* 80BF1C10  40 81 00 08 */	ble lbl_80BF1C18
/* 80BF1C14  4B 6D D1 28 */	b __dl__FPv
lbl_80BF1C18:
/* 80BF1C18  7F E3 FB 78 */	mr r3, r31
/* 80BF1C1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF1C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF1C24  7C 08 03 A6 */	mtlr r0
/* 80BF1C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF1C2C  4E 80 00 20 */	blr 
