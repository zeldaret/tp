lbl_80A75514:
/* 80A75514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A75518  7C 08 02 A6 */	mflr r0
/* 80A7551C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A75520  39 61 00 20 */	addi r11, r1, 0x20
/* 80A75524  4B 8E CC B9 */	bl _savegpr_29
/* 80A75528  7C 7D 1B 78 */	mr r29, r3
/* 80A7552C  3B C0 00 15 */	li r30, 0x15
/* 80A75530  80 83 0B 58 */	lwz r4, 0xb58(r3)
/* 80A75534  28 04 00 09 */	cmplwi r4, 9
/* 80A75538  41 81 00 48 */	bgt lbl_80A75580
/* 80A7553C  3C 60 80 A8 */	lis r3, lit_4863@ha /* 0x80A7BD28@ha */
/* 80A75540  38 63 BD 28 */	addi r3, r3, lit_4863@l /* 0x80A7BD28@l */
/* 80A75544  54 80 10 3A */	slwi r0, r4, 2
/* 80A75548  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A7554C  7C 09 03 A6 */	mtctr r0
/* 80A75550  4E 80 04 20 */	bctr 
lbl_80A75554:
/* 80A75554  3B C0 00 12 */	li r30, 0x12
/* 80A75558  48 00 00 28 */	b lbl_80A75580
lbl_80A7555C:
/* 80A7555C  3B C0 00 13 */	li r30, 0x13
/* 80A75560  48 00 00 20 */	b lbl_80A75580
lbl_80A75564:
/* 80A75564  3B C0 00 10 */	li r30, 0x10
/* 80A75568  48 00 00 18 */	b lbl_80A75580
lbl_80A7556C:
/* 80A7556C  3B C0 00 0E */	li r30, 0xe
/* 80A75570  48 00 00 10 */	b lbl_80A75580
lbl_80A75574:
/* 80A75574  3B C0 00 0F */	li r30, 0xf
/* 80A75578  48 00 00 08 */	b lbl_80A75580
lbl_80A7557C:
/* 80A7557C  48 00 00 34 */	b lbl_80A755B0
lbl_80A75580:
/* 80A75580  2C 1E 00 00 */	cmpwi r30, 0
/* 80A75584  41 80 00 2C */	blt lbl_80A755B0
/* 80A75588  7C 1E 20 00 */	cmpw r30, r4
/* 80A7558C  41 82 00 24 */	beq lbl_80A755B0
/* 80A75590  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80A75594  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A75598  4B 6D 03 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7559C  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80A755A0  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80A755A4  3C 60 80 A8 */	lis r3, lit_4862@ha /* 0x80A7B014@ha */
/* 80A755A8  C0 03 B0 14 */	lfs f0, lit_4862@l(r3)  /* 0x80A7B014@l */
/* 80A755AC  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A755B0:
/* 80A755B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A755B4  4B 8E CC 75 */	bl _restgpr_29
/* 80A755B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A755BC  7C 08 03 A6 */	mtlr r0
/* 80A755C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A755C4  4E 80 00 20 */	blr 
