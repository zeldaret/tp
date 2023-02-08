lbl_8097B128:
/* 8097B128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097B12C  7C 08 02 A6 */	mflr r0
/* 8097B130  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097B134  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097B138  93 C1 00 08 */	stw r30, 8(r1)
/* 8097B13C  7C 7E 1B 78 */	mr r30, r3
/* 8097B140  7C 9F 23 78 */	mr r31, r4
/* 8097B144  4B 69 DB 9D */	bl fopAc_IsActor__FPv
/* 8097B148  2C 03 00 00 */	cmpwi r3, 0
/* 8097B14C  41 82 00 2C */	beq lbl_8097B178
/* 8097B150  A8 1E 00 08 */	lha r0, 8(r30)
/* 8097B154  2C 00 02 89 */	cmpwi r0, 0x289
/* 8097B158  40 82 00 20 */	bne lbl_8097B178
/* 8097B15C  7F E3 FB 78 */	mr r3, r31
/* 8097B160  7F C4 F3 78 */	mr r4, r30
/* 8097B164  48 00 00 31 */	bl searchFirstScheduleTagSub__11daNpcCdn3_cFP10fopAc_ac_c
/* 8097B168  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097B16C  41 82 00 0C */	beq lbl_8097B178
/* 8097B170  7F C3 F3 78 */	mr r3, r30
/* 8097B174  48 00 00 08 */	b lbl_8097B17C
lbl_8097B178:
/* 8097B178  38 60 00 00 */	li r3, 0
lbl_8097B17C:
/* 8097B17C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097B180  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097B184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097B188  7C 08 03 A6 */	mtlr r0
/* 8097B18C  38 21 00 10 */	addi r1, r1, 0x10
/* 8097B190  4E 80 00 20 */	blr 
