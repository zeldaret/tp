lbl_80C689E8:
/* 80C689E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C689EC  7C 08 02 A6 */	mflr r0
/* 80C689F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C689F4  28 03 00 00 */	cmplwi r3, 0
/* 80C689F8  41 82 00 08 */	beq lbl_80C68A00
/* 80C689FC  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C68A00:
/* 80C68A00  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C68B98@ha */
/* 80C68A04  38 84 8B 98 */	addi r4, r4, l_arcName@l /* 0x80C68B98@l */
/* 80C68A08  80 84 00 00 */	lwz r4, 0(r4)
/* 80C68A0C  4B 3C 45 FD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C68A10  38 60 00 01 */	li r3, 1
/* 80C68A14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C68A18  7C 08 03 A6 */	mtlr r0
/* 80C68A1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C68A20  4E 80 00 20 */	blr 
