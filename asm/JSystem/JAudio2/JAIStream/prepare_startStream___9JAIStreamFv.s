lbl_802A3498:
/* 802A3498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A349C  7C 08 02 A6 */	mflr r0
/* 802A34A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A34A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A34A8  7C 7F 1B 78 */	mr r31, r3
/* 802A34AC  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A34B0  4B FF 31 69 */	bl start__13JASAramStreamFv
/* 802A34B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A34B8  41 82 00 18 */	beq lbl_802A34D0
/* 802A34BC  38 00 00 00 */	li r0, 0
/* 802A34C0  98 1F 02 C6 */	stb r0, 0x2c6(r31)
/* 802A34C4  98 1F 02 C4 */	stb r0, 0x2c4(r31)
/* 802A34C8  38 00 00 04 */	li r0, 4
/* 802A34CC  90 1F 02 90 */	stw r0, 0x290(r31)
lbl_802A34D0:
/* 802A34D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A34D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A34D8  7C 08 03 A6 */	mtlr r0
/* 802A34DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A34E0  4E 80 00 20 */	blr 
