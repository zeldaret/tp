lbl_8068173C:
/* 8068173C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80681740  7C 08 02 A6 */	mflr r0
/* 80681744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80681748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068174C  7C 7F 1B 78 */	mr r31, r3
/* 80681750  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80681754  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80681758  4B 9A B8 B0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8068175C  88 1F 0A A0 */	lbz r0, 0xaa0(r31)
/* 80681760  28 00 00 00 */	cmplwi r0, 0
/* 80681764  41 82 00 10 */	beq lbl_80681774
/* 80681768  38 00 00 00 */	li r0, 0
/* 8068176C  3C 60 80 68 */	lis r3, data_80682638@ha
/* 80681770  98 03 26 38 */	stb r0, data_80682638@l(r3)
lbl_80681774:
/* 80681774  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80681778  28 00 00 00 */	cmplwi r0, 0
/* 8068177C  41 82 00 0C */	beq lbl_80681788
/* 80681780  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80681784  4B 98 FB 8C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80681788:
/* 80681788  38 60 00 01 */	li r3, 1
/* 8068178C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80681790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80681794  7C 08 03 A6 */	mtlr r0
/* 80681798  38 21 00 10 */	addi r1, r1, 0x10
/* 8068179C  4E 80 00 20 */	blr 
