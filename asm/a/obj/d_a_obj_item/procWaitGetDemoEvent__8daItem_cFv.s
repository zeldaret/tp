lbl_8015C2A4:
/* 8015C2A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015C2A8  7C 08 02 A6 */	mflr r0
/* 8015C2AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015C2B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015C2B4  93 C1 00 08 */	stw r30, 8(r1)
/* 8015C2B8  7C 7E 1B 78 */	mr r30, r3
/* 8015C2BC  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8015C2C0  28 00 00 04 */	cmplwi r0, 4
/* 8015C2C4  40 82 00 30 */	bne lbl_8015C2F4
/* 8015C2C8  38 00 00 04 */	li r0, 4
/* 8015C2CC  98 1E 09 4A */	stb r0, 0x94a(r30)
/* 8015C2D0  80 9E 09 4C */	lwz r4, 0x94c(r30)
/* 8015C2D4  3C 04 00 01 */	addis r0, r4, 1
/* 8015C2D8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8015C2DC  41 82 00 C8 */	beq lbl_8015C3A4
/* 8015C2E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015C2E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015C2E8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8015C2EC  4B EE 74 01 */	bl setPtI_Id__14dEvt_control_cFUi
/* 8015C2F0  48 00 00 B4 */	b lbl_8015C3A4
lbl_8015C2F4:
/* 8015C2F4  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 8015C2F8  28 00 00 40 */	cmplwi r0, 0x40
/* 8015C2FC  40 82 00 20 */	bne lbl_8015C31C
/* 8015C300  38 80 00 00 */	li r4, 0
/* 8015C304  38 A0 00 00 */	li r5, 0
/* 8015C308  4B EB F6 C9 */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 8015C30C  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 8015C310  60 00 00 08 */	ori r0, r0, 8
/* 8015C314  B0 1E 00 FA */	sth r0, 0xfa(r30)
/* 8015C318  48 00 00 8C */	b lbl_8015C3A4
lbl_8015C31C:
/* 8015C31C  38 7E 09 C1 */	addi r3, r30, 0x9c1
/* 8015C320  4B FE 57 C9 */	bl func_80141AE8
/* 8015C324  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015C328  41 82 00 18 */	beq lbl_8015C340
/* 8015C32C  88 7E 09 2A */	lbz r3, 0x92a(r30)
/* 8015C330  38 80 00 01 */	li r4, 1
/* 8015C334  4B F3 BB AD */	bl checkItemGet__FUci
/* 8015C338  2C 03 00 00 */	cmpwi r3, 0
/* 8015C33C  41 82 00 4C */	beq lbl_8015C388
lbl_8015C340:
/* 8015C340  80 7E 09 4C */	lwz r3, 0x94c(r30)
/* 8015C344  4B EB D9 75 */	bl fopAcM_delete__FUi
/* 8015C348  88 7E 09 2A */	lbz r3, 0x92a(r30)
/* 8015C34C  38 80 00 01 */	li r4, 1
/* 8015C350  4B F3 BB 91 */	bl checkItemGet__FUci
/* 8015C354  7C 7F 1B 78 */	mr r31, r3
/* 8015C358  7F C3 F3 78 */	mr r3, r30
/* 8015C35C  4B FF FC FD */	bl procInitSimpleGetDemo__8daItem_cFv
/* 8015C360  7F C3 F3 78 */	mr r3, r30
/* 8015C364  48 00 0D 45 */	bl itemGet__8daItem_cFv
/* 8015C368  2C 1F 00 00 */	cmpwi r31, 0
/* 8015C36C  40 82 00 38 */	bne lbl_8015C3A4
/* 8015C370  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015C374  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015C378  38 63 00 CC */	addi r3, r3, 0xcc
/* 8015C37C  88 9E 09 2A */	lbz r4, 0x92a(r30)
/* 8015C380  4B ED 7B 15 */	bl offFirstBit__21dSv_player_get_item_cFUc
/* 8015C384  48 00 00 20 */	b lbl_8015C3A4
lbl_8015C388:
/* 8015C388  7F C3 F3 78 */	mr r3, r30
/* 8015C38C  38 80 00 00 */	li r4, 0
/* 8015C390  38 A0 00 00 */	li r5, 0
/* 8015C394  4B EB F6 3D */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 8015C398  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 8015C39C  60 00 00 08 */	ori r0, r0, 8
/* 8015C3A0  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_8015C3A4:
/* 8015C3A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015C3A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015C3AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015C3B0  7C 08 03 A6 */	mtlr r0
/* 8015C3B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8015C3B8  4E 80 00 20 */	blr 
