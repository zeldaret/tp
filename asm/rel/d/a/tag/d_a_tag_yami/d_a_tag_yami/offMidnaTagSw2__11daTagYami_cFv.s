lbl_80D65F24:
/* 80D65F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D65F28  7C 08 02 A6 */	mflr r0
/* 80D65F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D65F30  7C 65 1B 78 */	mr r5, r3
/* 80D65F34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D65F38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D65F3C  80 85 06 E8 */	lwz r4, 0x6e8(r5)
/* 80D65F40  88 05 04 BA */	lbz r0, 0x4ba(r5)
/* 80D65F44  7C 05 07 74 */	extsb r5, r0
/* 80D65F48  4B 2C F3 68 */	b offSwitch__10dSv_info_cFii
/* 80D65F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D65F50  7C 08 03 A6 */	mtlr r0
/* 80D65F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80D65F58  4E 80 00 20 */	blr 
