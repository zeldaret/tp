lbl_80C75434:
/* 80C75434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C75438  7C 08 02 A6 */	mflr r0
/* 80C7543C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C75440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C75444  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C75448  41 82 00 40 */	beq lbl_80C75488
/* 80C7544C  3C 60 80 C7 */	lis r3, __vt__17daLv6SwGate_HIO_c@ha
/* 80C75450  38 03 57 1C */	addi r0, r3, __vt__17daLv6SwGate_HIO_c@l
/* 80C75454  90 1F 00 00 */	stw r0, 0(r31)
/* 80C75458  41 82 00 20 */	beq lbl_80C75478
/* 80C7545C  3C 60 80 C7 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80C75460  38 03 57 28 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80C75464  90 1F 00 00 */	stw r0, 0(r31)
/* 80C75468  41 82 00 10 */	beq lbl_80C75478
/* 80C7546C  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C75470  38 03 57 34 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C75474  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C75478:
/* 80C75478  7C 80 07 35 */	extsh. r0, r4
/* 80C7547C  40 81 00 0C */	ble lbl_80C75488
/* 80C75480  7F E3 FB 78 */	mr r3, r31
/* 80C75484  4B 65 98 B8 */	b __dl__FPv
lbl_80C75488:
/* 80C75488  7F E3 FB 78 */	mr r3, r31
/* 80C7548C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C75490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C75494  7C 08 03 A6 */	mtlr r0
/* 80C75498  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7549C  4E 80 00 20 */	blr 
