lbl_80CA6444:
/* 80CA6444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6448  7C 08 02 A6 */	mflr r0
/* 80CA644C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6450  3C 80 80 CA */	lis r4, l_arcName@ha
/* 80CA6454  38 84 65 84 */	addi r4, r4, l_arcName@l
/* 80CA6458  80 84 00 00 */	lwz r4, 0(r4)
/* 80CA645C  38 63 07 A4 */	addi r3, r3, 0x7a4
/* 80CA6460  4B 38 6B A8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CA6464  38 60 00 01 */	li r3, 1
/* 80CA6468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA646C  7C 08 03 A6 */	mtlr r0
/* 80CA6470  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6474  4E 80 00 20 */	blr 
