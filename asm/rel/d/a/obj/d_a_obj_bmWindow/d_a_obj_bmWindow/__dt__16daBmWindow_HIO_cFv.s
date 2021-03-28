lbl_80BB964C:
/* 80BB964C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB9650  7C 08 02 A6 */	mflr r0
/* 80BB9654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB9658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB965C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB9660  41 82 00 40 */	beq lbl_80BB96A0
/* 80BB9664  3C 60 80 BC */	lis r3, __vt__16daBmWindow_HIO_c@ha
/* 80BB9668  38 03 99 60 */	addi r0, r3, __vt__16daBmWindow_HIO_c@l
/* 80BB966C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB9670  41 82 00 20 */	beq lbl_80BB9690
/* 80BB9674  3C 60 80 BC */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80BB9678  38 03 99 6C */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80BB967C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB9680  41 82 00 10 */	beq lbl_80BB9690
/* 80BB9684  3C 60 80 BC */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80BB9688  38 03 99 78 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80BB968C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BB9690:
/* 80BB9690  7C 80 07 35 */	extsh. r0, r4
/* 80BB9694  40 81 00 0C */	ble lbl_80BB96A0
/* 80BB9698  7F E3 FB 78 */	mr r3, r31
/* 80BB969C  4B 71 56 A0 */	b __dl__FPv
lbl_80BB96A0:
/* 80BB96A0  7F E3 FB 78 */	mr r3, r31
/* 80BB96A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB96A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB96AC  7C 08 03 A6 */	mtlr r0
/* 80BB96B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB96B4  4E 80 00 20 */	blr 
