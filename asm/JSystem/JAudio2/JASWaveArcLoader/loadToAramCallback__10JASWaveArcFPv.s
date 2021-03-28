lbl_8029A378:
/* 8029A378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A37C  7C 08 02 A6 */	mflr r0
/* 8029A380  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A388  93 C1 00 08 */	stw r30, 8(r1)
/* 8029A38C  7C 7E 1B 78 */	mr r30, r3
/* 8029A390  83 E3 00 00 */	lwz r31, 0(r3)
/* 8029A394  80 63 00 04 */	lwz r3, 4(r3)
/* 8029A398  80 9E 00 08 */	lwz r4, 8(r30)
/* 8029A39C  38 A0 00 00 */	li r5, 0
/* 8029A3A0  38 C0 00 00 */	li r6, 0
/* 8029A3A4  38 E0 00 00 */	li r7, 0
/* 8029A3A8  39 00 00 00 */	li r8, 0
/* 8029A3AC  48 04 04 C9 */	bl loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUlPUl
/* 8029A3B0  28 03 00 00 */	cmplwi r3, 0
/* 8029A3B4  41 82 00 38 */	beq lbl_8029A3EC
/* 8029A3B8  A0 7F 00 5A */	lhz r3, 0x5a(r31)
/* 8029A3BC  38 03 FF FF */	addi r0, r3, -1
/* 8029A3C0  B0 1F 00 5A */	sth r0, 0x5a(r31)
/* 8029A3C4  7F E3 FB 78 */	mr r3, r31
/* 8029A3C8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8029A3CC  4B FF FE 8D */	bl loadSetup__10JASWaveArcFUl
/* 8029A3D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029A3D4  41 82 00 18 */	beq lbl_8029A3EC
/* 8029A3D8  7F E3 FB 78 */	mr r3, r31
/* 8029A3DC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8029A3E0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8029A3E4  7D 89 03 A6 */	mtctr r12
/* 8029A3E8  4E 80 04 21 */	bctrl 
lbl_8029A3EC:
/* 8029A3EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029A3F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8029A3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A3F8  7C 08 03 A6 */	mtlr r0
/* 8029A3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A400  4E 80 00 20 */	blr 
