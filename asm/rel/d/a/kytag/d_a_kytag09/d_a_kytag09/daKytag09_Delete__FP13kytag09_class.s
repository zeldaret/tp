lbl_8085B604:
/* 8085B604  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085B608  7C 08 02 A6 */	mflr r0
/* 8085B60C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085B610  88 03 05 C5 */	lbz r0, 0x5c5(r3)
/* 8085B614  28 00 00 01 */	cmplwi r0, 1
/* 8085B618  41 82 00 18 */	beq lbl_8085B630
/* 8085B61C  38 63 05 BC */	addi r3, r3, 0x5bc
/* 8085B620  3C 80 80 86 */	lis r4, stringBase0@ha
/* 8085B624  38 84 BA 4C */	addi r4, r4, stringBase0@l
/* 8085B628  4B 7D 19 E0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8085B62C  48 00 00 18 */	b lbl_8085B644
lbl_8085B630:
/* 8085B630  38 63 05 BC */	addi r3, r3, 0x5bc
/* 8085B634  3C 80 80 86 */	lis r4, stringBase0@ha
/* 8085B638  38 84 BA 4C */	addi r4, r4, stringBase0@l
/* 8085B63C  38 84 00 08 */	addi r4, r4, 8
/* 8085B640  4B 7D 19 C8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_8085B644:
/* 8085B644  38 60 00 01 */	li r3, 1
/* 8085B648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085B64C  7C 08 03 A6 */	mtlr r0
/* 8085B650  38 21 00 10 */	addi r1, r1, 0x10
/* 8085B654  4E 80 00 20 */	blr 
