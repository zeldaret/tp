lbl_80BA2124:
/* 80BA2124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA2128  7C 08 02 A6 */	mflr r0
/* 80BA212C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA2130  3C 80 80 BA */	lis r4, stringBase0@ha
/* 80BA2134  38 84 23 D4 */	addi r4, r4, stringBase0@l
/* 80BA2138  38 63 05 B8 */	addi r3, r3, 0x5b8
/* 80BA213C  4B 48 AE CC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BA2140  38 60 00 01 */	li r3, 1
/* 80BA2144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA2148  7C 08 03 A6 */	mtlr r0
/* 80BA214C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA2150  4E 80 00 20 */	blr 
