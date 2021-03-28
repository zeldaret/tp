lbl_80CF6BFC:
/* 80CF6BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6C00  7C 08 02 A6 */	mflr r0
/* 80CF6C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6C08  3C 80 80 CF */	lis r4, l_arcName@ha
/* 80CF6C0C  38 84 6D B0 */	addi r4, r4, l_arcName@l
/* 80CF6C10  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF6C14  38 63 05 68 */	addi r3, r3, 0x568
/* 80CF6C18  4B 33 63 F0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CF6C1C  38 60 00 01 */	li r3, 1
/* 80CF6C20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6C24  7C 08 03 A6 */	mtlr r0
/* 80CF6C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6C2C  4E 80 00 20 */	blr 
