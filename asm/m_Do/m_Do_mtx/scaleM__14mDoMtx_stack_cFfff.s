lbl_8000CE38:
/* 8000CE38  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8000CE3C  7C 08 02 A6 */	mflr r0
/* 8000CE40  90 01 00 44 */	stw r0, 0x44(r1)
/* 8000CE44  38 61 00 08 */	addi r3, r1, 8
/* 8000CE48  48 33 9B 21 */	bl PSMTXScale
/* 8000CE4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8000CE50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8000CE54  38 81 00 08 */	addi r4, r1, 8
/* 8000CE58  7C 65 1B 78 */	mr r5, r3
/* 8000CE5C  48 33 96 89 */	bl PSMTXConcat
/* 8000CE60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8000CE64  7C 08 03 A6 */	mtlr r0
/* 8000CE68  38 21 00 40 */	addi r1, r1, 0x40
/* 8000CE6C  4E 80 00 20 */	blr 
