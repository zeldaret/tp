lbl_801542A0:
/* 801542A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801542A4  7C 08 02 A6 */	mflr r0
/* 801542A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801542AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801542B0  93 C1 00 08 */	stw r30, 8(r1)
/* 801542B4  7C 66 1B 78 */	mr r6, r3
/* 801542B8  7C 9E 23 78 */	mr r30, r4
/* 801542BC  7C BF 2B 78 */	mr r31, r5
/* 801542C0  38 00 00 00 */	li r0, 0
/* 801542C4  90 0D 8A 70 */	stw r0, mFindCount__8daNpcF_c(r13)
/* 801542C8  38 00 02 E9 */	li r0, 0x2e9
/* 801542CC  B0 0D 8A 74 */	sth r0, mSrchActorName__8daNpcF_c(r13)
/* 801542D0  3C 60 80 15 */	lis r3, srchActor__8daNpcF_cFPvPv@ha
/* 801542D4  38 63 26 E8 */	addi r3, r3, srchActor__8daNpcF_cFPvPv@l
/* 801542D8  7C C4 33 78 */	mr r4, r6
/* 801542DC  4B EC D0 5D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 801542E0  38 80 00 00 */	li r4, 0
/* 801542E4  80 0D 8A 70 */	lwz r0, mFindCount__8daNpcF_c(r13)
/* 801542E8  3C 60 80 42 */	lis r3, mFindActorPList__8daNpcF_c@ha
/* 801542EC  38 C3 57 E8 */	addi r6, r3, mFindActorPList__8daNpcF_c@l
/* 801542F0  7C 09 03 A6 */	mtctr r0
/* 801542F4  2C 00 00 00 */	cmpwi r0, 0
/* 801542F8  40 81 00 58 */	ble lbl_80154350
lbl_801542FC:
/* 801542FC  7C 66 20 2E */	lwzx r3, r6, r4
/* 80154300  A8 E3 04 E8 */	lha r7, 0x4e8(r3)
/* 80154304  54 E5 06 3E */	clrlwi r5, r7, 0x18
/* 80154308  38 05 FF 01 */	addi r0, r5, -255
/* 8015430C  30 00 FF FF */	addic r0, r0, -1
/* 80154310  7C 00 01 10 */	subfe r0, r0, r0
/* 80154314  7C A0 00 78 */	andc r0, r5, r0
/* 80154318  7C 1E 00 00 */	cmpw r30, r0
/* 8015431C  40 82 00 2C */	bne lbl_80154348
/* 80154320  54 E0 04 2E */	rlwinm r0, r7, 0, 0x10, 0x17
/* 80154324  7C 00 46 70 */	srawi r0, r0, 8
/* 80154328  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 8015432C  38 05 FF 01 */	addi r0, r5, -255
/* 80154330  30 00 FF FF */	addic r0, r0, -1
/* 80154334  7C 00 01 10 */	subfe r0, r0, r0
/* 80154338  7C A0 00 78 */	andc r0, r5, r0
/* 8015433C  7C 1F 00 00 */	cmpw r31, r0
/* 80154340  40 82 00 08 */	bne lbl_80154348
/* 80154344  48 00 00 10 */	b lbl_80154354
lbl_80154348:
/* 80154348  38 84 00 04 */	addi r4, r4, 4
/* 8015434C  42 00 FF B0 */	bdnz lbl_801542FC
lbl_80154350:
/* 80154350  38 60 00 00 */	li r3, 0
lbl_80154354:
/* 80154354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80154358  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015435C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80154360  7C 08 03 A6 */	mtlr r0
/* 80154364  38 21 00 10 */	addi r1, r1, 0x10
/* 80154368  4E 80 00 20 */	blr 
