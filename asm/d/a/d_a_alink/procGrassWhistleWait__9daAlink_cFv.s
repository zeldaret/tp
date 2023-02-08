lbl_80111CA4:
/* 80111CA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80111CA8  7C 08 02 A6 */	mflr r0
/* 80111CAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80111CB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80111CB4  48 25 05 29 */	bl _savegpr_29
/* 80111CB8  7C 7F 1B 78 */	mr r31, r3
/* 80111CBC  A8 03 30 12 */	lha r0, 0x3012(r3)
/* 80111CC0  2C 00 00 00 */	cmpwi r0, 0
/* 80111CC4  41 82 00 30 */	beq lbl_80111CF4
/* 80111CC8  80 9F 32 CC */	lwz r4, 0x32cc(r31)
/* 80111CCC  48 00 6A E9 */	bl checkEndMessage__9daAlink_cFUl
/* 80111CD0  2C 03 00 00 */	cmpwi r3, 0
/* 80111CD4  41 82 00 18 */	beq lbl_80111CEC
/* 80111CD8  7F E3 FB 78 */	mr r3, r31
/* 80111CDC  48 00 5F B5 */	bl resetSpecialEvent__9daAlink_cFv
/* 80111CE0  7F E3 FB 78 */	mr r3, r31
/* 80111CE4  4B FB 16 D5 */	bl procWaitInit__9daAlink_cFv
/* 80111CE8  48 00 02 F0 */	b lbl_80111FD8
lbl_80111CEC:
/* 80111CEC  38 60 00 01 */	li r3, 1
/* 80111CF0  48 00 02 E8 */	b lbl_80111FD8
lbl_80111CF4:
/* 80111CF4  A8 9F 30 08 */	lha r4, 0x3008(r31)
/* 80111CF8  7C 80 07 35 */	extsh. r0, r4
/* 80111CFC  40 80 00 20 */	bge lbl_80111D1C
/* 80111D00  38 04 FF FF */	addi r0, r4, -1
/* 80111D04  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80111D08  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 80111D0C  2C 00 FF FD */	cmpwi r0, -3
/* 80111D10  40 82 02 C4 */	bne lbl_80111FD4
/* 80111D14  4B FB 16 A5 */	bl procWaitInit__9daAlink_cFv
/* 80111D18  48 00 02 C0 */	b lbl_80111FD8
lbl_80111D1C:
/* 80111D1C  7C 80 07 35 */	extsh. r0, r4
/* 80111D20  41 82 01 40 */	beq lbl_80111E60
/* 80111D24  38 04 FF FF */	addi r0, r4, -1
/* 80111D28  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80111D2C  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 80111D30  2C 00 00 00 */	cmpwi r0, 0
/* 80111D34  40 82 01 1C */	bne lbl_80111E50
/* 80111D38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111D3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80111D40  83 A3 5D B8 */	lwz r29, 0x5db8(r3)
/* 80111D44  3C 60 80 11 */	lis r3, daAlink_searchWhistle__FP10fopAc_ac_cPv@ha /* 0x8011174C@ha */
/* 80111D48  38 63 17 4C */	addi r3, r3, daAlink_searchWhistle__FP10fopAc_ac_cPv@l /* 0x8011174C@l */
/* 80111D4C  38 80 00 00 */	li r4, 0
/* 80111D50  4B F0 7A A9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80111D54  7C 7E 1B 79 */	or. r30, r3, r3
/* 80111D58  41 82 00 60 */	beq lbl_80111DB8
/* 80111D5C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80111D60  60 00 08 00 */	ori r0, r0, 0x800
/* 80111D64  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80111D68  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 80111D6C  2C 00 01 00 */	cmpwi r0, 0x100
/* 80111D70  40 82 00 30 */	bne lbl_80111DA0
/* 80111D74  A0 1E 06 BE */	lhz r0, 0x6be(r30)
/* 80111D78  60 00 00 08 */	ori r0, r0, 8
/* 80111D7C  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 80111D80  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 80111D84  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80111D88  28 03 00 FF */	cmplwi r3, 0xff
/* 80111D8C  41 82 00 14 */	beq lbl_80111DA0
/* 80111D90  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80111D94  7C 04 07 74 */	extsb r4, r0
/* 80111D98  4B F3 FA 55 */	bl dPath_GetRoomPath__Fii
/* 80111D9C  90 7E 06 C8 */	stw r3, 0x6c8(r30)
lbl_80111DA0:
/* 80111DA0  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 80111DA4  38 03 FF FF */	addi r0, r3, -1
/* 80111DA8  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80111DAC  7F E3 FB 78 */	mr r3, r31
/* 80111DB0  48 00 5E E1 */	bl resetSpecialEvent__9daAlink_cFv
/* 80111DB4  48 00 00 9C */	b lbl_80111E50
lbl_80111DB8:
/* 80111DB8  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80111DBC  2C 00 00 01 */	cmpwi r0, 1
/* 80111DC0  41 82 00 0C */	beq lbl_80111DCC
/* 80111DC4  2C 00 00 03 */	cmpwi r0, 3
/* 80111DC8  40 82 00 28 */	bne lbl_80111DF0
lbl_80111DCC:
/* 80111DCC  28 1D 00 00 */	cmplwi r29, 0
/* 80111DD0  41 82 00 20 */	beq lbl_80111DF0
/* 80111DD4  7F A3 EB 78 */	mr r3, r29
/* 80111DD8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80111DDC  39 9D 18 D4 */	addi r12, r29, 0x18d4
/* 80111DE0  48 25 02 A5 */	bl __ptmf_scall
/* 80111DE4  60 00 00 00 */	nop 
/* 80111DE8  7C 64 1B 78 */	mr r4, r3
/* 80111DEC  48 00 00 08 */	b lbl_80111DF4
lbl_80111DF0:
/* 80111DF0  38 80 00 00 */	li r4, 0
lbl_80111DF4:
/* 80111DF4  2C 04 00 01 */	cmpwi r4, 1
/* 80111DF8  41 82 00 14 */	beq lbl_80111E0C
/* 80111DFC  2C 04 00 04 */	cmpwi r4, 4
/* 80111E00  41 82 00 0C */	beq lbl_80111E0C
/* 80111E04  2C 04 00 02 */	cmpwi r4, 2
/* 80111E08  40 82 00 10 */	bne lbl_80111E18
lbl_80111E0C:
/* 80111E0C  7F E3 FB 78 */	mr r3, r31
/* 80111E10  48 00 01 E1 */	bl procCoHorseCallWaitInit__9daAlink_cFi
/* 80111E14  48 00 01 C4 */	b lbl_80111FD8
lbl_80111E18:
/* 80111E18  2C 04 00 03 */	cmpwi r4, 3
/* 80111E1C  40 82 00 18 */	bne lbl_80111E34
/* 80111E20  7F E3 FB 78 */	mr r3, r31
/* 80111E24  48 00 5E 6D */	bl resetSpecialEvent__9daAlink_cFv
/* 80111E28  7F E3 FB 78 */	mr r3, r31
/* 80111E2C  4B FB 15 8D */	bl procWaitInit__9daAlink_cFv
/* 80111E30  48 00 01 A8 */	b lbl_80111FD8
lbl_80111E34:
/* 80111E34  7F E3 FB 78 */	mr r3, r31
/* 80111E38  38 80 00 00 */	li r4, 0
/* 80111E3C  4B F9 DA 65 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80111E40  38 00 00 01 */	li r0, 1
/* 80111E44  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 80111E48  38 60 00 01 */	li r3, 1
/* 80111E4C  48 00 01 8C */	b lbl_80111FD8
lbl_80111E50:
/* 80111E50  7F E3 FB 78 */	mr r3, r31
/* 80111E54  38 80 00 00 */	li r4, 0
/* 80111E58  4B FA 14 41 */	bl setBStatus__9daAlink_cFUc
/* 80111E5C  48 00 01 78 */	b lbl_80111FD4
lbl_80111E60:
/* 80111E60  38 7F 20 48 */	addi r3, r31, 0x2048
/* 80111E64  48 04 C6 69 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80111E68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80111E6C  41 82 01 5C */	beq lbl_80111FC8
/* 80111E70  7F E3 FB 78 */	mr r3, r31
/* 80111E74  38 80 00 12 */	li r4, 0x12
/* 80111E78  4B FA 14 21 */	bl setBStatus__9daAlink_cFUc
/* 80111E7C  7F E3 FB 78 */	mr r3, r31
/* 80111E80  38 80 00 2C */	li r4, 0x2c
/* 80111E84  4B FA 13 CD */	bl setDoStatus__9daAlink_cFUc
/* 80111E88  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80111E8C  2C 00 00 03 */	cmpwi r0, 3
/* 80111E90  41 82 00 10 */	beq lbl_80111EA0
/* 80111E94  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 80111E98  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80111E9C  41 82 00 F4 */	beq lbl_80111F90
lbl_80111EA0:
/* 80111EA0  7F E3 FB 78 */	mr r3, r31
/* 80111EA4  38 80 01 10 */	li r4, 0x110
/* 80111EA8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80111EAC  4B F9 B1 05 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 80111EB0  7F E3 FB 78 */	mr r3, r31
/* 80111EB4  38 80 00 02 */	li r4, 2
/* 80111EB8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 80111EBC  4B F9 B8 69 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 80111EC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111EC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80111EC8  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80111ECC  60 00 00 06 */	ori r0, r0, 6
/* 80111ED0  B0 03 4F A4 */	sth r0, 0x4fa4(r3)
/* 80111ED4  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80111ED8  2C 00 00 00 */	cmpwi r0, 0
/* 80111EDC  40 82 00 6C */	bne lbl_80111F48
/* 80111EE0  7F E3 FB 78 */	mr r3, r31
/* 80111EE4  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002001E@ha */
/* 80111EE8  38 84 00 1E */	addi r4, r4, 0x001E /* 0x0002001E@l */
/* 80111EEC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80111EF0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80111EF4  7D 89 03 A6 */	mtctr r12
/* 80111EF8  4E 80 04 21 */	bctrl 
/* 80111EFC  38 00 00 64 */	li r0, 0x64
/* 80111F00  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80111F04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111F08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80111F0C  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80111F10  7F C3 F3 78 */	mr r3, r30
/* 80111F14  38 80 4A 40 */	li r4, 0x4a40
/* 80111F18  4B F2 2A A5 */	bl isEventBit__11dSv_event_cCFUs
/* 80111F1C  2C 03 00 00 */	cmpwi r3, 0
/* 80111F20  41 82 00 B4 */	beq lbl_80111FD4
/* 80111F24  7F C3 F3 78 */	mr r3, r30
/* 80111F28  38 80 10 02 */	li r4, 0x1002
/* 80111F2C  4B F2 2A 91 */	bl isEventBit__11dSv_event_cCFUs
/* 80111F30  2C 03 00 00 */	cmpwi r3, 0
/* 80111F34  41 82 00 A0 */	beq lbl_80111FD4
/* 80111F38  7F C3 F3 78 */	mr r3, r30
/* 80111F3C  38 80 47 10 */	li r4, 0x4710
/* 80111F40  4B F2 2A 4D */	bl onEventBit__11dSv_event_cFUs
/* 80111F44  48 00 00 90 */	b lbl_80111FD4
lbl_80111F48:
/* 80111F48  7F E3 FB 78 */	mr r3, r31
/* 80111F4C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020023@ha */
/* 80111F50  38 84 00 23 */	addi r4, r4, 0x0023 /* 0x00020023@l */
/* 80111F54  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80111F58  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80111F5C  7D 89 03 A6 */	mtctr r12
/* 80111F60  4E 80 04 21 */	bctrl 
/* 80111F64  38 00 00 8C */	li r0, 0x8c
/* 80111F68  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80111F6C  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 80111F70  2C 00 00 01 */	cmpwi r0, 1
/* 80111F74  40 82 00 60 */	bne lbl_80111FD4
/* 80111F78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80111F7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80111F80  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80111F84  38 80 47 20 */	li r4, 0x4720
/* 80111F88  4B F2 2A 05 */	bl onEventBit__11dSv_event_cFUs
/* 80111F8C  48 00 00 48 */	b lbl_80111FD4
lbl_80111F90:
/* 80111F90  7F E3 FB 78 */	mr r3, r31
/* 80111F94  38 80 00 08 */	li r4, 8
/* 80111F98  4B FA 06 35 */	bl itemTriggerCheck__9daAlink_cFUc
/* 80111F9C  2C 03 00 00 */	cmpwi r3, 0
/* 80111FA0  41 82 00 34 */	beq lbl_80111FD4
/* 80111FA4  7F E3 FB 78 */	mr r3, r31
/* 80111FA8  38 80 00 02 */	li r4, 2
/* 80111FAC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 80111FB0  4B F9 B7 75 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 80111FB4  7F E3 FB 78 */	mr r3, r31
/* 80111FB8  48 00 5C D9 */	bl resetSpecialEvent__9daAlink_cFv
/* 80111FBC  7F E3 FB 78 */	mr r3, r31
/* 80111FC0  4B FB 13 F9 */	bl procWaitInit__9daAlink_cFv
/* 80111FC4  48 00 00 10 */	b lbl_80111FD4
lbl_80111FC8:
/* 80111FC8  7F E3 FB 78 */	mr r3, r31
/* 80111FCC  38 80 00 00 */	li r4, 0
/* 80111FD0  4B FA 12 C9 */	bl setBStatus__9daAlink_cFUc
lbl_80111FD4:
/* 80111FD4  38 60 00 01 */	li r3, 1
lbl_80111FD8:
/* 80111FD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80111FDC  48 25 02 4D */	bl _restgpr_29
/* 80111FE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80111FE4  7C 08 03 A6 */	mtlr r0
/* 80111FE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80111FEC  4E 80 00 20 */	blr 
