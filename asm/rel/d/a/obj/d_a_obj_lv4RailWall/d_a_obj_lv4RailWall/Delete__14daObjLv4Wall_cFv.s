lbl_80C614E0:
/* 80C614E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C614E4  7C 08 02 A6 */	mflr r0
/* 80C614E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C614EC  3C 80 80 C6 */	lis r4, l_arcName@ha /* 0x80C61BDC@ha */
/* 80C614F0  38 84 1B DC */	addi r4, r4, l_arcName@l /* 0x80C61BDC@l */
/* 80C614F4  80 84 00 00 */	lwz r4, 0(r4)
/* 80C614F8  38 63 05 B0 */	addi r3, r3, 0x5b0
/* 80C614FC  4B 3C BB 0D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C61500  38 60 00 01 */	li r3, 1
/* 80C61504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C61508  7C 08 03 A6 */	mtlr r0
/* 80C6150C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61510  4E 80 00 20 */	blr 
