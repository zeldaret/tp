lbl_80CEC948:
/* 80CEC948  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEC94C  7C 08 02 A6 */	mflr r0
/* 80CEC950  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEC954  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEC958  7C 7F 1B 78 */	mr r31, r3
/* 80CEC95C  38 7F 09 70 */	addi r3, r31, 0x970
/* 80CEC960  4B 5D 16 98 */	b deleteObject__14Z2SoundObjBaseFv
/* 80CEC964  A0 9F 04 94 */	lhz r4, 0x494(r31)
/* 80CEC968  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEC96C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEC970  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CEC974  7C 05 07 74 */	extsb r5, r0
/* 80CEC978  4B 34 8D 3C */	b offActor__10dSv_info_cFii
/* 80CEC97C  7F E3 FB 78 */	mr r3, r31
/* 80CEC980  38 80 00 01 */	li r4, 1
/* 80CEC984  4B FF FE 59 */	bl effect_delete__12daObjStone_cFb
/* 80CEC988  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CEC98C  88 1F 09 06 */	lbz r0, 0x906(r31)
/* 80CEC990  54 00 10 3A */	slwi r0, r0, 2
/* 80CEC994  3C 80 80 CF */	lis r4, l_arcName@ha
/* 80CEC998  38 84 CC 74 */	addi r4, r4, l_arcName@l
/* 80CEC99C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CEC9A0  4B 34 06 68 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CEC9A4  38 60 00 01 */	li r3, 1
/* 80CEC9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEC9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEC9B0  7C 08 03 A6 */	mtlr r0
/* 80CEC9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEC9B8  4E 80 00 20 */	blr 
