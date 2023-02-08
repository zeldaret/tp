lbl_80CD9EE0:
/* 80CD9EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD9EE4  7C 08 02 A6 */	mflr r0
/* 80CD9EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD9EEC  28 03 00 00 */	cmplwi r3, 0
/* 80CD9EF0  41 82 00 2C */	beq lbl_80CD9F1C
/* 80CD9EF4  28 05 00 00 */	cmplwi r5, 0
/* 80CD9EF8  41 82 00 24 */	beq lbl_80CD9F1C
/* 80CD9EFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD9F00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD9F04  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80CD9F08  A8 84 00 08 */	lha r4, 8(r4)
/* 80CD9F0C  A8 05 00 08 */	lha r0, 8(r5)
/* 80CD9F10  7C 00 20 00 */	cmpw r0, r4
/* 80CD9F14  40 82 00 08 */	bne lbl_80CD9F1C
/* 80CD9F18  48 00 0C 5D */	bl initActionOrderGetDemo__7daKey_cFv
lbl_80CD9F1C:
/* 80CD9F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD9F20  7C 08 03 A6 */	mtlr r0
/* 80CD9F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD9F28  4E 80 00 20 */	blr 
