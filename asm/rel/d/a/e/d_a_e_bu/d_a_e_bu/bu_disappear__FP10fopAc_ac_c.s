lbl_806911F0:
/* 806911F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806911F4  7C 08 02 A6 */	mflr r0
/* 806911F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806911FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80691200  7C 7F 1B 78 */	mr r31, r3
/* 80691204  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80691208  38 A0 00 06 */	li r5, 6
/* 8069120C  38 C0 00 00 */	li r6, 0
/* 80691210  38 E0 00 1C */	li r7, 0x1c
/* 80691214  4B 98 B8 C5 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 80691218  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8069121C  54 04 46 3E */	srwi r4, r0, 0x18
/* 80691220  2C 04 00 FF */	cmpwi r4, 0xff
/* 80691224  41 82 00 18 */	beq lbl_8069123C
/* 80691228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069122C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80691230  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80691234  7C 05 07 74 */	extsb r5, r0
/* 80691238  4B 9A 3F C9 */	bl onSwitch__10dSv_info_cFii
lbl_8069123C:
/* 8069123C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80691240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80691244  7C 08 03 A6 */	mtlr r0
/* 80691248  38 21 00 10 */	addi r1, r1, 0x10
/* 8069124C  4E 80 00 20 */	blr 
