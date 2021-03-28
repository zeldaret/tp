lbl_8046EC10:
/* 8046EC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046EC14  7C 08 02 A6 */	mflr r0
/* 8046EC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046EC1C  7C 64 1B 78 */	mr r4, r3
/* 8046EC20  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 8046EC24  80 04 00 B0 */	lwz r0, 0xb0(r4)
/* 8046EC28  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 8046EC2C  3C 80 80 47 */	lis r4, l_arcName@ha
/* 8046EC30  38 84 EE D4 */	addi r4, r4, l_arcName@l
/* 8046EC34  7C 84 00 2E */	lwzx r4, r4, r0
/* 8046EC38  4B BB E3 D0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8046EC3C  38 60 00 01 */	li r3, 1
/* 8046EC40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046EC44  7C 08 03 A6 */	mtlr r0
/* 8046EC48  38 21 00 10 */	addi r1, r1, 0x10
/* 8046EC4C  4E 80 00 20 */	blr 
