lbl_80C8F970:
/* 80C8F970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8F974  7C 08 02 A6 */	mflr r0
/* 80C8F978  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8F97C  7C 64 1B 78 */	mr r4, r3
/* 80C8F980  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80C8F984  88 04 05 DC */	lbz r0, 0x5dc(r4)
/* 80C8F988  54 00 10 3A */	slwi r0, r0, 2
/* 80C8F98C  3C 80 80 C9 */	lis r4, l_arcName@ha
/* 80C8F990  38 84 FB B0 */	addi r4, r4, l_arcName@l
/* 80C8F994  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C8F998  4B 39 D6 70 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C8F99C  38 60 00 01 */	li r3, 1
/* 80C8F9A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8F9A4  7C 08 03 A6 */	mtlr r0
/* 80C8F9A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8F9AC  4E 80 00 20 */	blr 
