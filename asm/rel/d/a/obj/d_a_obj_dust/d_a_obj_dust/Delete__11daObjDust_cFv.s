lbl_80BE2F40:
/* 80BE2F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE2F44  7C 08 02 A6 */	mflr r0
/* 80BE2F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE2F4C  3C 80 80 BE */	lis r4, l_arcName@ha
/* 80BE2F50  38 84 30 54 */	addi r4, r4, l_arcName@l
/* 80BE2F54  80 84 00 00 */	lwz r4, 0(r4)
/* 80BE2F58  38 63 06 28 */	addi r3, r3, 0x628
/* 80BE2F5C  4B 44 A0 AC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BE2F60  38 60 00 01 */	li r3, 1
/* 80BE2F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE2F68  7C 08 03 A6 */	mtlr r0
/* 80BE2F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE2F70  4E 80 00 20 */	blr 
