lbl_80980E20:
/* 80980E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80980E24  7C 08 02 A6 */	mflr r0
/* 80980E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80980E2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80980E30  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80980E34  54 1F C7 3E */	rlwinm r31, r0, 0x18, 0x1c, 0x1f
/* 80980E38  48 00 02 D1 */	bl isM___11daNpcChat_cFv
/* 80980E3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80980E40  41 82 00 9C */	beq lbl_80980EDC
/* 80980E44  28 1F 00 07 */	cmplwi r31, 7
/* 80980E48  41 81 00 5C */	bgt lbl_80980EA4
/* 80980E4C  3C 60 80 99 */	lis r3, lit_4290@ha
/* 80980E50  38 63 B7 80 */	addi r3, r3, lit_4290@l
/* 80980E54  57 E0 10 3A */	slwi r0, r31, 2
/* 80980E58  7C 03 00 2E */	lwzx r0, r3, r0
/* 80980E5C  7C 09 03 A6 */	mtctr r0
/* 80980E60  4E 80 04 20 */	bctr 
lbl_80980E64:
/* 80980E64  3B E0 00 00 */	li r31, 0
/* 80980E68  48 00 00 40 */	b lbl_80980EA8
lbl_80980E6C:
/* 80980E6C  3B E0 00 01 */	li r31, 1
/* 80980E70  48 00 00 38 */	b lbl_80980EA8
lbl_80980E74:
/* 80980E74  3B E0 00 02 */	li r31, 2
/* 80980E78  48 00 00 30 */	b lbl_80980EA8
lbl_80980E7C:
/* 80980E7C  3B E0 00 04 */	li r31, 4
/* 80980E80  48 00 00 28 */	b lbl_80980EA8
lbl_80980E84:
/* 80980E84  3B E0 00 06 */	li r31, 6
/* 80980E88  48 00 00 20 */	b lbl_80980EA8
lbl_80980E8C:
/* 80980E8C  3B E0 00 00 */	li r31, 0
/* 80980E90  48 00 00 18 */	b lbl_80980EA8
lbl_80980E94:
/* 80980E94  3B E0 00 00 */	li r31, 0
/* 80980E98  48 00 00 10 */	b lbl_80980EA8
lbl_80980E9C:
/* 80980E9C  3B E0 00 09 */	li r31, 9
/* 80980EA0  48 00 00 08 */	b lbl_80980EA8
lbl_80980EA4:
/* 80980EA4  3B E0 00 00 */	li r31, 0
lbl_80980EA8:
/* 80980EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80980EAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80980EB0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80980EB4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80980EB8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80980EBC  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80980EC0  4B 6B 3A FC */	b isEventBit__11dSv_event_cCFUs
/* 80980EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80980EC8  41 82 00 A8 */	beq lbl_80980F70
/* 80980ECC  2C 1F 00 09 */	cmpwi r31, 9
/* 80980ED0  40 82 00 A0 */	bne lbl_80980F70
/* 80980ED4  3B E0 00 0B */	li r31, 0xb
/* 80980ED8  48 00 00 98 */	b lbl_80980F70
lbl_80980EDC:
/* 80980EDC  28 1F 00 07 */	cmplwi r31, 7
/* 80980EE0  41 81 00 5C */	bgt lbl_80980F3C
/* 80980EE4  3C 60 80 99 */	lis r3, lit_4291@ha
/* 80980EE8  38 63 B7 60 */	addi r3, r3, lit_4291@l
/* 80980EEC  57 E0 10 3A */	slwi r0, r31, 2
/* 80980EF0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80980EF4  7C 09 03 A6 */	mtctr r0
/* 80980EF8  4E 80 04 20 */	bctr 
lbl_80980EFC:
/* 80980EFC  3B E0 00 00 */	li r31, 0
/* 80980F00  48 00 00 40 */	b lbl_80980F40
lbl_80980F04:
/* 80980F04  3B E0 00 08 */	li r31, 8
/* 80980F08  48 00 00 38 */	b lbl_80980F40
lbl_80980F0C:
/* 80980F0C  3B E0 00 03 */	li r31, 3
/* 80980F10  48 00 00 30 */	b lbl_80980F40
lbl_80980F14:
/* 80980F14  3B E0 00 05 */	li r31, 5
/* 80980F18  48 00 00 28 */	b lbl_80980F40
lbl_80980F1C:
/* 80980F1C  3B E0 00 07 */	li r31, 7
/* 80980F20  48 00 00 20 */	b lbl_80980F40
lbl_80980F24:
/* 80980F24  3B E0 00 00 */	li r31, 0
/* 80980F28  48 00 00 18 */	b lbl_80980F40
lbl_80980F2C:
/* 80980F2C  3B E0 00 00 */	li r31, 0
/* 80980F30  48 00 00 10 */	b lbl_80980F40
lbl_80980F34:
/* 80980F34  3B E0 00 0A */	li r31, 0xa
/* 80980F38  48 00 00 08 */	b lbl_80980F40
lbl_80980F3C:
/* 80980F3C  3B E0 00 00 */	li r31, 0
lbl_80980F40:
/* 80980F40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80980F44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80980F48  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80980F4C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80980F50  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80980F54  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80980F58  4B 6B 3A 64 */	b isEventBit__11dSv_event_cCFUs
/* 80980F5C  2C 03 00 00 */	cmpwi r3, 0
/* 80980F60  41 82 00 10 */	beq lbl_80980F70
/* 80980F64  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80980F68  40 82 00 08 */	bne lbl_80980F70
/* 80980F6C  3B E0 00 0C */	li r31, 0xc
lbl_80980F70:
/* 80980F70  7F E3 FB 78 */	mr r3, r31
/* 80980F74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80980F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80980F7C  7C 08 03 A6 */	mtlr r0
/* 80980F80  38 21 00 10 */	addi r1, r1, 0x10
/* 80980F84  4E 80 00 20 */	blr 
