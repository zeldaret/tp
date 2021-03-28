lbl_80224F70:
/* 80224F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224F74  7C 08 02 A6 */	mflr r0
/* 80224F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224F80  93 C1 00 08 */	stw r30, 8(r1)
/* 80224F84  7C 7F 1B 78 */	mr r31, r3
/* 80224F88  80 63 01 24 */	lwz r3, 0x124(r3)
/* 80224F8C  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80224F90  40 82 01 2C */	bne lbl_802250BC
/* 80224F94  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80224F98  41 82 00 30 */	beq lbl_80224FC8
/* 80224F9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80224FA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80224FA4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80224FA8  28 00 00 00 */	cmplwi r0, 0
/* 80224FAC  41 82 00 10 */	beq lbl_80224FBC
/* 80224FB0  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 80224FB4  54 00 06 72 */	rlwinm r0, r0, 0, 0x19, 0x19
/* 80224FB8  48 00 00 08 */	b lbl_80224FC0
lbl_80224FBC:
/* 80224FBC  38 00 00 00 */	li r0, 0
lbl_80224FC0:
/* 80224FC0  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 80224FC4  40 82 00 F8 */	bne lbl_802250BC
lbl_80224FC8:
/* 80224FC8  7F E3 FB 78 */	mr r3, r31
/* 80224FCC  48 00 09 95 */	bl isKeyVisible__9dMeter2_cFv
/* 80224FD0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80224FD4  41 82 00 E8 */	beq lbl_802250BC
/* 80224FD8  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80224FDC  54 60 00 43 */	rlwinm. r0, r3, 0, 1, 1
/* 80224FE0  40 82 00 DC */	bne lbl_802250BC
/* 80224FE4  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 80224FE8  40 82 00 D4 */	bne lbl_802250BC
/* 80224FEC  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 80224FF0  40 82 00 CC */	bne lbl_802250BC
/* 80224FF4  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80224FF8  40 82 00 C4 */	bne lbl_802250BC
/* 80224FFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80225000  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80225004  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80225008  38 00 00 00 */	li r0, 0
/* 8022500C  88 64 05 6A */	lbz r3, 0x56a(r4)
/* 80225010  28 03 00 00 */	cmplwi r3, 0
/* 80225014  41 82 00 10 */	beq lbl_80225024
/* 80225018  28 03 00 26 */	cmplwi r3, 0x26
/* 8022501C  40 80 00 08 */	bge lbl_80225024
/* 80225020  38 00 00 01 */	li r0, 1
lbl_80225024:
/* 80225024  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80225028  40 82 00 94 */	bne lbl_802250BC
/* 8022502C  88 04 05 6A */	lbz r0, 0x56a(r4)
/* 80225030  28 00 00 2D */	cmplwi r0, 0x2d
/* 80225034  40 82 00 30 */	bne lbl_80225064
/* 80225038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8022503C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80225040  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80225044  7F C3 F3 78 */	mr r3, r30
/* 80225048  4B E0 7B 75 */	bl getTimerMode__14dComIfG_play_cFv
/* 8022504C  2C 03 00 03 */	cmpwi r3, 3
/* 80225050  41 82 00 6C */	beq lbl_802250BC
/* 80225054  7F C3 F3 78 */	mr r3, r30
/* 80225058  4B E0 7B 65 */	bl getTimerMode__14dComIfG_play_cFv
/* 8022505C  2C 03 00 04 */	cmpwi r3, 4
/* 80225060  41 82 00 5C */	beq lbl_802250BC
lbl_80225064:
/* 80225064  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80225068  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8022506C  40 82 00 50 */	bne lbl_802250BC
/* 80225070  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80225074  40 82 00 48 */	bne lbl_802250BC
/* 80225078  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8022507C  40 82 00 40 */	bne lbl_802250BC
/* 80225080  54 60 01 CF */	rlwinm. r0, r3, 0, 7, 7
/* 80225084  40 82 00 38 */	bne lbl_802250BC
/* 80225088  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8022508C  40 82 00 30 */	bne lbl_802250BC
/* 80225090  54 60 01 4B */	rlwinm. r0, r3, 0, 5, 5
/* 80225094  40 82 00 28 */	bne lbl_802250BC
/* 80225098  54 60 01 09 */	rlwinm. r0, r3, 0, 4, 4
/* 8022509C  40 82 00 20 */	bne lbl_802250BC
/* 802250A0  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 802250A4  40 82 00 18 */	bne lbl_802250BC
/* 802250A8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 802250AC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 802250B0  A0 03 00 A2 */	lhz r0, 0xa2(r3)
/* 802250B4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802250B8  41 82 00 10 */	beq lbl_802250C8
lbl_802250BC:
/* 802250BC  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 802250C0  4B FF 1B E9 */	bl setAlphaKeyAnimeMin__13dMeter2Draw_cFv
/* 802250C4  48 00 00 0C */	b lbl_802250D0
lbl_802250C8:
/* 802250C8  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 802250CC  4B FF 1C 61 */	bl setAlphaKeyAnimeMax__13dMeter2Draw_cFv
lbl_802250D0:
/* 802250D0  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 802250D4  38 80 00 00 */	li r4, 0
/* 802250D8  4B FF 1A 51 */	bl setAlphaKeyChange__13dMeter2Draw_cFb
/* 802250DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802250E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802250E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802250E8  7C 08 03 A6 */	mtlr r0
/* 802250EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802250F0  4E 80 00 20 */	blr 
