lbl_80CDA8FC:
/* 80CDA8FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDA900  7C 08 02 A6 */	mflr r0
/* 80CDA904  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDA908  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDA90C  7C 7F 1B 78 */	mr r31, r3
/* 80CDA910  80 03 04 A4 */	lwz r0, 0x4a4(r3)
/* 80CDA914  90 01 00 08 */	stw r0, 8(r1)
/* 80CDA918  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80CDA91C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80CDA920  38 81 00 08 */	addi r4, r1, 8
/* 80CDA924  4B 33 EE D4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80CDA928  28 03 00 00 */	cmplwi r3, 0
/* 80CDA92C  40 82 00 18 */	bne lbl_80CDA944
/* 80CDA930  7F E3 FB 78 */	mr r3, r31
/* 80CDA934  4B 35 D1 40 */	b show__12daItemBase_cFv
/* 80CDA938  7F E3 FB 78 */	mr r3, r31
/* 80CDA93C  48 00 00 71 */	bl actionWaitInit__7daKey_cFv
/* 80CDA940  48 00 00 44 */	b lbl_80CDA984
lbl_80CDA944:
/* 80CDA944  A8 03 00 0E */	lha r0, 0xe(r3)
/* 80CDA948  2C 00 01 E3 */	cmpwi r0, 0x1e3
/* 80CDA94C  40 82 00 20 */	bne lbl_80CDA96C
/* 80CDA950  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 80CDA954  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CDA958  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80CDA95C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CDA960  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 80CDA964  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80CDA968  48 00 00 1C */	b lbl_80CDA984
lbl_80CDA96C:
/* 80CDA96C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CDA970  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80CDA974  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CDA978  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80CDA97C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CDA980  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80CDA984:
/* 80CDA984  7F E3 FB 78 */	mr r3, r31
/* 80CDA988  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800D6@ha */
/* 80CDA98C  38 84 00 D6 */	addi r4, r4, 0x00D6 /* 0x000800D6@l */
/* 80CDA990  48 00 09 51 */	bl seStartTwinkle_private__7daKey_cFUl
/* 80CDA994  38 60 00 01 */	li r3, 1
/* 80CDA998  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDA99C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDA9A0  7C 08 03 A6 */	mtlr r0
/* 80CDA9A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDA9A8  4E 80 00 20 */	blr 
