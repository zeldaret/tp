lbl_80490A58:
/* 80490A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490A5C  7C 08 02 A6 */	mflr r0
/* 80490A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80490A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80490A68  7C 7F 1B 78 */	mr r31, r3
/* 80490A6C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80490A70  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80490A74  40 82 00 1C */	bne lbl_80490A90
/* 80490A78  28 1F 00 00 */	cmplwi r31, 0
/* 80490A7C  41 82 00 08 */	beq lbl_80490A84
/* 80490A80  4B B8 80 E4 */	b __ct__10fopAc_ac_cFv
lbl_80490A84:
/* 80490A84  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80490A88  60 00 00 08 */	ori r0, r0, 8
/* 80490A8C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80490A90:
/* 80490A90  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80490A94  B0 1F 05 68 */	sth r0, 0x568(r31)
/* 80490A98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80490A9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80490AA0  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80490AA4  38 80 13 01 */	li r4, 0x1301
/* 80490AA8  4B BA 3F 14 */	b isEventBit__11dSv_event_cCFUs
/* 80490AAC  2C 03 00 00 */	cmpwi r3, 0
/* 80490AB0  41 82 00 10 */	beq lbl_80490AC0
/* 80490AB4  38 00 00 63 */	li r0, 0x63
/* 80490AB8  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80490ABC  48 00 00 24 */	b lbl_80490AE0
lbl_80490AC0:
/* 80490AC0  A0 1F 05 68 */	lhz r0, 0x568(r31)
/* 80490AC4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80490AC8  41 82 00 10 */	beq lbl_80490AD8
/* 80490ACC  38 00 00 00 */	li r0, 0
/* 80490AD0  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80490AD4  48 00 00 0C */	b lbl_80490AE0
lbl_80490AD8:
/* 80490AD8  38 00 00 63 */	li r0, 0x63
/* 80490ADC  90 1F 05 6C */	stw r0, 0x56c(r31)
lbl_80490AE0:
/* 80490AE0  38 60 00 04 */	li r3, 4
/* 80490AE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80490AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490AEC  7C 08 03 A6 */	mtlr r0
/* 80490AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80490AF4  4E 80 00 20 */	blr 
