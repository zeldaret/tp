lbl_80B4E5BC:
/* 80B4E5BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4E5C0  7C 08 02 A6 */	mflr r0
/* 80B4E5C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4E5C8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4E5CC  4B 81 3C 11 */	bl _savegpr_29
/* 80B4E5D0  7C 7D 1B 78 */	mr r29, r3
/* 80B4E5D4  3B C0 00 1A */	li r30, 0x1a
/* 80B4E5D8  80 83 0B 58 */	lwz r4, 0xb58(r3)
/* 80B4E5DC  28 04 00 17 */	cmplwi r4, 0x17
/* 80B4E5E0  41 81 00 78 */	bgt lbl_80B4E658
/* 80B4E5E4  3C 60 80 B5 */	lis r3, lit_4804@ha /* 0x80B53154@ha */
/* 80B4E5E8  38 63 31 54 */	addi r3, r3, lit_4804@l /* 0x80B53154@l */
/* 80B4E5EC  54 80 10 3A */	slwi r0, r4, 2
/* 80B4E5F0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B4E5F4  7C 09 03 A6 */	mtctr r0
/* 80B4E5F8  4E 80 04 20 */	bctr 
lbl_80B4E5FC:
/* 80B4E5FC  3B C0 00 0C */	li r30, 0xc
/* 80B4E600  48 00 00 58 */	b lbl_80B4E658
lbl_80B4E604:
/* 80B4E604  3B C0 00 0F */	li r30, 0xf
/* 80B4E608  48 00 00 50 */	b lbl_80B4E658
lbl_80B4E60C:
/* 80B4E60C  3B C0 00 11 */	li r30, 0x11
/* 80B4E610  48 00 00 48 */	b lbl_80B4E658
lbl_80B4E614:
/* 80B4E614  3B C0 00 12 */	li r30, 0x12
/* 80B4E618  48 00 00 40 */	b lbl_80B4E658
lbl_80B4E61C:
/* 80B4E61C  3B C0 00 12 */	li r30, 0x12
/* 80B4E620  48 00 00 38 */	b lbl_80B4E658
lbl_80B4E624:
/* 80B4E624  3B C0 00 13 */	li r30, 0x13
/* 80B4E628  48 00 00 30 */	b lbl_80B4E658
lbl_80B4E62C:
/* 80B4E62C  3B C0 00 14 */	li r30, 0x14
/* 80B4E630  48 00 00 28 */	b lbl_80B4E658
lbl_80B4E634:
/* 80B4E634  3B C0 00 13 */	li r30, 0x13
/* 80B4E638  48 00 00 20 */	b lbl_80B4E658
lbl_80B4E63C:
/* 80B4E63C  3B C0 00 15 */	li r30, 0x15
/* 80B4E640  48 00 00 18 */	b lbl_80B4E658
lbl_80B4E644:
/* 80B4E644  3B C0 00 16 */	li r30, 0x16
/* 80B4E648  48 00 00 10 */	b lbl_80B4E658
lbl_80B4E64C:
/* 80B4E64C  3B C0 00 18 */	li r30, 0x18
/* 80B4E650  48 00 00 08 */	b lbl_80B4E658
lbl_80B4E654:
/* 80B4E654  3B C0 00 19 */	li r30, 0x19
lbl_80B4E658:
/* 80B4E658  2C 1E 00 00 */	cmpwi r30, 0
/* 80B4E65C  41 80 00 2C */	blt lbl_80B4E688
/* 80B4E660  7C 1E 20 00 */	cmpw r30, r4
/* 80B4E664  41 82 00 24 */	beq lbl_80B4E688
/* 80B4E668  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80B4E66C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B4E670  4B 5F 72 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4E674  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80B4E678  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80B4E67C  3C 60 80 B5 */	lis r3, lit_4778@ha /* 0x80B52394@ha */
/* 80B4E680  C0 03 23 94 */	lfs f0, lit_4778@l(r3)  /* 0x80B52394@l */
/* 80B4E684  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B4E688:
/* 80B4E688  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4E68C  4B 81 3B 9D */	bl _restgpr_29
/* 80B4E690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4E694  7C 08 03 A6 */	mtlr r0
/* 80B4E698  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4E69C  4E 80 00 20 */	blr 
