lbl_80259D84:
/* 80259D84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80259D88  7C 08 02 A6 */	mflr r0
/* 80259D8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80259D90  39 61 00 20 */	addi r11, r1, 0x20
/* 80259D94  48 10 84 49 */	bl _savegpr_29
/* 80259D98  28 03 00 00 */	cmplwi r3, 0
/* 80259D9C  41 82 00 0C */	beq lbl_80259DA8
/* 80259DA0  80 03 00 04 */	lwz r0, 4(r3)
/* 80259DA4  48 00 00 08 */	b lbl_80259DAC
lbl_80259DA8:
/* 80259DA8  38 00 FF FF */	li r0, -1
lbl_80259DAC:
/* 80259DAC  90 0D 87 E0 */	stw r0, mProcID__20dStage_roomControl_c(r13)
/* 80259DB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259DB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259DB8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80259DBC  38 9F 3E D6 */	addi r4, r31, 0x3ed6
/* 80259DC0  7F E3 FB 78 */	mr r3, r31
/* 80259DC4  4B DD 15 F5 */	bl setStartStage__14dComIfG_play_cFP19dStage_startStage_c
/* 80259DC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259DCC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80259DD0  88 1E 4E 0B */	lbz r0, 0x4e0b(r30)
/* 80259DD4  7C 00 07 75 */	extsb. r0, r0
/* 80259DD8  40 80 00 48 */	bge lbl_80259E20
/* 80259DDC  4B F0 58 85 */	bl checkRoomRestartStart__9daPy_py_cFv
/* 80259DE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80259DE4  41 82 00 3C */	beq lbl_80259E20
/* 80259DE8  38 7F 3E C8 */	addi r3, r31, 0x3ec8
/* 80259DEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80259DF0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80259DF4  88 04 4E 0A */	lbz r0, 0x4e0a(r4)
/* 80259DF8  7C 04 07 74 */	extsb r4, r0
/* 80259DFC  88 1E 4E 0B */	lbz r0, 0x4e0b(r30)
/* 80259E00  7C 05 07 74 */	extsb r5, r0
/* 80259E04  4B DD 16 31 */	bl getLayerNo_common_common__14dComIfG_play_cFPCcii
/* 80259E08  2C 03 00 00 */	cmpwi r3, 0
/* 80259E0C  40 80 00 14 */	bge lbl_80259E20
/* 80259E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259E18  88 03 5D 45 */	lbz r0, 0x5d45(r3)
/* 80259E1C  98 1E 4E 0B */	stb r0, 0x4e0b(r30)
lbl_80259E20:
/* 80259E20  38 00 00 00 */	li r0, 0
/* 80259E24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259E28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259E2C  98 03 4E 1C */	stb r0, 0x4e1c(r3)
/* 80259E30  3B BF 3E C8 */	addi r29, r31, 0x3ec8
/* 80259E34  7F A3 EB 78 */	mr r3, r29
/* 80259E38  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 80259E3C  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 80259E40  38 84 00 1F */	addi r4, r4, 0x1f
/* 80259E44  48 10 EB 51 */	bl strcmp
/* 80259E48  2C 03 00 00 */	cmpwi r3, 0
/* 80259E4C  40 82 00 3C */	bne lbl_80259E88
/* 80259E50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259E54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259E58  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80259E5C  2C 00 00 01 */	cmpwi r0, 1
/* 80259E60  40 82 00 28 */	bne lbl_80259E88
/* 80259E64  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 80259E68  2C 00 00 03 */	cmpwi r0, 3
/* 80259E6C  40 82 00 1C */	bne lbl_80259E88
/* 80259E70  38 63 00 28 */	addi r3, r3, 0x28
/* 80259E74  38 80 00 00 */	li r4, 0
/* 80259E78  4B DD 8D 1D */	bl onDarkClearLV__21dSv_player_status_b_cFi
/* 80259E7C  38 60 00 2F */	li r3, 0x2f
/* 80259E80  4B E3 E0 0D */	bl execItemGet__FUc
/* 80259E84  48 00 00 E4 */	b lbl_80259F68
lbl_80259E88:
/* 80259E88  7F A3 EB 78 */	mr r3, r29
/* 80259E8C  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 80259E90  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 80259E94  38 84 00 0F */	addi r4, r4, 0xf
/* 80259E98  48 10 EA FD */	bl strcmp
/* 80259E9C  2C 03 00 00 */	cmpwi r3, 0
/* 80259EA0  40 82 00 34 */	bne lbl_80259ED4
/* 80259EA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259EA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259EAC  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80259EB0  7C 00 07 75 */	extsb. r0, r0
/* 80259EB4  40 82 00 20 */	bne lbl_80259ED4
/* 80259EB8  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 80259EBC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80259EC0  40 82 00 14 */	bne lbl_80259ED4
/* 80259EC4  38 63 00 28 */	addi r3, r3, 0x28
/* 80259EC8  38 80 00 01 */	li r4, 1
/* 80259ECC  4B DD 8C C9 */	bl onDarkClearLV__21dSv_player_status_b_cFi
/* 80259ED0  48 00 00 98 */	b lbl_80259F68
lbl_80259ED4:
/* 80259ED4  7F A3 EB 78 */	mr r3, r29
/* 80259ED8  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 80259EDC  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 80259EE0  38 84 00 27 */	addi r4, r4, 0x27
/* 80259EE4  48 10 EA B1 */	bl strcmp
/* 80259EE8  2C 03 00 00 */	cmpwi r3, 0
/* 80259EEC  40 82 00 34 */	bne lbl_80259F20
/* 80259EF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259EF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259EF8  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80259EFC  2C 00 00 01 */	cmpwi r0, 1
/* 80259F00  40 82 00 20 */	bne lbl_80259F20
/* 80259F04  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 80259F08  2C 00 00 14 */	cmpwi r0, 0x14
/* 80259F0C  40 82 00 14 */	bne lbl_80259F20
/* 80259F10  38 63 00 28 */	addi r3, r3, 0x28
/* 80259F14  38 80 00 02 */	li r4, 2
/* 80259F18  4B DD 8C 7D */	bl onDarkClearLV__21dSv_player_status_b_cFi
/* 80259F1C  48 00 00 4C */	b lbl_80259F68
lbl_80259F20:
/* 80259F20  7F A3 EB 78 */	mr r3, r29
/* 80259F24  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 80259F28  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 80259F2C  38 84 00 2F */	addi r4, r4, 0x2f
/* 80259F30  48 10 EA 65 */	bl strcmp
/* 80259F34  2C 03 00 00 */	cmpwi r3, 0
/* 80259F38  40 82 00 30 */	bne lbl_80259F68
/* 80259F3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259F40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259F44  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80259F48  2C 00 00 01 */	cmpwi r0, 1
/* 80259F4C  40 82 00 1C */	bne lbl_80259F68
/* 80259F50  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 80259F54  2C 00 00 63 */	cmpwi r0, 0x63
/* 80259F58  40 82 00 10 */	bne lbl_80259F68
/* 80259F5C  38 63 00 28 */	addi r3, r3, 0x28
/* 80259F60  38 80 00 03 */	li r4, 3
/* 80259F64  4B DD 8C 31 */	bl onDarkClearLV__21dSv_player_status_b_cFi
lbl_80259F68:
/* 80259F68  7F A3 EB 78 */	mr r3, r29
/* 80259F6C  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 80259F70  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 80259F74  38 84 00 37 */	addi r4, r4, 0x37
/* 80259F78  48 10 EA 1D */	bl strcmp
/* 80259F7C  2C 03 00 00 */	cmpwi r3, 0
/* 80259F80  40 82 00 54 */	bne lbl_80259FD4
/* 80259F84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259F88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259F8C  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80259F90  2C 00 00 01 */	cmpwi r0, 1
/* 80259F94  40 82 00 40 */	bne lbl_80259FD4
/* 80259F98  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 80259F9C  2C 00 00 17 */	cmpwi r0, 0x17
/* 80259FA0  40 82 00 34 */	bne lbl_80259FD4
/* 80259FA4  88 1E 4E 0B */	lbz r0, 0x4e0b(r30)
/* 80259FA8  2C 00 00 0C */	cmpwi r0, 0xc
/* 80259FAC  40 82 00 28 */	bne lbl_80259FD4
/* 80259FB0  38 63 00 CC */	addi r3, r3, 0xcc
/* 80259FB4  38 80 00 84 */	li r4, 0x84
/* 80259FB8  4B DD 9E A9 */	bl onFirstBit__21dSv_player_get_item_cFUc
/* 80259FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80259FC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80259FC4  38 63 00 9C */	addi r3, r3, 0x9c
/* 80259FC8  38 80 00 15 */	li r4, 0x15
/* 80259FCC  38 A0 00 84 */	li r5, 0x84
/* 80259FD0  4B DD 8F E9 */	bl setItem__17dSv_player_item_cFiUc
lbl_80259FD4:
/* 80259FD4  7F A3 EB 78 */	mr r3, r29
/* 80259FD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80259FDC  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80259FE0  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 80259FE4  7C 04 07 74 */	extsb r4, r0
/* 80259FE8  4B F5 27 25 */	bl dKy_darkworld_stage_check__FPCci
/* 80259FEC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80259FF0  28 00 00 01 */	cmplwi r0, 1
/* 80259FF4  40 82 00 10 */	bne lbl_8025A004
/* 80259FF8  38 60 00 01 */	li r3, 1
/* 80259FFC  4B DD 55 09 */	bl dComIfGp_world_dark_set__FUc
/* 8025A000  48 00 00 34 */	b lbl_8025A034
lbl_8025A004:
/* 8025A004  7F A3 EB 78 */	mr r3, r29
/* 8025A008  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A00C  7C 04 07 74 */	extsb r4, r0
/* 8025A010  4B F5 27 D1 */	bl dKy_darkworld_spot_check__FPCci
/* 8025A014  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8025A018  28 00 00 01 */	cmplwi r0, 1
/* 8025A01C  40 82 00 10 */	bne lbl_8025A02C
/* 8025A020  38 60 00 02 */	li r3, 2
/* 8025A024  4B DD 54 E1 */	bl dComIfGp_world_dark_set__FUc
/* 8025A028  48 00 00 0C */	b lbl_8025A034
lbl_8025A02C:
/* 8025A02C  38 60 00 00 */	li r3, 0
/* 8025A030  4B DD 54 D5 */	bl dComIfGp_world_dark_set__FUc
lbl_8025A034:
/* 8025A034  7F A3 EB 78 */	mr r3, r29
/* 8025A038  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A03C  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A040  38 84 00 27 */	addi r4, r4, 0x27
/* 8025A044  48 10 E9 51 */	bl strcmp
/* 8025A048  2C 03 00 00 */	cmpwi r3, 0
/* 8025A04C  40 82 00 38 */	bne lbl_8025A084
/* 8025A050  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A054  7C 04 07 74 */	extsb r4, r0
/* 8025A058  2C 04 00 01 */	cmpwi r4, 1
/* 8025A05C  40 82 00 28 */	bne lbl_8025A084
/* 8025A060  88 1E 4E 0B */	lbz r0, 0x4e0b(r30)
/* 8025A064  7C 05 07 75 */	extsb. r5, r0
/* 8025A068  40 80 00 1C */	bge lbl_8025A084
/* 8025A06C  7F A3 EB 78 */	mr r3, r29
/* 8025A070  4B DD 28 E1 */	bl getLayerNo_common__14dComIfG_play_cFPCcii
/* 8025A074  2C 03 00 09 */	cmpwi r3, 9
/* 8025A078  40 82 00 0C */	bne lbl_8025A084
/* 8025A07C  38 00 00 09 */	li r0, 9
/* 8025A080  98 1E 4E 0B */	stb r0, 0x4e0b(r30)
lbl_8025A084:
/* 8025A084  7F A3 EB 78 */	mr r3, r29
/* 8025A088  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A08C  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A090  38 84 00 1F */	addi r4, r4, 0x1f
/* 8025A094  48 10 E9 01 */	bl strcmp
/* 8025A098  2C 03 00 00 */	cmpwi r3, 0
/* 8025A09C  40 82 00 1C */	bne lbl_8025A0B8
/* 8025A0A0  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A0A4  7C 00 07 75 */	extsb. r0, r0
/* 8025A0A8  40 82 00 10 */	bne lbl_8025A0B8
/* 8025A0AC  88 1E 4E 0B */	lbz r0, 0x4e0b(r30)
/* 8025A0B0  2C 00 00 07 */	cmpwi r0, 7
/* 8025A0B4  41 82 00 CC */	beq lbl_8025A180
lbl_8025A0B8:
/* 8025A0B8  7F A3 EB 78 */	mr r3, r29
/* 8025A0BC  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A0C0  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A0C4  38 84 00 3F */	addi r4, r4, 0x3f
/* 8025A0C8  48 10 E8 CD */	bl strcmp
/* 8025A0CC  2C 03 00 00 */	cmpwi r3, 0
/* 8025A0D0  40 82 00 14 */	bne lbl_8025A0E4
/* 8025A0D4  38 60 00 00 */	li r3, 0
/* 8025A0D8  4B DD 28 A5 */	bl getLayerNo__14dComIfG_play_cFi
/* 8025A0DC  2C 03 00 0E */	cmpwi r3, 0xe
/* 8025A0E0  41 82 00 A0 */	beq lbl_8025A180
lbl_8025A0E4:
/* 8025A0E4  7F A3 EB 78 */	mr r3, r29
/* 8025A0E8  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A0EC  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A0F0  38 84 00 0F */	addi r4, r4, 0xf
/* 8025A0F4  48 10 E8 A1 */	bl strcmp
/* 8025A0F8  2C 03 00 00 */	cmpwi r3, 0
/* 8025A0FC  40 82 00 1C */	bne lbl_8025A118
/* 8025A100  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A104  7C 00 07 75 */	extsb. r0, r0
/* 8025A108  40 82 00 10 */	bne lbl_8025A118
/* 8025A10C  88 1E 4E 0B */	lbz r0, 0x4e0b(r30)
/* 8025A110  2C 00 00 08 */	cmpwi r0, 8
/* 8025A114  41 82 00 6C */	beq lbl_8025A180
lbl_8025A118:
/* 8025A118  7F A3 EB 78 */	mr r3, r29
/* 8025A11C  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A120  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A124  38 84 00 27 */	addi r4, r4, 0x27
/* 8025A128  48 10 E8 6D */	bl strcmp
/* 8025A12C  2C 03 00 00 */	cmpwi r3, 0
/* 8025A130  40 82 00 1C */	bne lbl_8025A14C
/* 8025A134  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A138  2C 00 00 01 */	cmpwi r0, 1
/* 8025A13C  40 82 00 10 */	bne lbl_8025A14C
/* 8025A140  88 1E 4E 0B */	lbz r0, 0x4e0b(r30)
/* 8025A144  2C 00 00 08 */	cmpwi r0, 8
/* 8025A148  41 82 00 38 */	beq lbl_8025A180
lbl_8025A14C:
/* 8025A14C  7F A3 EB 78 */	mr r3, r29
/* 8025A150  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A154  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A158  38 84 00 27 */	addi r4, r4, 0x27
/* 8025A15C  48 10 E8 39 */	bl strcmp
/* 8025A160  2C 03 00 00 */	cmpwi r3, 0
/* 8025A164  40 82 00 24 */	bne lbl_8025A188
/* 8025A168  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A16C  2C 00 00 01 */	cmpwi r0, 1
/* 8025A170  40 82 00 18 */	bne lbl_8025A188
/* 8025A174  88 1E 4E 0B */	lbz r0, 0x4e0b(r30)
/* 8025A178  2C 00 00 09 */	cmpwi r0, 9
/* 8025A17C  40 82 00 0C */	bne lbl_8025A188
lbl_8025A180:
/* 8025A180  38 60 00 01 */	li r3, 1
/* 8025A184  4B DD 53 81 */	bl dComIfGp_world_dark_set__FUc
lbl_8025A188:
/* 8025A188  7F A3 EB 78 */	mr r3, r29
/* 8025A18C  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A190  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A194  38 84 00 46 */	addi r4, r4, 0x46
/* 8025A198  48 10 E7 FD */	bl strcmp
/* 8025A19C  2C 03 00 00 */	cmpwi r3, 0
/* 8025A1A0  40 82 00 30 */	bne lbl_8025A1D0
/* 8025A1A4  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A1A8  2C 00 00 32 */	cmpwi r0, 0x32
/* 8025A1AC  40 82 00 24 */	bne lbl_8025A1D0
/* 8025A1B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A1B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A1B8  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 8025A1BC  2C 00 00 14 */	cmpwi r0, 0x14
/* 8025A1C0  40 82 00 10 */	bne lbl_8025A1D0
/* 8025A1C4  38 63 09 78 */	addi r3, r3, 0x978
/* 8025A1C8  38 80 00 1E */	li r4, 0x1e
/* 8025A1CC  4B DD A9 CD */	bl onSwitch__12dSv_danBit_cFi
lbl_8025A1D0:
/* 8025A1D0  7F A3 EB 78 */	mr r3, r29
/* 8025A1D4  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A1D8  7C 04 07 74 */	extsb r4, r0
/* 8025A1DC  4B F5 26 95 */	bl dKy_darkworld_Area_set__FPCci
/* 8025A1E0  7F A3 EB 78 */	mr r3, r29
/* 8025A1E4  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A1E8  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A1EC  38 84 00 4E */	addi r4, r4, 0x4e
/* 8025A1F0  48 10 E7 A5 */	bl strcmp
/* 8025A1F4  2C 03 00 00 */	cmpwi r3, 0
/* 8025A1F8  40 82 00 44 */	bne lbl_8025A23C
/* 8025A1FC  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A200  7C 00 07 75 */	extsb. r0, r0
/* 8025A204  40 82 00 38 */	bne lbl_8025A23C
/* 8025A208  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A20C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A210  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 8025A214  2C 00 00 18 */	cmpwi r0, 0x18
/* 8025A218  41 82 00 0C */	beq lbl_8025A224
/* 8025A21C  7C 00 07 35 */	extsh. r0, r0
/* 8025A220  40 82 00 1C */	bne lbl_8025A23C
lbl_8025A224:
/* 8025A224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A228  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A22C  38 63 00 28 */	addi r3, r3, 0x28
/* 8025A230  38 80 00 00 */	li r4, 0
/* 8025A234  4B DD 89 9D */	bl onTransformLV__21dSv_player_status_b_cFi
/* 8025A238  48 00 00 F8 */	b lbl_8025A330
lbl_8025A23C:
/* 8025A23C  7F A3 EB 78 */	mr r3, r29
/* 8025A240  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A244  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A248  38 84 00 56 */	addi r4, r4, 0x56
/* 8025A24C  48 10 E7 49 */	bl strcmp
/* 8025A250  2C 03 00 00 */	cmpwi r3, 0
/* 8025A254  40 82 00 34 */	bne lbl_8025A288
/* 8025A258  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A25C  2C 00 00 02 */	cmpwi r0, 2
/* 8025A260  40 82 00 28 */	bne lbl_8025A288
/* 8025A264  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A268  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A26C  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 8025A270  2C 00 00 0A */	cmpwi r0, 0xa
/* 8025A274  40 82 00 14 */	bne lbl_8025A288
/* 8025A278  38 63 00 28 */	addi r3, r3, 0x28
/* 8025A27C  38 80 00 01 */	li r4, 1
/* 8025A280  4B DD 89 51 */	bl onTransformLV__21dSv_player_status_b_cFi
/* 8025A284  48 00 00 AC */	b lbl_8025A330
lbl_8025A288:
/* 8025A288  7F A3 EB 78 */	mr r3, r29
/* 8025A28C  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A290  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A294  38 84 00 56 */	addi r4, r4, 0x56
/* 8025A298  48 10 E6 FD */	bl strcmp
/* 8025A29C  2C 03 00 00 */	cmpwi r3, 0
/* 8025A2A0  40 82 00 34 */	bne lbl_8025A2D4
/* 8025A2A4  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A2A8  2C 00 00 09 */	cmpwi r0, 9
/* 8025A2AC  40 82 00 28 */	bne lbl_8025A2D4
/* 8025A2B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A2B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A2B8  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 8025A2BC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8025A2C0  40 82 00 14 */	bne lbl_8025A2D4
/* 8025A2C4  38 63 00 28 */	addi r3, r3, 0x28
/* 8025A2C8  38 80 00 02 */	li r4, 2
/* 8025A2CC  4B DD 89 05 */	bl onTransformLV__21dSv_player_status_b_cFi
/* 8025A2D0  48 00 00 60 */	b lbl_8025A330
lbl_8025A2D4:
/* 8025A2D4  7F A3 EB 78 */	mr r3, r29
/* 8025A2D8  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A2DC  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A2E0  38 84 00 56 */	addi r4, r4, 0x56
/* 8025A2E4  48 10 E6 B1 */	bl strcmp
/* 8025A2E8  2C 03 00 00 */	cmpwi r3, 0
/* 8025A2EC  40 82 00 44 */	bne lbl_8025A330
/* 8025A2F0  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A2F4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8025A2F8  40 82 00 38 */	bne lbl_8025A330
/* 8025A2FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A300  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A304  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 8025A308  2C 00 00 17 */	cmpwi r0, 0x17
/* 8025A30C  41 82 00 10 */	beq lbl_8025A31C
/* 8025A310  7C 00 07 34 */	extsh r0, r0
/* 8025A314  2C 00 00 14 */	cmpwi r0, 0x14
/* 8025A318  40 82 00 18 */	bne lbl_8025A330
lbl_8025A31C:
/* 8025A31C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A324  38 63 00 28 */	addi r3, r3, 0x28
/* 8025A328  38 80 00 03 */	li r4, 3
/* 8025A32C  4B DD 88 A5 */	bl onTransformLV__21dSv_player_status_b_cFi
lbl_8025A330:
/* 8025A330  7F A3 EB 78 */	mr r3, r29
/* 8025A334  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A338  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A33C  38 84 00 5E */	addi r4, r4, 0x5e
/* 8025A340  48 10 E6 55 */	bl strcmp
/* 8025A344  2C 03 00 00 */	cmpwi r3, 0
/* 8025A348  40 82 00 4C */	bne lbl_8025A394
/* 8025A34C  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A350  7C 00 07 75 */	extsb. r0, r0
/* 8025A354  40 82 00 40 */	bne lbl_8025A394
/* 8025A358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A35C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025A360  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 8025A364  2C 00 00 02 */	cmpwi r0, 2
/* 8025A368  40 82 00 2C */	bne lbl_8025A394
/* 8025A36C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8025A370  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 8025A374  88 64 12 FE */	lbz r3, 0x12fe(r4)
/* 8025A378  38 03 00 01 */	addi r0, r3, 1
/* 8025A37C  98 04 12 FE */	stb r0, 0x12fe(r4)
/* 8025A380  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8025A384  28 00 00 04 */	cmplwi r0, 4
/* 8025A388  40 81 00 0C */	ble lbl_8025A394
/* 8025A38C  38 00 00 01 */	li r0, 1
/* 8025A390  98 04 12 FE */	stb r0, 0x12fe(r4)
lbl_8025A394:
/* 8025A394  38 60 FF FF */	li r3, -1
/* 8025A398  4B DD 35 65 */	bl dComIfGs_BossLife_public_Set__FSc
/* 8025A39C  38 00 00 00 */	li r0, 0
/* 8025A3A0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8025A3A4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8025A3A8  98 03 13 08 */	stb r0, 0x1308(r3)
/* 8025A3AC  3C 60 80 3A */	lis r3, d_s_d_s_play__stringBase0@ha
/* 8025A3B0  38 63 A2 D8 */	addi r3, r3, d_s_d_s_play__stringBase0@l
/* 8025A3B4  38 63 00 66 */	addi r3, r3, 0x66
/* 8025A3B8  7F A4 EB 78 */	mr r4, r29
/* 8025A3BC  88 1F 4E 0A */	lbz r0, 0x4e0a(r31)
/* 8025A3C0  7C 05 07 74 */	extsb r5, r0
/* 8025A3C4  4C C6 31 82 */	crclr 6
/* 8025A3C8  48 08 E2 01 */	bl JUTReportConsole_f
/* 8025A3CC  38 00 00 00 */	li r0, 0
/* 8025A3D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025A3D4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8025A3D8  B0 04 5D 46 */	sth r0, 0x5d46(r4)
/* 8025A3DC  3C 60 80 3A */	lis r3, d_s_d_s_play__stringBase0@ha
/* 8025A3E0  38 63 A2 D8 */	addi r3, r3, d_s_d_s_play__stringBase0@l
/* 8025A3E4  38 63 00 86 */	addi r3, r3, 0x86
/* 8025A3E8  3F A4 00 02 */	addis r29, r4, 2
/* 8025A3EC  38 9D D4 F8 */	addi r4, r29, -11016
/* 8025A3F0  38 A0 00 40 */	li r5, 0x40
/* 8025A3F4  3B BD C2 F8 */	addi r29, r29, -15624
/* 8025A3F8  4B DE 1D 69 */	bl syncRes__14dRes_control_cFPCcP11dRes_info_ci
/* 8025A3FC  2C 03 00 00 */	cmpwi r3, 0
/* 8025A400  40 80 00 1C */	bge lbl_8025A41C
/* 8025A404  7F A3 EB 78 */	mr r3, r29
/* 8025A408  3C 80 80 3A */	lis r4, d_s_d_s_play__stringBase0@ha
/* 8025A40C  38 84 A2 D8 */	addi r4, r4, d_s_d_s_play__stringBase0@l
/* 8025A410  38 84 00 86 */	addi r4, r4, 0x86
/* 8025A414  38 A0 00 00 */	li r5, 0
/* 8025A418  4B DE 21 A5 */	bl setStageRes__14dRes_control_cFPCcP7JKRHeap
lbl_8025A41C:
/* 8025A41C  38 60 00 02 */	li r3, 2
/* 8025A420  39 61 00 20 */	addi r11, r1, 0x20
/* 8025A424  48 10 7E 05 */	bl _restgpr_29
/* 8025A428  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025A42C  7C 08 03 A6 */	mtlr r0
/* 8025A430  38 21 00 20 */	addi r1, r1, 0x20
/* 8025A434  4E 80 00 20 */	blr 
