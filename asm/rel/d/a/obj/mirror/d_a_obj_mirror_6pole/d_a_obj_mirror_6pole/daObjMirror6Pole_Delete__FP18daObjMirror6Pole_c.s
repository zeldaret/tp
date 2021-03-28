lbl_80C96328:
/* 80C96328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9632C  7C 08 02 A6 */	mflr r0
/* 80C96330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C96334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C96338  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9633C  41 82 00 24 */	beq lbl_80C96360
/* 80C96340  38 7F 05 70 */	addi r3, r31, 0x570
/* 80C96344  3C 80 80 C9 */	lis r4, l_arcName@ha
/* 80C96348  38 84 65 4C */	addi r4, r4, l_arcName@l
/* 80C9634C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C96350  4B 39 6C B8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C96354  7F E3 FB 78 */	mr r3, r31
/* 80C96358  38 80 00 00 */	li r4, 0
/* 80C9635C  4B 38 29 30 */	b __dt__10fopAc_ac_cFv
lbl_80C96360:
/* 80C96360  38 60 00 01 */	li r3, 1
/* 80C96364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C96368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9636C  7C 08 03 A6 */	mtlr r0
/* 80C96370  38 21 00 10 */	addi r1, r1, 0x10
/* 80C96374  4E 80 00 20 */	blr 
