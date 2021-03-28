lbl_80C9DF60:
/* 80C9DF60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9DF64  7C 08 02 A6 */	mflr r0
/* 80C9DF68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9DF6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9DF70  4B 6C 42 6C */	b _savegpr_29
/* 80C9DF74  7C 7D 1B 78 */	mr r29, r3
/* 80C9DF78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9DF7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9DF80  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C9DF84  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C9DF88  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C9DF8C  7C 05 07 74 */	extsb r5, r0
/* 80C9DF90  4B 39 73 D0 */	b isSwitch__10dSv_info_cCFii
/* 80C9DF94  7C 7E 1B 78 */	mr r30, r3
/* 80C9DF98  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C9DF9C  54 1F 27 FE */	rlwinm r31, r0, 4, 0x1f, 0x1f
/* 80C9DFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9DFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9DFA8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C9DFAC  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C9DFB0  7C 05 07 74 */	extsb r5, r0
/* 80C9DFB4  4B 39 73 AC */	b isSwitch__10dSv_info_cCFii
/* 80C9DFB8  2C 03 00 00 */	cmpwi r3, 0
/* 80C9DFBC  40 82 00 2C */	bne lbl_80C9DFE8
/* 80C9DFC0  2C 1E 00 00 */	cmpwi r30, 0
/* 80C9DFC4  40 82 00 0C */	bne lbl_80C9DFD0
/* 80C9DFC8  2C 1F 00 00 */	cmpwi r31, 0
/* 80C9DFCC  41 82 00 14 */	beq lbl_80C9DFE0
lbl_80C9DFD0:
/* 80C9DFD0  2C 1E 00 00 */	cmpwi r30, 0
/* 80C9DFD4  41 82 00 14 */	beq lbl_80C9DFE8
/* 80C9DFD8  2C 1F 00 01 */	cmpwi r31, 1
/* 80C9DFDC  40 82 00 0C */	bne lbl_80C9DFE8
lbl_80C9DFE0:
/* 80C9DFE0  7F A3 EB 78 */	mr r3, r29
/* 80C9DFE4  48 00 00 21 */	bl modeLowerInit__12daObjStair_cFv
lbl_80C9DFE8:
/* 80C9DFE8  38 60 00 01 */	li r3, 1
/* 80C9DFEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80C9DFF0  4B 6C 42 38 */	b _restgpr_29
/* 80C9DFF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9DFF8  7C 08 03 A6 */	mtlr r0
/* 80C9DFFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9E000  4E 80 00 20 */	blr 
