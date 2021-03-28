lbl_80043FD8:
/* 80043FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80043FDC  7C 08 02 A6 */	mflr r0
/* 80043FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80043FE8  7C 7F 1B 78 */	mr r31, r3
/* 80043FEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80043FF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80043FF4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80043FF8  3C A0 80 38 */	lis r5, d_event_d_event_data__stringBase0@ha
/* 80043FFC  38 A5 9D D0 */	addi r5, r5, d_event_d_event_data__stringBase0@l
/* 80044000  38 A5 00 3D */	addi r5, r5, 0x3d
/* 80044004  38 C0 00 03 */	li r6, 3
/* 80044008  48 00 40 E5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8004400C  28 03 00 00 */	cmplwi r3, 0
/* 80044010  40 82 00 10 */	bne lbl_80044020
/* 80044014  38 00 00 00 */	li r0, 0
/* 80044018  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8004401C  48 00 00 0C */	b lbl_80044028
lbl_80044020:
/* 80044020  80 03 00 00 */	lwz r0, 0(r3)
/* 80044024  B0 1F 00 36 */	sth r0, 0x36(r31)
lbl_80044028:
/* 80044028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004402C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80044030  7C 08 03 A6 */	mtlr r0
/* 80044034  38 21 00 10 */	addi r1, r1, 0x10
/* 80044038  4E 80 00 20 */	blr 
