lbl_80D1D850:
/* 80D1D850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1D854  7C 08 02 A6 */	mflr r0
/* 80D1D858  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1D85C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1D860  93 C1 00 08 */	stw r30, 8(r1)
/* 80D1D864  7C 7E 1B 78 */	mr r30, r3
/* 80D1D868  7C 9F 23 78 */	mr r31, r4
/* 80D1D86C  4B 2F B4 74 */	b fopAc_IsActor__FPv
/* 80D1D870  2C 03 00 00 */	cmpwi r3, 0
/* 80D1D874  41 82 00 38 */	beq lbl_80D1D8AC
/* 80D1D878  A8 1E 00 08 */	lha r0, 8(r30)
/* 80D1D87C  2C 00 00 30 */	cmpwi r0, 0x30
/* 80D1D880  40 82 00 2C */	bne lbl_80D1D8AC
/* 80D1D884  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80D1D888  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 80D1D88C  7C 03 00 40 */	cmplw r3, r0
/* 80D1D890  40 82 00 1C */	bne lbl_80D1D8AC
/* 80D1D894  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80D1D898  80 1E 05 9C */	lwz r0, 0x59c(r30)
/* 80D1D89C  7C 03 00 00 */	cmpw r3, r0
/* 80D1D8A0  40 82 00 0C */	bne lbl_80D1D8AC
/* 80D1D8A4  7F C3 F3 78 */	mr r3, r30
/* 80D1D8A8  48 00 00 08 */	b lbl_80D1D8B0
lbl_80D1D8AC:
/* 80D1D8AC  38 60 00 00 */	li r3, 0
lbl_80D1D8B0:
/* 80D1D8B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1D8B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D1D8B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1D8BC  7C 08 03 A6 */	mtlr r0
/* 80D1D8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1D8C4  4E 80 00 20 */	blr 
