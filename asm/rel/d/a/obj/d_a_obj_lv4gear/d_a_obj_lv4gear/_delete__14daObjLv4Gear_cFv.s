lbl_80C68444:
/* 80C68444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68448  7C 08 02 A6 */	mflr r0
/* 80C6844C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68450  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C6852C@ha */
/* 80C68454  38 84 85 2C */	addi r4, r4, l_arcName@l /* 0x80C6852C@l */
/* 80C68458  80 84 00 00 */	lwz r4, 0(r4)
/* 80C6845C  38 63 05 68 */	addi r3, r3, 0x568
/* 80C68460  4B 3C 4B A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C68464  38 60 00 01 */	li r3, 1
/* 80C68468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6846C  7C 08 03 A6 */	mtlr r0
/* 80C68470  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68474  4E 80 00 20 */	blr 
