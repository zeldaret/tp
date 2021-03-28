lbl_80BF3270:
/* 80BF3270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF3274  7C 08 02 A6 */	mflr r0
/* 80BF3278  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF327C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF3280  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF3284  41 82 00 1C */	beq lbl_80BF32A0
/* 80BF3288  3C A0 80 BF */	lis r5, __vt__8cM3dGCyl@ha
/* 80BF328C  38 05 4B 60 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BF3290  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BF3294  7C 80 07 35 */	extsh. r0, r4
/* 80BF3298  40 81 00 08 */	ble lbl_80BF32A0
/* 80BF329C  4B 6D BA A0 */	b __dl__FPv
lbl_80BF32A0:
/* 80BF32A0  7F E3 FB 78 */	mr r3, r31
/* 80BF32A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF32A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF32AC  7C 08 03 A6 */	mtlr r0
/* 80BF32B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF32B4  4E 80 00 20 */	blr 
