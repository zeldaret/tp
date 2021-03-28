lbl_8070B728:
/* 8070B728  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8070B72C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8070B730  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8070B734  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 8070B738  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8070B73C  7C 04 00 50 */	subf r0, r4, r0
/* 8070B740  7C 00 07 35 */	extsh. r0, r0
/* 8070B744  40 80 00 0C */	bge lbl_8070B750
/* 8070B748  7C 00 00 D0 */	neg r0, r0
/* 8070B74C  7C 00 07 34 */	extsh r0, r0
lbl_8070B750:
/* 8070B750  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8070B754  28 00 60 00 */	cmplwi r0, 0x6000
/* 8070B758  40 80 00 0C */	bge lbl_8070B764
/* 8070B75C  38 60 00 00 */	li r3, 0
/* 8070B760  4E 80 00 20 */	blr 
lbl_8070B764:
/* 8070B764  38 60 00 01 */	li r3, 1
/* 8070B768  4E 80 00 20 */	blr 
