lbl_80D266FC:
/* 80D266FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D26700  7C 08 02 A6 */	mflr r0
/* 80D26704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D26708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2670C  7C 7F 1B 78 */	mr r31, r3
/* 80D26710  80 63 05 C4 */	lwz r3, 0x5c4(r3)
/* 80D26714  28 03 00 00 */	cmplwi r3, 0
/* 80D26718  41 82 00 20 */	beq lbl_80D26738
/* 80D2671C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80D26720  60 00 00 01 */	ori r0, r0, 1
/* 80D26724  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80D26728  38 00 00 01 */	li r0, 1
/* 80D2672C  90 03 00 24 */	stw r0, 0x24(r3)
/* 80D26730  38 00 00 00 */	li r0, 0
/* 80D26734  90 1F 05 C4 */	stw r0, 0x5c4(r31)
lbl_80D26738:
/* 80D26738  7F E3 FB 78 */	mr r3, r31
/* 80D2673C  4B FF F0 1D */	bl endSrcEffect__14daObjVolcBom_cFv
/* 80D26740  7F E3 FB 78 */	mr r3, r31
/* 80D26744  4B FF EF 21 */	bl endBindEffect__14daObjVolcBom_cFv
/* 80D26748  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80D2674C  3C 80 80 D2 */	lis r4, l_arcName@ha /* 0x80D26C74@ha */
/* 80D26750  38 84 6C 74 */	addi r4, r4, l_arcName@l /* 0x80D26C74@l */
/* 80D26754  80 84 00 00 */	lwz r4, 0(r4)
/* 80D26758  4B 30 68 B1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D2675C  38 60 00 01 */	li r3, 1
/* 80D26760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D26764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D26768  7C 08 03 A6 */	mtlr r0
/* 80D2676C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26770  4E 80 00 20 */	blr 
