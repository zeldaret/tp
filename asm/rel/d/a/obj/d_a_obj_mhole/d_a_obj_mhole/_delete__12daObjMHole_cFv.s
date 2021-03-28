lbl_80C93CAC:
/* 80C93CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C93CB0  7C 08 02 A6 */	mflr r0
/* 80C93CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C93CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C93CBC  7C 7F 1B 78 */	mr r31, r3
/* 80C93CC0  4B FF FD C9 */	bl effectEnd__12daObjMHole_cFv
/* 80C93CC4  38 7F 07 14 */	addi r3, r31, 0x714
/* 80C93CC8  4B 62 A3 30 */	b deleteObject__14Z2SoundObjBaseFv
/* 80C93CCC  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C93CD0  88 1F 07 02 */	lbz r0, 0x702(r31)
/* 80C93CD4  54 00 10 3A */	slwi r0, r0, 2
/* 80C93CD8  3C 80 80 C9 */	lis r4, l_arcName@ha
/* 80C93CDC  38 84 3E 14 */	addi r4, r4, l_arcName@l
/* 80C93CE0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C93CE4  4B 39 93 24 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C93CE8  38 60 00 01 */	li r3, 1
/* 80C93CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C93CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C93CF4  7C 08 03 A6 */	mtlr r0
/* 80C93CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C93CFC  4E 80 00 20 */	blr 
