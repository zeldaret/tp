lbl_80C835DC:
/* 80C835DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C835E0  7C 08 02 A6 */	mflr r0
/* 80C835E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C835E8  28 03 00 00 */	cmplwi r3, 0
/* 80C835EC  41 82 00 08 */	beq lbl_80C835F4
/* 80C835F0  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C835F4:
/* 80C835F4  3C 80 80 C8 */	lis r4, l_arcName@ha
/* 80C835F8  38 84 38 54 */	addi r4, r4, l_arcName@l
/* 80C835FC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C83600  4B 3A 9A 08 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C83604  38 60 00 01 */	li r3, 1
/* 80C83608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8360C  7C 08 03 A6 */	mtlr r0
/* 80C83610  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83614  4E 80 00 20 */	blr 
