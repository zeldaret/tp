lbl_802C0ED8:
/* 802C0ED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0EDC  7C 08 02 A6 */	mflr r0
/* 802C0EE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0EE4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C0EE8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C0EEC  7C 7E 1B 78 */	mr r30, r3
/* 802C0EF0  7C 9F 23 78 */	mr r31, r4
/* 802C0EF4  80 84 00 00 */	lwz r4, 0(r4)
/* 802C0EF8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D5@ha */
/* 802C0EFC  38 03 01 D5 */	addi r0, r3, 0x01D5 /* 0x000501D5@l */
/* 802C0F00  7C 04 00 00 */	cmpw r4, r0
/* 802C0F04  40 80 00 30 */	bge lbl_802C0F34
/* 802C0F08  38 03 01 D2 */	addi r0, r3, 0x1d2
/* 802C0F0C  7C 04 00 00 */	cmpw r4, r0
/* 802C0F10  40 80 00 08 */	bge lbl_802C0F18
/* 802C0F14  48 00 00 20 */	b lbl_802C0F34
lbl_802C0F18:
/* 802C0F18  88 1E 00 A2 */	lbz r0, 0xa2(r30)
/* 802C0F1C  28 00 00 00 */	cmplwi r0, 0
/* 802C0F20  40 82 00 14 */	bne lbl_802C0F34
/* 802C0F24  80 6D 86 08 */	lwz r3, __OSReport_disable-0x10(r13)
/* 802C0F28  4B FE AA 39 */	bl decrCrowdSize__7Z2SeMgrFv
/* 802C0F2C  38 00 00 01 */	li r0, 1
/* 802C0F30  98 1E 00 A2 */	stb r0, 0xa2(r30)
lbl_802C0F34:
/* 802C0F34  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C0F38  90 01 00 08 */	stw r0, 8(r1)
/* 802C0F3C  7F C3 F3 78 */	mr r3, r30
/* 802C0F40  38 81 00 08 */	addi r4, r1, 8
/* 802C0F44  38 A0 FF FF */	li r5, -1
/* 802C0F48  4B FF FB 05 */	bl startCreatureVoice__10Z2CreatureF10JAISoundIDSc
/* 802C0F4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C0F50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C0F54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C0F58  7C 08 03 A6 */	mtlr r0
/* 802C0F5C  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0F60  4E 80 00 20 */	blr 
