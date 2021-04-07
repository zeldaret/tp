lbl_8020E620:
/* 8020E620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020E624  7C 08 02 A6 */	mflr r0
/* 8020E628  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020E62C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020E630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020E634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020E638  3B E3 4E 20 */	addi r31, r3, 0x4e20
/* 8020E63C  7F E3 FB 78 */	mr r3, r31
/* 8020E640  81 9F 00 00 */	lwz r12, 0(r31)
/* 8020E644  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8020E648  7D 89 03 A6 */	mtctr r12
/* 8020E64C  4E 80 04 21 */	bctrl 
/* 8020E650  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8020E654  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 8020E658  41 82 00 94 */	beq lbl_8020E6EC
/* 8020E65C  7F E3 FB 78 */	mr r3, r31
/* 8020E660  81 9F 00 00 */	lwz r12, 0(r31)
/* 8020E664  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8020E668  7D 89 03 A6 */	mtctr r12
/* 8020E66C  4E 80 04 21 */	bctrl 
/* 8020E670  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8020E674  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8020E678  2C 00 00 05 */	cmpwi r0, 5
/* 8020E67C  41 82 00 70 */	beq lbl_8020E6EC
/* 8020E680  7F E3 FB 78 */	mr r3, r31
/* 8020E684  81 9F 00 00 */	lwz r12, 0(r31)
/* 8020E688  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8020E68C  7D 89 03 A6 */	mtctr r12
/* 8020E690  4E 80 04 21 */	bctrl 
/* 8020E694  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8020E698  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8020E69C  2C 00 00 03 */	cmpwi r0, 3
/* 8020E6A0  41 82 00 4C */	beq lbl_8020E6EC
/* 8020E6A4  7F E3 FB 78 */	mr r3, r31
/* 8020E6A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8020E6AC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8020E6B0  7D 89 03 A6 */	mtctr r12
/* 8020E6B4  4E 80 04 21 */	bctrl 
/* 8020E6B8  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8020E6BC  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8020E6C0  2C 00 00 04 */	cmpwi r0, 4
/* 8020E6C4  41 82 00 28 */	beq lbl_8020E6EC
/* 8020E6C8  7F E3 FB 78 */	mr r3, r31
/* 8020E6CC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8020E6D0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8020E6D4  7D 89 03 A6 */	mtctr r12
/* 8020E6D8  4E 80 04 21 */	bctrl 
/* 8020E6DC  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8020E6E0  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8020E6E4  2C 00 00 06 */	cmpwi r0, 6
/* 8020E6E8  40 82 00 0C */	bne lbl_8020E6F4
lbl_8020E6EC:
/* 8020E6EC  38 60 00 01 */	li r3, 1
/* 8020E6F0  48 00 00 08 */	b lbl_8020E6F8
lbl_8020E6F4:
/* 8020E6F4  38 60 00 00 */	li r3, 0
lbl_8020E6F8:
/* 8020E6F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020E6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020E700  7C 08 03 A6 */	mtlr r0
/* 8020E704  38 21 00 10 */	addi r1, r1, 0x10
/* 8020E708  4E 80 00 20 */	blr 
