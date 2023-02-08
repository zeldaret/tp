lbl_80AA5510:
/* 80AA5510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA5514  7C 08 02 A6 */	mflr r0
/* 80AA5518  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA551C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA5520  7C 7F 1B 78 */	mr r31, r3
/* 80AA5524  88 03 0B 22 */	lbz r0, 0xb22(r3)
/* 80AA5528  28 00 00 00 */	cmplwi r0, 0
/* 80AA552C  41 82 00 4C */	beq lbl_80AA5578
/* 80AA5530  38 80 00 00 */	li r4, 0
/* 80AA5534  80 BF 0B 00 */	lwz r5, 0xb00(r31)
/* 80AA5538  4B 6B 2B B9 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA553C  7C 64 1B 78 */	mr r4, r3
/* 80AA5540  7F E3 FB 78 */	mr r3, r31
/* 80AA5544  3C A0 80 AA */	lis r5, lit_4189@ha /* 0x80AA6998@ha */
/* 80AA5548  C0 25 69 98 */	lfs f1, lit_4189@l(r5)  /* 0x80AA6998@l */
/* 80AA554C  3C A0 80 AA */	lis r5, lit_4190@ha /* 0x80AA699C@ha */
/* 80AA5550  C0 45 69 9C */	lfs f2, lit_4190@l(r5)  /* 0x80AA699C@l */
/* 80AA5554  38 A0 00 02 */	li r5, 2
/* 80AA5558  38 C0 00 00 */	li r6, 0
/* 80AA555C  38 E0 FF FF */	li r7, -1
/* 80AA5560  4B 6B 39 A1 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA5564  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80AA5568  38 03 40 00 */	addi r0, r3, 0x4000
/* 80AA556C  B0 1F 0B 20 */	sth r0, 0xb20(r31)
/* 80AA5570  38 00 00 00 */	li r0, 0
/* 80AA5574  98 1F 0B 22 */	stb r0, 0xb22(r31)
lbl_80AA5578:
/* 80AA5578  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80AA557C  A8 9F 0B 20 */	lha r4, 0xb20(r31)
/* 80AA5580  38 A0 00 04 */	li r5, 4
/* 80AA5584  38 C0 20 00 */	li r6, 0x2000
/* 80AA5588  4B 7C B0 81 */	bl cLib_addCalcAngleS2__FPssss
/* 80AA558C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80AA5590  A8 1F 0B 20 */	lha r0, 0xb20(r31)
/* 80AA5594  7C 63 00 50 */	subf r3, r3, r0
/* 80AA5598  4B 8B FB 39 */	bl abs
/* 80AA559C  2C 03 00 04 */	cmpwi r3, 4
/* 80AA55A0  41 81 00 14 */	bgt lbl_80AA55B4
/* 80AA55A4  A8 1F 0B 20 */	lha r0, 0xb20(r31)
/* 80AA55A8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80AA55AC  38 60 00 01 */	li r3, 1
/* 80AA55B0  48 00 00 08 */	b lbl_80AA55B8
lbl_80AA55B4:
/* 80AA55B4  38 60 00 00 */	li r3, 0
lbl_80AA55B8:
/* 80AA55B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA55BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA55C0  7C 08 03 A6 */	mtlr r0
/* 80AA55C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA55C8  4E 80 00 20 */	blr 
