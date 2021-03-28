lbl_80C8836C:
/* 80C8836C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C88370  7C 08 02 A6 */	mflr r0
/* 80C88374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88378  7C 64 1B 78 */	mr r4, r3
/* 80C8837C  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80C88380  88 04 05 AE */	lbz r0, 0x5ae(r4)
/* 80C88384  54 00 10 3A */	slwi r0, r0, 2
/* 80C88388  3C 80 80 C9 */	lis r4, l_type@ha
/* 80C8838C  38 84 85 24 */	addi r4, r4, l_type@l
/* 80C88390  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C88394  4B 3A 4C 74 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C88398  38 60 00 01 */	li r3, 1
/* 80C8839C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C883A0  7C 08 03 A6 */	mtlr r0
/* 80C883A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C883A8  4E 80 00 20 */	blr 
