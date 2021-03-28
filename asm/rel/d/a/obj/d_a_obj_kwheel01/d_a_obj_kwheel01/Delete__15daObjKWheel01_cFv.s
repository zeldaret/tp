lbl_80C4F3E8:
/* 80C4F3E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C4F3EC  7C 08 02 A6 */	mflr r0
/* 80C4F3F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C4F3F4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C4F3F8  4B 71 2D D8 */	b _savegpr_26
/* 80C4F3FC  7C 7A 1B 79 */	or. r26, r3, r3
/* 80C4F400  41 82 00 08 */	beq lbl_80C4F408
/* 80C4F404  38 63 05 A0 */	addi r3, r3, 0x5a0
lbl_80C4F408:
/* 80C4F408  3C 80 80 C5 */	lis r4, l_arcName@ha
/* 80C4F40C  38 84 F6 F8 */	addi r4, r4, l_arcName@l
/* 80C4F410  80 84 00 00 */	lwz r4, 0(r4)
/* 80C4F414  4B 3D DB F4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C4F418  3B 60 00 00 */	li r27, 0
/* 80C4F41C  3B E0 00 00 */	li r31, 0
/* 80C4F420  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4F424  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4F428  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C4F42C  3B C0 00 01 */	li r30, 1
lbl_80C4F430:
/* 80C4F430  7F C3 D8 30 */	slw r3, r30, r27
/* 80C4F434  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80C4F438  54 00 4F 3E */	rlwinm r0, r0, 9, 0x1c, 0x1f
/* 80C4F43C  7C 60 00 39 */	and. r0, r3, r0
/* 80C4F440  40 82 00 2C */	bne lbl_80C4F46C
/* 80C4F444  3B 9F 06 30 */	addi r28, r31, 0x630
/* 80C4F448  7C 7A E0 2E */	lwzx r3, r26, r28
/* 80C4F44C  28 03 00 00 */	cmplwi r3, 0
/* 80C4F450  41 82 00 1C */	beq lbl_80C4F46C
/* 80C4F454  4B 61 8D 80 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C4F458  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4F45C  41 82 00 10 */	beq lbl_80C4F46C
/* 80C4F460  7F A3 EB 78 */	mr r3, r29
/* 80C4F464  7C 9A E0 2E */	lwzx r4, r26, r28
/* 80C4F468  4B 42 4D E8 */	b Release__4cBgSFP9dBgW_Base
lbl_80C4F46C:
/* 80C4F46C  3B 7B 00 01 */	addi r27, r27, 1
/* 80C4F470  2C 1B 00 04 */	cmpwi r27, 4
/* 80C4F474  3B FF 00 04 */	addi r31, r31, 4
/* 80C4F478  41 80 FF B8 */	blt lbl_80C4F430
/* 80C4F47C  38 60 00 01 */	li r3, 1
/* 80C4F480  39 61 00 20 */	addi r11, r1, 0x20
/* 80C4F484  4B 71 2D 98 */	b _restgpr_26
/* 80C4F488  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C4F48C  7C 08 03 A6 */	mtlr r0
/* 80C4F490  38 21 00 20 */	addi r1, r1, 0x20
/* 80C4F494  4E 80 00 20 */	blr 
