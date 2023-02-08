lbl_80C67FF0:
/* 80C67FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67FF4  7C 08 02 A6 */	mflr r0
/* 80C67FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67FFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68000  7C 7F 1B 78 */	mr r31, r3
/* 80C68004  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C68008  4B 3A 4D 5D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80C6800C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C68010  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C68014  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C68018  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 80C6801C  7C 04 02 14 */	add r0, r4, r0
/* 80C68020  7C 04 07 34 */	extsh r4, r0
/* 80C68024  4B 3A 44 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C68028  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C6802C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C68030  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C68034  38 84 00 24 */	addi r4, r4, 0x24
/* 80C68038  4B 6D E4 79 */	bl PSMTXCopy
/* 80C6803C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C68040  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68044  7C 08 03 A6 */	mtlr r0
/* 80C68048  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6804C  4E 80 00 20 */	blr 
