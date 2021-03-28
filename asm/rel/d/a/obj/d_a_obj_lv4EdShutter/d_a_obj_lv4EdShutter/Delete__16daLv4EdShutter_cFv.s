lbl_80C5E670:
/* 80C5E670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E674  7C 08 02 A6 */	mflr r0
/* 80C5E678  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E67C  3C 80 80 C6 */	lis r4, stringBase0@ha
/* 80C5E680  38 84 E8 FC */	addi r4, r4, stringBase0@l
/* 80C5E684  38 63 05 B8 */	addi r3, r3, 0x5b8
/* 80C5E688  4B 3C E9 80 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C5E68C  38 60 00 01 */	li r3, 1
/* 80C5E690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E694  7C 08 03 A6 */	mtlr r0
/* 80C5E698  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E69C  4E 80 00 20 */	blr 
