lbl_80C46CC0:
/* 80C46CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46CC4  7C 08 02 A6 */	mflr r0
/* 80C46CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46CCC  3C 80 80 C4 */	lis r4, l_arcName@ha /* 0x80C46F98@ha */
/* 80C46CD0  38 84 6F 98 */	addi r4, r4, l_arcName@l /* 0x80C46F98@l */
/* 80C46CD4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C46CD8  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80C46CDC  4B 3E 63 2D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C46CE0  38 60 00 01 */	li r3, 1
/* 80C46CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46CE8  7C 08 03 A6 */	mtlr r0
/* 80C46CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46CF0  4E 80 00 20 */	blr 
