lbl_80199BF8:
/* 80199BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80199BFC  7C 08 02 A6 */	mflr r0
/* 80199C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80199C04  39 61 00 20 */	addi r11, r1, 0x20
/* 80199C08  48 1C 85 D1 */	bl _savegpr_28
/* 80199C0C  7C 7C 1B 78 */	mr r28, r3
/* 80199C10  7C 9D 23 78 */	mr r29, r4
/* 80199C14  7C BE 2B 78 */	mr r30, r5
/* 80199C18  38 80 00 02 */	li r4, 2
/* 80199C1C  4B FF DA 55 */	bl checkController__13dShopSystem_cFUcP10dMsgFlow_c
/* 80199C20  7C 7F 1B 78 */	mr r31, r3
/* 80199C24  38 00 00 22 */	li r0, 0x22
/* 80199C28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80199C2C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80199C30  98 04 5E 3C */	stb r0, 0x5e3c(r4)
/* 80199C34  38 60 00 00 */	li r3, 0
/* 80199C38  98 64 5E 57 */	stb r3, 0x5e57(r4)
/* 80199C3C  88 1E 00 24 */	lbz r0, 0x24(r30)
/* 80199C40  28 00 00 00 */	cmplwi r0, 0
/* 80199C44  40 82 00 14 */	bne lbl_80199C58
/* 80199C48  38 00 00 2A */	li r0, 0x2a
/* 80199C4C  98 04 5E 35 */	stb r0, 0x5e35(r4)
/* 80199C50  98 64 5E 50 */	stb r3, 0x5e50(r4)
/* 80199C54  48 00 00 20 */	b lbl_80199C74
lbl_80199C58:
/* 80199C58  80 A4 5D BC */	lwz r5, 0x5dbc(r4)
/* 80199C5C  88 05 01 A1 */	lbz r0, 0x1a1(r5)
/* 80199C60  28 00 00 00 */	cmplwi r0, 0
/* 80199C64  41 82 00 10 */	beq lbl_80199C74
/* 80199C68  38 00 00 2A */	li r0, 0x2a
/* 80199C6C  98 04 5E 35 */	stb r0, 0x5e35(r4)
/* 80199C70  98 64 5E 50 */	stb r3, 0x5e50(r4)
lbl_80199C74:
/* 80199C74  2C 1F 00 00 */	cmpwi r31, 0
/* 80199C78  41 82 00 6C */	beq lbl_80199CE4
/* 80199C7C  7F 83 E3 78 */	mr r3, r28
/* 80199C80  7F E4 FB 78 */	mr r4, r31
/* 80199C84  38 A0 00 02 */	li r5, 2
/* 80199C88  4B FF E7 BD */	bl moveCursor__13dShopSystem_cFiUc
/* 80199C8C  7C 66 1B 78 */	mr r6, r3
/* 80199C90  7F C3 F3 78 */	mr r3, r30
/* 80199C94  7F A4 EB 78 */	mr r4, r29
/* 80199C98  38 A0 00 00 */	li r5, 0
/* 80199C9C  48 0B 06 3D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80199CA0  2C 03 00 00 */	cmpwi r3, 0
/* 80199CA4  41 82 00 20 */	beq lbl_80199CC4
/* 80199CA8  7F 83 E3 78 */	mr r3, r28
/* 80199CAC  38 80 00 08 */	li r4, 8
/* 80199CB0  4B FF D9 2D */	bl offFlag__13dShopSystem_cFi
/* 80199CB4  7F 83 E3 78 */	mr r3, r28
/* 80199CB8  38 80 00 02 */	li r4, 2
/* 80199CBC  48 00 06 89 */	bl setSeq__13dShopSystem_cFUc
/* 80199CC0  48 00 00 38 */	b lbl_80199CF8
lbl_80199CC4:
/* 80199CC4  88 1E 00 24 */	lbz r0, 0x24(r30)
/* 80199CC8  28 00 00 00 */	cmplwi r0, 0
/* 80199CCC  41 82 00 2C */	beq lbl_80199CF8
/* 80199CD0  93 FC 0F 58 */	stw r31, 0xf58(r28)
/* 80199CD4  7F 83 E3 78 */	mr r3, r28
/* 80199CD8  38 80 00 07 */	li r4, 7
/* 80199CDC  48 00 06 69 */	bl setSeq__13dShopSystem_cFUc
/* 80199CE0  48 00 00 18 */	b lbl_80199CF8
lbl_80199CE4:
/* 80199CE4  7F C3 F3 78 */	mr r3, r30
/* 80199CE8  7F A4 EB 78 */	mr r4, r29
/* 80199CEC  38 A0 00 00 */	li r5, 0
/* 80199CF0  38 C0 00 00 */	li r6, 0
/* 80199CF4  48 0B 05 E5 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
lbl_80199CF8:
/* 80199CF8  38 60 00 00 */	li r3, 0
/* 80199CFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80199D00  48 1C 85 25 */	bl _restgpr_28
/* 80199D04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80199D08  7C 08 03 A6 */	mtlr r0
/* 80199D0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80199D10  4E 80 00 20 */	blr 
