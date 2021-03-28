lbl_805299A0:
/* 805299A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805299A4  7C 08 02 A6 */	mflr r0
/* 805299A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805299AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805299B0  4B E3 88 24 */	b _savegpr_27
/* 805299B4  7C 7B 1B 78 */	mr r27, r3
/* 805299B8  3B E0 00 01 */	li r31, 1
/* 805299BC  3B C0 00 01 */	li r30, 1
/* 805299C0  3B A0 00 01 */	li r29, 1
/* 805299C4  3B 80 00 01 */	li r28, 1
/* 805299C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805299CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805299D0  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 805299D4  38 80 13 01 */	li r4, 0x1301
/* 805299D8  4B B0 AF E4 */	b isEventBit__11dSv_event_cCFUs
/* 805299DC  2C 03 00 00 */	cmpwi r3, 0
/* 805299E0  41 82 00 0C */	beq lbl_805299EC
/* 805299E4  38 60 00 01 */	li r3, 1
/* 805299E8  48 00 01 34 */	b lbl_80529B1C
lbl_805299EC:
/* 805299EC  A0 1B 05 6A */	lhz r0, 0x56a(r27)
/* 805299F0  28 00 FF FF */	cmplwi r0, 0xffff
/* 805299F4  41 82 00 38 */	beq lbl_80529A2C
/* 805299F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805299FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80529A00  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80529A04  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80529A08  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80529A0C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80529A10  7C 84 02 2E */	lhzx r4, r4, r0
/* 80529A14  4B B0 AF A8 */	b isEventBit__11dSv_event_cCFUs
/* 80529A18  2C 03 00 00 */	cmpwi r3, 0
/* 80529A1C  41 82 00 0C */	beq lbl_80529A28
/* 80529A20  3B E0 00 01 */	li r31, 1
/* 80529A24  48 00 00 08 */	b lbl_80529A2C
lbl_80529A28:
/* 80529A28  3B E0 00 00 */	li r31, 0
lbl_80529A2C:
/* 80529A2C  A0 1B 05 6C */	lhz r0, 0x56c(r27)
/* 80529A30  28 00 FF FF */	cmplwi r0, 0xffff
/* 80529A34  41 82 00 38 */	beq lbl_80529A6C
/* 80529A38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80529A3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80529A40  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80529A44  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80529A48  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80529A4C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80529A50  7C 84 02 2E */	lhzx r4, r4, r0
/* 80529A54  4B B0 AF 68 */	b isEventBit__11dSv_event_cCFUs
/* 80529A58  2C 03 00 00 */	cmpwi r3, 0
/* 80529A5C  40 82 00 0C */	bne lbl_80529A68
/* 80529A60  3B C0 00 01 */	li r30, 1
/* 80529A64  48 00 00 08 */	b lbl_80529A6C
lbl_80529A68:
/* 80529A68  3B C0 00 00 */	li r30, 0
lbl_80529A6C:
/* 80529A6C  88 9B 05 6E */	lbz r4, 0x56e(r27)
/* 80529A70  28 04 00 FF */	cmplwi r4, 0xff
/* 80529A74  41 82 00 30 */	beq lbl_80529AA4
/* 80529A78  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80529A7C  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)
/* 80529A80  7C A5 07 74 */	extsb r5, r5
/* 80529A84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80529A88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80529A8C  4B B0 B8 D4 */	b isSwitch__10dSv_info_cCFii
/* 80529A90  2C 03 00 00 */	cmpwi r3, 0
/* 80529A94  41 82 00 0C */	beq lbl_80529AA0
/* 80529A98  3B A0 00 01 */	li r29, 1
/* 80529A9C  48 00 00 08 */	b lbl_80529AA4
lbl_80529AA0:
/* 80529AA0  3B A0 00 00 */	li r29, 0
lbl_80529AA4:
/* 80529AA4  88 9B 05 6F */	lbz r4, 0x56f(r27)
/* 80529AA8  28 04 00 FF */	cmplwi r4, 0xff
/* 80529AAC  41 82 00 30 */	beq lbl_80529ADC
/* 80529AB0  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80529AB4  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)
/* 80529AB8  7C A5 07 74 */	extsb r5, r5
/* 80529ABC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80529AC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80529AC4  4B B0 B8 9C */	b isSwitch__10dSv_info_cCFii
/* 80529AC8  2C 03 00 00 */	cmpwi r3, 0
/* 80529ACC  40 82 00 0C */	bne lbl_80529AD8
/* 80529AD0  3B 80 00 01 */	li r28, 1
/* 80529AD4  48 00 00 08 */	b lbl_80529ADC
lbl_80529AD8:
/* 80529AD8  3B 80 00 00 */	li r28, 0
lbl_80529ADC:
/* 80529ADC  2C 1F 00 01 */	cmpwi r31, 1
/* 80529AE0  40 82 00 38 */	bne lbl_80529B18
/* 80529AE4  2C 1E 00 01 */	cmpwi r30, 1
/* 80529AE8  40 82 00 30 */	bne lbl_80529B18
/* 80529AEC  2C 1D 00 01 */	cmpwi r29, 1
/* 80529AF0  40 82 00 28 */	bne lbl_80529B18
/* 80529AF4  2C 1C 00 01 */	cmpwi r28, 1
/* 80529AF8  40 82 00 20 */	bne lbl_80529B18
/* 80529AFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80529B00  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80529B04  38 64 00 58 */	addi r3, r4, 0x58
/* 80529B08  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80529B0C  88 BB 05 68 */	lbz r5, 0x568(r27)
/* 80529B10  88 DB 05 69 */	lbz r6, 0x569(r27)
/* 80529B14  4B B0 92 08 */	b set__25dSv_player_return_place_cFPCcScUc
lbl_80529B18:
/* 80529B18  38 60 00 01 */	li r3, 1
lbl_80529B1C:
/* 80529B1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80529B20  4B E3 87 00 */	b _restgpr_27
/* 80529B24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80529B28  7C 08 03 A6 */	mtlr r0
/* 80529B2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80529B30  4E 80 00 20 */	blr 
