lbl_80A91734:
/* 80A91734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A91738  7C 08 02 A6 */	mflr r0
/* 80A9173C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A91740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A91744  7C 7F 1B 78 */	mr r31, r3
/* 80A91748  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80A9174C  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 80A91750  4B 59 B8 B8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A91754  88 1F 0C C1 */	lbz r0, 0xcc1(r31)
/* 80A91758  28 00 00 00 */	cmplwi r0, 0
/* 80A9175C  41 82 00 10 */	beq lbl_80A9176C
/* 80A91760  38 00 00 00 */	li r0, 0
/* 80A91764  3C 60 80 A9 */	lis r3, struct_80A92AC4+0x1@ha
/* 80A91768  98 03 2A C5 */	stb r0, struct_80A92AC4+0x1@l(r3)
lbl_80A9176C:
/* 80A9176C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80A91770  28 00 00 00 */	cmplwi r0, 0
/* 80A91774  41 82 00 0C */	beq lbl_80A91780
/* 80A91778  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80A9177C  4B 82 C8 7C */	b deleteObject__14Z2SoundObjBaseFv
lbl_80A91780:
/* 80A91780  38 60 00 01 */	li r3, 1
/* 80A91784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A91788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9178C  7C 08 03 A6 */	mtlr r0
/* 80A91790  38 21 00 10 */	addi r1, r1, 0x10
/* 80A91794  4E 80 00 20 */	blr 
