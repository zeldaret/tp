lbl_800C0A9C:
/* 800C0A9C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800C0AA0  7C 08 02 A6 */	mflr r0
/* 800C0AA4  90 01 00 74 */	stw r0, 0x74(r1)
/* 800C0AA8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 800C0AAC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 800C0AB0  39 61 00 60 */	addi r11, r1, 0x60
/* 800C0AB4  48 2A 17 25 */	bl _savegpr_28
/* 800C0AB8  7C 7C 1B 78 */	mr r28, r3
/* 800C0ABC  7C 9D 23 78 */	mr r29, r4
/* 800C0AC0  54 9F 06 3E */	clrlwi r31, r4, 0x18
/* 800C0AC4  7F E3 FB 78 */	mr r3, r31
/* 800C0AC8  4B F6 D4 55 */	bl dComIfGp_getSelectItem__Fi
/* 800C0ACC  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 800C0AD0  7F 83 E3 78 */	mr r3, r28
/* 800C0AD4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800C0AD8  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800C0ADC  7D 89 03 A6 */	mtctr r12
/* 800C0AE0  4E 80 04 21 */	bctrl 
/* 800C0AE4  28 03 00 00 */	cmplwi r3, 0
/* 800C0AE8  40 82 02 74 */	bne lbl_800C0D5C
/* 800C0AEC  28 1E 00 50 */	cmplwi r30, 0x50
/* 800C0AF0  41 82 02 6C */	beq lbl_800C0D5C
/* 800C0AF4  28 1E 00 48 */	cmplwi r30, 0x48
/* 800C0AF8  41 82 00 14 */	beq lbl_800C0B0C
/* 800C0AFC  7F C3 F3 78 */	mr r3, r30
/* 800C0B00  48 09 E0 41 */	bl checkOilBottleItem__9daPy_py_cFi
/* 800C0B04  2C 03 00 00 */	cmpwi r3, 0
/* 800C0B08  41 82 00 18 */	beq lbl_800C0B20
lbl_800C0B0C:
/* 800C0B0C  7F 83 E3 78 */	mr r3, r28
/* 800C0B10  C0 3C 33 B4 */	lfs f1, 0x33b4(r28)
/* 800C0B14  48 04 FC 79 */	bl checkWaterInKandelaarOffset__9daAlink_cFf
/* 800C0B18  2C 03 00 00 */	cmpwi r3, 0
/* 800C0B1C  40 82 02 40 */	bne lbl_800C0D5C
lbl_800C0B20:
/* 800C0B20  7F 83 E3 78 */	mr r3, r28
/* 800C0B24  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800C0B28  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800C0B2C  7D 89 03 A6 */	mtctr r12
/* 800C0B30  4E 80 04 21 */	bctrl 
/* 800C0B34  28 03 00 00 */	cmplwi r3, 0
/* 800C0B38  41 82 00 1C */	beq lbl_800C0B54
/* 800C0B3C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C0B40  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C0B44  38 63 00 7E */	addi r3, r3, 0x7e
/* 800C0B48  4B FD CF 19 */	bl checkStageName__9daAlink_cFPCc
/* 800C0B4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0B50  40 82 02 0C */	bne lbl_800C0D5C
lbl_800C0B54:
/* 800C0B54  4B FF F8 4D */	bl checkCloudSea__9daAlink_cFv
/* 800C0B58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0B5C  40 82 02 00 */	bne lbl_800C0D5C
/* 800C0B60  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800C0B64  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800C0B68  40 82 00 10 */	bne lbl_800C0B78
/* 800C0B6C  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800C0B70  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800C0B74  41 82 00 18 */	beq lbl_800C0B8C
lbl_800C0B78:
/* 800C0B78  7F 83 E3 78 */	mr r3, r28
/* 800C0B7C  7F C4 F3 78 */	mr r4, r30
/* 800C0B80  48 04 0D 65 */	bl checkAcceptUseItemInWater__9daAlink_cCFUs
/* 800C0B84  2C 03 00 00 */	cmpwi r3, 0
/* 800C0B88  41 82 01 D4 */	beq lbl_800C0D5C
lbl_800C0B8C:
/* 800C0B8C  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800C0B90  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800C0B94  41 82 00 0C */	beq lbl_800C0BA0
/* 800C0B98  28 1E 00 71 */	cmplwi r30, 0x71
/* 800C0B9C  41 82 01 C0 */	beq lbl_800C0D5C
lbl_800C0BA0:
/* 800C0BA0  7F C3 F3 78 */	mr r3, r30
/* 800C0BA4  4B FF FA D5 */	bl checkCastleTownUseItem__9daAlink_cFUs
/* 800C0BA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0BAC  41 82 01 B0 */	beq lbl_800C0D5C
/* 800C0BB0  7F 83 E3 78 */	mr r3, r28
/* 800C0BB4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800C0BB8  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800C0BBC  7D 89 03 A6 */	mtctr r12
/* 800C0BC0  4E 80 04 21 */	bctrl 
/* 800C0BC4  28 03 00 00 */	cmplwi r3, 0
/* 800C0BC8  41 82 00 0C */	beq lbl_800C0BD4
/* 800C0BCC  28 1E 01 03 */	cmplwi r30, 0x103
/* 800C0BD0  40 82 01 8C */	bne lbl_800C0D5C
lbl_800C0BD4:
/* 800C0BD4  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800C0BD8  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800C0BDC  41 82 00 34 */	beq lbl_800C0C10
/* 800C0BE0  28 1E 00 60 */	cmplwi r30, 0x60
/* 800C0BE4  41 82 01 78 */	beq lbl_800C0D5C
/* 800C0BE8  28 1E 00 72 */	cmplwi r30, 0x72
/* 800C0BEC  41 82 01 70 */	beq lbl_800C0D5C
/* 800C0BF0  28 1E 00 42 */	cmplwi r30, 0x42
/* 800C0BF4  41 82 01 68 */	beq lbl_800C0D5C
/* 800C0BF8  28 1E 00 46 */	cmplwi r30, 0x46
/* 800C0BFC  41 82 01 60 */	beq lbl_800C0D5C
/* 800C0C00  7F C3 F3 78 */	mr r3, r30
/* 800C0C04  48 09 DE 1D */	bl checkFishingRodItem__9daPy_py_cFi
/* 800C0C08  2C 03 00 00 */	cmpwi r3, 0
/* 800C0C0C  40 82 01 50 */	bne lbl_800C0D5C
lbl_800C0C10:
/* 800C0C10  88 1C 2F A8 */	lbz r0, 0x2fa8(r28)
/* 800C0C14  28 00 00 06 */	cmplwi r0, 6
/* 800C0C18  41 82 00 54 */	beq lbl_800C0C6C
/* 800C0C1C  88 7C 2F BD */	lbz r3, 0x2fbd(r28)
/* 800C0C20  28 03 00 01 */	cmplwi r3, 1
/* 800C0C24  41 82 00 48 */	beq lbl_800C0C6C
/* 800C0C28  28 03 00 02 */	cmplwi r3, 2
/* 800C0C2C  41 82 00 40 */	beq lbl_800C0C6C
/* 800C0C30  C0 3C 33 B4 */	lfs f1, 0x33b4(r28)
/* 800C0C34  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 800C0C38  EC 21 00 28 */	fsubs f1, f1, f0
/* 800C0C3C  C0 02 95 30 */	lfs f0, lit_21736(r2)
/* 800C0C40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C0C44  41 81 00 28 */	bgt lbl_800C0C6C
/* 800C0C48  88 1C 2F BC */	lbz r0, 0x2fbc(r28)
/* 800C0C4C  28 00 00 06 */	cmplwi r0, 6
/* 800C0C50  40 82 00 14 */	bne lbl_800C0C64
/* 800C0C54  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C0C58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C0C5C  4C 41 13 82 */	cror 2, 1, 2
/* 800C0C60  41 82 00 0C */	beq lbl_800C0C6C
lbl_800C0C64:
/* 800C0C64  28 03 00 03 */	cmplwi r3, 3
/* 800C0C68  40 82 00 0C */	bne lbl_800C0C74
lbl_800C0C6C:
/* 800C0C6C  28 1E 00 41 */	cmplwi r30, 0x41
/* 800C0C70  41 82 00 EC */	beq lbl_800C0D5C
lbl_800C0C74:
/* 800C0C74  4B FF F6 55 */	bl checkBossRoom__9daAlink_cFv
/* 800C0C78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0C7C  41 82 00 14 */	beq lbl_800C0C90
/* 800C0C80  7F C3 F3 78 */	mr r3, r30
/* 800C0C84  48 09 DF A5 */	bl checkDungeonWarpItem__9daPy_py_cFi
/* 800C0C88  2C 03 00 00 */	cmpwi r3, 0
/* 800C0C8C  40 82 00 D0 */	bne lbl_800C0D5C
lbl_800C0C90:
/* 800C0C90  28 1E 00 25 */	cmplwi r30, 0x25
/* 800C0C94  40 82 00 8C */	bne lbl_800C0D20
/* 800C0C98  48 05 E1 A9 */	bl checkLv7DungeonShop__9daAlink_cFv
/* 800C0C9C  2C 03 00 00 */	cmpwi r3, 0
/* 800C0CA0  40 82 00 BC */	bne lbl_800C0D5C
/* 800C0CA4  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C0CA8  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C0CAC  38 63 01 15 */	addi r3, r3, 0x115
/* 800C0CB0  4B FD CD B1 */	bl checkStageName__9daAlink_cFPCc
/* 800C0CB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0CB8  41 82 00 44 */	beq lbl_800C0CFC
/* 800C0CBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C0CC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C0CC4  38 80 00 4D */	li r4, 0x4d
/* 800C0CC8  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 800C0CCC  7C 05 07 74 */	extsb r5, r0
/* 800C0CD0  4B F7 46 91 */	bl isSwitch__10dSv_info_cCFii
/* 800C0CD4  2C 03 00 00 */	cmpwi r3, 0
/* 800C0CD8  41 82 00 24 */	beq lbl_800C0CFC
/* 800C0CDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C0CE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C0CE4  38 80 00 18 */	li r4, 0x18
/* 800C0CE8  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 800C0CEC  7C 05 07 74 */	extsb r5, r0
/* 800C0CF0  4B F7 46 71 */	bl isSwitch__10dSv_info_cCFii
/* 800C0CF4  2C 03 00 00 */	cmpwi r3, 0
/* 800C0CF8  41 82 00 64 */	beq lbl_800C0D5C
lbl_800C0CFC:
/* 800C0CFC  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800C0D00  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800C0D04  38 63 00 96 */	addi r3, r3, 0x96
/* 800C0D08  4B FD CD 59 */	bl checkStageName__9daAlink_cFPCc
/* 800C0D0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0D10  41 82 00 10 */	beq lbl_800C0D20
/* 800C0D14  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 800C0D18  2C 00 00 0F */	cmpwi r0, 0xf
/* 800C0D1C  41 82 00 40 */	beq lbl_800C0D5C
lbl_800C0D20:
/* 800C0D20  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800C0D24  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800C0D28  41 82 00 3C */	beq lbl_800C0D64
/* 800C0D2C  28 1E 01 03 */	cmplwi r30, 0x103
/* 800C0D30  41 82 00 34 */	beq lbl_800C0D64
/* 800C0D34  7F C3 F3 78 */	mr r3, r30
/* 800C0D38  48 09 DD A1 */	bl checkDrinkBottleItem__9daPy_py_cFi
/* 800C0D3C  2C 03 00 00 */	cmpwi r3, 0
/* 800C0D40  40 82 00 24 */	bne lbl_800C0D64
/* 800C0D44  28 1E 00 45 */	cmplwi r30, 0x45
/* 800C0D48  41 82 00 1C */	beq lbl_800C0D64
/* 800C0D4C  7F C3 F3 78 */	mr r3, r30
/* 800C0D50  48 09 DE 41 */	bl checkBowItem__9daPy_py_cFi
/* 800C0D54  2C 03 00 00 */	cmpwi r3, 0
/* 800C0D58  40 82 00 0C */	bne lbl_800C0D64
lbl_800C0D5C:
/* 800C0D5C  38 60 00 00 */	li r3, 0
/* 800C0D60  48 00 05 5C */	b lbl_800C12BC
lbl_800C0D64:
/* 800C0D64  28 1E 00 45 */	cmplwi r30, 0x45
/* 800C0D68  41 82 00 5C */	beq lbl_800C0DC4
/* 800C0D6C  7F C3 F3 78 */	mr r3, r30
/* 800C0D70  48 09 DE B9 */	bl checkDungeonWarpItem__9daPy_py_cFi
/* 800C0D74  2C 03 00 00 */	cmpwi r3, 0
/* 800C0D78  40 82 00 4C */	bne lbl_800C0DC4
/* 800C0D7C  7F C3 F3 78 */	mr r3, r30
/* 800C0D80  48 09 DE 59 */	bl checkTradeItem__9daPy_py_cFi
/* 800C0D84  2C 03 00 00 */	cmpwi r3, 0
/* 800C0D88  40 82 00 3C */	bne lbl_800C0DC4
/* 800C0D8C  7F C3 F3 78 */	mr r3, r30
/* 800C0D90  48 09 DC F9 */	bl checkBottleItem__9daPy_py_cFi
/* 800C0D94  2C 03 00 00 */	cmpwi r3, 0
/* 800C0D98  41 82 00 0C */	beq lbl_800C0DA4
/* 800C0D9C  28 1E 00 60 */	cmplwi r30, 0x60
/* 800C0DA0  40 82 00 24 */	bne lbl_800C0DC4
lbl_800C0DA4:
/* 800C0DA4  28 1E 00 41 */	cmplwi r30, 0x41
/* 800C0DA8  41 82 00 1C */	beq lbl_800C0DC4
/* 800C0DAC  28 1E 00 72 */	cmplwi r30, 0x72
/* 800C0DB0  41 82 00 14 */	beq lbl_800C0DC4
/* 800C0DB4  28 1E 00 84 */	cmplwi r30, 0x84
/* 800C0DB8  41 82 00 0C */	beq lbl_800C0DC4
/* 800C0DBC  28 1E 00 3E */	cmplwi r30, 0x3e
/* 800C0DC0  40 82 04 18 */	bne lbl_800C11D8
lbl_800C0DC4:
/* 800C0DC4  38 00 00 00 */	li r0, 0
/* 800C0DC8  88 7C 2F AA */	lbz r3, 0x2faa(r28)
/* 800C0DCC  28 03 00 01 */	cmplwi r3, 1
/* 800C0DD0  41 82 00 0C */	beq lbl_800C0DDC
/* 800C0DD4  28 03 00 02 */	cmplwi r3, 2
/* 800C0DD8  40 82 00 08 */	bne lbl_800C0DE0
lbl_800C0DDC:
/* 800C0DDC  38 00 00 01 */	li r0, 1
lbl_800C0DE0:
/* 800C0DE0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800C0DE4  40 82 00 20 */	bne lbl_800C0E04
/* 800C0DE8  7F 83 E3 78 */	mr r3, r28
/* 800C0DEC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800C0DF0  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800C0DF4  7D 89 03 A6 */	mtctr r12
/* 800C0DF8  4E 80 04 21 */	bctrl 
/* 800C0DFC  28 03 00 00 */	cmplwi r3, 0
/* 800C0E00  41 82 00 48 */	beq lbl_800C0E48
lbl_800C0E04:
/* 800C0E04  7F C3 F3 78 */	mr r3, r30
/* 800C0E08  48 09 DC D1 */	bl checkDrinkBottleItem__9daPy_py_cFi
/* 800C0E0C  2C 03 00 00 */	cmpwi r3, 0
/* 800C0E10  41 82 00 0C */	beq lbl_800C0E1C
/* 800C0E14  38 60 00 03 */	li r3, 3
/* 800C0E18  48 00 04 A4 */	b lbl_800C12BC
lbl_800C0E1C:
/* 800C0E1C  7F C3 F3 78 */	mr r3, r30
/* 800C0E20  48 09 DD 21 */	bl checkOilBottleItem__9daPy_py_cFi
/* 800C0E24  2C 03 00 00 */	cmpwi r3, 0
/* 800C0E28  41 82 04 64 */	beq lbl_800C128C
/* 800C0E2C  7F 83 E3 78 */	mr r3, r28
/* 800C0E30  38 80 00 48 */	li r4, 0x48
/* 800C0E34  4B FF F3 D5 */	bl checkItemSetButton__9daAlink_cFi
/* 800C0E38  2C 03 00 02 */	cmpwi r3, 2
/* 800C0E3C  41 82 04 50 */	beq lbl_800C128C
/* 800C0E40  38 60 00 08 */	li r3, 8
/* 800C0E44  48 00 04 78 */	b lbl_800C12BC
lbl_800C0E48:
/* 800C0E48  28 1E 00 45 */	cmplwi r30, 0x45
/* 800C0E4C  40 82 00 78 */	bne lbl_800C0EC4
/* 800C0E50  7F 83 E3 78 */	mr r3, r28
/* 800C0E54  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800C0E58  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800C0E5C  7D 89 03 A6 */	mtctr r12
/* 800C0E60  4E 80 04 21 */	bctrl 
/* 800C0E64  28 03 00 00 */	cmplwi r3, 0
/* 800C0E68  40 82 04 24 */	bne lbl_800C128C
/* 800C0E6C  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 800C0E70  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C0E74  41 82 00 18 */	beq lbl_800C0E8C
/* 800C0E78  80 9C 31 A0 */	lwz r4, 0x31a0(r28)
/* 800C0E7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800C0E80  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800C0E84  7C 80 00 39 */	and. r0, r4, r0
/* 800C0E88  41 82 00 2C */	beq lbl_800C0EB4
lbl_800C0E8C:
/* 800C0E8C  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800C0E90  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800C0E94  41 82 00 14 */	beq lbl_800C0EA8
/* 800C0E98  C0 3C 36 AC */	lfs f1, 0x36ac(r28)
/* 800C0E9C  48 1A 73 49 */	bl cBgW_CheckBGround__Ff
/* 800C0EA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0EA4  40 82 00 10 */	bne lbl_800C0EB4
lbl_800C0EA8:
/* 800C0EA8  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 800C0EAC  28 00 00 5A */	cmplwi r0, 0x5a
/* 800C0EB0  40 82 00 0C */	bne lbl_800C0EBC
lbl_800C0EB4:
/* 800C0EB4  38 60 00 01 */	li r3, 1
/* 800C0EB8  48 00 04 04 */	b lbl_800C12BC
lbl_800C0EBC:
/* 800C0EBC  38 60 00 02 */	li r3, 2
/* 800C0EC0  48 00 03 FC */	b lbl_800C12BC
lbl_800C0EC4:
/* 800C0EC4  7F C3 F3 78 */	mr r3, r30
/* 800C0EC8  48 09 DC 11 */	bl checkDrinkBottleItem__9daPy_py_cFi
/* 800C0ECC  2C 03 00 00 */	cmpwi r3, 0
/* 800C0ED0  41 82 00 28 */	beq lbl_800C0EF8
/* 800C0ED4  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800C0ED8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800C0EDC  41 82 00 1C */	beq lbl_800C0EF8
/* 800C0EE0  C0 3C 36 AC */	lfs f1, 0x36ac(r28)
/* 800C0EE4  48 1A 73 01 */	bl cBgW_CheckBGround__Ff
/* 800C0EE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0EEC  41 82 03 A0 */	beq lbl_800C128C
/* 800C0EF0  38 60 00 03 */	li r3, 3
/* 800C0EF4  48 00 03 C8 */	b lbl_800C12BC
lbl_800C0EF8:
/* 800C0EF8  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 800C0EFC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C0F00  41 82 03 8C */	beq lbl_800C128C
/* 800C0F04  80 9C 31 A0 */	lwz r4, 0x31a0(r28)
/* 800C0F08  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800C0F0C  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800C0F10  7C 80 00 39 */	and. r0, r4, r0
/* 800C0F14  40 82 03 78 */	bne lbl_800C128C
/* 800C0F18  28 1E 00 41 */	cmplwi r30, 0x41
/* 800C0F1C  40 82 01 4C */	bne lbl_800C1068
/* 800C0F20  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 800C0F24  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 800C0F28  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 800C0F2C  EC 21 00 2A */	fadds f1, f1, f0
/* 800C0F30  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 800C0F34  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 800C0F38  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 800C0F3C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 800C0F40  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800C0F44  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800C0F48  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800C0F4C  3B C0 00 00 */	li r30, 0
/* 800C0F50  3B E0 00 00 */	li r31, 0
/* 800C0F54  C3 E2 95 50 */	lfs f31, lit_23595(r2)
/* 800C0F58  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800C0F5C  3B A3 9A 20 */	addi r29, r3, sincosTable___5JMath@l /* 0x80439A20@l */
lbl_800C0F60:
/* 800C0F60  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 800C0F64  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 800C0F68  7C 7D 02 14 */	add r3, r29, r0
/* 800C0F6C  C0 03 00 00 */	lfs f0, 0(r3)
/* 800C0F70  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800C0F74  EC 01 00 2A */	fadds f0, f1, f0
/* 800C0F78  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800C0F7C  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 800C0F80  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C0F84  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800C0F88  EC 01 00 2A */	fadds f0, f1, f0
/* 800C0F8C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800C0F90  7F 83 E3 78 */	mr r3, r28
/* 800C0F94  38 81 00 38 */	addi r4, r1, 0x38
/* 800C0F98  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800C0F9C  4B FE 11 FD */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800C0FA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C0FA4  41 82 00 AC */	beq lbl_800C1050
/* 800C0FA8  C0 42 93 14 */	lfs f2, lit_7307(r2)
/* 800C0FAC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800C0FB0  EC 22 00 32 */	fmuls f1, f2, f0
/* 800C0FB4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800C0FB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C0FBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800C0FC0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800C0FC4  EC 22 00 32 */	fmuls f1, f2, f0
/* 800C0FC8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800C0FCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C0FD0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800C0FD4  C0 1C 1B 78 */	lfs f0, 0x1b78(r28)
/* 800C0FD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800C0FDC  C0 1C 1B 7C */	lfs f0, 0x1b7c(r28)
/* 800C0FE0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800C0FE4  C0 1C 1B 80 */	lfs f0, 0x1b80(r28)
/* 800C0FE8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800C0FEC  7F 83 E3 78 */	mr r3, r28
/* 800C0FF0  38 81 00 38 */	addi r4, r1, 0x38
/* 800C0FF4  38 A1 00 2C */	addi r5, r1, 0x2c
/* 800C0FF8  4B FE 11 A1 */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800C0FFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C1000  41 82 00 50 */	beq lbl_800C1050
/* 800C1004  C0 5C 1B 80 */	lfs f2, 0x1b80(r28)
/* 800C1008  C0 1C 1B 78 */	lfs f0, 0x1b78(r28)
/* 800C100C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800C1010  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C1014  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800C1018  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800C101C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800C1020  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800C1024  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800C1028  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800C102C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800C1030  38 61 00 08 */	addi r3, r1, 8
/* 800C1034  38 81 00 14 */	addi r4, r1, 0x14
/* 800C1038  48 28 63 65 */	bl PSVECSquareDistance
/* 800C103C  C0 02 94 7C */	lfs f0, lit_15808(r2)
/* 800C1040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C1044  40 80 00 0C */	bge lbl_800C1050
/* 800C1048  38 60 00 00 */	li r3, 0
/* 800C104C  48 00 02 70 */	b lbl_800C12BC
lbl_800C1050:
/* 800C1050  3B FF 00 01 */	addi r31, r31, 1
/* 800C1054  2C 1F 00 04 */	cmpwi r31, 4
/* 800C1058  3B DE 20 00 */	addi r30, r30, 0x2000
/* 800C105C  41 80 FF 04 */	blt lbl_800C0F60
/* 800C1060  38 60 00 04 */	li r3, 4
/* 800C1064  48 00 02 58 */	b lbl_800C12BC
lbl_800C1068:
/* 800C1068  7F C3 F3 78 */	mr r3, r30
/* 800C106C  48 09 DB BD */	bl checkDungeonWarpItem__9daPy_py_cFi
/* 800C1070  2C 03 00 00 */	cmpwi r3, 0
/* 800C1074  41 82 00 0C */	beq lbl_800C1080
/* 800C1078  38 60 00 05 */	li r3, 5
/* 800C107C  48 00 02 40 */	b lbl_800C12BC
lbl_800C1080:
/* 800C1080  7F 83 E3 78 */	mr r3, r28
/* 800C1084  38 80 01 08 */	li r4, 0x108
/* 800C1088  4B FF F1 81 */	bl checkItemSetButton__9daAlink_cFi
/* 800C108C  2C 03 00 02 */	cmpwi r3, 2
/* 800C1090  41 82 00 78 */	beq lbl_800C1108
/* 800C1094  28 1E 00 74 */	cmplwi r30, 0x74
/* 800C1098  41 82 00 0C */	beq lbl_800C10A4
/* 800C109C  28 1E 00 76 */	cmplwi r30, 0x76
/* 800C10A0  40 82 00 68 */	bne lbl_800C1108
lbl_800C10A4:
/* 800C10A4  7F 83 E3 78 */	mr r3, r28
/* 800C10A8  38 80 01 08 */	li r4, 0x108
/* 800C10AC  4B FF F1 5D */	bl checkItemSetButton__9daAlink_cFi
/* 800C10B0  4B F6 CE 6D */	bl dComIfGp_getSelectItem__Fi
/* 800C10B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800C10B8  2C 00 00 5D */	cmpwi r0, 0x5d
/* 800C10BC  41 82 00 0C */	beq lbl_800C10C8
/* 800C10C0  2C 00 00 5F */	cmpwi r0, 0x5f
/* 800C10C4  40 82 00 1C */	bne lbl_800C10E0
lbl_800C10C8:
/* 800C10C8  28 1E 00 76 */	cmplwi r30, 0x76
/* 800C10CC  40 82 00 0C */	bne lbl_800C10D8
/* 800C10D0  38 60 00 03 */	li r3, 3
/* 800C10D4  48 00 01 E8 */	b lbl_800C12BC
lbl_800C10D8:
/* 800C10D8  38 60 00 00 */	li r3, 0
/* 800C10DC  48 00 01 E0 */	b lbl_800C12BC
lbl_800C10E0:
/* 800C10E0  28 1E 00 76 */	cmplwi r30, 0x76
/* 800C10E4  40 82 00 1C */	bne lbl_800C1100
/* 800C10E8  2C 00 00 5B */	cmpwi r0, 0x5b
/* 800C10EC  41 82 00 0C */	beq lbl_800C10F8
/* 800C10F0  2C 00 00 5E */	cmpwi r0, 0x5e
/* 800C10F4  40 82 00 0C */	bne lbl_800C1100
lbl_800C10F8:
/* 800C10F8  38 60 00 03 */	li r3, 3
/* 800C10FC  48 00 01 C0 */	b lbl_800C12BC
lbl_800C1100:
/* 800C1100  38 60 00 07 */	li r3, 7
/* 800C1104  48 00 01 B8 */	b lbl_800C12BC
lbl_800C1108:
/* 800C1108  7F C3 F3 78 */	mr r3, r30
/* 800C110C  48 09 D9 CD */	bl checkDrinkBottleItem__9daPy_py_cFi
/* 800C1110  2C 03 00 00 */	cmpwi r3, 0
/* 800C1114  41 82 00 0C */	beq lbl_800C1120
/* 800C1118  38 60 00 03 */	li r3, 3
/* 800C111C  48 00 01 A0 */	b lbl_800C12BC
lbl_800C1120:
/* 800C1120  7F C3 F3 78 */	mr r3, r30
/* 800C1124  48 09 DA 45 */	bl checkOpenBottleItem__9daPy_py_cFi
/* 800C1128  2C 03 00 00 */	cmpwi r3, 0
/* 800C112C  41 82 00 0C */	beq lbl_800C1138
/* 800C1130  38 60 00 06 */	li r3, 6
/* 800C1134  48 00 01 88 */	b lbl_800C12BC
lbl_800C1138:
/* 800C1138  7F C3 F3 78 */	mr r3, r30
/* 800C113C  48 09 DA 9D */	bl checkTradeItem__9daPy_py_cFi
/* 800C1140  2C 03 00 00 */	cmpwi r3, 0
/* 800C1144  41 82 00 0C */	beq lbl_800C1150
/* 800C1148  38 60 00 0E */	li r3, 0xe
/* 800C114C  48 00 01 70 */	b lbl_800C12BC
lbl_800C1150:
/* 800C1150  28 1E 00 84 */	cmplwi r30, 0x84
/* 800C1154  40 82 00 0C */	bne lbl_800C1160
/* 800C1158  38 60 00 0F */	li r3, 0xf
/* 800C115C  48 00 01 60 */	b lbl_800C12BC
lbl_800C1160:
/* 800C1160  7F C3 F3 78 */	mr r3, r30
/* 800C1164  48 09 D9 DD */	bl checkOilBottleItem__9daPy_py_cFi
/* 800C1168  2C 03 00 00 */	cmpwi r3, 0
/* 800C116C  41 82 00 20 */	beq lbl_800C118C
/* 800C1170  7F 83 E3 78 */	mr r3, r28
/* 800C1174  38 80 00 48 */	li r4, 0x48
/* 800C1178  4B FF F0 91 */	bl checkItemSetButton__9daAlink_cFi
/* 800C117C  2C 03 00 02 */	cmpwi r3, 2
/* 800C1180  41 82 00 0C */	beq lbl_800C118C
/* 800C1184  38 60 00 08 */	li r3, 8
/* 800C1188  48 00 01 34 */	b lbl_800C12BC
lbl_800C118C:
/* 800C118C  28 1E 00 3E */	cmplwi r30, 0x3e
/* 800C1190  40 82 00 1C */	bne lbl_800C11AC
/* 800C1194  7F 83 E3 78 */	mr r3, r28
/* 800C1198  48 00 D2 D1 */	bl acceptSubjectModeChange__9daAlink_cFv
/* 800C119C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C11A0  41 82 00 EC */	beq lbl_800C128C
/* 800C11A4  38 60 00 09 */	li r3, 9
/* 800C11A8  48 00 01 14 */	b lbl_800C12BC
lbl_800C11AC:
/* 800C11AC  28 1E 00 72 */	cmplwi r30, 0x72
/* 800C11B0  40 82 00 DC */	bne lbl_800C128C
/* 800C11B4  7F E3 FB 78 */	mr r3, r31
/* 800C11B8  4B F6 D4 09 */	bl dComIfGp_getSelectItemNum__Fi
/* 800C11BC  7C 60 07 35 */	extsh. r0, r3
/* 800C11C0  41 82 00 CC */	beq lbl_800C128C
/* 800C11C4  88 1C 2F CF */	lbz r0, 0x2fcf(r28)
/* 800C11C8  28 00 00 02 */	cmplwi r0, 2
/* 800C11CC  40 80 00 C0 */	bge lbl_800C128C
/* 800C11D0  38 60 00 0A */	li r3, 0xa
/* 800C11D4  48 00 00 E8 */	b lbl_800C12BC
lbl_800C11D8:
/* 800C11D8  28 1E 00 FF */	cmplwi r30, 0xff
/* 800C11DC  41 82 00 B0 */	beq lbl_800C128C
/* 800C11E0  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 800C11E4  7C 00 F0 40 */	cmplw r0, r30
/* 800C11E8  41 82 00 A4 */	beq lbl_800C128C
/* 800C11EC  7F C3 F3 78 */	mr r3, r30
/* 800C11F0  48 09 D8 59 */	bl checkBombItem__9daPy_py_cFi
/* 800C11F4  2C 03 00 00 */	cmpwi r3, 0
/* 800C11F8  41 82 00 14 */	beq lbl_800C120C
/* 800C11FC  7F E3 FB 78 */	mr r3, r31
/* 800C1200  4B F6 D3 C1 */	bl dComIfGp_getSelectItemNum__Fi
/* 800C1204  7C 60 07 35 */	extsh. r0, r3
/* 800C1208  41 82 00 74 */	beq lbl_800C127C
lbl_800C120C:
/* 800C120C  28 1E 00 70 */	cmplwi r30, 0x70
/* 800C1210  41 82 00 0C */	beq lbl_800C121C
/* 800C1214  28 1E 00 71 */	cmplwi r30, 0x71
/* 800C1218  40 82 00 10 */	bne lbl_800C1228
lbl_800C121C:
/* 800C121C  88 1C 2F A2 */	lbz r0, 0x2fa2(r28)
/* 800C1220  28 00 00 03 */	cmplwi r0, 3
/* 800C1224  40 80 00 58 */	bge lbl_800C127C
lbl_800C1228:
/* 800C1228  28 1E 00 42 */	cmplwi r30, 0x42
/* 800C122C  40 82 00 24 */	bne lbl_800C1250
/* 800C1230  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 800C1234  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C1238  41 82 00 44 */	beq lbl_800C127C
/* 800C123C  80 9C 31 A0 */	lwz r4, 0x31a0(r28)
/* 800C1240  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800C1244  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800C1248  7C 80 00 39 */	and. r0, r4, r0
/* 800C124C  40 82 00 30 */	bne lbl_800C127C
lbl_800C1250:
/* 800C1250  28 1E 00 48 */	cmplwi r30, 0x48
/* 800C1254  40 82 00 30 */	bne lbl_800C1284
/* 800C1258  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800C125C  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800C1260  40 82 00 1C */	bne lbl_800C127C
/* 800C1264  80 1C 05 8C */	lwz r0, 0x58c(r28)
/* 800C1268  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800C126C  40 82 00 10 */	bne lbl_800C127C
/* 800C1270  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800C1274  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800C1278  41 82 00 0C */	beq lbl_800C1284
lbl_800C127C:
/* 800C127C  38 60 00 00 */	li r3, 0
/* 800C1280  48 00 00 3C */	b lbl_800C12BC
lbl_800C1284:
/* 800C1284  38 60 00 0C */	li r3, 0xc
/* 800C1288  48 00 00 34 */	b lbl_800C12BC
lbl_800C128C:
/* 800C128C  A0 9C 2F DC */	lhz r4, 0x2fdc(r28)
/* 800C1290  7C 04 F0 40 */	cmplw r4, r30
/* 800C1294  40 82 00 24 */	bne lbl_800C12B8
/* 800C1298  88 7C 2F 9C */	lbz r3, 0x2f9c(r28)
/* 800C129C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 800C12A0  7C 03 00 40 */	cmplw r3, r0
/* 800C12A4  41 82 00 14 */	beq lbl_800C12B8
/* 800C12A8  28 04 00 60 */	cmplwi r4, 0x60
/* 800C12AC  40 82 00 0C */	bne lbl_800C12B8
/* 800C12B0  38 60 00 0D */	li r3, 0xd
/* 800C12B4  48 00 00 08 */	b lbl_800C12BC
lbl_800C12B8:
/* 800C12B8  38 60 00 00 */	li r3, 0
lbl_800C12BC:
/* 800C12BC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 800C12C0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 800C12C4  39 61 00 60 */	addi r11, r1, 0x60
/* 800C12C8  48 2A 0F 5D */	bl _restgpr_28
/* 800C12CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800C12D0  7C 08 03 A6 */	mtlr r0
/* 800C12D4  38 21 00 70 */	addi r1, r1, 0x70
/* 800C12D8  4E 80 00 20 */	blr 
