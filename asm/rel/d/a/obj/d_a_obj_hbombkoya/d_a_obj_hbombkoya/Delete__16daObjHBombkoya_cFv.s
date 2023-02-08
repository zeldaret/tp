lbl_80C1C16C:
/* 80C1C16C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1C170  7C 08 02 A6 */	mflr r0
/* 80C1C174  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1C178  28 03 00 00 */	cmplwi r3, 0
/* 80C1C17C  41 82 00 08 */	beq lbl_80C1C184
/* 80C1C180  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C1C184:
/* 80C1C184  3C 80 80 C2 */	lis r4, l_arcName@ha /* 0x80C1C734@ha */
/* 80C1C188  38 84 C7 34 */	addi r4, r4, l_arcName@l /* 0x80C1C734@l */
/* 80C1C18C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C1C190  4B 41 0E 79 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C1C194  38 60 00 01 */	li r3, 1
/* 80C1C198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1C19C  7C 08 03 A6 */	mtlr r0
/* 80C1C1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1C1A4  4E 80 00 20 */	blr 
