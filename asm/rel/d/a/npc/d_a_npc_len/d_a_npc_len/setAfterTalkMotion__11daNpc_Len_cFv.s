lbl_80A6556C:
/* 80A6556C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A65570  7C 08 02 A6 */	mflr r0
/* 80A65574  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A65578  39 61 00 20 */	addi r11, r1, 0x20
/* 80A6557C  4B 8F CC 61 */	bl _savegpr_29
/* 80A65580  7C 7D 1B 78 */	mr r29, r3
/* 80A65584  3B C0 00 11 */	li r30, 0x11
/* 80A65588  80 83 0B 58 */	lwz r4, 0xb58(r3)
/* 80A6558C  28 04 00 09 */	cmplwi r4, 9
/* 80A65590  41 81 00 4C */	bgt lbl_80A655DC
/* 80A65594  3C 60 80 A7 */	lis r3, lit_4696@ha /* 0x80A6982C@ha */
/* 80A65598  38 63 98 2C */	addi r3, r3, lit_4696@l /* 0x80A6982C@l */
/* 80A6559C  54 80 10 3A */	slwi r0, r4, 2
/* 80A655A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A655A4  7C 09 03 A6 */	mtctr r0
/* 80A655A8  4E 80 04 20 */	bctr 
lbl_80A655AC:
/* 80A655AC  3B C0 00 08 */	li r30, 8
/* 80A655B0  48 00 00 2C */	b lbl_80A655DC
lbl_80A655B4:
/* 80A655B4  48 00 00 58 */	b lbl_80A6560C
lbl_80A655B8:
/* 80A655B8  3B C0 00 0A */	li r30, 0xa
/* 80A655BC  48 00 00 20 */	b lbl_80A655DC
lbl_80A655C0:
/* 80A655C0  3B C0 00 0B */	li r30, 0xb
/* 80A655C4  48 00 00 18 */	b lbl_80A655DC
lbl_80A655C8:
/* 80A655C8  3B C0 00 0D */	li r30, 0xd
/* 80A655CC  48 00 00 10 */	b lbl_80A655DC
lbl_80A655D0:
/* 80A655D0  3B C0 00 10 */	li r30, 0x10
/* 80A655D4  48 00 00 08 */	b lbl_80A655DC
lbl_80A655D8:
/* 80A655D8  3B C0 00 08 */	li r30, 8
lbl_80A655DC:
/* 80A655DC  2C 1E 00 00 */	cmpwi r30, 0
/* 80A655E0  41 80 00 2C */	blt lbl_80A6560C
/* 80A655E4  7C 1E 20 00 */	cmpw r30, r4
/* 80A655E8  41 82 00 24 */	beq lbl_80A6560C
/* 80A655EC  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80A655F0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A655F4  4B 6E 02 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A655F8  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80A655FC  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80A65600  3C 60 80 A7 */	lis r3, lit_4695@ha /* 0x80A68F98@ha */
/* 80A65604  C0 03 8F 98 */	lfs f0, lit_4695@l(r3)  /* 0x80A68F98@l */
/* 80A65608  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A6560C:
/* 80A6560C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A65610  4B 8F CC 19 */	bl _restgpr_29
/* 80A65614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A65618  7C 08 03 A6 */	mtlr r0
/* 80A6561C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A65620  4E 80 00 20 */	blr 
