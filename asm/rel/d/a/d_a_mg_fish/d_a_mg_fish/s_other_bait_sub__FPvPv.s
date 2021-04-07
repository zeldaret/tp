lbl_8052A7BC:
/* 8052A7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052A7C0  7C 08 02 A6 */	mflr r0
/* 8052A7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052A7C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052A7CC  93 C1 00 08 */	stw r30, 8(r1)
/* 8052A7D0  7C 7E 1B 78 */	mr r30, r3
/* 8052A7D4  7C 9F 23 78 */	mr r31, r4
/* 8052A7D8  4B AE E5 09 */	bl fopAc_IsActor__FPv
/* 8052A7DC  2C 03 00 00 */	cmpwi r3, 0
/* 8052A7E0  41 82 00 3C */	beq lbl_8052A81C
/* 8052A7E4  7C 1F F0 40 */	cmplw r31, r30
/* 8052A7E8  41 82 00 34 */	beq lbl_8052A81C
/* 8052A7EC  A8 1E 00 08 */	lha r0, 8(r30)
/* 8052A7F0  2C 00 01 36 */	cmpwi r0, 0x136
/* 8052A7F4  40 82 00 28 */	bne lbl_8052A81C
/* 8052A7F8  A8 1E 05 B6 */	lha r0, 0x5b6(r30)
/* 8052A7FC  2C 00 00 33 */	cmpwi r0, 0x33
/* 8052A800  40 82 00 1C */	bne lbl_8052A81C
/* 8052A804  80 7E 06 48 */	lwz r3, 0x648(r30)
/* 8052A808  80 1F 06 48 */	lwz r0, 0x648(r31)
/* 8052A80C  7C 03 00 40 */	cmplw r3, r0
/* 8052A810  40 82 00 0C */	bne lbl_8052A81C
/* 8052A814  7F C3 F3 78 */	mr r3, r30
/* 8052A818  48 00 00 08 */	b lbl_8052A820
lbl_8052A81C:
/* 8052A81C  38 60 00 00 */	li r3, 0
lbl_8052A820:
/* 8052A820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052A824  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052A828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052A82C  7C 08 03 A6 */	mtlr r0
/* 8052A830  38 21 00 10 */	addi r1, r1, 0x10
/* 8052A834  4E 80 00 20 */	blr 
