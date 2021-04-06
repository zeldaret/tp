lbl_80280C80:
/* 80280C80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280C84  7C 08 02 A6 */	mflr r0
/* 80280C88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280C8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280C90  93 C1 00 08 */	stw r30, 8(r1)
/* 80280C94  7C 7E 1B 79 */	or. r30, r3, r3
/* 80280C98  7C 9F 23 78 */	mr r31, r4
/* 80280C9C  41 82 00 28 */	beq lbl_80280CC4
/* 80280CA0  3C 80 80 3C */	lis r4, __vt__Q26JStage4TFog@ha /* 0x803C4718@ha */
/* 80280CA4  38 04 47 18 */	addi r0, r4, __vt__Q26JStage4TFog@l /* 0x803C4718@l */
/* 80280CA8  90 1E 00 00 */	stw r0, 0(r30)
/* 80280CAC  38 80 00 00 */	li r4, 0
/* 80280CB0  48 00 01 25 */	bl __dt__Q26JStage7TObjectFv
/* 80280CB4  7F E0 07 35 */	extsh. r0, r31
/* 80280CB8  40 81 00 0C */	ble lbl_80280CC4
/* 80280CBC  7F C3 F3 78 */	mr r3, r30
/* 80280CC0  48 04 E0 7D */	bl __dl__FPv
lbl_80280CC4:
/* 80280CC4  7F C3 F3 78 */	mr r3, r30
/* 80280CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280CCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80280CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280CD4  7C 08 03 A6 */	mtlr r0
/* 80280CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80280CDC  4E 80 00 20 */	blr 
