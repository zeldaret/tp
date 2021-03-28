lbl_80CBB308:
/* 80CBB308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBB30C  7C 08 02 A6 */	mflr r0
/* 80CBB310  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBB314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBB318  7C 7F 1B 78 */	mr r31, r3
/* 80CBB31C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBB320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBB324  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CBB328  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80CBB32C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80CBB330  A0 84 00 88 */	lhz r4, 0x88(r4)
/* 80CBB334  4B 37 96 88 */	b isEventBit__11dSv_event_cCFUs
/* 80CBB338  2C 03 00 00 */	cmpwi r3, 0
/* 80CBB33C  41 82 00 18 */	beq lbl_80CBB354
/* 80CBB340  38 00 40 00 */	li r0, 0x4000
/* 80CBB344  B0 1F 0B 76 */	sth r0, 0xb76(r31)
/* 80CBB348  38 00 C0 00 */	li r0, -16384
/* 80CBB34C  B0 1F 0B 74 */	sth r0, 0xb74(r31)
/* 80CBB350  48 00 00 0C */	b lbl_80CBB35C
lbl_80CBB354:
/* 80CBB354  7F E3 FB 78 */	mr r3, r31
/* 80CBB358  48 00 00 19 */	bl action_typeA__12daObjRgate_cFv
lbl_80CBB35C:
/* 80CBB35C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBB360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBB364  7C 08 03 A6 */	mtlr r0
/* 80CBB368  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBB36C  4E 80 00 20 */	blr 
