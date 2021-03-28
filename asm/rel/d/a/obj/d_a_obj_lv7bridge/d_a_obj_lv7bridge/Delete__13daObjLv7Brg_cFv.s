lbl_80C87458:
/* 80C87458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8745C  7C 08 02 A6 */	mflr r0
/* 80C87460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C87464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C87468  7C 7F 1B 78 */	mr r31, r3
/* 80C8746C  80 63 0A 90 */	lwz r3, 0xa90(r3)
/* 80C87470  28 03 00 00 */	cmplwi r3, 0
/* 80C87474  41 82 00 24 */	beq lbl_80C87498
/* 80C87478  4B 5E 0D 5C */	b ChkUsed__9cBgW_BgIdCFv
/* 80C8747C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C87480  41 82 00 18 */	beq lbl_80C87498
/* 80C87484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C87488  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C8748C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C87490  80 9F 0A 90 */	lwz r4, 0xa90(r31)
/* 80C87494  4B 3E CD BC */	b Release__4cBgSFP9dBgW_Base
lbl_80C87498:
/* 80C87498  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C8749C  88 1F 0A 7E */	lbz r0, 0xa7e(r31)
/* 80C874A0  54 00 10 3A */	slwi r0, r0, 2
/* 80C874A4  3C 80 80 C8 */	lis r4, l_arcName@ha
/* 80C874A8  38 84 7A 54 */	addi r4, r4, l_arcName@l
/* 80C874AC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C874B0  4B 3A 5B 58 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C874B4  38 60 00 01 */	li r3, 1
/* 80C874B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C874BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C874C0  7C 08 03 A6 */	mtlr r0
/* 80C874C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C874C8  4E 80 00 20 */	blr 
