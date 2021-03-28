lbl_80C4F60C:
/* 80C4F60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4F610  7C 08 02 A6 */	mflr r0
/* 80C4F614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4F618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4F61C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C4F620  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C4F624  7C 9F 23 78 */	mr r31, r4
/* 80C4F628  41 82 00 5C */	beq lbl_80C4F684
/* 80C4F62C  3C 60 80 C5 */	lis r3, __vt__15daObjKWheel01_c@ha
/* 80C4F630  38 63 F7 94 */	addi r3, r3, __vt__15daObjKWheel01_c@l
/* 80C4F634  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C4F638  38 03 00 28 */	addi r0, r3, 0x28
/* 80C4F63C  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C4F640  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80C4F644  41 82 00 10 */	beq lbl_80C4F654
/* 80C4F648  3C 60 80 C5 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C4F64C  38 03 F7 7C */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C4F650  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80C4F654:
/* 80C4F654  28 1E 00 00 */	cmplwi r30, 0
/* 80C4F658  41 82 00 1C */	beq lbl_80C4F674
/* 80C4F65C  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80C4F660  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80C4F664  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C4F668  7F C3 F3 78 */	mr r3, r30
/* 80C4F66C  38 80 00 00 */	li r4, 0
/* 80C4F670  4B 3C 96 1C */	b __dt__10fopAc_ac_cFv
lbl_80C4F674:
/* 80C4F674  7F E0 07 35 */	extsh. r0, r31
/* 80C4F678  40 81 00 0C */	ble lbl_80C4F684
/* 80C4F67C  7F C3 F3 78 */	mr r3, r30
/* 80C4F680  4B 67 F6 BC */	b __dl__FPv
lbl_80C4F684:
/* 80C4F684  7F C3 F3 78 */	mr r3, r30
/* 80C4F688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4F68C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C4F690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4F694  7C 08 03 A6 */	mtlr r0
/* 80C4F698  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4F69C  4E 80 00 20 */	blr 
