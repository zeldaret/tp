lbl_802A6EDC:
/* 802A6EDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A6EE0  7C 08 02 A6 */	mflr r0
/* 802A6EE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A6EE8  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6EEC  48 0B B2 F1 */	bl _savegpr_29
/* 802A6EF0  7C 7D 1B 78 */	mr r29, r3
/* 802A6EF4  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 802A6EF8  48 00 00 58 */	b lbl_802A6F50
lbl_802A6EFC:
/* 802A6EFC  83 FE 00 0C */	lwz r31, 0xc(r30)
/* 802A6F00  80 7E 00 00 */	lwz r3, 0(r30)
/* 802A6F04  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802A6F08  2C 00 00 00 */	cmpwi r0, 0
/* 802A6F0C  40 82 00 20 */	bne lbl_802A6F2C
/* 802A6F10  38 7D 00 0C */	addi r3, r29, 0xc
/* 802A6F14  7F C4 F3 78 */	mr r4, r30
/* 802A6F18  4B FF FA E1 */	bl func_802A69F8
/* 802A6F1C  7F A3 EB 78 */	mr r3, r29
/* 802A6F20  7F C4 F3 78 */	mr r4, r30
/* 802A6F24  4B FF FA B5 */	bl func_802A69D8
/* 802A6F28  48 00 00 24 */	b lbl_802A6F4C
lbl_802A6F2C:
/* 802A6F2C  2C 00 00 02 */	cmpwi r0, 2
/* 802A6F30  40 82 00 1C */	bne lbl_802A6F4C
/* 802A6F34  38 7D 00 0C */	addi r3, r29, 0xc
/* 802A6F38  7F C4 F3 78 */	mr r4, r30
/* 802A6F3C  4B FF FA BD */	bl func_802A69F8
/* 802A6F40  38 7D 00 18 */	addi r3, r29, 0x18
/* 802A6F44  7F C4 F3 78 */	mr r4, r30
/* 802A6F48  4B FF FA 91 */	bl func_802A69D8
lbl_802A6F4C:
/* 802A6F4C  7F FE FB 78 */	mr r30, r31
lbl_802A6F50:
/* 802A6F50  28 1E 00 00 */	cmplwi r30, 0
/* 802A6F54  40 82 FF A8 */	bne lbl_802A6EFC
/* 802A6F58  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6F5C  48 0B B2 CD */	bl _restgpr_29
/* 802A6F60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A6F64  7C 08 03 A6 */	mtlr r0
/* 802A6F68  38 21 00 20 */	addi r1, r1, 0x20
/* 802A6F6C  4E 80 00 20 */	blr 
