lbl_80AA0824:
/* 80AA0824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA0828  7C 08 02 A6 */	mflr r0
/* 80AA082C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0834  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA0838  41 82 00 1C */	beq lbl_80AA0854
/* 80AA083C  3C A0 80 AA */	lis r5, __vt__8cM3dGAab@ha /* 0x80AA2A98@ha */
/* 80AA0840  38 05 2A 98 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AA2A98@l */
/* 80AA0844  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AA0848  7C 80 07 35 */	extsh. r0, r4
/* 80AA084C  40 81 00 08 */	ble lbl_80AA0854
/* 80AA0850  4B 82 E4 ED */	bl __dl__FPv
lbl_80AA0854:
/* 80AA0854  7F E3 FB 78 */	mr r3, r31
/* 80AA0858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA085C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA0860  7C 08 03 A6 */	mtlr r0
/* 80AA0864  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0868  4E 80 00 20 */	blr 
