lbl_80C1D9D8:
/* 80C1D9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1D9DC  7C 08 02 A6 */	mflr r0
/* 80C1D9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1D9E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1D9E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1D9EC  41 82 00 30 */	beq lbl_80C1DA1C
/* 80C1D9F0  3C 60 80 C2 */	lis r3, __vt__15daHeavySw_HIO_c@ha
/* 80C1D9F4  38 03 DC 28 */	addi r0, r3, __vt__15daHeavySw_HIO_c@l
/* 80C1D9F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1D9FC  41 82 00 10 */	beq lbl_80C1DA0C
/* 80C1DA00  3C 60 80 C2 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C1DA04  38 03 DC 34 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C1DA08  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C1DA0C:
/* 80C1DA0C  7C 80 07 35 */	extsh. r0, r4
/* 80C1DA10  40 81 00 0C */	ble lbl_80C1DA1C
/* 80C1DA14  7F E3 FB 78 */	mr r3, r31
/* 80C1DA18  4B 6B 13 24 */	b __dl__FPv
lbl_80C1DA1C:
/* 80C1DA1C  7F E3 FB 78 */	mr r3, r31
/* 80C1DA20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1DA24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1DA28  7C 08 03 A6 */	mtlr r0
/* 80C1DA2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1DA30  4E 80 00 20 */	blr 
