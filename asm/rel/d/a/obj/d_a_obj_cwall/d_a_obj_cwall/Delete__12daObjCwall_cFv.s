lbl_80BD9948:
/* 80BD9948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD994C  7C 08 02 A6 */	mflr r0
/* 80BD9950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9954  7C 64 1B 78 */	mr r4, r3
/* 80BD9958  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80BD995C  88 04 0F 11 */	lbz r0, 0xf11(r4)
/* 80BD9960  54 00 10 3A */	slwi r0, r0, 2
/* 80BD9964  3C 80 80 BE */	lis r4, l_arcName@ha /* 0x80BDA0E0@ha */
/* 80BD9968  38 84 A0 E0 */	addi r4, r4, l_arcName@l /* 0x80BDA0E0@l */
/* 80BD996C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BD9970  4B 45 36 99 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BD9974  38 60 00 01 */	li r3, 1
/* 80BD9978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD997C  7C 08 03 A6 */	mtlr r0
/* 80BD9980  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9984  4E 80 00 20 */	blr 
