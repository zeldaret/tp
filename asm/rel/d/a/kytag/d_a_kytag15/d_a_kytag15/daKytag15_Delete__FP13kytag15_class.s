lbl_808608B8:
/* 808608B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808608BC  7C 08 02 A6 */	mflr r0
/* 808608C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808608C4  3C 80 80 86 */	lis r4, d_a_kytag15__stringBase0@ha /* 0x80860B68@ha */
/* 808608C8  38 84 0B 68 */	addi r4, r4, d_a_kytag15__stringBase0@l /* 0x80860B68@l */
/* 808608CC  38 63 05 84 */	addi r3, r3, 0x584
/* 808608D0  4B 7C C7 39 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 808608D4  38 60 00 01 */	li r3, 1
/* 808608D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808608DC  7C 08 03 A6 */	mtlr r0
/* 808608E0  38 21 00 10 */	addi r1, r1, 0x10
/* 808608E4  4E 80 00 20 */	blr 
