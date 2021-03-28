lbl_801BA60C:
/* 801BA60C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BA610  7C 08 02 A6 */	mflr r0
/* 801BA614  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BA618  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 801BA61C  39 61 00 18 */	addi r11, r1, 0x18
/* 801BA620  48 1A 7B BD */	bl _savegpr_29
/* 801BA624  7C 7D 1B 78 */	mr r29, r3
/* 801BA628  FF E0 08 90 */	fmr f31, f1
/* 801BA62C  D3 E3 0D 9C */	stfs f31, 0xd9c(r3)
/* 801BA630  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801BA634  41 82 00 50 */	beq lbl_801BA684
/* 801BA638  80 7D 0C CC */	lwz r3, 0xccc(r29)
/* 801BA63C  48 09 B7 95 */	bl setBackupAlpha__17CPaneMgrAlphaMorfFv
/* 801BA640  80 7D 0C E0 */	lwz r3, 0xce0(r29)
/* 801BA644  48 09 B7 8D */	bl setBackupAlpha__17CPaneMgrAlphaMorfFv
/* 801BA648  3B C0 00 00 */	li r30, 0
/* 801BA64C  3B E0 00 00 */	li r31, 0
lbl_801BA650:
/* 801BA650  38 1F 0C D0 */	addi r0, r31, 0xcd0
/* 801BA654  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801BA658  48 09 B7 79 */	bl setBackupAlpha__17CPaneMgrAlphaMorfFv
/* 801BA65C  3B DE 00 01 */	addi r30, r30, 1
/* 801BA660  2C 1E 00 02 */	cmpwi r30, 2
/* 801BA664  3B FF 00 04 */	addi r31, r31, 4
/* 801BA668  41 80 FF E8 */	blt lbl_801BA650
/* 801BA66C  80 7D 0C D8 */	lwz r3, 0xcd8(r29)
/* 801BA670  48 09 B7 61 */	bl setBackupAlpha__17CPaneMgrAlphaMorfFv
/* 801BA674  80 7D 0C DC */	lwz r3, 0xcdc(r29)
/* 801BA678  28 03 00 00 */	cmplwi r3, 0
/* 801BA67C  41 82 00 08 */	beq lbl_801BA684
/* 801BA680  48 09 B7 51 */	bl setBackupAlpha__17CPaneMgrAlphaMorfFv
lbl_801BA684:
/* 801BA684  80 7D 0C CC */	lwz r3, 0xccc(r29)
/* 801BA688  FC 20 F8 90 */	fmr f1, f31
/* 801BA68C  48 09 B7 9D */	bl setAlphaMorfRate__17CPaneMgrAlphaMorfFf
/* 801BA690  80 7D 0C E0 */	lwz r3, 0xce0(r29)
/* 801BA694  FC 20 F8 90 */	fmr f1, f31
/* 801BA698  48 09 B7 91 */	bl setAlphaMorfRate__17CPaneMgrAlphaMorfFf
/* 801BA69C  3B C0 00 00 */	li r30, 0
/* 801BA6A0  3B E0 00 00 */	li r31, 0
lbl_801BA6A4:
/* 801BA6A4  38 1F 0C D0 */	addi r0, r31, 0xcd0
/* 801BA6A8  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801BA6AC  FC 20 F8 90 */	fmr f1, f31
/* 801BA6B0  48 09 B7 79 */	bl setAlphaMorfRate__17CPaneMgrAlphaMorfFf
/* 801BA6B4  3B DE 00 01 */	addi r30, r30, 1
/* 801BA6B8  2C 1E 00 02 */	cmpwi r30, 2
/* 801BA6BC  3B FF 00 04 */	addi r31, r31, 4
/* 801BA6C0  41 80 FF E4 */	blt lbl_801BA6A4
/* 801BA6C4  80 7D 0C D8 */	lwz r3, 0xcd8(r29)
/* 801BA6C8  FC 20 F8 90 */	fmr f1, f31
/* 801BA6CC  48 09 B7 5D */	bl setAlphaMorfRate__17CPaneMgrAlphaMorfFf
/* 801BA6D0  80 7D 0C DC */	lwz r3, 0xcdc(r29)
/* 801BA6D4  28 03 00 00 */	cmplwi r3, 0
/* 801BA6D8  41 82 00 0C */	beq lbl_801BA6E4
/* 801BA6DC  FC 20 F8 90 */	fmr f1, f31
/* 801BA6E0  48 09 B7 49 */	bl setAlphaMorfRate__17CPaneMgrAlphaMorfFf
lbl_801BA6E4:
/* 801BA6E4  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 801BA6E8  39 61 00 18 */	addi r11, r1, 0x18
/* 801BA6EC  48 1A 7B 3D */	bl _restgpr_29
/* 801BA6F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BA6F4  7C 08 03 A6 */	mtlr r0
/* 801BA6F8  38 21 00 20 */	addi r1, r1, 0x20
/* 801BA6FC  4E 80 00 20 */	blr 
