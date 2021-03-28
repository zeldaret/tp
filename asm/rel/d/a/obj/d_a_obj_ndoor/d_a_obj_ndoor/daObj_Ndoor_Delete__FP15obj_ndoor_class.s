lbl_80CA37AC:
/* 80CA37AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA37B0  7C 08 02 A6 */	mflr r0
/* 80CA37B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA37B8  3C 80 80 CA */	lis r4, stringBase0@ha
/* 80CA37BC  38 84 3A 6C */	addi r4, r4, stringBase0@l
/* 80CA37C0  38 63 05 68 */	addi r3, r3, 0x568
/* 80CA37C4  4B 38 98 44 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CA37C8  38 60 00 01 */	li r3, 1
/* 80CA37CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA37D0  7C 08 03 A6 */	mtlr r0
/* 80CA37D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA37D8  4E 80 00 20 */	blr 
