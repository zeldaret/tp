lbl_800D102C:
/* 800D102C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D1030  7C 08 02 A6 */	mflr r0
/* 800D1034  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D1038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D103C  7C 7F 1B 78 */	mr r31, r3
/* 800D1040  48 00 18 51 */	bl checkCutBackState__9daAlink_cFv
/* 800D1044  2C 03 00 00 */	cmpwi r3, 0
/* 800D1048  41 82 00 28 */	beq lbl_800D1070
/* 800D104C  4B FE F5 49 */	bl checkNotBattleStage__9daAlink_cFv
/* 800D1050  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D1054  40 82 00 1C */	bne lbl_800D1070
/* 800D1058  7F E3 FB 78 */	mr r3, r31
/* 800D105C  4B FE 16 5D */	bl swordSwingTrigger__9daAlink_cFv
/* 800D1060  2C 03 00 00 */	cmpwi r3, 0
/* 800D1064  41 82 00 0C */	beq lbl_800D1070
/* 800D1068  38 60 00 01 */	li r3, 1
/* 800D106C  48 00 00 08 */	b lbl_800D1074
lbl_800D1070:
/* 800D1070  38 60 00 00 */	li r3, 0
lbl_800D1074:
/* 800D1074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D1078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D107C  7C 08 03 A6 */	mtlr r0
/* 800D1080  38 21 00 10 */	addi r1, r1, 0x10
/* 800D1084  4E 80 00 20 */	blr 
