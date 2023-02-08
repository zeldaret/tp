lbl_80A9D0A0:
/* 80A9D0A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9D0A4  7C 08 02 A6 */	mflr r0
/* 80A9D0A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9D0AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9D0B0  4B 8C 51 2D */	bl _savegpr_29
/* 80A9D0B4  7C 7D 1B 78 */	mr r29, r3
/* 80A9D0B8  3B C0 00 1F */	li r30, 0x1f
/* 80A9D0BC  80 83 0B 58 */	lwz r4, 0xb58(r3)
/* 80A9D0C0  28 04 00 0E */	cmplwi r4, 0xe
/* 80A9D0C4  41 81 00 58 */	bgt lbl_80A9D11C
/* 80A9D0C8  3C 60 80 AA */	lis r3, lit_4732@ha /* 0x80AA2790@ha */
/* 80A9D0CC  38 63 27 90 */	addi r3, r3, lit_4732@l /* 0x80AA2790@l */
/* 80A9D0D0  54 80 10 3A */	slwi r0, r4, 2
/* 80A9D0D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A9D0D8  7C 09 03 A6 */	mtctr r0
/* 80A9D0DC  4E 80 04 20 */	bctr 
lbl_80A9D0E0:
/* 80A9D0E0  3B C0 00 12 */	li r30, 0x12
/* 80A9D0E4  48 00 00 38 */	b lbl_80A9D11C
lbl_80A9D0E8:
/* 80A9D0E8  3B C0 00 13 */	li r30, 0x13
/* 80A9D0EC  48 00 00 30 */	b lbl_80A9D11C
lbl_80A9D0F0:
/* 80A9D0F0  3B C0 00 14 */	li r30, 0x14
/* 80A9D0F4  48 00 00 28 */	b lbl_80A9D11C
lbl_80A9D0F8:
/* 80A9D0F8  3B C0 00 15 */	li r30, 0x15
/* 80A9D0FC  48 00 00 20 */	b lbl_80A9D11C
lbl_80A9D100:
/* 80A9D100  3B C0 00 16 */	li r30, 0x16
/* 80A9D104  48 00 00 18 */	b lbl_80A9D11C
lbl_80A9D108:
/* 80A9D108  3B C0 00 18 */	li r30, 0x18
/* 80A9D10C  48 00 00 10 */	b lbl_80A9D11C
lbl_80A9D110:
/* 80A9D110  3B C0 00 1A */	li r30, 0x1a
/* 80A9D114  48 00 00 08 */	b lbl_80A9D11C
lbl_80A9D118:
/* 80A9D118  3B C0 00 1B */	li r30, 0x1b
lbl_80A9D11C:
/* 80A9D11C  2C 1E 00 00 */	cmpwi r30, 0
/* 80A9D120  41 80 00 2C */	blt lbl_80A9D14C
/* 80A9D124  7C 1E 20 00 */	cmpw r30, r4
/* 80A9D128  41 82 00 24 */	beq lbl_80A9D14C
/* 80A9D12C  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80A9D130  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A9D134  4B 6A 87 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9D138  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80A9D13C  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80A9D140  3C 60 80 AA */	lis r3, lit_4731@ha /* 0x80AA16C0@ha */
/* 80A9D144  C0 03 16 C0 */	lfs f0, lit_4731@l(r3)  /* 0x80AA16C0@l */
/* 80A9D148  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A9D14C:
/* 80A9D14C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A9D150  4B 8C 50 D9 */	bl _restgpr_29
/* 80A9D154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9D158  7C 08 03 A6 */	mtlr r0
/* 80A9D15C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9D160  4E 80 00 20 */	blr 
