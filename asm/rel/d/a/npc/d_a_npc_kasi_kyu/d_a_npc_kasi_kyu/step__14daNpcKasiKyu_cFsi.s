lbl_80A23530:
/* 80A23530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A23534  7C 08 02 A6 */	mflr r0
/* 80A23538  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2353C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A23540  7C 7F 1B 78 */	mr r31, r3
/* 80A23544  80 03 09 6C */	lwz r0, 0x96c(r3)
/* 80A23548  2C 00 00 00 */	cmpwi r0, 0
/* 80A2354C  40 82 00 4C */	bne lbl_80A23598
/* 80A23550  B0 9F 09 96 */	sth r4, 0x996(r31)
/* 80A23554  38 00 00 00 */	li r0, 0
/* 80A23558  90 1F 09 68 */	stw r0, 0x968(r31)
/* 80A2355C  A8 7F 08 F2 */	lha r3, 0x8f2(r31)
/* 80A23560  A8 1F 09 96 */	lha r0, 0x996(r31)
/* 80A23564  7C 03 00 00 */	cmpw r3, r0
/* 80A23568  40 82 00 10 */	bne lbl_80A23578
/* 80A2356C  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A23570  38 03 00 01 */	addi r0, r3, 1
/* 80A23574  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80A23578:
/* 80A23578  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A2357C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A23580  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A23584  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A23588  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A2358C  38 03 00 01 */	addi r0, r3, 1
/* 80A23590  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A23594  48 00 00 60 */	b lbl_80A235F4
lbl_80A23598:
/* 80A23598  2C 00 00 01 */	cmpwi r0, 1
/* 80A2359C  40 82 00 58 */	bne lbl_80A235F4
/* 80A235A0  A8 9F 09 96 */	lha r4, 0x996(r31)
/* 80A235A4  3C A0 80 A2 */	lis r5, lit_4448@ha /* 0x80A25958@ha */
/* 80A235A8  C0 25 59 58 */	lfs f1, lit_4448@l(r5)  /* 0x80A25958@l */
/* 80A235AC  38 A0 00 00 */	li r5, 0
/* 80A235B0  4B 73 09 45 */	bl turn__8daNpcF_cFsfi
/* 80A235B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A235B8  41 82 00 2C */	beq lbl_80A235E4
/* 80A235BC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A235C0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A235C4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A235C8  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80A235CC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A235D0  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80A235D4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A235D8  38 03 00 01 */	addi r0, r3, 1
/* 80A235DC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A235E0  48 00 00 14 */	b lbl_80A235F4
lbl_80A235E4:
/* 80A235E4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A235E8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A235EC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A235F0  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
lbl_80A235F4:
/* 80A235F4  80 9F 09 6C */	lwz r4, 0x96c(r31)
/* 80A235F8  38 00 00 01 */	li r0, 1
/* 80A235FC  7C 80 02 78 */	xor r0, r4, r0
/* 80A23600  7C 03 0E 70 */	srawi r3, r0, 1
/* 80A23604  7C 00 20 38 */	and r0, r0, r4
/* 80A23608  7C 00 18 50 */	subf r0, r0, r3
/* 80A2360C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80A23610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A23614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A23618  7C 08 03 A6 */	mtlr r0
/* 80A2361C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A23620  4E 80 00 20 */	blr 
