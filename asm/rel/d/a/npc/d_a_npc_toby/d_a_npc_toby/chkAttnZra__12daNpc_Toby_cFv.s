lbl_80B22614:
/* 80B22614  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B22618  7C 08 02 A6 */	mflr r0
/* 80B2261C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B22620  39 61 00 20 */	addi r11, r1, 0x20
/* 80B22624  4B 83 FB B8 */	b _savegpr_29
/* 80B22628  7C 7D 1B 78 */	mr r29, r3
/* 80B2262C  3B C0 00 00 */	li r30, 0
/* 80B22630  7F DF F3 78 */	mr r31, r30
/* 80B22634  88 03 0F 84 */	lbz r0, 0xf84(r3)
/* 80B22638  28 00 00 00 */	cmplwi r0, 0
/* 80B2263C  40 82 00 28 */	bne lbl_80B22664
/* 80B22640  38 60 00 A1 */	li r3, 0xa1
/* 80B22644  4B 62 A4 68 */	b daNpcT_chkEvtBit__FUl
/* 80B22648  2C 03 00 00 */	cmpwi r3, 0
/* 80B2264C  40 82 00 18 */	bne lbl_80B22664
/* 80B22650  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B22654  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80B22658  28 00 00 FF */	cmplwi r0, 0xff
/* 80B2265C  41 82 00 08 */	beq lbl_80B22664
/* 80B22660  3B E0 00 01 */	li r31, 1
lbl_80B22664:
/* 80B22664  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B22668  41 82 00 2C */	beq lbl_80B22694
/* 80B2266C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B22670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B22674  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80B22678  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B2267C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B22680  7C 05 07 74 */	extsb r5, r0
/* 80B22684  4B 51 2C DC */	b isSwitch__10dSv_info_cCFii
/* 80B22688  2C 03 00 00 */	cmpwi r3, 0
/* 80B2268C  40 82 00 08 */	bne lbl_80B22694
/* 80B22690  3B C0 00 01 */	li r30, 1
lbl_80B22694:
/* 80B22694  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 80B22698  39 61 00 20 */	addi r11, r1, 0x20
/* 80B2269C  4B 83 FB 8C */	b _restgpr_29
/* 80B226A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B226A4  7C 08 03 A6 */	mtlr r0
/* 80B226A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B226AC  4E 80 00 20 */	blr 
