lbl_8000CD9C:
/* 8000CD9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8000CDA0  7C 08 02 A6 */	mflr r0
/* 8000CDA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8000CDA8  38 61 00 08 */	addi r3, r1, 8
/* 8000CDAC  48 33 9B 3D */	bl PSMTXTrans
/* 8000CDB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8000CDB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8000CDB8  38 81 00 08 */	addi r4, r1, 8
/* 8000CDBC  7C 65 1B 78 */	mr r5, r3
/* 8000CDC0  48 33 97 25 */	bl PSMTXConcat
/* 8000CDC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8000CDC8  7C 08 03 A6 */	mtlr r0
/* 8000CDCC  38 21 00 40 */	addi r1, r1, 0x40
/* 8000CDD0  4E 80 00 20 */	blr 
