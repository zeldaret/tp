lbl_80D28040:
/* 80D28040  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D28044  7C 08 02 A6 */	mflr r0
/* 80D28048  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2804C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D28050  7C 7F 1B 78 */	mr r31, r3
/* 80D28054  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80D28058  7F E4 FB 78 */	mr r4, r31
/* 80D2805C  38 A0 00 00 */	li r5, 0
/* 80D28060  38 C0 00 00 */	li r6, 0
/* 80D28064  4B 52 22 74 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D28068  2C 03 00 00 */	cmpwi r3, 0
/* 80D2806C  41 82 00 4C */	beq lbl_80D280B8
/* 80D28070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D28074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D28078  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D2807C  4B 31 A3 EC */	b reset__14dEvt_control_cFv
/* 80D28080  38 00 00 01 */	li r0, 1
/* 80D28084  98 1F 05 D9 */	stb r0, 0x5d9(r31)
/* 80D28088  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80D2808C  38 81 00 08 */	addi r4, r1, 8
/* 80D28090  4B 52 24 98 */	b getEventId__10dMsgFlow_cFPi
/* 80D28094  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80D28098  28 00 00 0B */	cmplwi r0, 0xb
/* 80D2809C  40 82 00 14 */	bne lbl_80D280B0
/* 80D280A0  38 00 00 06 */	li r0, 6
/* 80D280A4  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80D280A8  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80D280AC  98 03 00 C1 */	stb r0, 0xc1(r3)
lbl_80D280B0:
/* 80D280B0  38 00 00 05 */	li r0, 5
/* 80D280B4  98 1F 05 CA */	stb r0, 0x5ca(r31)
lbl_80D280B8:
/* 80D280B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D280BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D280C0  7C 08 03 A6 */	mtlr r0
/* 80D280C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D280C8  4E 80 00 20 */	blr 
