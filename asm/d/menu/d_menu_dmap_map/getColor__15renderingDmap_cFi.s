lbl_801C0C48:
/* 801C0C48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C0C4C  7C 08 02 A6 */	mflr r0
/* 801C0C50  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C0C54  39 61 00 20 */	addi r11, r1, 0x20
/* 801C0C58  48 1A 15 85 */	bl _savegpr_29
/* 801C0C5C  7C 9D 23 78 */	mr r29, r4
/* 801C0C60  3C 80 80 39 */	lis r4, l_paletteDmap_m@ha /* 0x80395860@ha */
/* 801C0C64  3B E4 58 60 */	addi r31, r4, l_paletteDmap_m@l /* 0x80395860@l */
/* 801C0C68  3B DF 00 F0 */	addi r30, r31, 0xf0
/* 801C0C6C  80 83 00 24 */	lwz r4, 0x24(r3)
/* 801C0C70  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 801C0C74  7C 04 00 00 */	cmpw r4, r0
/* 801C0C78  40 82 00 0C */	bne lbl_801C0C84
/* 801C0C7C  3B DF 01 38 */	addi r30, r31, 0x138
/* 801C0C80  48 00 00 18 */	b lbl_801C0C98
lbl_801C0C84:
/* 801C0C84  7C 83 23 78 */	mr r3, r4
/* 801C0C88  4B E7 E0 89 */	bl isVisitedRoom__10dMapInfo_nFi
/* 801C0C8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801C0C90  41 82 00 08 */	beq lbl_801C0C98
/* 801C0C94  3B DF 01 14 */	addi r30, r31, 0x114
lbl_801C0C98:
/* 801C0C98  57 A0 10 3A */	slwi r0, r29, 2
/* 801C0C9C  7C 7E 02 14 */	add r3, r30, r0
/* 801C0CA0  39 61 00 20 */	addi r11, r1, 0x20
/* 801C0CA4  48 1A 15 85 */	bl _restgpr_29
/* 801C0CA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C0CAC  7C 08 03 A6 */	mtlr r0
/* 801C0CB0  38 21 00 20 */	addi r1, r1, 0x20
/* 801C0CB4  4E 80 00 20 */	blr 
