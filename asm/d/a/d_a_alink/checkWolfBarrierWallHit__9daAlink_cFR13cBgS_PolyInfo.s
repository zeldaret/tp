lbl_8012A41C:
/* 8012A41C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012A420  7C 08 02 A6 */	mflr r0
/* 8012A424  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012A428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012A42C  7C 9F 23 78 */	mr r31, r4
/* 8012A430  A8 03 31 00 */	lha r0, 0x3100(r3)
/* 8012A434  2C 00 00 00 */	cmpwi r0, 0
/* 8012A438  40 82 00 10 */	bne lbl_8012A448
/* 8012A43C  4B F8 94 C9 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 8012A440  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012A444  41 82 00 0C */	beq lbl_8012A450
lbl_8012A448:
/* 8012A448  38 60 00 00 */	li r3, 0
/* 8012A44C  48 00 00 38 */	b lbl_8012A484
lbl_8012A450:
/* 8012A450  7F E3 FB 78 */	mr r3, r31
/* 8012A454  38 80 00 01 */	li r4, 1
/* 8012A458  4B F7 7D 89 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 8012A45C  7C 60 07 34 */	extsh r0, r3
/* 8012A460  2C 00 00 30 */	cmpwi r0, 0x30
/* 8012A464  41 82 00 14 */	beq lbl_8012A478
/* 8012A468  2C 00 00 2D */	cmpwi r0, 0x2d
/* 8012A46C  41 82 00 0C */	beq lbl_8012A478
/* 8012A470  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 8012A474  40 82 00 0C */	bne lbl_8012A480
lbl_8012A478:
/* 8012A478  38 60 00 01 */	li r3, 1
/* 8012A47C  48 00 00 08 */	b lbl_8012A484
lbl_8012A480:
/* 8012A480  38 60 00 00 */	li r3, 0
lbl_8012A484:
/* 8012A484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012A488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012A48C  7C 08 03 A6 */	mtlr r0
/* 8012A490  38 21 00 10 */	addi r1, r1, 0x10
/* 8012A494  4E 80 00 20 */	blr 
