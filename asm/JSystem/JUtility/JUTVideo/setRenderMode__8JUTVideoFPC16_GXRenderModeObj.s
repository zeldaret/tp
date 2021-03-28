lbl_802E5198:
/* 802E5198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E519C  7C 08 02 A6 */	mflr r0
/* 802E51A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E51A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E51A8  7C 7F 1B 78 */	mr r31, r3
/* 802E51AC  80 A3 00 04 */	lwz r5, 4(r3)
/* 802E51B0  28 05 00 00 */	cmplwi r5, 0
/* 802E51B4  41 82 00 24 */	beq lbl_802E51D8
/* 802E51B8  80 64 00 00 */	lwz r3, 0(r4)
/* 802E51BC  80 05 00 00 */	lwz r0, 0(r5)
/* 802E51C0  7C 03 00 00 */	cmpw r3, r0
/* 802E51C4  41 82 00 14 */	beq lbl_802E51D8
/* 802E51C8  38 00 00 01 */	li r0, 1
/* 802E51CC  98 1F 00 2C */	stb r0, 0x2c(r31)
/* 802E51D0  38 00 00 04 */	li r0, 4
/* 802E51D4  90 1F 00 30 */	stw r0, 0x30(r31)
lbl_802E51D8:
/* 802E51D8  90 9F 00 04 */	stw r4, 4(r31)
/* 802E51DC  80 7F 00 04 */	lwz r3, 4(r31)
/* 802E51E0  48 06 7C AD */	bl VIConfigure
/* 802E51E4  48 06 84 B1 */	bl VIFlush
/* 802E51E8  88 1F 00 2C */	lbz r0, 0x2c(r31)
/* 802E51EC  28 00 00 00 */	cmplwi r0, 0
/* 802E51F0  41 82 00 0C */	beq lbl_802E51FC
/* 802E51F4  48 06 77 D1 */	bl VIWaitForRetrace
/* 802E51F8  48 06 77 CD */	bl VIWaitForRetrace
lbl_802E51FC:
/* 802E51FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5204  7C 08 03 A6 */	mtlr r0
/* 802E5208  38 21 00 10 */	addi r1, r1, 0x10
/* 802E520C  4E 80 00 20 */	blr 
