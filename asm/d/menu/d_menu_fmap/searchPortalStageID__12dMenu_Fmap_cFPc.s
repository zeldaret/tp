lbl_801CD380:
/* 801CD380  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CD384  7C 08 02 A6 */	mflr r0
/* 801CD388  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CD38C  39 61 00 20 */	addi r11, r1, 0x20
/* 801CD390  48 19 4E 49 */	bl _savegpr_28
/* 801CD394  7C 7C 1B 78 */	mr r28, r3
/* 801CD398  7C 9D 23 78 */	mr r29, r4
/* 801CD39C  3B C0 00 00 */	li r30, 0
/* 801CD3A0  3B E0 00 00 */	li r31, 0
lbl_801CD3A4:
/* 801CD3A4  7F A3 EB 78 */	mr r3, r29
/* 801CD3A8  38 9F 02 60 */	addi r4, r31, 0x260
/* 801CD3AC  7C 9C 22 14 */	add r4, r28, r4
/* 801CD3B0  48 19 B5 E5 */	bl strcmp
/* 801CD3B4  2C 03 00 00 */	cmpwi r3, 0
/* 801CD3B8  40 82 00 0C */	bne lbl_801CD3C4
/* 801CD3BC  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 801CD3C0  48 00 00 18 */	b lbl_801CD3D8
lbl_801CD3C4:
/* 801CD3C4  3B DE 00 01 */	addi r30, r30, 1
/* 801CD3C8  2C 1E 00 14 */	cmpwi r30, 0x14
/* 801CD3CC  3B FF 00 08 */	addi r31, r31, 8
/* 801CD3D0  41 80 FF D4 */	blt lbl_801CD3A4
/* 801CD3D4  38 60 00 FF */	li r3, 0xff
lbl_801CD3D8:
/* 801CD3D8  39 61 00 20 */	addi r11, r1, 0x20
/* 801CD3DC  48 19 4E 49 */	bl _restgpr_28
/* 801CD3E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CD3E4  7C 08 03 A6 */	mtlr r0
/* 801CD3E8  38 21 00 20 */	addi r1, r1, 0x20
/* 801CD3EC  4E 80 00 20 */	blr 
