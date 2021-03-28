lbl_80D1F6EC:
/* 80D1F6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F6F0  7C 08 02 A6 */	mflr r0
/* 80D1F6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F6F8  3C 80 80 D2 */	lis r4, l_arcName@ha
/* 80D1F6FC  38 84 F8 F4 */	addi r4, r4, l_arcName@l
/* 80D1F700  80 84 00 00 */	lwz r4, 0(r4)
/* 80D1F704  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80D1F708  4B 30 D9 00 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D1F70C  38 60 00 01 */	li r3, 1
/* 80D1F710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F714  7C 08 03 A6 */	mtlr r0
/* 80D1F718  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F71C  4E 80 00 20 */	blr 
