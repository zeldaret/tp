lbl_80C6B478:
/* 80C6B478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6B47C  7C 08 02 A6 */	mflr r0
/* 80C6B480  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6B484  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6B488  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6B48C  41 82 00 30 */	beq lbl_80C6B4BC
/* 80C6B490  3C 60 80 C7 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80C6B494  38 03 C8 10 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80C6B498  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6B49C  41 82 00 10 */	beq lbl_80C6B4AC
/* 80C6B4A0  3C 60 80 C7 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C6B4A4  38 03 C8 1C */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C6B4A8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C6B4AC:
/* 80C6B4AC  7C 80 07 35 */	extsh. r0, r4
/* 80C6B4B0  40 81 00 0C */	ble lbl_80C6B4BC
/* 80C6B4B4  7F E3 FB 78 */	mr r3, r31
/* 80C6B4B8  4B 66 38 84 */	b __dl__FPv
lbl_80C6B4BC:
/* 80C6B4BC  7F E3 FB 78 */	mr r3, r31
/* 80C6B4C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6B4C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6B4C8  7C 08 03 A6 */	mtlr r0
/* 80C6B4CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6B4D0  4E 80 00 20 */	blr 
