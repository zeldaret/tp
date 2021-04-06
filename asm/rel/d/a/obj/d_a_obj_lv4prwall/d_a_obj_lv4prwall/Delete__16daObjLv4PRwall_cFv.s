lbl_80C69760:
/* 80C69760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69764  7C 08 02 A6 */	mflr r0
/* 80C69768  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6976C  7C 64 1B 79 */	or. r4, r3, r3
/* 80C69770  41 82 00 08 */	beq lbl_80C69778
/* 80C69774  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C69778:
/* 80C69778  80 04 06 14 */	lwz r0, 0x614(r4)
/* 80C6977C  54 00 10 3A */	slwi r0, r0, 2
/* 80C69780  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C69990@ha */
/* 80C69784  38 84 99 90 */	addi r4, r4, l_arcName@l /* 0x80C69990@l */
/* 80C69788  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C6978C  4B 3C 38 7D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C69790  38 60 00 01 */	li r3, 1
/* 80C69794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69798  7C 08 03 A6 */	mtlr r0
/* 80C6979C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C697A0  4E 80 00 20 */	blr 
