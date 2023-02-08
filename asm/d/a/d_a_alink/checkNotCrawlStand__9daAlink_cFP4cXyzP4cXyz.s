lbl_800F8A50:
/* 800F8A50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800F8A54  7C 08 02 A6 */	mflr r0
/* 800F8A58  90 01 00 44 */	stw r0, 0x44(r1)
/* 800F8A5C  39 61 00 40 */	addi r11, r1, 0x40
/* 800F8A60  48 26 97 7D */	bl _savegpr_29
/* 800F8A64  7C 7D 1B 78 */	mr r29, r3
/* 800F8A68  7C 9E 23 78 */	mr r30, r4
/* 800F8A6C  7C BF 2B 78 */	mr r31, r5
/* 800F8A70  38 61 00 14 */	addi r3, r1, 0x14
/* 800F8A74  48 16 E0 71 */	bl __pl__4cXyzCFRC3Vec
/* 800F8A78  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800F8A7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800F8A80  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800F8A84  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800F8A88  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800F8A8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800F8A90  7F A3 EB 78 */	mr r3, r29
/* 800F8A94  38 81 00 20 */	addi r4, r1, 0x20
/* 800F8A98  4B FF FF 49 */	bl checkNotCrawlStand__9daAlink_cFP4cXyz
/* 800F8A9C  2C 03 00 00 */	cmpwi r3, 0
/* 800F8AA0  41 82 00 0C */	beq lbl_800F8AAC
/* 800F8AA4  38 60 00 01 */	li r3, 1
/* 800F8AA8  48 00 00 40 */	b lbl_800F8AE8
lbl_800F8AAC:
/* 800F8AAC  38 61 00 08 */	addi r3, r1, 8
/* 800F8AB0  7F C4 F3 78 */	mr r4, r30
/* 800F8AB4  7F E5 FB 78 */	mr r5, r31
/* 800F8AB8  48 16 E0 7D */	bl __mi__4cXyzCFRC3Vec
/* 800F8ABC  C0 01 00 08 */	lfs f0, 8(r1)
/* 800F8AC0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800F8AC4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800F8AC8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800F8ACC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800F8AD0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800F8AD4  7F A3 EB 78 */	mr r3, r29
/* 800F8AD8  38 81 00 20 */	addi r4, r1, 0x20
/* 800F8ADC  4B FF FF 05 */	bl checkNotCrawlStand__9daAlink_cFP4cXyz
/* 800F8AE0  30 03 FF FF */	addic r0, r3, -1
/* 800F8AE4  7C 60 19 10 */	subfe r3, r0, r3
lbl_800F8AE8:
/* 800F8AE8  39 61 00 40 */	addi r11, r1, 0x40
/* 800F8AEC  48 26 97 3D */	bl _restgpr_29
/* 800F8AF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800F8AF4  7C 08 03 A6 */	mtlr r0
/* 800F8AF8  38 21 00 40 */	addi r1, r1, 0x40
/* 800F8AFC  4E 80 00 20 */	blr 
