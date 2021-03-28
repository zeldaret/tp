lbl_800212A4:
/* 800212A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800212A8  7C 08 02 A6 */	mflr r0
/* 800212AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800212B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800212B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 800212B8  41 82 00 38 */	beq lbl_800212F0
/* 800212BC  4B FF FC 0D */	bl fpcCt_IsDoing__FP18base_process_class
/* 800212C0  2C 03 00 01 */	cmpwi r3, 1
/* 800212C4  40 82 00 0C */	bne lbl_800212D0
/* 800212C8  38 60 00 00 */	li r3, 0
/* 800212CC  48 00 00 28 */	b lbl_800212F4
lbl_800212D0:
/* 800212D0  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 800212D4  2C 00 00 03 */	cmpwi r0, 3
/* 800212D8  40 82 00 0C */	bne lbl_800212E4
/* 800212DC  38 60 00 00 */	li r3, 0
/* 800212E0  48 00 00 14 */	b lbl_800212F4
lbl_800212E4:
/* 800212E4  7F E3 FB 78 */	mr r3, r31
/* 800212E8  4B FF FE A1 */	bl fpcDt_ToDeleteQ__FP18base_process_class
/* 800212EC  48 00 00 08 */	b lbl_800212F4
lbl_800212F0:
/* 800212F0  38 60 00 01 */	li r3, 1
lbl_800212F4:
/* 800212F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800212F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800212FC  7C 08 03 A6 */	mtlr r0
/* 80021300  38 21 00 10 */	addi r1, r1, 0x10
/* 80021304  4E 80 00 20 */	blr 
