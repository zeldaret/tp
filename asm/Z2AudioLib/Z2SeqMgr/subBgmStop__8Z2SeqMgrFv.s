lbl_802AF884:
/* 802AF884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AF888  7C 08 02 A6 */	mflr r0
/* 802AF88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AF890  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AF894  7C 7F 1B 78 */	mr r31, r3
/* 802AF898  80 63 00 04 */	lwz r3, 4(r3)
/* 802AF89C  28 03 00 00 */	cmplwi r3, 0
/* 802AF8A0  41 82 00 10 */	beq lbl_802AF8B0
/* 802AF8A4  80 63 00 18 */	lwz r3, 0x18(r3)
/* 802AF8A8  90 61 00 08 */	stw r3, 8(r1)
/* 802AF8AC  48 00 00 08 */	b lbl_802AF8B4
lbl_802AF8B0:
/* 802AF8B0  38 60 FF FF */	li r3, -1
lbl_802AF8B4:
/* 802AF8B4  3C 83 FF 00 */	addis r4, r3, 0xff00
/* 802AF8B8  38 84 FF F6 */	addi r4, r4, -10
/* 802AF8BC  28 04 00 9E */	cmplwi r4, 0x9e
/* 802AF8C0  41 81 00 F4 */	bgt lbl_802AF9B4
/* 802AF8C4  3C 60 80 3D */	lis r3, lit_3988@ha /* 0x803CA08C@ha */
/* 802AF8C8  38 63 A0 8C */	addi r3, r3, lit_3988@l /* 0x803CA08C@l */
/* 802AF8CC  54 84 10 3A */	slwi r4, r4, 2
/* 802AF8D0  7C 03 20 2E */	lwzx r0, r3, r4
/* 802AF8D4  7C 09 03 A6 */	mtctr r0
/* 802AF8D8  4E 80 04 20 */	bctr 
/* 802AF8DC  48 00 00 E0 */	b lbl_802AF9BC
/* 802AF8E0  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802AF8E4  3C 80 80 3A */	lis r4, Z2SeqMgr__stringBase0@ha /* 0x8039BA08@ha */
/* 802AF8E8  38 84 BA 08 */	addi r4, r4, Z2SeqMgr__stringBase0@l /* 0x8039BA08@l */
/* 802AF8EC  38 84 02 76 */	addi r4, r4, 0x276
/* 802AF8F0  48 00 68 F9 */	bl setDemoName__11Z2StatusMgrFPc
/* 802AF8F4  38 00 00 00 */	li r0, 0
/* 802AF8F8  B0 1F 00 B8 */	sth r0, 0xb8(r31)
/* 802AF8FC  48 00 00 C0 */	b lbl_802AF9BC
/* 802AF900  7F E3 FB 78 */	mr r3, r31
/* 802AF904  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000057@ha */
/* 802AF908  38 84 00 57 */	addi r4, r4, 0x0057 /* 0x01000057@l */
/* 802AF90C  38 A0 00 00 */	li r5, 0
/* 802AF910  38 C0 00 00 */	li r6, 0
/* 802AF914  4B FF F6 FD */	bl bgmStart__8Z2SeqMgrFUlUll
/* 802AF918  38 00 00 00 */	li r0, 0
/* 802AF91C  B0 1F 00 B8 */	sth r0, 0xb8(r31)
/* 802AF920  48 00 00 9C */	b lbl_802AF9BC
/* 802AF924  7F E3 FB 78 */	mr r3, r31
/* 802AF928  38 80 00 00 */	li r4, 0
/* 802AF92C  48 00 48 39 */	bl setBattleBgmOff__8Z2SeqMgrFb
/* 802AF930  80 7F 00 04 */	lwz r3, 4(r31)
/* 802AF934  38 80 00 17 */	li r4, 0x17
/* 802AF938  4B FF 2B A5 */	bl stop__8JAISoundFUl
/* 802AF93C  38 00 00 37 */	li r0, 0x37
/* 802AF940  B0 1F 00 B8 */	sth r0, 0xb8(r31)
/* 802AF944  48 00 00 78 */	b lbl_802AF9BC
/* 802AF948  38 00 01 A4 */	li r0, 0x1a4
/* 802AF94C  B0 1F 00 B8 */	sth r0, 0xb8(r31)
/* 802AF950  80 7F 00 04 */	lwz r3, 4(r31)
/* 802AF954  38 80 00 2D */	li r4, 0x2d
/* 802AF958  4B FF 2B 85 */	bl stop__8JAISoundFUl
/* 802AF95C  48 00 00 60 */	b lbl_802AF9BC
/* 802AF960  38 00 01 FE */	li r0, 0x1fe
/* 802AF964  B0 1F 00 B8 */	sth r0, 0xb8(r31)
/* 802AF968  80 7F 00 04 */	lwz r3, 4(r31)
/* 802AF96C  38 80 00 2D */	li r4, 0x2d
/* 802AF970  4B FF 2B 6D */	bl stop__8JAISoundFUl
/* 802AF974  48 00 00 48 */	b lbl_802AF9BC
/* 802AF978  38 00 01 68 */	li r0, 0x168
/* 802AF97C  B0 1F 00 B8 */	sth r0, 0xb8(r31)
/* 802AF980  80 7F 00 04 */	lwz r3, 4(r31)
/* 802AF984  38 80 00 2D */	li r4, 0x2d
/* 802AF988  4B FF 2B 55 */	bl stop__8JAISoundFUl
/* 802AF98C  48 00 00 30 */	b lbl_802AF9BC
/* 802AF990  38 00 01 A4 */	li r0, 0x1a4
/* 802AF994  B0 1F 00 B8 */	sth r0, 0xb8(r31)
/* 802AF998  80 7F 00 04 */	lwz r3, 4(r31)
/* 802AF99C  38 80 00 2D */	li r4, 0x2d
/* 802AF9A0  4B FF 2B 3D */	bl stop__8JAISoundFUl
/* 802AF9A4  48 00 00 18 */	b lbl_802AF9BC
/* 802AF9A8  7F E3 FB 78 */	mr r3, r31
/* 802AF9AC  38 80 00 00 */	li r4, 0
/* 802AF9B0  48 00 47 B5 */	bl setBattleBgmOff__8Z2SeqMgrFb
lbl_802AF9B4:
/* 802AF9B4  38 00 00 0F */	li r0, 0xf
/* 802AF9B8  B0 1F 00 B8 */	sth r0, 0xb8(r31)
lbl_802AF9BC:
/* 802AF9BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AF9C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AF9C4  7C 08 03 A6 */	mtlr r0
/* 802AF9C8  38 21 00 20 */	addi r1, r1, 0x20
/* 802AF9CC  4E 80 00 20 */	blr 
