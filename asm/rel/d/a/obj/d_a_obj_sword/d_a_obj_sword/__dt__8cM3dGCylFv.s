lbl_80CFD848:
/* 80CFD848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFD84C  7C 08 02 A6 */	mflr r0
/* 80CFD850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFD854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFD858  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CFD85C  41 82 00 1C */	beq lbl_80CFD878
/* 80CFD860  3C A0 80 D0 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CFDFCC@ha */
/* 80CFD864  38 05 DF CC */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CFDFCC@l */
/* 80CFD868  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CFD86C  7C 80 07 35 */	extsh. r0, r4
/* 80CFD870  40 81 00 08 */	ble lbl_80CFD878
/* 80CFD874  4B 5D 14 C9 */	bl __dl__FPv
lbl_80CFD878:
/* 80CFD878  7F E3 FB 78 */	mr r3, r31
/* 80CFD87C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFD880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFD884  7C 08 03 A6 */	mtlr r0
/* 80CFD888  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFD88C  4E 80 00 20 */	blr 
