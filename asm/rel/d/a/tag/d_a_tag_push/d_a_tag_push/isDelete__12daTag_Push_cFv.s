lbl_804906C4:
/* 804906C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804906C8  7C 08 02 A6 */	mflr r0
/* 804906CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804906D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804906D4  7C 65 1B 78 */	mr r5, r3
/* 804906D8  3B E0 00 00 */	li r31, 0
/* 804906DC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 804906E0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 804906E4  28 04 00 FF */	cmplwi r4, 0xff
/* 804906E8  41 82 00 24 */	beq lbl_8049070C
/* 804906EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804906F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804906F4  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 804906F8  7C 05 07 74 */	extsb r5, r0
/* 804906FC  4B BA 4C 64 */	b isSwitch__10dSv_info_cCFii
/* 80490700  2C 03 00 00 */	cmpwi r3, 0
/* 80490704  41 82 00 08 */	beq lbl_8049070C
/* 80490708  3B E0 00 01 */	li r31, 1
lbl_8049070C:
/* 8049070C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80490710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80490714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490718  7C 08 03 A6 */	mtlr r0
/* 8049071C  38 21 00 10 */	addi r1, r1, 0x10
/* 80490720  4E 80 00 20 */	blr 
