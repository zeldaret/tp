lbl_80D36944:
/* 80D36944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D36948  7C 08 02 A6 */	mflr r0
/* 80D3694C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D36950  3C 80 80 D3 */	lis r4, l_arcName@ha
/* 80D36954  38 84 6A 6C */	addi r4, r4, l_arcName@l
/* 80D36958  80 84 00 00 */	lwz r4, 0(r4)
/* 80D3695C  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 80D36960  4B 2F 66 A8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D36964  38 60 00 01 */	li r3, 1
/* 80D36968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3696C  7C 08 03 A6 */	mtlr r0
/* 80D36970  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36974  4E 80 00 20 */	blr 
