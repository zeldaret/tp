lbl_80D0B7F8:
/* 80D0B7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0B7FC  7C 08 02 A6 */	mflr r0
/* 80D0B800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0B804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0B808  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0B80C  41 82 00 1C */	beq lbl_80D0B828
/* 80D0B810  3C A0 80 D1 */	lis r5, __vt__8cM3dGAab@ha
/* 80D0B814  38 05 BA 74 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80D0B818  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D0B81C  7C 80 07 35 */	extsh. r0, r4
/* 80D0B820  40 81 00 08 */	ble lbl_80D0B828
/* 80D0B824  4B 5C 35 18 */	b __dl__FPv
lbl_80D0B828:
/* 80D0B828  7F E3 FB 78 */	mr r3, r31
/* 80D0B82C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0B830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0B834  7C 08 03 A6 */	mtlr r0
/* 80D0B838  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0B83C  4E 80 00 20 */	blr 
