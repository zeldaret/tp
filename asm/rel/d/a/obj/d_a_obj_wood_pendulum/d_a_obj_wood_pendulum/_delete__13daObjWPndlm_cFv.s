lbl_80D39BCC:
/* 80D39BCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D39BD0  7C 08 02 A6 */	mflr r0
/* 80D39BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D39BD8  3C 80 80 D4 */	lis r4, l_arcName@ha
/* 80D39BDC  38 84 9D 44 */	addi r4, r4, l_arcName@l
/* 80D39BE0  80 84 00 00 */	lwz r4, 0(r4)
/* 80D39BE4  38 63 05 68 */	addi r3, r3, 0x568
/* 80D39BE8  4B 2F 34 20 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D39BEC  38 60 00 01 */	li r3, 1
/* 80D39BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39BF4  7C 08 03 A6 */	mtlr r0
/* 80D39BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D39BFC  4E 80 00 20 */	blr 
