lbl_80C6E3C8:
/* 80C6E3C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6E3CC  7C 08 02 A6 */	mflr r0
/* 80C6E3D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6E3D4  28 03 00 00 */	cmplwi r3, 0
/* 80C6E3D8  41 82 00 08 */	beq lbl_80C6E3E0
/* 80C6E3DC  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C6E3E0:
/* 80C6E3E0  3C 80 80 C7 */	lis r4, l_arcName@ha
/* 80C6E3E4  38 84 E9 F4 */	addi r4, r4, l_arcName@l
/* 80C6E3E8  80 84 00 00 */	lwz r4, 0(r4)
/* 80C6E3EC  4B 3B EC 1C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C6E3F0  38 60 00 01 */	li r3, 1
/* 80C6E3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6E3F8  7C 08 03 A6 */	mtlr r0
/* 80C6E3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6E400  4E 80 00 20 */	blr 
