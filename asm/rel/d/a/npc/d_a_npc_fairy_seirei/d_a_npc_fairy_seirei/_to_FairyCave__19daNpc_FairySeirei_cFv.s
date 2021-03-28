lbl_80540E10:
/* 80540E10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540E14  7C 08 02 A6 */	mflr r0
/* 80540E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540E1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540E20  7C 7F 1B 78 */	mr r31, r3
/* 80540E24  88 03 0E 44 */	lbz r0, 0xe44(r3)
/* 80540E28  54 00 10 3A */	slwi r0, r0, 2
/* 80540E2C  3C 60 80 54 */	lis r3, sTempBit@ha
/* 80540E30  38 63 1E 48 */	addi r3, r3, sTempBit@l
/* 80540E34  7C 63 00 2E */	lwzx r3, r3, r0
/* 80540E38  4B C0 BC B4 */	b daNpcT_onTmpBit__FUl
/* 80540E3C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80540E40  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80540E44  3C 80 80 54 */	lis r4, lit_4178@ha
/* 80540E48  C0 24 1E 24 */	lfs f1, lit_4178@l(r4)
/* 80540E4C  38 80 00 00 */	li r4, 0
/* 80540E50  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80540E54  7C 05 07 74 */	extsb r5, r0
/* 80540E58  38 C0 00 00 */	li r6, 0
/* 80540E5C  38 E0 FF FF */	li r7, -1
/* 80540E60  4B AE 63 10 */	b dStage_changeScene__FifUlScsi
/* 80540E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80540E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540E6C  7C 08 03 A6 */	mtlr r0
/* 80540E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80540E74  4E 80 00 20 */	blr 
