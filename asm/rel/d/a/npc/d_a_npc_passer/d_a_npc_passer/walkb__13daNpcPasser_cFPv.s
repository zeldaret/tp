lbl_80AA5704:
/* 80AA5704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA5708  7C 08 02 A6 */	mflr r0
/* 80AA570C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA5710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA5714  7C 7F 1B 78 */	mr r31, r3
/* 80AA5718  38 80 00 03 */	li r4, 3
/* 80AA571C  80 A3 0B 00 */	lwz r5, 0xb00(r3)
/* 80AA5720  4B 6B 29 D1 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA5724  7C 64 1B 78 */	mr r4, r3
/* 80AA5728  7F E3 FB 78 */	mr r3, r31
/* 80AA572C  3C A0 80 AA */	lis r5, lit_4189@ha /* 0x80AA6998@ha */
/* 80AA5730  C0 25 69 98 */	lfs f1, lit_4189@l(r5)  /* 0x80AA6998@l */
/* 80AA5734  3C A0 80 AA */	lis r5, lit_4190@ha /* 0x80AA699C@ha */
/* 80AA5738  C0 45 69 9C */	lfs f2, lit_4190@l(r5)  /* 0x80AA699C@l */
/* 80AA573C  38 A0 00 02 */	li r5, 2
/* 80AA5740  38 C0 00 00 */	li r6, 0
/* 80AA5744  38 E0 FF FF */	li r7, -1
/* 80AA5748  4B 6B 37 B9 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA574C  38 00 00 02 */	li r0, 2
/* 80AA5750  90 1F 0B 1C */	stw r0, 0xb1c(r31)
/* 80AA5754  38 60 00 01 */	li r3, 1
/* 80AA5758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA575C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA5760  7C 08 03 A6 */	mtlr r0
/* 80AA5764  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA5768  4E 80 00 20 */	blr 
