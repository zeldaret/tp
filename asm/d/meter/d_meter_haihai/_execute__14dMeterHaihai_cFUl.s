lbl_8020B0F4:
/* 8020B0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020B0F8  7C 08 02 A6 */	mflr r0
/* 8020B0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020B100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020B104  93 C1 00 08 */	stw r30, 8(r1)
/* 8020B108  7C 7E 1B 78 */	mr r30, r3
/* 8020B10C  7C 9F 23 78 */	mr r31, r4
/* 8020B110  93 E3 00 24 */	stw r31, 0x24(r3)
/* 8020B114  48 00 0D 91 */	bl updateHaihai__14dMeterHaihai_cFv
/* 8020B118  7F C3 F3 78 */	mr r3, r30
/* 8020B11C  7F E4 FB 78 */	mr r4, r31
/* 8020B120  48 00 0D 81 */	bl alphaAnimeHaihai__14dMeterHaihai_cFUl
/* 8020B124  38 60 00 01 */	li r3, 1
/* 8020B128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020B12C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020B130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020B134  7C 08 03 A6 */	mtlr r0
/* 8020B138  38 21 00 10 */	addi r1, r1, 0x10
/* 8020B13C  4E 80 00 20 */	blr 
