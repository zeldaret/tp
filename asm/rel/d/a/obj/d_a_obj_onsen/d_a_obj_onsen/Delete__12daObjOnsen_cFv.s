lbl_80CA8008:
/* 80CA8008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA800C  7C 08 02 A6 */	mflr r0
/* 80CA8010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8014  7C 64 1B 78 */	mr r4, r3
/* 80CA8018  38 64 05 A0 */	addi r3, r4, 0x5a0
/* 80CA801C  88 04 05 B4 */	lbz r0, 0x5b4(r4)
/* 80CA8020  54 00 10 3A */	slwi r0, r0, 2
/* 80CA8024  3C 80 80 CB */	lis r4, l_arcName@ha /* 0x80CA815C@ha */
/* 80CA8028  38 84 81 5C */	addi r4, r4, l_arcName@l /* 0x80CA815C@l */
/* 80CA802C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CA8030  4B 38 4F D9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CA8034  38 60 00 01 */	li r3, 1
/* 80CA8038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA803C  7C 08 03 A6 */	mtlr r0
/* 80CA8040  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8044  4E 80 00 20 */	blr 
