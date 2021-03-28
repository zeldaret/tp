lbl_8024E62C:
/* 8024E62C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024E630  7C 08 02 A6 */	mflr r0
/* 8024E634  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024E638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024E63C  7C 7F 1B 78 */	mr r31, r3
/* 8024E640  38 60 00 30 */	li r3, 0x30
/* 8024E644  48 08 06 09 */	bl __nw__FUl
/* 8024E648  7C 60 1B 79 */	or. r0, r3, r3
/* 8024E64C  41 82 00 2C */	beq lbl_8024E678
/* 8024E650  38 80 00 05 */	li r4, 5
/* 8024E654  38 A0 00 02 */	li r5, 2
/* 8024E658  38 C0 00 02 */	li r6, 2
/* 8024E65C  38 E0 00 01 */	li r7, 1
/* 8024E660  C0 22 B3 B8 */	lfs f1, lit_3755(r2)
/* 8024E664  C0 42 B3 BC */	lfs f2, lit_3756(r2)
/* 8024E668  39 00 00 00 */	li r8, 0
/* 8024E66C  39 20 08 00 */	li r9, 0x800
/* 8024E670  4B DE 39 D5 */	bl __ct__9STControlFssssffss
/* 8024E674  7C 60 1B 78 */	mr r0, r3
lbl_8024E678:
/* 8024E678  90 1F 00 04 */	stw r0, 4(r31)
/* 8024E67C  38 00 00 05 */	li r0, 5
/* 8024E680  80 7F 00 04 */	lwz r3, 4(r31)
/* 8024E684  B0 03 00 28 */	sth r0, 0x28(r3)
/* 8024E688  4B DC 63 69 */	bl mDoExt_getMesgFont__Fv
/* 8024E68C  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8024E690  38 00 FF FF */	li r0, -1
/* 8024E694  3C 60 80 43 */	lis r3, g_nmHIO@ha
/* 8024E698  38 63 07 34 */	addi r3, r3, g_nmHIO@l
/* 8024E69C  98 03 00 04 */	stb r0, 4(r3)
/* 8024E6A0  7F E3 FB 78 */	mr r3, r31
/* 8024E6A4  48 00 1F 29 */	bl screenSet__7dName_cFv
/* 8024E6A8  38 00 00 00 */	li r0, 0
/* 8024E6AC  98 1F 03 1C */	stb r0, 0x31c(r31)
/* 8024E6B0  38 00 00 01 */	li r0, 1
/* 8024E6B4  98 1F 02 A4 */	stb r0, 0x2a4(r31)
/* 8024E6B8  7F E3 FB 78 */	mr r3, r31
/* 8024E6BC  48 00 26 31 */	bl displayInit__7dName_cFv
/* 8024E6C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024E6C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024E6C8  7C 08 03 A6 */	mtlr r0
/* 8024E6CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8024E6D0  4E 80 00 20 */	blr 
