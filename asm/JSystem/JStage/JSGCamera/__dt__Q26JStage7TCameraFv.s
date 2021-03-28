lbl_80280BA0:
/* 80280BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280BA4  7C 08 02 A6 */	mflr r0
/* 80280BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280BAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280BB0  93 C1 00 08 */	stw r30, 8(r1)
/* 80280BB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80280BB8  7C 9F 23 78 */	mr r31, r4
/* 80280BBC  41 82 00 28 */	beq lbl_80280BE4
/* 80280BC0  3C 80 80 3C */	lis r4, __vt__Q26JStage7TCamera@ha
/* 80280BC4  38 04 46 80 */	addi r0, r4, __vt__Q26JStage7TCamera@l
/* 80280BC8  90 1E 00 00 */	stw r0, 0(r30)
/* 80280BCC  38 80 00 00 */	li r4, 0
/* 80280BD0  48 00 02 05 */	bl __dt__Q26JStage7TObjectFv
/* 80280BD4  7F E0 07 35 */	extsh. r0, r31
/* 80280BD8  40 81 00 0C */	ble lbl_80280BE4
/* 80280BDC  7F C3 F3 78 */	mr r3, r30
/* 80280BE0  48 04 E1 5D */	bl __dl__FPv
lbl_80280BE4:
/* 80280BE4  7F C3 F3 78 */	mr r3, r30
/* 80280BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280BEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280BF4  7C 08 03 A6 */	mtlr r0
/* 80280BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80280BFC  4E 80 00 20 */	blr 
