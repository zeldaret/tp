lbl_802720F8:
/* 802720F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802720FC  7C 08 02 A6 */	mflr r0
/* 80272100  90 01 00 24 */	stw r0, 0x24(r1)
/* 80272104  39 61 00 20 */	addi r11, r1, 0x20
/* 80272108  48 0F 00 D5 */	bl _savegpr_29
/* 8027210C  7C 7D 1B 78 */	mr r29, r3
/* 80272110  7C 9E 23 78 */	mr r30, r4
/* 80272114  7C BF 2B 78 */	mr r31, r5
/* 80272118  3C 80 80 3C */	lis r4, __vt__10JFWDisplay@ha
/* 8027211C  38 04 40 A0 */	addi r0, r4, __vt__10JFWDisplay@l
/* 80272120  90 03 00 00 */	stw r0, 0(r3)
/* 80272124  38 00 FF FF */	li r0, -1
/* 80272128  90 03 00 08 */	stw r0, 8(r3)
/* 8027212C  7C C4 33 78 */	mr r4, r6
/* 80272130  4B FF FF 11 */	bl ctor_subroutine__10JFWDisplayFb
/* 80272134  7F C3 F3 78 */	mr r3, r30
/* 80272138  7F E4 FB 78 */	mr r4, r31
/* 8027213C  48 07 32 7D */	bl createManager__6JUTXfbFP7JKRHeapQ26JUTXfb10EXfbNumber
/* 80272140  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80272144  7F A3 EB 78 */	mr r3, r29
/* 80272148  39 61 00 20 */	addi r11, r1, 0x20
/* 8027214C  48 0F 00 DD */	bl _restgpr_29
/* 80272150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80272154  7C 08 03 A6 */	mtlr r0
/* 80272158  38 21 00 20 */	addi r1, r1, 0x20
/* 8027215C  4E 80 00 20 */	blr 
