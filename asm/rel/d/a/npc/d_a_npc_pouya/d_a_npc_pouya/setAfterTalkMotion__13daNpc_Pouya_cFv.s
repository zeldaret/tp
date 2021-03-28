lbl_80AAF148:
/* 80AAF148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AAF14C  7C 08 02 A6 */	mflr r0
/* 80AAF150  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AAF154  39 61 00 20 */	addi r11, r1, 0x20
/* 80AAF158  4B 8B 30 84 */	b _savegpr_29
/* 80AAF15C  7C 7D 1B 78 */	mr r29, r3
/* 80AAF160  3B C0 00 11 */	li r30, 0x11
/* 80AAF164  80 83 0B 58 */	lwz r4, 0xb58(r3)
/* 80AAF168  28 04 00 0C */	cmplwi r4, 0xc
/* 80AAF16C  41 81 00 3C */	bgt lbl_80AAF1A8
/* 80AAF170  3C 60 80 AB */	lis r3, lit_4743@ha
/* 80AAF174  38 63 2A 5C */	addi r3, r3, lit_4743@l
/* 80AAF178  54 80 10 3A */	slwi r0, r4, 2
/* 80AAF17C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AAF180  7C 09 03 A6 */	mtctr r0
/* 80AAF184  4E 80 04 20 */	bctr 
lbl_80AAF188:
/* 80AAF188  48 00 00 50 */	b lbl_80AAF1D8
lbl_80AAF18C:
/* 80AAF18C  3B C0 00 0D */	li r30, 0xd
/* 80AAF190  48 00 00 18 */	b lbl_80AAF1A8
lbl_80AAF194:
/* 80AAF194  3B C0 00 0E */	li r30, 0xe
/* 80AAF198  48 00 00 10 */	b lbl_80AAF1A8
lbl_80AAF19C:
/* 80AAF19C  3B C0 00 0F */	li r30, 0xf
/* 80AAF1A0  48 00 00 08 */	b lbl_80AAF1A8
lbl_80AAF1A4:
/* 80AAF1A4  3B C0 00 10 */	li r30, 0x10
lbl_80AAF1A8:
/* 80AAF1A8  2C 1E 00 00 */	cmpwi r30, 0
/* 80AAF1AC  41 80 00 2C */	blt lbl_80AAF1D8
/* 80AAF1B0  7C 1E 20 00 */	cmpw r30, r4
/* 80AAF1B4  41 82 00 24 */	beq lbl_80AAF1D8
/* 80AAF1B8  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80AAF1BC  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80AAF1C0  4B 69 66 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAF1C4  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80AAF1C8  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80AAF1CC  3C 60 80 AB */	lis r3, lit_4742@ha
/* 80AAF1D0  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)
/* 80AAF1D4  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80AAF1D8:
/* 80AAF1D8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AAF1DC  4B 8B 30 4C */	b _restgpr_29
/* 80AAF1E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AAF1E4  7C 08 03 A6 */	mtlr r0
/* 80AAF1E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AAF1EC  4E 80 00 20 */	blr 
