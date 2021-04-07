lbl_8010F698:
/* 8010F698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010F69C  7C 08 02 A6 */	mflr r0
/* 8010F6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010F6A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010F6A8  7C 7F 1B 78 */	mr r31, r3
/* 8010F6AC  A8 03 30 0E */	lha r0, 0x300e(r3)
/* 8010F6B0  2C 00 00 00 */	cmpwi r0, 0
/* 8010F6B4  41 82 00 1C */	beq lbl_8010F6D0
/* 8010F6B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010F6BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010F6C0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8010F6C4  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8010F6C8  4B F3 8A B5 */	bl cutEnd__16dEvent_manager_cFi
/* 8010F6CC  48 00 00 10 */	b lbl_8010F6DC
lbl_8010F6D0:
/* 8010F6D0  38 80 00 00 */	li r4, 0
/* 8010F6D4  4B FF F3 F1 */	bl commonBottleDrink__9daAlink_cFi
/* 8010F6D8  B0 7F 30 0E */	sth r3, 0x300e(r31)
lbl_8010F6DC:
/* 8010F6DC  38 60 00 01 */	li r3, 1
/* 8010F6E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010F6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010F6E8  7C 08 03 A6 */	mtlr r0
/* 8010F6EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8010F6F0  4E 80 00 20 */	blr 
