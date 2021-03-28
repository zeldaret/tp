lbl_801D6C44:
/* 801D6C44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D6C48  7C 08 02 A6 */	mflr r0
/* 801D6C4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D6C50  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801D6C54  93 E1 00 14 */	stw r31, 0x14(r1)
/* 801D6C58  7C 7F 1B 78 */	mr r31, r3
/* 801D6C5C  FF E0 08 90 */	fmr f31, f1
/* 801D6C60  D3 E3 00 80 */	stfs f31, 0x80(r3)
/* 801D6C64  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801D6C68  41 82 00 0C */	beq lbl_801D6C74
/* 801D6C6C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801D6C70  48 07 F1 61 */	bl setBackupAlpha__17CPaneMgrAlphaMorfFv
lbl_801D6C74:
/* 801D6C74  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801D6C78  FC 20 F8 90 */	fmr f1, f31
/* 801D6C7C  48 07 F1 AD */	bl setAlphaMorfRate__17CPaneMgrAlphaMorfFf
/* 801D6C80  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801D6C84  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 801D6C88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D6C8C  7C 08 03 A6 */	mtlr r0
/* 801D6C90  38 21 00 20 */	addi r1, r1, 0x20
/* 801D6C94  4E 80 00 20 */	blr 
