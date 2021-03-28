lbl_80C6C550:
/* 80C6C550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6C554  7C 08 02 A6 */	mflr r0
/* 80C6C558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6C55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6C560  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6C564  41 82 00 40 */	beq lbl_80C6C5A4
/* 80C6C568  3C 60 80 C7 */	lis r3, __vt__15daIceWall_HIO_c@ha
/* 80C6C56C  38 03 C8 04 */	addi r0, r3, __vt__15daIceWall_HIO_c@l
/* 80C6C570  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6C574  41 82 00 20 */	beq lbl_80C6C594
/* 80C6C578  3C 60 80 C7 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80C6C57C  38 03 C8 10 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80C6C580  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6C584  41 82 00 10 */	beq lbl_80C6C594
/* 80C6C588  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C6C58C  38 03 C8 1C */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C6C590  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C6C594:
/* 80C6C594  7C 80 07 35 */	extsh. r0, r4
/* 80C6C598  40 81 00 0C */	ble lbl_80C6C5A4
/* 80C6C59C  7F E3 FB 78 */	mr r3, r31
/* 80C6C5A0  4B 66 27 9C */	b __dl__FPv
lbl_80C6C5A4:
/* 80C6C5A4  7F E3 FB 78 */	mr r3, r31
/* 80C6C5A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6C5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6C5B0  7C 08 03 A6 */	mtlr r0
/* 80C6C5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6C5B8  4E 80 00 20 */	blr 
