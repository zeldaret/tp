lbl_80C9D9F4:
/* 80C9D9F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9D9F8  7C 08 02 A6 */	mflr r0
/* 80C9D9FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9DA00  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9DA04  4B 6C 47 D9 */	bl _savegpr_29
/* 80C9DA08  7C 7D 1B 78 */	mr r29, r3
/* 80C9DA0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9DA10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9DA14  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C9DA18  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C9DA1C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C9DA20  7C 05 07 74 */	extsb r5, r0
/* 80C9DA24  4B 39 79 3D */	bl isSwitch__10dSv_info_cCFii
/* 80C9DA28  7C 7E 1B 78 */	mr r30, r3
/* 80C9DA2C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C9DA30  54 1F 27 FE */	rlwinm r31, r0, 4, 0x1f, 0x1f
/* 80C9DA34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9DA38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9DA3C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C9DA40  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C9DA44  7C 05 07 74 */	extsb r5, r0
/* 80C9DA48  4B 39 79 19 */	bl isSwitch__10dSv_info_cCFii
/* 80C9DA4C  2C 03 00 00 */	cmpwi r3, 0
/* 80C9DA50  40 82 00 2C */	bne lbl_80C9DA7C
/* 80C9DA54  2C 1E 00 00 */	cmpwi r30, 0
/* 80C9DA58  41 82 00 0C */	beq lbl_80C9DA64
/* 80C9DA5C  2C 1F 00 00 */	cmpwi r31, 0
/* 80C9DA60  41 82 00 14 */	beq lbl_80C9DA74
lbl_80C9DA64:
/* 80C9DA64  2C 1E 00 00 */	cmpwi r30, 0
/* 80C9DA68  40 82 00 14 */	bne lbl_80C9DA7C
/* 80C9DA6C  2C 1F 00 01 */	cmpwi r31, 1
/* 80C9DA70  40 82 00 0C */	bne lbl_80C9DA7C
lbl_80C9DA74:
/* 80C9DA74  7F A3 EB 78 */	mr r3, r29
/* 80C9DA78  48 00 00 21 */	bl modeUpperInit__12daObjStair_cFv
lbl_80C9DA7C:
/* 80C9DA7C  38 60 00 01 */	li r3, 1
/* 80C9DA80  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9DA84  4B 6C 47 A5 */	bl _restgpr_29
/* 80C9DA88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9DA8C  7C 08 03 A6 */	mtlr r0
/* 80C9DA90  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9DA94  4E 80 00 20 */	blr 
