lbl_80C9080C:
/* 80C9080C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C90810  7C 08 02 A6 */	mflr r0
/* 80C90814  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C90818  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9081C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C90820  41 82 00 1C */	beq lbl_80C9083C
/* 80C90824  3C A0 80 C9 */	lis r5, __vt__8cM3dGSph@ha /* 0x80C90A14@ha */
/* 80C90828  38 05 0A 14 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80C90A14@l */
/* 80C9082C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C90830  7C 80 07 35 */	extsh. r0, r4
/* 80C90834  40 81 00 08 */	ble lbl_80C9083C
/* 80C90838  4B 63 E5 05 */	bl __dl__FPv
lbl_80C9083C:
/* 80C9083C  7F E3 FB 78 */	mr r3, r31
/* 80C90840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C90844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C90848  7C 08 03 A6 */	mtlr r0
/* 80C9084C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C90850  4E 80 00 20 */	blr 
