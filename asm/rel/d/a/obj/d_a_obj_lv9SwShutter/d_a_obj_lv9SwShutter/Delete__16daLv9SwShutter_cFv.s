lbl_80C8D674:
/* 80C8D674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8D678  7C 08 02 A6 */	mflr r0
/* 80C8D67C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8D680  3C 80 80 C9 */	lis r4, stringBase0@ha
/* 80C8D684  38 84 D8 00 */	addi r4, r4, stringBase0@l
/* 80C8D688  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C8D68C  4B 39 F9 7C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C8D690  38 60 00 01 */	li r3, 1
/* 80C8D694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8D698  7C 08 03 A6 */	mtlr r0
/* 80C8D69C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8D6A0  4E 80 00 20 */	blr 
