lbl_80224DC0:
/* 80224DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224DC4  7C 08 02 A6 */	mflr r0
/* 80224DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224DCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224DD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80224DD4  7C 7F 1B 78 */	mr r31, r3
/* 80224DD8  80 63 01 24 */	lwz r3, 0x124(r3)
/* 80224DDC  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80224DE0  40 82 01 58 */	bne lbl_80224F38
/* 80224DE4  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80224DE8  41 82 00 30 */	beq lbl_80224E18
/* 80224DEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80224DF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80224DF4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80224DF8  28 00 00 00 */	cmplwi r0, 0
/* 80224DFC  41 82 00 10 */	beq lbl_80224E0C
/* 80224E00  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80224E04  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 80224E08  48 00 00 08 */	b lbl_80224E10
lbl_80224E0C:
/* 80224E0C  38 00 00 00 */	li r0, 0
lbl_80224E10:
/* 80224E10  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80224E14  40 82 01 24 */	bne lbl_80224F38
lbl_80224E18:
/* 80224E18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80224E1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80224E20  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80224E24  38 00 00 00 */	li r0, 0
/* 80224E28  88 64 05 6A */	lbz r3, 0x56a(r4)
/* 80224E2C  28 03 00 00 */	cmplwi r3, 0
/* 80224E30  41 82 00 10 */	beq lbl_80224E40
/* 80224E34  28 03 00 26 */	cmplwi r3, 0x26
/* 80224E38  40 80 00 08 */	bge lbl_80224E40
/* 80224E3C  38 00 00 01 */	li r0, 1
lbl_80224E40:
/* 80224E40  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80224E44  40 82 00 F4 */	bne lbl_80224F38
/* 80224E48  88 04 05 6A */	lbz r0, 0x56a(r4)
/* 80224E4C  28 00 00 2D */	cmplwi r0, 0x2d
/* 80224E50  40 82 00 1C */	bne lbl_80224E6C
/* 80224E54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80224E58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80224E5C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80224E60  4B E0 7D 5D */	bl getTimerMode__14dComIfG_play_cFv
/* 80224E64  2C 03 00 04 */	cmpwi r3, 4
/* 80224E68  41 82 00 D0 */	beq lbl_80224F38
lbl_80224E6C:
/* 80224E6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80224E70  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80224E74  38 7E 4E 00 */	addi r3, r30, 0x4e00
/* 80224E78  3C 80 80 3A */	lis r4, d_meter_d_meter2__stringBase0@ha
/* 80224E7C  38 84 93 38 */	addi r4, r4, d_meter_d_meter2__stringBase0@l
/* 80224E80  38 84 00 0F */	addi r4, r4, 0xf
/* 80224E84  48 14 3B 11 */	bl strcmp
/* 80224E88  2C 03 00 00 */	cmpwi r3, 0
/* 80224E8C  40 82 00 30 */	bne lbl_80224EBC
/* 80224E90  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80224E94  28 00 00 00 */	cmplwi r0, 0
/* 80224E98  41 82 00 18 */	beq lbl_80224EB0
/* 80224E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80224EA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80224EA4  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80224EA8  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 80224EAC  48 00 00 08 */	b lbl_80224EB4
lbl_80224EB0:
/* 80224EB0  38 00 00 00 */	li r0, 0
lbl_80224EB4:
/* 80224EB4  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80224EB8  41 82 00 28 */	beq lbl_80224EE0
lbl_80224EBC:
/* 80224EBC  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80224EC0  54 60 00 43 */	rlwinm. r0, r3, 0, 1, 1
/* 80224EC4  41 82 00 0C */	beq lbl_80224ED0
/* 80224EC8  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80224ECC  41 82 00 6C */	beq lbl_80224F38
lbl_80224ED0:
/* 80224ED0  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 80224ED4  40 82 00 64 */	bne lbl_80224F38
/* 80224ED8  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 80224EDC  40 82 00 5C */	bne lbl_80224F38
lbl_80224EE0:
/* 80224EE0  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80224EE4  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80224EE8  40 82 00 50 */	bne lbl_80224F38
/* 80224EEC  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80224EF0  40 82 00 48 */	bne lbl_80224F38
/* 80224EF4  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80224EF8  40 82 00 40 */	bne lbl_80224F38
/* 80224EFC  54 60 01 CF */	rlwinm. r0, r3, 0, 7, 7
/* 80224F00  40 82 00 38 */	bne lbl_80224F38
/* 80224F04  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80224F08  40 82 00 30 */	bne lbl_80224F38
/* 80224F0C  54 60 01 4B */	rlwinm. r0, r3, 0, 5, 5
/* 80224F10  40 82 00 28 */	bne lbl_80224F38
/* 80224F14  54 60 01 09 */	rlwinm. r0, r3, 0, 4, 4
/* 80224F18  40 82 00 20 */	bne lbl_80224F38
/* 80224F1C  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 80224F20  40 82 00 18 */	bne lbl_80224F38
/* 80224F24  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80224F28  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80224F2C  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 80224F30  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80224F34  41 82 00 10 */	beq lbl_80224F44
lbl_80224F38:
/* 80224F38  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80224F3C  4B FF 19 95 */	bl setAlphaRupeeAnimeMin__13dMeter2Draw_cFv
/* 80224F40  48 00 00 0C */	b lbl_80224F4C
lbl_80224F44:
/* 80224F44  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80224F48  4B FF 1A 49 */	bl setAlphaRupeeAnimeMax__13dMeter2Draw_cFv
lbl_80224F4C:
/* 80224F4C  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80224F50  38 80 00 00 */	li r4, 0
/* 80224F54  4B FF 17 31 */	bl setAlphaRupeeChange__13dMeter2Draw_cFb
/* 80224F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80224F5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80224F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80224F64  7C 08 03 A6 */	mtlr r0
/* 80224F68  38 21 00 10 */	addi r1, r1, 0x10
/* 80224F6C  4E 80 00 20 */	blr 
