lbl_80D3FD8C:
/* 80D3FD8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3FD90  7C 08 02 A6 */	mflr r0
/* 80D3FD94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3FD98  7C 64 1B 78 */	mr r4, r3
/* 80D3FD9C  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80D3FDA0  88 04 0E 30 */	lbz r0, 0xe30(r4)
/* 80D3FDA4  54 00 10 3A */	slwi r0, r0, 2
/* 80D3FDA8  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D40398@ha */
/* 80D3FDAC  38 84 03 98 */	addi r4, r4, l_arcName@l /* 0x80D40398@l */
/* 80D3FDB0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3FDB4  4B 2E D2 55 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D3FDB8  38 60 00 01 */	li r3, 1
/* 80D3FDBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3FDC0  7C 08 03 A6 */	mtlr r0
/* 80D3FDC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3FDC8  4E 80 00 20 */	blr 
