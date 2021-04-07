lbl_80222494:
/* 80222494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80222498  7C 08 02 A6 */	mflr r0
/* 8022249C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802224A0  7C 65 1B 78 */	mr r5, r3
/* 802224A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802224A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802224AC  88 83 5E 40 */	lbz r4, 0x5e40(r3)
/* 802224B0  28 04 00 00 */	cmplwi r4, 0
/* 802224B4  41 82 00 20 */	beq lbl_802224D4
/* 802224B8  88 03 5E 5A */	lbz r0, 0x5e5a(r3)
/* 802224BC  98 83 5E 32 */	stb r4, 0x5e32(r3)
/* 802224C0  98 03 5E 4D */	stb r0, 0x5e4d(r3)
/* 802224C4  38 00 00 00 */	li r0, 0
/* 802224C8  98 03 5E 40 */	stb r0, 0x5e40(r3)
/* 802224CC  98 03 5E 5A */	stb r0, 0x5e5a(r3)
/* 802224D0  48 00 00 10 */	b lbl_802224E0
lbl_802224D4:
/* 802224D4  38 00 00 00 */	li r0, 0
/* 802224D8  98 03 5E 32 */	stb r0, 0x5e32(r3)
/* 802224DC  98 03 5E 4D */	stb r0, 0x5e4d(r3)
lbl_802224E0:
/* 802224E0  88 05 01 CC */	lbz r0, 0x1cc(r5)
/* 802224E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802224E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802224EC  88 63 5E 32 */	lbz r3, 0x5e32(r3)
/* 802224F0  7C 00 18 40 */	cmplw r0, r3
/* 802224F4  41 82 00 14 */	beq lbl_80222508
/* 802224F8  98 65 01 CC */	stb r3, 0x1cc(r5)
/* 802224FC  80 65 01 0C */	lwz r3, 0x10c(r5)
/* 80222500  88 85 01 CC */	lbz r4, 0x1cc(r5)
/* 80222504  4B FF 54 BD */	bl drawButtonS__13dMeter2Draw_cFUc
lbl_80222508:
/* 80222508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022250C  7C 08 03 A6 */	mtlr r0
/* 80222510  38 21 00 10 */	addi r1, r1, 0x10
/* 80222514  4E 80 00 20 */	blr 
