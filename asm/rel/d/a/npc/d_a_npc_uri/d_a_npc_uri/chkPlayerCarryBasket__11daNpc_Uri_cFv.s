lbl_80B28868:
/* 80B28868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2886C  7C 08 02 A6 */	mflr r0
/* 80B28870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B28874  38 00 00 00 */	li r0, 0
/* 80B28878  90 01 00 08 */	stw r0, 8(r1)
/* 80B2887C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B28880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B28884  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B28888  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B2888C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80B28890  7D 89 03 A6 */	mtctr r12
/* 80B28894  4E 80 04 21 */	bctrl 
/* 80B28898  38 81 00 08 */	addi r4, r1, 8
/* 80B2889C  4B 4F 11 20 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80B288A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B288A4  41 82 00 24 */	beq lbl_80B288C8
/* 80B288A8  80 61 00 08 */	lwz r3, 8(r1)
/* 80B288AC  28 03 00 00 */	cmplwi r3, 0
/* 80B288B0  41 82 00 18 */	beq lbl_80B288C8
/* 80B288B4  A8 03 00 08 */	lha r0, 8(r3)
/* 80B288B8  2C 00 02 FB */	cmpwi r0, 0x2fb
/* 80B288BC  40 82 00 0C */	bne lbl_80B288C8
/* 80B288C0  38 60 00 01 */	li r3, 1
/* 80B288C4  48 00 00 08 */	b lbl_80B288CC
lbl_80B288C8:
/* 80B288C8  38 60 00 00 */	li r3, 0
lbl_80B288CC:
/* 80B288CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B288D0  7C 08 03 A6 */	mtlr r0
/* 80B288D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B288D8  4E 80 00 20 */	blr 
