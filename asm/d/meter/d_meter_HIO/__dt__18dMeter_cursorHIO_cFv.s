lbl_80201098:
/* 80201098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020109C  7C 08 02 A6 */	mflr r0
/* 802010A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802010A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802010A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802010AC  41 82 00 1C */	beq lbl_802010C8
/* 802010B0  3C A0 80 3C */	lis r5, __vt__18dMeter_cursorHIO_c@ha /* 0x803BF0E8@ha */
/* 802010B4  38 05 F0 E8 */	addi r0, r5, __vt__18dMeter_cursorHIO_c@l /* 0x803BF0E8@l */
/* 802010B8  90 1F 00 00 */	stw r0, 0(r31)
/* 802010BC  7C 80 07 35 */	extsh. r0, r4
/* 802010C0  40 81 00 08 */	ble lbl_802010C8
/* 802010C4  48 0C DC 79 */	bl __dl__FPv
lbl_802010C8:
/* 802010C8  7F E3 FB 78 */	mr r3, r31
/* 802010CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802010D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802010D4  7C 08 03 A6 */	mtlr r0
/* 802010D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802010DC  4E 80 00 20 */	blr 
