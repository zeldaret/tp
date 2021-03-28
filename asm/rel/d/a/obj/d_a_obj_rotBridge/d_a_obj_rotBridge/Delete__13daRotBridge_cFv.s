lbl_80CBF4BC:
/* 80CBF4BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF4C0  7C 08 02 A6 */	mflr r0
/* 80CBF4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF4C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBF4CC  7C 7F 1B 78 */	mr r31, r3
/* 80CBF4D0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CBF4D4  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80CBF4D8  54 00 10 3A */	slwi r0, r0, 2
/* 80CBF4DC  3C 80 80 CC */	lis r4, l_resNameIdx@ha
/* 80CBF4E0  38 84 F6 D8 */	addi r4, r4, l_resNameIdx@l
/* 80CBF4E4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CBF4E8  4B 36 DB 20 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CBF4EC  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 80CBF4F0  28 03 00 00 */	cmplwi r3, 0
/* 80CBF4F4  41 82 00 24 */	beq lbl_80CBF518
/* 80CBF4F8  4B 5A 8C DC */	b ChkUsed__9cBgW_BgIdCFv
/* 80CBF4FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBF500  41 82 00 18 */	beq lbl_80CBF518
/* 80CBF504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBF508  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBF50C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CBF510  80 9F 05 DC */	lwz r4, 0x5dc(r31)
/* 80CBF514  4B 3B 4D 3C */	b Release__4cBgSFP9dBgW_Base
lbl_80CBF518:
/* 80CBF518  38 60 00 01 */	li r3, 1
/* 80CBF51C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBF520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF524  7C 08 03 A6 */	mtlr r0
/* 80CBF528  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF52C  4E 80 00 20 */	blr 
