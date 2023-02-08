lbl_805978BC:
/* 805978BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805978C0  7C 08 02 A6 */	mflr r0
/* 805978C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805978C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805978CC  7C 7F 1B 78 */	mr r31, r3
/* 805978D0  38 7F 0B 4C */	addi r3, r31, 0xb4c
/* 805978D4  4B D2 67 25 */	bl deleteObject__14Z2SoundObjBaseFv
/* 805978D8  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 805978DC  88 1F 0A F0 */	lbz r0, 0xaf0(r31)
/* 805978E0  54 00 10 3A */	slwi r0, r0, 2
/* 805978E4  3C 80 80 59 */	lis r4, l_arcName@ha /* 0x80597E84@ha */
/* 805978E8  38 84 7E 84 */	addi r4, r4, l_arcName@l /* 0x80597E84@l */
/* 805978EC  7C 84 00 2E */	lwzx r4, r4, r0
/* 805978F0  4B A9 57 19 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805978F4  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 805978F8  3C 80 80 59 */	lis r4, l_ropeArcName@ha /* 0x80597E8C@ha */
/* 805978FC  38 84 7E 8C */	addi r4, r4, l_ropeArcName@l /* 0x80597E8C@l */
/* 80597900  80 84 00 00 */	lwz r4, 0(r4)
/* 80597904  4B A9 57 05 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80597908  38 60 00 01 */	li r3, 1
/* 8059790C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597914  7C 08 03 A6 */	mtlr r0
/* 80597918  38 21 00 10 */	addi r1, r1, 0x10
/* 8059791C  4E 80 00 20 */	blr 
