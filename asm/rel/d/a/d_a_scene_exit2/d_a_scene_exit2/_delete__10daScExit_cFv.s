lbl_8059E71C:
/* 8059E71C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E720  7C 08 02 A6 */	mflr r0
/* 8059E724  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E728  3C 80 80 5A */	lis r4, l_arcName@ha
/* 8059E72C  38 84 E8 58 */	addi r4, r4, l_arcName@l
/* 8059E730  80 84 00 00 */	lwz r4, 0(r4)
/* 8059E734  38 63 05 68 */	addi r3, r3, 0x568
/* 8059E738  4B A8 E8 D0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8059E73C  38 60 00 01 */	li r3, 1
/* 8059E740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E744  7C 08 03 A6 */	mtlr r0
/* 8059E748  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E74C  4E 80 00 20 */	blr 
