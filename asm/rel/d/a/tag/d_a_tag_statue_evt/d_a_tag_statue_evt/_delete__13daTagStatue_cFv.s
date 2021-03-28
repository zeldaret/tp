lbl_805A7FF8:
/* 805A7FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7FFC  7C 08 02 A6 */	mflr r0
/* 805A8000  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A8008  7C 7F 1B 78 */	mr r31, r3
/* 805A800C  4B FF FB 19 */	bl endParticle__13daTagStatue_cFv
/* 805A8010  38 7F 05 68 */	addi r3, r31, 0x568
/* 805A8014  3C 80 80 5B */	lis r4, l_arcName@ha
/* 805A8018  38 84 82 1C */	addi r4, r4, l_arcName@l
/* 805A801C  80 84 00 00 */	lwz r4, 0(r4)
/* 805A8020  4B A8 4F E8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805A8024  88 1F 05 97 */	lbz r0, 0x597(r31)
/* 805A8028  54 00 10 3A */	slwi r0, r0, 2
/* 805A802C  3C 60 80 5B */	lis r3, l_evArcName@ha
/* 805A8030  38 63 82 40 */	addi r3, r3, l_evArcName@l
/* 805A8034  7C 83 00 2E */	lwzx r4, r3, r0
/* 805A8038  28 04 00 00 */	cmplwi r4, 0
/* 805A803C  41 82 00 0C */	beq lbl_805A8048
/* 805A8040  38 7F 05 70 */	addi r3, r31, 0x570
/* 805A8044  4B A8 4F C4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_805A8048:
/* 805A8048  38 60 00 01 */	li r3, 1
/* 805A804C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A8050  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8054  7C 08 03 A6 */	mtlr r0
/* 805A8058  38 21 00 10 */	addi r1, r1, 0x10
/* 805A805C  4E 80 00 20 */	blr 
