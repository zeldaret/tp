lbl_80A91B88:
/* 80A91B88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A91B8C  7C 08 02 A6 */	mflr r0
/* 80A91B90  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A91B94  39 61 00 30 */	addi r11, r1, 0x30
/* 80A91B98  4B 8D 06 45 */	bl _savegpr_29
/* 80A91B9C  7C 7E 1B 78 */	mr r30, r3
/* 80A91BA0  3C 80 80 A9 */	lis r4, lit_3990@ha /* 0x80A9241C@ha */
/* 80A91BA4  3B E4 24 1C */	addi r31, r4, lit_3990@l /* 0x80A9241C@l */
/* 80A91BA8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A91BAC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A91BB0  40 82 00 1C */	bne lbl_80A91BCC
/* 80A91BB4  28 1E 00 00 */	cmplwi r30, 0
/* 80A91BB8  41 82 00 08 */	beq lbl_80A91BC0
/* 80A91BBC  48 00 05 5D */	bl __ct__12npc_ne_classFv
lbl_80A91BC0:
/* 80A91BC0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80A91BC4  60 00 00 08 */	ori r0, r0, 8
/* 80A91BC8  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80A91BCC:
/* 80A91BCC  4B 71 A9 B1 */	bl dKy_darkworld_check__Fv
/* 80A91BD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A91BD4  41 82 00 14 */	beq lbl_80A91BE8
/* 80A91BD8  3C 60 80 A9 */	lis r3, d_a_npc_ne__stringBase0@ha /* 0x80A925D0@ha */
/* 80A91BDC  38 03 25 D0 */	addi r0, r3, d_a_npc_ne__stringBase0@l /* 0x80A925D0@l */
/* 80A91BE0  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80A91BE4  48 00 00 14 */	b lbl_80A91BF8
lbl_80A91BE8:
/* 80A91BE8  3C 60 80 A9 */	lis r3, d_a_npc_ne__stringBase0@ha /* 0x80A925D0@ha */
/* 80A91BEC  38 63 25 D0 */	addi r3, r3, d_a_npc_ne__stringBase0@l /* 0x80A925D0@l */
/* 80A91BF0  38 03 00 17 */	addi r0, r3, 0x17
/* 80A91BF4  90 1E 05 E4 */	stw r0, 0x5e4(r30)
lbl_80A91BF8:
/* 80A91BF8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80A91BFC  80 9E 05 E4 */	lwz r4, 0x5e4(r30)
/* 80A91C00  4B 59 B2 BD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A91C04  7C 7D 1B 78 */	mr r29, r3
/* 80A91C08  2C 1D 00 04 */	cmpwi r29, 4
/* 80A91C0C  40 82 04 F0 */	bne lbl_80A920FC
/* 80A91C10  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A91C14  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 80A91C18  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A91C1C  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80A91C20  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 80A91C24  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A91C28  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80A91C2C  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 80A91C30  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A91C34  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80A91C38  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 80A91C3C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A91C40  54 00 46 3E */	srwi r0, r0, 0x18
/* 80A91C44  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 80A91C48  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 80A91C4C  28 00 00 01 */	cmplwi r0, 1
/* 80A91C50  40 82 00 30 */	bne lbl_80A91C80
/* 80A91C54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A91C58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A91C5C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A91C60  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80A91C64  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80A91C68  A0 84 03 92 */	lhz r4, 0x392(r4)
/* 80A91C6C  4B 5A 2D 51 */	bl isEventBit__11dSv_event_cCFUs
/* 80A91C70  2C 03 00 00 */	cmpwi r3, 0
/* 80A91C74  40 82 00 0C */	bne lbl_80A91C80
/* 80A91C78  38 60 00 05 */	li r3, 5
/* 80A91C7C  48 00 04 84 */	b lbl_80A92100
lbl_80A91C80:
/* 80A91C80  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A91C84  B0 1E 0C 0C */	sth r0, 0xc0c(r30)
/* 80A91C88  38 00 00 00 */	li r0, 0
/* 80A91C8C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80A91C90  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 80A91C94  7F C3 F3 78 */	mr r3, r30
/* 80A91C98  3C 80 80 A9 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80A91798@ha */
/* 80A91C9C  38 84 17 98 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80A91798@l */
/* 80A91CA0  38 A0 2A 50 */	li r5, 0x2a50
/* 80A91CA4  4B 58 88 0D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A91CA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A91CAC  40 82 00 0C */	bne lbl_80A91CB8
/* 80A91CB0  38 60 00 05 */	li r3, 5
/* 80A91CB4  48 00 04 4C */	b lbl_80A92100
lbl_80A91CB8:
/* 80A91CB8  88 7E 05 B8 */	lbz r3, 0x5b8(r30)
/* 80A91CBC  28 03 00 FF */	cmplwi r3, 0xff
/* 80A91CC0  41 82 00 48 */	beq lbl_80A91D08
/* 80A91CC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A91CC8  7C 04 07 74 */	extsb r4, r0
/* 80A91CCC  4B 5B FB 21 */	bl dPath_GetRoomPath__Fii
/* 80A91CD0  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 80A91CD4  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 80A91CD8  28 00 00 00 */	cmplwi r0, 0
/* 80A91CDC  40 82 00 0C */	bne lbl_80A91CE8
/* 80A91CE0  38 60 00 05 */	li r3, 5
/* 80A91CE4  48 00 04 1C */	b lbl_80A92100
lbl_80A91CE8:
/* 80A91CE8  88 7E 05 B8 */	lbz r3, 0x5b8(r30)
/* 80A91CEC  38 03 00 01 */	addi r0, r3, 1
/* 80A91CF0  98 1E 05 B9 */	stb r0, 0x5b9(r30)
/* 80A91CF4  38 00 00 01 */	li r0, 1
/* 80A91CF8  98 1E 05 C1 */	stb r0, 0x5c1(r30)
/* 80A91CFC  38 00 00 0A */	li r0, 0xa
/* 80A91D00  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A91D04  48 00 01 E8 */	b lbl_80A91EEC
lbl_80A91D08:
/* 80A91D08  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80A91D0C  28 00 00 01 */	cmplwi r0, 1
/* 80A91D10  40 82 00 10 */	bne lbl_80A91D20
/* 80A91D14  38 00 00 02 */	li r0, 2
/* 80A91D18  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A91D1C  48 00 01 D0 */	b lbl_80A91EEC
lbl_80A91D20:
/* 80A91D20  28 00 00 02 */	cmplwi r0, 2
/* 80A91D24  40 82 01 94 */	bne lbl_80A91EB8
/* 80A91D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A91D2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A91D30  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A91D34  38 80 10 01 */	li r4, 0x1001
/* 80A91D38  4B 5A 2C 85 */	bl isEventBit__11dSv_event_cCFUs
/* 80A91D3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A91D40  41 82 00 B8 */	beq lbl_80A91DF8
/* 80A91D44  38 00 00 03 */	li r0, 3
/* 80A91D48  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A91D4C  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 80A91D50  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A91D54  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A91D58  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A91D5C  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80A91D60  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A91D64  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A91D68  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80A91D6C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A91D70  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80A91D74  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A91D78  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80A91D7C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A91D80  B0 1E 04 B4 */	sth r0, 0x4b4(r30)
/* 80A91D84  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A91D88  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
/* 80A91D8C  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A91D90  B0 1E 04 B8 */	sth r0, 0x4b8(r30)
/* 80A91D94  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A91D98  98 1E 04 BA */	stb r0, 0x4ba(r30)
/* 80A91D9C  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 80A91DA0  98 1E 04 BB */	stb r0, 0x4bb(r30)
/* 80A91DA4  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80A91DA8  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A91DAC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80A91DB0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A91DB4  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80A91DB8  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80A91DBC  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80A91DC0  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80A91DC4  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80A91DC8  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80A91DCC  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80A91DD0  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80A91DD4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80A91DD8  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 80A91DDC  88 1E 04 BB */	lbz r0, 0x4bb(r30)
/* 80A91DE0  98 1E 04 CF */	stb r0, 0x4cf(r30)
/* 80A91DE4  38 00 00 00 */	li r0, 0
/* 80A91DE8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A91DEC  38 00 00 01 */	li r0, 1
/* 80A91DF0  98 1E 07 00 */	stb r0, 0x700(r30)
/* 80A91DF4  48 00 00 F8 */	b lbl_80A91EEC
lbl_80A91DF8:
/* 80A91DF8  38 00 00 09 */	li r0, 9
/* 80A91DFC  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A91E00  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80A91E04  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A91E08  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80A91E0C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A91E10  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80A91E14  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A91E18  38 00 96 79 */	li r0, -27015
/* 80A91E1C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80A91E20  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A91E24  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80A91E28  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A91E2C  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80A91E30  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A91E34  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80A91E38  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A91E3C  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80A91E40  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80A91E44  B0 1E 04 B4 */	sth r0, 0x4b4(r30)
/* 80A91E48  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A91E4C  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
/* 80A91E50  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80A91E54  B0 1E 04 B8 */	sth r0, 0x4b8(r30)
/* 80A91E58  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A91E5C  98 1E 04 BA */	stb r0, 0x4ba(r30)
/* 80A91E60  88 1E 04 E3 */	lbz r0, 0x4e3(r30)
/* 80A91E64  98 1E 04 BB */	stb r0, 0x4bb(r30)
/* 80A91E68  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80A91E6C  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A91E70  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80A91E74  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A91E78  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80A91E7C  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80A91E80  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80A91E84  B0 1E 04 C8 */	sth r0, 0x4c8(r30)
/* 80A91E88  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80A91E8C  B0 1E 04 CA */	sth r0, 0x4ca(r30)
/* 80A91E90  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80A91E94  B0 1E 04 CC */	sth r0, 0x4cc(r30)
/* 80A91E98  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80A91E9C  98 1E 04 CE */	stb r0, 0x4ce(r30)
/* 80A91EA0  88 1E 04 BB */	lbz r0, 0x4bb(r30)
/* 80A91EA4  98 1E 04 CF */	stb r0, 0x4cf(r30)
/* 80A91EA8  38 00 00 01 */	li r0, 1
/* 80A91EAC  98 1E 07 00 */	stb r0, 0x700(r30)
/* 80A91EB0  98 1E 07 01 */	stb r0, 0x701(r30)
/* 80A91EB4  48 00 00 38 */	b lbl_80A91EEC
lbl_80A91EB8:
/* 80A91EB8  28 00 00 03 */	cmplwi r0, 3
/* 80A91EBC  40 82 00 30 */	bne lbl_80A91EEC
/* 80A91EC0  38 00 00 12 */	li r0, 0x12
/* 80A91EC4  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A91EC8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A91ECC  D0 1E 06 00 */	stfs f0, 0x600(r30)
/* 80A91ED0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A91ED4  D0 1E 06 04 */	stfs f0, 0x604(r30)
/* 80A91ED8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A91EDC  D0 1E 06 08 */	stfs f0, 0x608(r30)
/* 80A91EE0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A91EE4  64 00 00 02 */	oris r0, r0, 2
/* 80A91EE8  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80A91EEC:
/* 80A91EEC  3C 60 80 A9 */	lis r3, struct_80A92AC4+0x1@ha /* 0x80A92AC5@ha */
/* 80A91EF0  8C 03 2A C5 */	lbzu r0, struct_80A92AC4+0x1@l(r3)  /* 0x80A92AC5@l */
/* 80A91EF4  28 00 00 00 */	cmplwi r0, 0
/* 80A91EF8  40 82 00 20 */	bne lbl_80A91F18
/* 80A91EFC  38 00 00 01 */	li r0, 1
/* 80A91F00  98 1E 0C C1 */	stb r0, 0xcc1(r30)
/* 80A91F04  98 03 00 00 */	stb r0, 0(r3)
/* 80A91F08  38 00 FF FF */	li r0, -1
/* 80A91F0C  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A92AD4@ha */
/* 80A91F10  38 63 2A D4 */	addi r3, r3, l_HIO@l /* 0x80A92AD4@l */
/* 80A91F14  98 03 00 04 */	stb r0, 4(r3)
lbl_80A91F18:
/* 80A91F18  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A91F1C  60 00 01 00 */	ori r0, r0, 0x100
/* 80A91F20  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80A91F24  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80A91F28  60 00 00 08 */	ori r0, r0, 8
/* 80A91F2C  98 1E 04 9A */	stb r0, 0x49a(r30)
/* 80A91F30  38 00 00 00 */	li r0, 0
/* 80A91F34  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80A91F38  38 00 00 07 */	li r0, 7
/* 80A91F3C  98 1E 05 48 */	stb r0, 0x548(r30)
/* 80A91F40  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80A91F44  80 63 00 04 */	lwz r3, 4(r3)
/* 80A91F48  38 03 00 24 */	addi r0, r3, 0x24
/* 80A91F4C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80A91F50  38 00 00 01 */	li r0, 1
/* 80A91F54  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 80A91F58  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 80A91F5C  38 7E 09 20 */	addi r3, r30, 0x920
/* 80A91F60  38 80 00 1E */	li r4, 0x1e
/* 80A91F64  38 A0 00 00 */	li r5, 0
/* 80A91F68  7F C6 F3 78 */	mr r6, r30
/* 80A91F6C  4B 5F 18 F5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A91F70  38 7E 09 5C */	addi r3, r30, 0x95c
/* 80A91F74  3C 80 80 A9 */	lis r4, cc_sph_src@ha /* 0x80A92950@ha */
/* 80A91F78  38 84 29 50 */	addi r4, r4, cc_sph_src@l /* 0x80A92950@l */
/* 80A91F7C  4B 5F 2A B9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80A91F80  38 1E 09 20 */	addi r0, r30, 0x920
/* 80A91F84  90 1E 09 A0 */	stw r0, 0x9a0(r30)
/* 80A91F88  38 7E 0A 94 */	addi r3, r30, 0xa94
/* 80A91F8C  3C 80 80 A9 */	lis r4, at_sph_src@ha /* 0x80A92990@ha */
/* 80A91F90  38 84 29 90 */	addi r4, r4, at_sph_src@l /* 0x80A92990@l */
/* 80A91F94  4B 5F 2A A1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80A91F98  38 1E 09 20 */	addi r0, r30, 0x920
/* 80A91F9C  90 1E 0A D8 */	stw r0, 0xad8(r30)
/* 80A91FA0  80 1E 09 F8 */	lwz r0, 0x9f8(r30)
/* 80A91FA4  60 00 00 04 */	ori r0, r0, 4
/* 80A91FA8  90 1E 09 F8 */	stw r0, 0x9f8(r30)
/* 80A91FAC  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 80A91FB0  28 00 00 0F */	cmplwi r0, 0xf
/* 80A91FB4  40 82 00 20 */	bne lbl_80A91FD4
/* 80A91FB8  C0 3F 01 AC */	lfs f1, 0x1ac(r31)
/* 80A91FBC  4B 7D 59 99 */	bl cM_rndF__Ff
/* 80A91FC0  FC 00 08 1E */	fctiwz f0, f1
/* 80A91FC4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A91FC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A91FCC  98 1E 05 F4 */	stb r0, 0x5f4(r30)
/* 80A91FD0  48 00 00 20 */	b lbl_80A91FF0
lbl_80A91FD4:
/* 80A91FD4  98 1E 05 F4 */	stb r0, 0x5f4(r30)
/* 80A91FD8  88 1E 05 F4 */	lbz r0, 0x5f4(r30)
/* 80A91FDC  7C 00 07 74 */	extsb r0, r0
/* 80A91FE0  2C 00 00 03 */	cmpwi r0, 3
/* 80A91FE4  40 81 00 0C */	ble lbl_80A91FF0
/* 80A91FE8  38 00 00 03 */	li r0, 3
/* 80A91FEC  98 1E 05 F4 */	stb r0, 0x5f4(r30)
lbl_80A91FF0:
/* 80A91FF0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80A91FF4  4B 7D 59 61 */	bl cM_rndF__Ff
/* 80A91FF8  FC 00 08 1E */	fctiwz f0, f1
/* 80A91FFC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A92000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A92004  B0 1E 06 40 */	sth r0, 0x640(r30)
/* 80A92008  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 80A9200C  28 00 00 01 */	cmplwi r0, 1
/* 80A92010  40 82 00 20 */	bne lbl_80A92030
/* 80A92014  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80A92018  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 80A9201C  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 80A92020  D0 1E 06 E0 */	stfs f0, 0x6e0(r30)
/* 80A92024  38 00 00 01 */	li r0, 1
/* 80A92028  98 1E 06 F8 */	stb r0, 0x6f8(r30)
/* 80A9202C  48 00 00 38 */	b lbl_80A92064
lbl_80A92030:
/* 80A92030  28 00 00 02 */	cmplwi r0, 2
/* 80A92034  40 82 00 20 */	bne lbl_80A92054
/* 80A92038  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 80A9203C  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 80A92040  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 80A92044  D0 1E 06 E0 */	stfs f0, 0x6e0(r30)
/* 80A92048  38 00 00 01 */	li r0, 1
/* 80A9204C  98 1E 06 F8 */	stb r0, 0x6f8(r30)
/* 80A92050  48 00 00 14 */	b lbl_80A92064
lbl_80A92054:
/* 80A92054  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A92058  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 80A9205C  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 80A92060  D0 1E 06 E0 */	stfs f0, 0x6e0(r30)
lbl_80A92064:
/* 80A92064  38 00 00 00 */	li r0, 0
/* 80A92068  90 01 00 08 */	stw r0, 8(r1)
/* 80A9206C  38 7E 07 44 */	addi r3, r30, 0x744
/* 80A92070  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A92074  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80A92078  7F C6 F3 78 */	mr r6, r30
/* 80A9207C  38 E0 00 01 */	li r7, 1
/* 80A92080  39 1E 07 04 */	addi r8, r30, 0x704
/* 80A92084  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80A92088  39 40 00 00 */	li r10, 0
/* 80A9208C  4B 5E 41 BD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A92090  38 7E 07 04 */	addi r3, r30, 0x704
/* 80A92094  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80A92098  C0 1E 06 DC */	lfs f0, 0x6dc(r30)
/* 80A9209C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A920A0  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 80A920A4  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80A920A8  EC 42 00 32 */	fmuls f2, f2, f0
/* 80A920AC  4B 5E 3E AD */	bl SetWall__12dBgS_AcchCirFff
/* 80A920B0  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80A920B4  4B 7D 58 D9 */	bl cM_rndFX__Ff
/* 80A920B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A920BC  EC 00 08 2A */	fadds f0, f0, f1
/* 80A920C0  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80A920C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A920C8  D0 1E 09 1C */	stfs f0, 0x91c(r30)
/* 80A920CC  80 9E 05 E4 */	lwz r4, 0x5e4(r30)
/* 80A920D0  3C 60 80 A9 */	lis r3, d_a_npc_ne__stringBase0@ha /* 0x80A925D0@ha */
/* 80A920D4  38 03 25 D0 */	addi r0, r3, d_a_npc_ne__stringBase0@l /* 0x80A925D0@l */
/* 80A920D8  7C 04 00 40 */	cmplw r4, r0
/* 80A920DC  40 82 00 10 */	bne lbl_80A920EC
/* 80A920E0  38 00 00 00 */	li r0, 0
/* 80A920E4  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A920E8  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A920EC:
/* 80A920EC  38 00 FF FF */	li r0, -1
/* 80A920F0  90 1E 0C BC */	stw r0, 0xcbc(r30)
/* 80A920F4  7F C3 F3 78 */	mr r3, r30
/* 80A920F8  4B FF EF 0D */	bl daNpc_Ne_Execute__FP12npc_ne_class
lbl_80A920FC:
/* 80A920FC  7F A3 EB 78 */	mr r3, r29
lbl_80A92100:
/* 80A92100  39 61 00 30 */	addi r11, r1, 0x30
/* 80A92104  4B 8D 01 25 */	bl _restgpr_29
/* 80A92108  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A9210C  7C 08 03 A6 */	mtlr r0
/* 80A92110  38 21 00 30 */	addi r1, r1, 0x30
/* 80A92114  4E 80 00 20 */	blr 
