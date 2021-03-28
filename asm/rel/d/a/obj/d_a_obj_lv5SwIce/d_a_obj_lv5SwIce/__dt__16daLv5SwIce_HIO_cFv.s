lbl_80C6D418:
/* 80C6D418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D41C  7C 08 02 A6 */	mflr r0
/* 80C6D420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6D428  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6D42C  41 82 00 40 */	beq lbl_80C6D46C
/* 80C6D430  3C 60 80 C7 */	lis r3, __vt__16daLv5SwIce_HIO_c@ha
/* 80C6D434  38 03 D6 9C */	addi r0, r3, __vt__16daLv5SwIce_HIO_c@l
/* 80C6D438  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6D43C  41 82 00 20 */	beq lbl_80C6D45C
/* 80C6D440  3C 60 80 C7 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80C6D444  38 03 D6 A8 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80C6D448  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6D44C  41 82 00 10 */	beq lbl_80C6D45C
/* 80C6D450  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C6D454  38 03 D6 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C6D458  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C6D45C:
/* 80C6D45C  7C 80 07 35 */	extsh. r0, r4
/* 80C6D460  40 81 00 0C */	ble lbl_80C6D46C
/* 80C6D464  7F E3 FB 78 */	mr r3, r31
/* 80C6D468  4B 66 18 D4 */	b __dl__FPv
lbl_80C6D46C:
/* 80C6D46C  7F E3 FB 78 */	mr r3, r31
/* 80C6D470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6D474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D478  7C 08 03 A6 */	mtlr r0
/* 80C6D47C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D480  4E 80 00 20 */	blr 
