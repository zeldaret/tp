lbl_8097AFE0:
/* 8097AFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097AFE4  7C 08 02 A6 */	mflr r0
/* 8097AFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097AFEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097AFF0  93 C1 00 08 */	stw r30, 8(r1)
/* 8097AFF4  7C 7E 1B 78 */	mr r30, r3
/* 8097AFF8  7C 9F 23 78 */	mr r31, r4
/* 8097AFFC  4B 69 DC E5 */	bl fopAc_IsActor__FPv
/* 8097B000  2C 03 00 00 */	cmpwi r3, 0
/* 8097B004  41 82 00 2C */	beq lbl_8097B030
/* 8097B008  A8 1E 00 08 */	lha r0, 8(r30)
/* 8097B00C  2C 00 02 89 */	cmpwi r0, 0x289
/* 8097B010  40 82 00 20 */	bne lbl_8097B030
/* 8097B014  7F E3 FB 78 */	mr r3, r31
/* 8097B018  7F C4 F3 78 */	mr r4, r30
/* 8097B01C  48 00 00 31 */	bl searchNextScheduleTagSub__11daNpcCdn3_cFP10fopAc_ac_c
/* 8097B020  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097B024  41 82 00 0C */	beq lbl_8097B030
/* 8097B028  7F C3 F3 78 */	mr r3, r30
/* 8097B02C  48 00 00 08 */	b lbl_8097B034
lbl_8097B030:
/* 8097B030  38 60 00 00 */	li r3, 0
lbl_8097B034:
/* 8097B034  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097B038  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097B03C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097B040  7C 08 03 A6 */	mtlr r0
/* 8097B044  38 21 00 10 */	addi r1, r1, 0x10
/* 8097B048  4E 80 00 20 */	blr 
