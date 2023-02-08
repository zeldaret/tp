lbl_80AA5634:
/* 80AA5634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA5638  7C 08 02 A6 */	mflr r0
/* 80AA563C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA5640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA5644  7C 7F 1B 78 */	mr r31, r3
/* 80AA5648  38 80 00 04 */	li r4, 4
/* 80AA564C  80 A3 0B 00 */	lwz r5, 0xb00(r3)
/* 80AA5650  4B 6B 2A A1 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA5654  7C 64 1B 78 */	mr r4, r3
/* 80AA5658  7F E3 FB 78 */	mr r3, r31
/* 80AA565C  3C A0 80 AA */	lis r5, lit_4189@ha /* 0x80AA6998@ha */
/* 80AA5660  C0 25 69 98 */	lfs f1, lit_4189@l(r5)  /* 0x80AA6998@l */
/* 80AA5664  3C A0 80 AA */	lis r5, lit_4190@ha /* 0x80AA699C@ha */
/* 80AA5668  C0 45 69 9C */	lfs f2, lit_4190@l(r5)  /* 0x80AA699C@l */
/* 80AA566C  38 A0 00 02 */	li r5, 2
/* 80AA5670  38 C0 00 00 */	li r6, 0
/* 80AA5674  38 E0 FF FF */	li r7, -1
/* 80AA5678  4B 6B 38 89 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA567C  38 00 00 01 */	li r0, 1
/* 80AA5680  90 1F 0B 1C */	stw r0, 0xb1c(r31)
/* 80AA5684  38 60 00 01 */	li r3, 1
/* 80AA5688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA568C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA5690  7C 08 03 A6 */	mtlr r0
/* 80AA5694  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA5698  4E 80 00 20 */	blr 
