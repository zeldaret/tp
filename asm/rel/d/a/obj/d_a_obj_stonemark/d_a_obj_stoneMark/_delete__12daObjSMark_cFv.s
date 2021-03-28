lbl_8059A33C:
/* 8059A33C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A340  7C 08 02 A6 */	mflr r0
/* 8059A344  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A348  3C 80 80 5A */	lis r4, l_arcName@ha
/* 8059A34C  38 84 A4 10 */	addi r4, r4, l_arcName@l
/* 8059A350  80 84 00 00 */	lwz r4, 0(r4)
/* 8059A354  38 63 05 68 */	addi r3, r3, 0x568
/* 8059A358  4B A9 2C B0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8059A35C  38 60 00 01 */	li r3, 1
/* 8059A360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A364  7C 08 03 A6 */	mtlr r0
/* 8059A368  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A36C  4E 80 00 20 */	blr 
