lbl_80467498:
/* 80467498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046749C  7C 08 02 A6 */	mflr r0
/* 804674A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804674A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804674A8  93 C1 00 08 */	stw r30, 8(r1)
/* 804674AC  7C 7E 1B 79 */	or. r30, r3, r3
/* 804674B0  7C 9F 23 78 */	mr r31, r4
/* 804674B4  41 82 00 4C */	beq lbl_80467500
/* 804674B8  3C 60 80 47 */	lis r3, __vt__7daDsh_c@ha
/* 804674BC  38 03 80 44 */	addi r0, r3, __vt__7daDsh_c@l
/* 804674C0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 804674C4  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 804674C8  38 80 FF FF */	li r4, -1
/* 804674CC  4B BC 7E 5C */	b __dt__19dComIfG_resLoader_cFv
/* 804674D0  28 1E 00 00 */	cmplwi r30, 0
/* 804674D4  41 82 00 1C */	beq lbl_804674F0
/* 804674D8  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 804674DC  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 804674E0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 804674E4  7F C3 F3 78 */	mr r3, r30
/* 804674E8  38 80 00 00 */	li r4, 0
/* 804674EC  4B BB 17 A0 */	b __dt__10fopAc_ac_cFv
lbl_804674F0:
/* 804674F0  7F E0 07 35 */	extsh. r0, r31
/* 804674F4  40 81 00 0C */	ble lbl_80467500
/* 804674F8  7F C3 F3 78 */	mr r3, r30
/* 804674FC  4B E6 78 40 */	b __dl__FPv
lbl_80467500:
/* 80467500  7F C3 F3 78 */	mr r3, r30
/* 80467504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80467508  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046750C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80467510  7C 08 03 A6 */	mtlr r0
/* 80467514  38 21 00 10 */	addi r1, r1, 0x10
/* 80467518  4E 80 00 20 */	blr 
