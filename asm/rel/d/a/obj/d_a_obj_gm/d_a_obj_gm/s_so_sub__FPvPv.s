lbl_80BFC85C:
/* 80BFC85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFC860  7C 08 02 A6 */	mflr r0
/* 80BFC864  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFC868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFC86C  7C 7F 1B 78 */	mr r31, r3
/* 80BFC870  4B 41 C4 71 */	bl fopAc_IsActor__FPv
/* 80BFC874  2C 03 00 00 */	cmpwi r3, 0
/* 80BFC878  41 82 00 18 */	beq lbl_80BFC890
/* 80BFC87C  A8 1F 00 08 */	lha r0, 8(r31)
/* 80BFC880  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80BFC884  40 82 00 0C */	bne lbl_80BFC890
/* 80BFC888  7F E3 FB 78 */	mr r3, r31
/* 80BFC88C  48 00 00 08 */	b lbl_80BFC894
lbl_80BFC890:
/* 80BFC890  38 60 00 00 */	li r3, 0
lbl_80BFC894:
/* 80BFC894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFC898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFC89C  7C 08 03 A6 */	mtlr r0
/* 80BFC8A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFC8A4  4E 80 00 20 */	blr 
