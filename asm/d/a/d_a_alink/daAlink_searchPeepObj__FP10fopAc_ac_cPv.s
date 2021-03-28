lbl_800CED48:
/* 800CED48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CED4C  7C 08 02 A6 */	mflr r0
/* 800CED50  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CED54  7C 60 1B 78 */	mr r0, r3
/* 800CED58  7C 85 23 78 */	mr r5, r4
/* 800CED5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800CED60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800CED64  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 800CED68  7C 04 03 78 */	mr r4, r0
/* 800CED6C  4B FF FF 79 */	bl searchPeepObj__9daAlink_cFP10fopAc_ac_cPv
/* 800CED70  38 60 00 00 */	li r3, 0
/* 800CED74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CED78  7C 08 03 A6 */	mtlr r0
/* 800CED7C  38 21 00 10 */	addi r1, r1, 0x10
/* 800CED80  4E 80 00 20 */	blr 
