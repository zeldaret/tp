lbl_80D2FC9C:
/* 80D2FC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2FCA0  7C 08 02 A6 */	mflr r0
/* 80D2FCA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2FCA8  3C 80 80 D3 */	lis r4, l_arcName@ha
/* 80D2FCAC  38 84 FD 84 */	addi r4, r4, l_arcName@l
/* 80D2FCB0  80 84 00 00 */	lwz r4, 0(r4)
/* 80D2FCB4  38 63 05 68 */	addi r3, r3, 0x568
/* 80D2FCB8  4B 2F D3 50 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D2FCBC  38 60 00 01 */	li r3, 1
/* 80D2FCC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2FCC4  7C 08 03 A6 */	mtlr r0
/* 80D2FCC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2FCCC  4E 80 00 20 */	blr 
