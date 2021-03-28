lbl_80C5E834:
/* 80C5E834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E838  7C 08 02 A6 */	mflr r0
/* 80C5E83C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5E844  93 C1 00 08 */	stw r30, 8(r1)
/* 80C5E848  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C5E84C  7C 9F 23 78 */	mr r31, r4
/* 80C5E850  41 82 00 5C */	beq lbl_80C5E8AC
/* 80C5E854  3C 60 80 C6 */	lis r3, __vt__16daLv4EdShutter_c@ha
/* 80C5E858  38 63 E9 EC */	addi r3, r3, __vt__16daLv4EdShutter_c@l
/* 80C5E85C  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80C5E860  38 03 00 28 */	addi r0, r3, 0x28
/* 80C5E864  90 1E 05 A8 */	stw r0, 0x5a8(r30)
/* 80C5E868  34 1E 05 A8 */	addic. r0, r30, 0x5a8
/* 80C5E86C  41 82 00 10 */	beq lbl_80C5E87C
/* 80C5E870  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C5E874  38 03 E9 D4 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C5E878  90 1E 05 A8 */	stw r0, 0x5a8(r30)
lbl_80C5E87C:
/* 80C5E87C  28 1E 00 00 */	cmplwi r30, 0
/* 80C5E880  41 82 00 1C */	beq lbl_80C5E89C
/* 80C5E884  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80C5E888  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80C5E88C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C5E890  7F C3 F3 78 */	mr r3, r30
/* 80C5E894  38 80 00 00 */	li r4, 0
/* 80C5E898  4B 3B A3 F4 */	b __dt__10fopAc_ac_cFv
lbl_80C5E89C:
/* 80C5E89C  7F E0 07 35 */	extsh. r0, r31
/* 80C5E8A0  40 81 00 0C */	ble lbl_80C5E8AC
/* 80C5E8A4  7F C3 F3 78 */	mr r3, r30
/* 80C5E8A8  4B 67 04 94 */	b __dl__FPv
lbl_80C5E8AC:
/* 80C5E8AC  7F C3 F3 78 */	mr r3, r30
/* 80C5E8B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5E8B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C5E8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E8BC  7C 08 03 A6 */	mtlr r0
/* 80C5E8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E8C4  4E 80 00 20 */	blr 
