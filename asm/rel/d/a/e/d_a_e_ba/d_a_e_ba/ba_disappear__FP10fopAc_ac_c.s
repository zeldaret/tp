lbl_8067ED30:
/* 8067ED30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067ED34  7C 08 02 A6 */	mflr r0
/* 8067ED38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067ED3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067ED40  7C 7F 1B 78 */	mr r31, r3
/* 8067ED44  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8067ED48  38 A0 00 06 */	li r5, 6
/* 8067ED4C  38 C0 00 00 */	li r6, 0
/* 8067ED50  38 E0 00 03 */	li r7, 3
/* 8067ED54  4B 99 DD 84 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8067ED58  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8067ED5C  54 04 46 3E */	srwi r4, r0, 0x18
/* 8067ED60  2C 04 00 FF */	cmpwi r4, 0xff
/* 8067ED64  41 82 00 18 */	beq lbl_8067ED7C
/* 8067ED68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067ED6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067ED70  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8067ED74  7C 05 07 74 */	extsb r5, r0
/* 8067ED78  4B 9B 64 88 */	b onSwitch__10dSv_info_cFii
lbl_8067ED7C:
/* 8067ED7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067ED80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067ED84  7C 08 03 A6 */	mtlr r0
/* 8067ED88  38 21 00 10 */	addi r1, r1, 0x10
/* 8067ED8C  4E 80 00 20 */	blr 
