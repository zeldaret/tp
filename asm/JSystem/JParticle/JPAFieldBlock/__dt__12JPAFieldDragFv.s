lbl_8027D450:
/* 8027D450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D454  7C 08 02 A6 */	mflr r0
/* 8027D458  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D460  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D464  41 82 00 30 */	beq lbl_8027D494
/* 8027D468  3C 60 80 3C */	lis r3, __vt__12JPAFieldDrag@ha /* 0x803C44F4@ha */
/* 8027D46C  38 03 44 F4 */	addi r0, r3, __vt__12JPAFieldDrag@l /* 0x803C44F4@l */
/* 8027D470  90 1F 00 00 */	stw r0, 0(r31)
/* 8027D474  41 82 00 10 */	beq lbl_8027D484
/* 8027D478  3C 60 80 3C */	lis r3, __vt__12JPAFieldBase@ha /* 0x803C44CC@ha */
/* 8027D47C  38 03 44 CC */	addi r0, r3, __vt__12JPAFieldBase@l /* 0x803C44CC@l */
/* 8027D480  90 1F 00 00 */	stw r0, 0(r31)
lbl_8027D484:
/* 8027D484  7C 80 07 35 */	extsh. r0, r4
/* 8027D488  40 81 00 0C */	ble lbl_8027D494
/* 8027D48C  7F E3 FB 78 */	mr r3, r31
/* 8027D490  48 05 18 AD */	bl __dl__FPv
lbl_8027D494:
/* 8027D494  7F E3 FB 78 */	mr r3, r31
/* 8027D498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D4A0  7C 08 03 A6 */	mtlr r0
/* 8027D4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D4A8  4E 80 00 20 */	blr 
