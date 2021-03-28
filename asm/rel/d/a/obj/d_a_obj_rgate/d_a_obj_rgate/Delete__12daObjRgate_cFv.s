lbl_80CBBF34:
/* 80CBBF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBBF38  7C 08 02 A6 */	mflr r0
/* 80CBBF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBBF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBBF44  7C 7F 1B 78 */	mr r31, r3
/* 80CBBF48  80 63 0A E0 */	lwz r3, 0xae0(r3)
/* 80CBBF4C  28 03 00 00 */	cmplwi r3, 0
/* 80CBBF50  41 82 00 24 */	beq lbl_80CBBF74
/* 80CBBF54  4B 5A C2 80 */	b ChkUsed__9cBgW_BgIdCFv
/* 80CBBF58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBBF5C  41 82 00 18 */	beq lbl_80CBBF74
/* 80CBBF60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBBF64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBBF68  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CBBF6C  80 9F 0A E0 */	lwz r4, 0xae0(r31)
/* 80CBBF70  4B 3B 82 E0 */	b Release__4cBgSFP9dBgW_Base
lbl_80CBBF74:
/* 80CBBF74  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CBBF78  3C 80 80 CC */	lis r4, l_arcName@ha
/* 80CBBF7C  38 84 C4 C0 */	addi r4, r4, l_arcName@l
/* 80CBBF80  80 84 00 00 */	lwz r4, 0(r4)
/* 80CBBF84  4B 37 10 84 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CBBF88  38 60 00 01 */	li r3, 1
/* 80CBBF8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBBF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBBF94  7C 08 03 A6 */	mtlr r0
/* 80CBBF98  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBBF9C  4E 80 00 20 */	blr 
