lbl_80C88438:
/* 80C88438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8843C  7C 08 02 A6 */	mflr r0
/* 80C88440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C88448  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8844C  41 82 00 30 */	beq lbl_80C8847C
/* 80C88450  3C 60 80 C9 */	lis r3, __vt__17daKekaiTrap_HIO_c@ha
/* 80C88454  38 03 85 F0 */	addi r0, r3, __vt__17daKekaiTrap_HIO_c@l
/* 80C88458  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8845C  41 82 00 10 */	beq lbl_80C8846C
/* 80C88460  3C 60 80 C9 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C88464  38 03 85 FC */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C88468  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C8846C:
/* 80C8846C  7C 80 07 35 */	extsh. r0, r4
/* 80C88470  40 81 00 0C */	ble lbl_80C8847C
/* 80C88474  7F E3 FB 78 */	mr r3, r31
/* 80C88478  4B 64 68 C4 */	b __dl__FPv
lbl_80C8847C:
/* 80C8847C  7F E3 FB 78 */	mr r3, r31
/* 80C88480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C88484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C88488  7C 08 03 A6 */	mtlr r0
/* 80C8848C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88490  4E 80 00 20 */	blr 
