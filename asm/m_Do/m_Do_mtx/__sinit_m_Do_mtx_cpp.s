lbl_8000CFB8:
/* 8000CFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000CFBC  7C 08 02 A6 */	mflr r0
/* 8000CFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000CFC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000CFC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8000CFCC  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 8000CFD0  38 7F 00 30 */	addi r3, r31, 0x30
/* 8000CFD4  90 6D 80 28 */	stw r3, next__14mDoMtx_stack_c(r13)
/* 8000CFD8  38 03 03 00 */	addi r0, r3, 0x300
/* 8000CFDC  90 0D 80 2C */	stw r0, end__14mDoMtx_stack_c(r13)
/* 8000CFE0  38 6D 86 98 */	la r3, mDoMtx_stack(r13) /* 80450C18-_SDA_BASE_ */
/* 8000CFE4  3C 80 80 01 */	lis r4, __dt__14mDoMtx_stack_cFv@ha
/* 8000CFE8  38 84 D0 70 */	addi r4, r4, __dt__14mDoMtx_stack_cFv@l
/* 8000CFEC  38 BF 03 30 */	addi r5, r31, 0x330
/* 8000CFF0  48 35 4C 35 */	bl __register_global_object
/* 8000CFF4  38 7F 03 48 */	addi r3, r31, 0x348
/* 8000CFF8  38 03 00 04 */	addi r0, r3, 4
/* 8000CFFC  90 1F 03 48 */	stw r0, 0x348(r31)
/* 8000D000  38 03 00 14 */	addi r0, r3, 0x14
/* 8000D004  90 03 01 14 */	stw r0, 0x114(r3)
/* 8000D008  38 03 01 14 */	addi r0, r3, 0x114
/* 8000D00C  90 03 01 18 */	stw r0, 0x118(r3)
/* 8000D010  3C 80 80 01 */	lis r4, __dt__18mDoMtx_quatStack_cFv@ha
/* 8000D014  38 84 D0 34 */	addi r4, r4, __dt__18mDoMtx_quatStack_cFv@l
/* 8000D018  38 BF 03 3C */	addi r5, r31, 0x33c
/* 8000D01C  48 35 4C 09 */	bl __register_global_object
/* 8000D020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000D024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000D028  7C 08 03 A6 */	mtlr r0
/* 8000D02C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000D030  4E 80 00 20 */	blr 
