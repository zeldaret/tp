lbl_809F4558:
/* 809F4558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F455C  7C 08 02 A6 */	mflr r0
/* 809F4560  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F4564  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F4568  7C 7F 1B 78 */	mr r31, r3
/* 809F456C  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 809F4570  28 00 00 00 */	cmplwi r0, 0
/* 809F4574  41 82 00 AC */	beq lbl_809F4620
/* 809F4578  38 C0 00 00 */	li r6, 0
/* 809F457C  3C 80 80 A0 */	lis r4, l_btkGetParamList@ha /* 0x809F887C@ha */
/* 809F4580  84 A4 88 7C */	lwzu r5, l_btkGetParamList@l(r4)  /* 0x809F887C@l */
/* 809F4584  2C 05 00 00 */	cmpwi r5, 0
/* 809F4588  41 80 00 20 */	blt lbl_809F45A8
/* 809F458C  80 04 00 04 */	lwz r0, 4(r4)
/* 809F4590  54 00 10 3A */	slwi r0, r0, 2
/* 809F4594  3C 80 80 A0 */	lis r4, l_resNames@ha /* 0x809F8968@ha */
/* 809F4598  38 84 89 68 */	addi r4, r4, l_resNames@l /* 0x809F8968@l */
/* 809F459C  7C 84 00 2E */	lwzx r4, r4, r0
/* 809F45A0  4B 75 E6 05 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809F45A4  7C 66 1B 78 */	mr r6, r3
lbl_809F45A8:
/* 809F45A8  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 809F45AC  7C 06 00 40 */	cmplw r6, r0
/* 809F45B0  40 82 00 64 */	bne lbl_809F4614
/* 809F45B4  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 809F45B8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809F45BC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809F45C0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809F45C4  7C 04 04 2E */	lfsx f0, r4, r0
/* 809F45C8  3C 60 80 A0 */	lis r3, lit_4803@ha /* 0x809F85B0@ha */
/* 809F45CC  C0 43 85 B0 */	lfs f2, lit_4803@l(r3)  /* 0x809F85B0@l */
/* 809F45D0  3C 60 80 A0 */	lis r3, lit_4804@ha /* 0x809F85B4@ha */
/* 809F45D4  C0 23 85 B4 */	lfs f1, lit_4804@l(r3)  /* 0x809F85B4@l */
/* 809F45D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 809F45DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 809F45E0  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809F45E4  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 809F45E8  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 809F45EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809F45F0  7C 04 04 2E */	lfsx f0, r4, r0
/* 809F45F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 809F45F8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809F45FC  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 809F4600  38 00 00 01 */	li r0, 1
/* 809F4604  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809F4608  98 03 01 04 */	stb r0, 0x104(r3)
/* 809F460C  38 60 00 01 */	li r3, 1
/* 809F4610  48 00 00 14 */	b lbl_809F4624
lbl_809F4614:
/* 809F4614  38 00 00 00 */	li r0, 0
/* 809F4618  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809F461C  98 03 01 04 */	stb r0, 0x104(r3)
lbl_809F4620:
/* 809F4620  38 60 00 00 */	li r3, 0
lbl_809F4624:
/* 809F4624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F4628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F462C  7C 08 03 A6 */	mtlr r0
/* 809F4630  38 21 00 10 */	addi r1, r1, 0x10
/* 809F4634  4E 80 00 20 */	blr 
