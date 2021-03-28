lbl_801FD2D8:
/* 801FD2D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FD2DC  7C 08 02 A6 */	mflr r0
/* 801FD2E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FD2E4  39 61 00 20 */	addi r11, r1, 0x20
/* 801FD2E8  48 16 4E F5 */	bl _savegpr_29
/* 801FD2EC  7C 7E 1B 78 */	mr r30, r3
/* 801FD2F0  88 63 01 51 */	lbz r3, 0x151(r3)
/* 801FD2F4  28 03 00 00 */	cmplwi r3, 0
/* 801FD2F8  41 82 00 0C */	beq lbl_801FD304
/* 801FD2FC  38 03 FF FF */	addi r0, r3, -1
/* 801FD300  98 1E 01 51 */	stb r0, 0x151(r30)
lbl_801FD304:
/* 801FD304  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 801FD308  4B E1 1E C5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD30C  7C 7F 1B 78 */	mr r31, r3
/* 801FD310  8B BE 01 46 */	lbz r29, 0x146(r30)
/* 801FD314  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 801FD318  4B E3 4E 85 */	bl checkTrigger__9STControlFv
/* 801FD31C  4B FF CD F9 */	bl dMw_isMenuRing__Fv
/* 801FD320  2C 03 00 00 */	cmpwi r3, 0
/* 801FD324  41 82 00 14 */	beq lbl_801FD338
/* 801FD328  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 801FD32C  4B E3 4E 71 */	bl checkTrigger__9STControlFv
/* 801FD330  7F C3 F3 78 */	mr r3, r30
/* 801FD334  4B FF FB B5 */	bl checkCStickTrigger__5dMw_cFv
lbl_801FD338:
/* 801FD338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801FD33C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801FD340  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 801FD344  28 00 00 00 */	cmplwi r0, 0
/* 801FD348  41 82 00 10 */	beq lbl_801FD358
/* 801FD34C  38 00 00 05 */	li r0, 5
/* 801FD350  98 1E 01 48 */	stb r0, 0x148(r30)
/* 801FD354  48 00 00 24 */	b lbl_801FD378
lbl_801FD358:
/* 801FD358  88 7E 01 48 */	lbz r3, 0x148(r30)
/* 801FD35C  7C 60 07 75 */	extsb. r0, r3
/* 801FD360  40 81 00 10 */	ble lbl_801FD370
/* 801FD364  38 03 FF FF */	addi r0, r3, -1
/* 801FD368  98 1E 01 48 */	stb r0, 0x148(r30)
/* 801FD36C  48 00 00 0C */	b lbl_801FD378
lbl_801FD370:
/* 801FD370  38 00 00 00 */	li r0, 0
/* 801FD374  98 1E 01 48 */	stb r0, 0x148(r30)
lbl_801FD378:
/* 801FD378  7F C3 F3 78 */	mr r3, r30
/* 801FD37C  88 1E 01 46 */	lbz r0, 0x146(r30)
/* 801FD380  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801FD384  3C 80 80 3C */	lis r4, move_proc@ha
/* 801FD388  38 04 ED F0 */	addi r0, r4, move_proc@l
/* 801FD38C  7D 80 2A 14 */	add r12, r0, r5
/* 801FD390  48 16 4C F5 */	bl __ptmf_scall
/* 801FD394  60 00 00 00 */	nop 
/* 801FD398  88 1E 01 46 */	lbz r0, 0x146(r30)
/* 801FD39C  7C 00 E8 40 */	cmplw r0, r29
/* 801FD3A0  41 82 00 24 */	beq lbl_801FD3C4
/* 801FD3A4  7F C3 F3 78 */	mr r3, r30
/* 801FD3A8  7F A4 EB 78 */	mr r4, r29
/* 801FD3AC  1C C0 00 0C */	mulli r6, r0, 0xc
/* 801FD3B0  3C A0 80 3C */	lis r5, init_proc@ha
/* 801FD3B4  38 05 EA A8 */	addi r0, r5, init_proc@l
/* 801FD3B8  7D 80 32 14 */	add r12, r0, r6
/* 801FD3BC  48 16 4C C9 */	bl __ptmf_scall
/* 801FD3C0  60 00 00 00 */	nop 
lbl_801FD3C4:
/* 801FD3C4  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 801FD3C8  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 801FD3CC  88 03 00 39 */	lbz r0, 0x39(r3)
/* 801FD3D0  28 00 00 00 */	cmplwi r0, 0
/* 801FD3D4  40 82 00 24 */	bne lbl_801FD3F8
/* 801FD3D8  7F C3 F3 78 */	mr r3, r30
/* 801FD3DC  38 80 00 01 */	li r4, 1
/* 801FD3E0  4B FF F9 2D */	bl dMw_isButtonBit__5dMw_cFUc
/* 801FD3E4  2C 03 00 00 */	cmpwi r3, 0
/* 801FD3E8  41 82 00 10 */	beq lbl_801FD3F8
/* 801FD3EC  7F C3 F3 78 */	mr r3, r30
/* 801FD3F0  38 80 00 01 */	li r4, 1
/* 801FD3F4  4B FF F9 09 */	bl dMw_offButtonBit__5dMw_cFUc
lbl_801FD3F8:
/* 801FD3F8  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 801FD3FC  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 801FD400  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 801FD404  28 00 00 00 */	cmplwi r0, 0
/* 801FD408  40 82 00 24 */	bne lbl_801FD42C
/* 801FD40C  7F C3 F3 78 */	mr r3, r30
/* 801FD410  38 80 00 02 */	li r4, 2
/* 801FD414  4B FF F8 F9 */	bl dMw_isButtonBit__5dMw_cFUc
/* 801FD418  2C 03 00 00 */	cmpwi r3, 0
/* 801FD41C  41 82 00 10 */	beq lbl_801FD42C
/* 801FD420  7F C3 F3 78 */	mr r3, r30
/* 801FD424  38 80 00 02 */	li r4, 2
/* 801FD428  4B FF F8 D5 */	bl dMw_offButtonBit__5dMw_cFUc
lbl_801FD42C:
/* 801FD42C  7F E3 FB 78 */	mr r3, r31
/* 801FD430  4B E1 1D 9D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD434  38 60 00 01 */	li r3, 1
/* 801FD438  39 61 00 20 */	addi r11, r1, 0x20
/* 801FD43C  48 16 4D ED */	bl _restgpr_29
/* 801FD440  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FD444  7C 08 03 A6 */	mtlr r0
/* 801FD448  38 21 00 20 */	addi r1, r1, 0x20
/* 801FD44C  4E 80 00 20 */	blr 
