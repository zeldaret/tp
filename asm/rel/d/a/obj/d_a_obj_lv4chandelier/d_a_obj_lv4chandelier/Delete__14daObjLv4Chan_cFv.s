lbl_80C66114:
/* 80C66114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66118  7C 08 02 A6 */	mflr r0
/* 80C6611C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66120  28 03 00 00 */	cmplwi r3, 0
/* 80C66124  41 82 00 08 */	beq lbl_80C6612C
/* 80C66128  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C6612C:
/* 80C6612C  3C 80 80 C6 */	lis r4, l_arcName@ha
/* 80C66130  38 84 69 90 */	addi r4, r4, l_arcName@l
/* 80C66134  80 84 00 00 */	lwz r4, 0(r4)
/* 80C66138  4B 3C 6E D0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C6613C  38 60 00 01 */	li r3, 1
/* 80C66140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66144  7C 08 03 A6 */	mtlr r0
/* 80C66148  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6614C  4E 80 00 20 */	blr 
