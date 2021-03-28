lbl_80A93D78:
/* 80A93D78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A93D7C  7C 08 02 A6 */	mflr r0
/* 80A93D80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A93D84  39 61 00 20 */	addi r11, r1, 0x20
/* 80A93D88  4B 8C E4 54 */	b _savegpr_29
/* 80A93D8C  7C 7D 1B 78 */	mr r29, r3
/* 80A93D90  3B C0 00 1C */	li r30, 0x1c
/* 80A93D94  80 83 0B 58 */	lwz r4, 0xb58(r3)
/* 80A93D98  28 04 00 0B */	cmplwi r4, 0xb
/* 80A93D9C  41 81 00 40 */	bgt lbl_80A93DDC
/* 80A93DA0  3C 60 80 A9 */	lis r3, lit_4758@ha
/* 80A93DA4  38 63 78 A0 */	addi r3, r3, lit_4758@l
/* 80A93DA8  54 80 10 3A */	slwi r0, r4, 2
/* 80A93DAC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A93DB0  7C 09 03 A6 */	mtctr r0
/* 80A93DB4  4E 80 04 20 */	bctr 
lbl_80A93DB8:
/* 80A93DB8  3B C0 00 0D */	li r30, 0xd
/* 80A93DBC  48 00 00 20 */	b lbl_80A93DDC
lbl_80A93DC0:
/* 80A93DC0  3B C0 00 0E */	li r30, 0xe
/* 80A93DC4  48 00 00 18 */	b lbl_80A93DDC
lbl_80A93DC8:
/* 80A93DC8  3B C0 00 0F */	li r30, 0xf
/* 80A93DCC  48 00 00 10 */	b lbl_80A93DDC
lbl_80A93DD0:
/* 80A93DD0  3B C0 00 13 */	li r30, 0x13
/* 80A93DD4  48 00 00 08 */	b lbl_80A93DDC
lbl_80A93DD8:
/* 80A93DD8  3B C0 00 1A */	li r30, 0x1a
lbl_80A93DDC:
/* 80A93DDC  2C 1E 00 00 */	cmpwi r30, 0
/* 80A93DE0  41 80 00 2C */	blt lbl_80A93E0C
/* 80A93DE4  7C 1E 20 00 */	cmpw r30, r4
/* 80A93DE8  41 82 00 24 */	beq lbl_80A93E0C
/* 80A93DEC  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80A93DF0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A93DF4  4B 6B 1A A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A93DF8  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80A93DFC  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80A93E00  3C 60 80 A9 */	lis r3, lit_4732@ha
/* 80A93E04  C0 03 6B 20 */	lfs f0, lit_4732@l(r3)
/* 80A93E08  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A93E0C:
/* 80A93E0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A93E10  4B 8C E4 18 */	b _restgpr_29
/* 80A93E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A93E18  7C 08 03 A6 */	mtlr r0
/* 80A93E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A93E20  4E 80 00 20 */	blr 
