lbl_80675ADC:
/* 80675ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80675AE0  7C 08 02 A6 */	mflr r0
/* 80675AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80675AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80675AEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80675AF0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80675AF4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80675AF8  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 80675AFC  AB C3 04 E6 */	lha r30, 0x4e6(r3)
/* 80675B00  48 00 07 A5 */	bl checkFront__12daMBdoorL1_cFv
/* 80675B04  2C 03 00 00 */	cmpwi r3, 0
/* 80675B08  41 82 00 0C */	beq lbl_80675B14
/* 80675B0C  38 1E 7F FF */	addi r0, r30, 0x7fff
/* 80675B10  7C 1E 07 34 */	extsh r30, r0
lbl_80675B14:
/* 80675B14  B3 DF 06 06 */	sth r30, 0x606(r31)
/* 80675B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80675B1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80675B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80675B24  7C 08 03 A6 */	mtlr r0
/* 80675B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80675B2C  4E 80 00 20 */	blr 
