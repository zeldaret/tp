lbl_80492BC8:
/* 80492BC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80492BCC  7C 08 02 A6 */	mflr r0
/* 80492BD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80492BD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80492BD8  4B EC F5 FC */	b _savegpr_27
/* 80492BDC  7C 7B 1B 78 */	mr r27, r3
/* 80492BE0  A0 03 09 80 */	lhz r0, 0x980(r3)
/* 80492BE4  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80492BE8  28 00 00 0F */	cmplwi r0, 0xf
/* 80492BEC  40 82 00 2C */	bne lbl_80492C18
/* 80492BF0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80492BF4  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80492BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80492BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80492C00  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80492C04  7C 05 07 74 */	extsb r5, r0
/* 80492C08  4B BA 27 58 */	b isSwitch__10dSv_info_cCFii
/* 80492C0C  30 03 FF FF */	addic r0, r3, -1
/* 80492C10  7C 60 19 10 */	subfe r3, r0, r3
/* 80492C14  48 00 00 58 */	b lbl_80492C6C
lbl_80492C18:
/* 80492C18  3B C0 00 01 */	li r30, 1
/* 80492C1C  3B A0 00 00 */	li r29, 0
/* 80492C20  3B 80 00 00 */	li r28, 0
/* 80492C24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80492C28  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
lbl_80492C2C:
/* 80492C2C  7F E3 FB 78 */	mr r3, r31
/* 80492C30  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80492C34  54 00 A6 3E */	rlwinm r0, r0, 0x14, 0x18, 0x1f
/* 80492C38  7C 9C 02 14 */	add r4, r28, r0
/* 80492C3C  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 80492C40  7C 05 07 74 */	extsb r5, r0
/* 80492C44  4B BA 27 1C */	b isSwitch__10dSv_info_cCFii
/* 80492C48  2C 03 00 00 */	cmpwi r3, 0
/* 80492C4C  41 82 00 0C */	beq lbl_80492C58
/* 80492C50  7C 1D F2 14 */	add r0, r29, r30
/* 80492C54  54 1D 04 3E */	clrlwi r29, r0, 0x10
lbl_80492C58:
/* 80492C58  57 DE 0C 3C */	rlwinm r30, r30, 1, 0x10, 0x1e
/* 80492C5C  3B 9C 00 01 */	addi r28, r28, 1
/* 80492C60  2C 1C 00 04 */	cmpwi r28, 4
/* 80492C64  41 80 FF C8 */	blt lbl_80492C2C
/* 80492C68  57 A3 04 3E */	clrlwi r3, r29, 0x10
lbl_80492C6C:
/* 80492C6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80492C70  4B EC F5 B0 */	b _restgpr_27
/* 80492C74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80492C78  7C 08 03 A6 */	mtlr r0
/* 80492C7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80492C80  4E 80 00 20 */	blr 
