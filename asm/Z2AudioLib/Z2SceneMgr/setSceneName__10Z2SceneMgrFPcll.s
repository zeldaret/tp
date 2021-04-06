lbl_802B6AF8:
/* 802B6AF8  94 21 FD 70 */	stwu r1, -0x290(r1)
/* 802B6AFC  7C 08 02 A6 */	mflr r0
/* 802B6B00  90 01 02 94 */	stw r0, 0x294(r1)
/* 802B6B04  DB E1 02 80 */	stfd f31, 0x280(r1)
/* 802B6B08  F3 E1 02 88 */	psq_st f31, 648(r1), 0, 0 /* qr0 */
/* 802B6B0C  39 61 02 80 */	addi r11, r1, 0x280
/* 802B6B10  48 0A B6 99 */	bl _savegpr_16
/* 802B6B14  7C 7B 1B 78 */	mr r27, r3
/* 802B6B18  7C 92 23 78 */	mr r18, r4
/* 802B6B1C  7C BA 2B 78 */	mr r26, r5
/* 802B6B20  7C D3 33 78 */	mr r19, r6
/* 802B6B24  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6B28  38 80 FF FF */	li r4, -1
/* 802B6B2C  48 00 30 35 */	bl __ct__10JAISoundIDFUl
/* 802B6B30  3A E0 00 00 */	li r23, 0
/* 802B6B34  3B A0 00 00 */	li r29, 0
/* 802B6B38  3B C0 00 00 */	li r30, 0
/* 802B6B3C  3B E0 00 00 */	li r31, 0
/* 802B6B40  3B 20 00 00 */	li r25, 0
/* 802B6B44  3B 80 00 00 */	li r28, 0
/* 802B6B48  3A A0 00 00 */	li r21, 0
/* 802B6B4C  3A 80 00 00 */	li r20, 0
/* 802B6B50  3B 00 00 00 */	li r24, 0
/* 802B6B54  3A C0 00 00 */	li r22, 0
/* 802B6B58  38 00 00 00 */	li r0, 0
/* 802B6B5C  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B6B60  C3 E2 C0 50 */	lfs f31, lit_5341(r2)
/* 802B6B64  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6B68  4B FF D5 C1 */	bl resetBattleBgmParams__8Z2SeqMgrFv
/* 802B6B6C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6B70  C0 22 C0 3C */	lfs f1, lit_3512(r2)
/* 802B6B74  38 80 00 00 */	li r4, 0
/* 802B6B78  48 00 2F 85 */	bl setWindStoneVol__8Z2SeqMgrFfUl
/* 802B6B7C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6B80  C0 22 C0 3C */	lfs f1, lit_3512(r2)
/* 802B6B84  48 00 2F 4D */	bl setTwilightGateVol__8Z2SeqMgrFf
/* 802B6B88  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B6B8C  48 00 2F 39 */	bl resetCrowdSize__7Z2SeMgrFv
/* 802B6B90  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B6B94  38 80 00 00 */	li r4, 0
/* 802B6B98  48 00 94 55 */	bl setGhostEnemyState__13Z2SoundObjMgrFUc
/* 802B6B9C  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802B6BA0  4B FF 4C 6D */	bl resetModY__7Z2SeMgrFv
/* 802B6BA4  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B6BA8  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802B6BAC  28 00 00 08 */	cmplwi r0, 8
/* 802B6BB0  40 82 00 14 */	bne lbl_802B6BC4
/* 802B6BB4  3C 80 80 3A */	lis r4, Z2SceneMgr__stringBase0@ha /* 0x8039BFA8@ha */
/* 802B6BB8  38 84 BF A8 */	addi r4, r4, Z2SceneMgr__stringBase0@l /* 0x8039BFA8@l */
/* 802B6BBC  38 84 02 6A */	addi r4, r4, 0x26a
/* 802B6BC0  4B FF F6 29 */	bl setDemoName__11Z2StatusMgrFPc
lbl_802B6BC4:
/* 802B6BC4  28 12 00 00 */	cmplwi r18, 0
/* 802B6BC8  41 82 00 44 */	beq lbl_802B6C0C
/* 802B6BCC  3A E0 00 00 */	li r23, 0
/* 802B6BD0  3A 20 00 00 */	li r17, 0
/* 802B6BD4  3C 60 80 3D */	lis r3, sSpotName@ha /* 0x803CA5C0@ha */
/* 802B6BD8  3A 03 A5 C0 */	addi r16, r3, sSpotName@l /* 0x803CA5C0@l */
lbl_802B6BDC:
/* 802B6BDC  7E 43 93 78 */	mr r3, r18
/* 802B6BE0  7C 90 88 2E */	lwzx r4, r16, r17
/* 802B6BE4  48 0B 1D B1 */	bl strcmp
/* 802B6BE8  2C 03 00 00 */	cmpwi r3, 0
/* 802B6BEC  41 82 00 14 */	beq lbl_802B6C00
/* 802B6BF0  3A F7 00 01 */	addi r23, r23, 1
/* 802B6BF4  2C 17 00 51 */	cmpwi r23, 0x51
/* 802B6BF8  3A 31 00 04 */	addi r17, r17, 4
/* 802B6BFC  41 80 FF E0 */	blt lbl_802B6BDC
lbl_802B6C00:
/* 802B6C00  2C 17 00 51 */	cmpwi r23, 0x51
/* 802B6C04  40 82 00 08 */	bne lbl_802B6C0C
/* 802B6C08  3A E0 00 23 */	li r23, 0x23
lbl_802B6C0C:
/* 802B6C0C  28 17 00 50 */	cmplwi r23, 0x50
/* 802B6C10  41 81 2A A8 */	bgt lbl_802B96B8
/* 802B6C14  3C 60 80 3D */	lis r3, lit_5347@ha /* 0x803CA878@ha */
/* 802B6C18  38 63 A8 78 */	addi r3, r3, lit_5347@l /* 0x803CA878@l */
/* 802B6C1C  56 E0 10 3A */	slwi r0, r23, 2
/* 802B6C20  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B6C24  7C 09 03 A6 */	mtctr r0
/* 802B6C28  4E 80 04 20 */	bctr 
/* 802B6C2C  3B 20 00 02 */	li r25, 2
/* 802B6C30  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 802B6C34  40 80 00 0C */	bge lbl_802B6C40
/* 802B6C38  3B A0 00 8A */	li r29, 0x8a
/* 802B6C3C  48 00 2A 7C */	b lbl_802B96B8
lbl_802B6C40:
/* 802B6C40  3B A0 00 8B */	li r29, 0x8b
/* 802B6C44  48 00 2A 74 */	b lbl_802B96B8
/* 802B6C48  2C 13 00 01 */	cmpwi r19, 1
/* 802B6C4C  40 82 00 44 */	bne lbl_802B6C90
/* 802B6C50  38 60 00 67 */	li r3, 0x67
/* 802B6C54  48 00 2E 41 */	bl dComIfGs_isSaveSwitch__Fi
/* 802B6C58  2C 03 00 00 */	cmpwi r3, 0
/* 802B6C5C  41 82 00 68 */	beq lbl_802B6CC4
/* 802B6C60  38 61 02 38 */	addi r3, r1, 0x238
/* 802B6C64  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000019@ha */
/* 802B6C68  38 84 00 19 */	addi r4, r4, 0x0019 /* 0x01000019@l */
/* 802B6C6C  48 00 2E F5 */	bl __ct__10JAISoundIDFUl
/* 802B6C70  7C 64 1B 78 */	mr r4, r3
/* 802B6C74  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6C78  48 00 2E 11 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6C7C  3B E0 00 06 */	li r31, 6
/* 802B6C80  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6C84  38 80 00 00 */	li r4, 0
/* 802B6C88  4B FF 93 05 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B6C8C  48 00 00 38 */	b lbl_802B6CC4
lbl_802B6C90:
/* 802B6C90  2C 13 00 08 */	cmpwi r19, 8
/* 802B6C94  40 82 00 08 */	bne lbl_802B6C9C
/* 802B6C98  3B 80 00 5C */	li r28, 0x5c
lbl_802B6C9C:
/* 802B6C9C  38 61 02 34 */	addi r3, r1, 0x234
/* 802B6CA0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000010@ha */
/* 802B6CA4  38 84 00 10 */	addi r4, r4, 0x0010 /* 0x01000010@l */
/* 802B6CA8  48 00 2E B9 */	bl __ct__10JAISoundIDFUl
/* 802B6CAC  7C 64 1B 78 */	mr r4, r3
/* 802B6CB0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6CB4  48 00 2D D5 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6CB8  3B E0 00 01 */	li r31, 1
/* 802B6CBC  3B 20 00 02 */	li r25, 2
/* 802B6CC0  3B 00 00 01 */	li r24, 1
lbl_802B6CC4:
/* 802B6CC4  3B A0 00 26 */	li r29, 0x26
/* 802B6CC8  3B C0 00 25 */	li r30, 0x25
/* 802B6CCC  38 00 00 01 */	li r0, 1
/* 802B6CD0  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B6CD4  48 00 29 E4 */	b lbl_802B96B8
/* 802B6CD8  38 00 00 01 */	li r0, 1
/* 802B6CDC  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B6CE0  3B A0 00 26 */	li r29, 0x26
/* 802B6CE4  2C 1A 00 00 */	cmpwi r26, 0
/* 802B6CE8  40 82 00 C4 */	bne lbl_802B6DAC
/* 802B6CEC  3B C0 00 27 */	li r30, 0x27
/* 802B6CF0  2C 13 00 08 */	cmpwi r19, 8
/* 802B6CF4  41 82 00 58 */	beq lbl_802B6D4C
/* 802B6CF8  40 80 00 10 */	bge lbl_802B6D08
/* 802B6CFC  2C 13 00 01 */	cmpwi r19, 1
/* 802B6D00  41 82 00 1C */	beq lbl_802B6D1C
/* 802B6D04  48 00 00 7C */	b lbl_802B6D80
lbl_802B6D08:
/* 802B6D08  2C 13 00 0C */	cmpwi r19, 0xc
/* 802B6D0C  40 80 00 74 */	bge lbl_802B6D80
/* 802B6D10  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B6D14  40 80 00 5C */	bge lbl_802B6D70
/* 802B6D18  48 00 00 68 */	b lbl_802B6D80
lbl_802B6D1C:
/* 802B6D1C  38 61 02 30 */	addi r3, r1, 0x230
/* 802B6D20  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000019@ha */
/* 802B6D24  38 84 00 19 */	addi r4, r4, 0x0019 /* 0x01000019@l */
/* 802B6D28  48 00 2E 39 */	bl __ct__10JAISoundIDFUl
/* 802B6D2C  7C 64 1B 78 */	mr r4, r3
/* 802B6D30  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6D34  48 00 2D 55 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6D38  3B E0 00 06 */	li r31, 6
/* 802B6D3C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6D40  38 80 00 00 */	li r4, 0
/* 802B6D44  4B FF 92 49 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B6D48  48 00 29 70 */	b lbl_802B96B8
lbl_802B6D4C:
/* 802B6D4C  38 61 02 2C */	addi r3, r1, 0x22c
/* 802B6D50  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000011@ha */
/* 802B6D54  38 84 00 11 */	addi r4, r4, 0x0011 /* 0x02000011@l */
/* 802B6D58  48 00 2E 09 */	bl __ct__10JAISoundIDFUl
/* 802B6D5C  7C 64 1B 78 */	mr r4, r3
/* 802B6D60  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6D64  48 00 2D 25 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6D68  3B 80 00 64 */	li r28, 0x64
/* 802B6D6C  48 00 29 4C */	b lbl_802B96B8
lbl_802B6D70:
/* 802B6D70  3B A0 00 00 */	li r29, 0
/* 802B6D74  3B C0 00 00 */	li r30, 0
/* 802B6D78  3B 80 00 7F */	li r28, 0x7f
/* 802B6D7C  48 00 29 3C */	b lbl_802B96B8
lbl_802B6D80:
/* 802B6D80  38 61 02 28 */	addi r3, r1, 0x228
/* 802B6D84  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000005@ha */
/* 802B6D88  38 84 00 05 */	addi r4, r4, 0x0005 /* 0x01000005@l */
/* 802B6D8C  48 00 2D D5 */	bl __ct__10JAISoundIDFUl
/* 802B6D90  7C 64 1B 78 */	mr r4, r3
/* 802B6D94  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6D98  48 00 2C F1 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6D9C  3B E0 00 03 */	li r31, 3
/* 802B6DA0  3B 20 00 04 */	li r25, 4
/* 802B6DA4  3B 00 00 01 */	li r24, 1
/* 802B6DA8  48 00 29 10 */	b lbl_802B96B8
lbl_802B6DAC:
/* 802B6DAC  2C 1A 00 01 */	cmpwi r26, 1
/* 802B6DB0  40 82 29 08 */	bne lbl_802B96B8
/* 802B6DB4  3B C0 00 28 */	li r30, 0x28
/* 802B6DB8  28 13 00 0C */	cmplwi r19, 0xc
/* 802B6DBC  41 81 01 20 */	bgt lbl_802B6EDC
/* 802B6DC0  3C 60 80 3D */	lis r3, lit_5348@ha /* 0x803CA844@ha */
/* 802B6DC4  38 63 A8 44 */	addi r3, r3, lit_5348@l /* 0x803CA844@l */
/* 802B6DC8  56 60 10 3A */	slwi r0, r19, 2
/* 802B6DCC  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B6DD0  7C 09 03 A6 */	mtctr r0
/* 802B6DD4  4E 80 04 20 */	bctr 
/* 802B6DD8  38 00 00 00 */	li r0, 0
/* 802B6DDC  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B6DE0  38 60 00 67 */	li r3, 0x67
/* 802B6DE4  48 00 2C B1 */	bl dComIfGs_isSaveSwitch__Fi
/* 802B6DE8  2C 03 00 00 */	cmpwi r3, 0
/* 802B6DEC  41 82 28 CC */	beq lbl_802B96B8
/* 802B6DF0  38 61 02 24 */	addi r3, r1, 0x224
/* 802B6DF4  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000019@ha */
/* 802B6DF8  38 84 00 19 */	addi r4, r4, 0x0019 /* 0x01000019@l */
/* 802B6DFC  48 00 2D 65 */	bl __ct__10JAISoundIDFUl
/* 802B6E00  7C 64 1B 78 */	mr r4, r3
/* 802B6E04  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6E08  48 00 2C 81 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6E0C  3B E0 00 06 */	li r31, 6
/* 802B6E10  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B6E14  38 80 00 00 */	li r4, 0
/* 802B6E18  4B FF 91 75 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B6E1C  48 00 28 9C */	b lbl_802B96B8
/* 802B6E20  3B A0 00 00 */	li r29, 0
/* 802B6E24  3B C0 00 00 */	li r30, 0
/* 802B6E28  3B 80 00 7F */	li r28, 0x7f
/* 802B6E2C  48 00 28 8C */	b lbl_802B96B8
/* 802B6E30  38 61 02 20 */	addi r3, r1, 0x220
/* 802B6E34  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000017@ha */
/* 802B6E38  38 84 00 17 */	addi r4, r4, 0x0017 /* 0x01000017@l */
/* 802B6E3C  48 00 2D 25 */	bl __ct__10JAISoundIDFUl
/* 802B6E40  7C 64 1B 78 */	mr r4, r3
/* 802B6E44  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6E48  48 00 2C 41 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6E4C  3B E0 00 05 */	li r31, 5
/* 802B6E50  48 00 28 68 */	b lbl_802B96B8
/* 802B6E54  3B 80 00 5C */	li r28, 0x5c
/* 802B6E58  48 00 28 60 */	b lbl_802B96B8
/* 802B6E5C  3A C0 00 01 */	li r22, 1
/* 802B6E60  38 60 00 0A */	li r3, 0xa
/* 802B6E64  48 00 2C 31 */	bl dComIfGs_isSaveSwitch__Fi
/* 802B6E68  2C 03 00 00 */	cmpwi r3, 0
/* 802B6E6C  41 82 28 4C */	beq lbl_802B96B8
/* 802B6E70  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B6E74  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B6E78  A0 63 00 24 */	lhz r3, 0x24(r3)
/* 802B6E7C  4B E8 A5 21 */	bl dComIfGs_isEventBit__FUs
/* 802B6E80  2C 03 00 00 */	cmpwi r3, 0
/* 802B6E84  41 82 00 58 */	beq lbl_802B6EDC
/* 802B6E88  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B6E8C  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B6E90  A0 63 04 E2 */	lhz r3, 0x4e2(r3)
/* 802B6E94  4B E8 A5 09 */	bl dComIfGs_isEventBit__FUs
/* 802B6E98  2C 03 00 00 */	cmpwi r3, 0
/* 802B6E9C  40 82 00 40 */	bne lbl_802B6EDC
/* 802B6EA0  3B E0 00 55 */	li r31, 0x55
/* 802B6EA4  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B6EA8  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B6EAC  A0 63 01 84 */	lhz r3, 0x184(r3)
/* 802B6EB0  4B E8 A4 ED */	bl dComIfGs_isEventBit__FUs
/* 802B6EB4  2C 03 00 00 */	cmpwi r3, 0
/* 802B6EB8  41 82 28 00 */	beq lbl_802B96B8
/* 802B6EBC  38 61 02 1C */	addi r3, r1, 0x21c
/* 802B6EC0  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100009F@ha */
/* 802B6EC4  38 84 00 9F */	addi r4, r4, 0x009F /* 0x0100009F@l */
/* 802B6EC8  48 00 2C 99 */	bl __ct__10JAISoundIDFUl
/* 802B6ECC  7C 64 1B 78 */	mr r4, r3
/* 802B6ED0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6ED4  48 00 2B B5 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6ED8  48 00 27 E0 */	b lbl_802B96B8
lbl_802B6EDC:
/* 802B6EDC  38 61 02 18 */	addi r3, r1, 0x218
/* 802B6EE0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000005@ha */
/* 802B6EE4  38 84 00 05 */	addi r4, r4, 0x0005 /* 0x01000005@l */
/* 802B6EE8  48 00 2C 79 */	bl __ct__10JAISoundIDFUl
/* 802B6EEC  7C 64 1B 78 */	mr r4, r3
/* 802B6EF0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6EF4  48 00 2B 95 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6EF8  3B E0 00 03 */	li r31, 3
/* 802B6EFC  3B 00 00 01 */	li r24, 1
/* 802B6F00  48 00 27 B8 */	b lbl_802B96B8
/* 802B6F04  3B A0 00 26 */	li r29, 0x26
/* 802B6F08  28 1A 00 07 */	cmplwi r26, 7
/* 802B6F0C  41 81 02 E0 */	bgt lbl_802B71EC
/* 802B6F10  3C 60 80 3D */	lis r3, lit_5349@ha /* 0x803CA824@ha */
/* 802B6F14  38 63 A8 24 */	addi r3, r3, lit_5349@l /* 0x803CA824@l */
/* 802B6F18  57 40 10 3A */	slwi r0, r26, 2
/* 802B6F1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B6F20  7C 09 03 A6 */	mtctr r0
/* 802B6F24  4E 80 04 20 */	bctr 
/* 802B6F28  38 61 02 14 */	addi r3, r1, 0x214
/* 802B6F2C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B6F30  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B6F34  48 00 2C 2D */	bl __ct__10JAISoundIDFUl
/* 802B6F38  7C 64 1B 78 */	mr r4, r3
/* 802B6F3C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6F40  48 00 2B 49 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6F44  3B E0 00 08 */	li r31, 8
/* 802B6F48  3B 20 00 09 */	li r25, 9
/* 802B6F4C  3B C0 00 2A */	li r30, 0x2a
/* 802B6F50  48 00 02 9C */	b lbl_802B71EC
/* 802B6F54  2C 13 00 00 */	cmpwi r19, 0
/* 802B6F58  40 82 00 60 */	bne lbl_802B6FB8
/* 802B6F5C  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B6F60  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B6F64  A0 63 01 10 */	lhz r3, 0x110(r3)
/* 802B6F68  4B E8 A4 35 */	bl dComIfGs_isEventBit__FUs
/* 802B6F6C  2C 03 00 00 */	cmpwi r3, 0
/* 802B6F70  41 82 00 24 */	beq lbl_802B6F94
/* 802B6F74  38 61 02 10 */	addi r3, r1, 0x210
/* 802B6F78  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100001E@ha */
/* 802B6F7C  38 84 00 1E */	addi r4, r4, 0x001E /* 0x0100001E@l */
/* 802B6F80  48 00 2B E1 */	bl __ct__10JAISoundIDFUl
/* 802B6F84  7C 64 1B 78 */	mr r4, r3
/* 802B6F88  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6F8C  48 00 2A FD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6F90  48 00 00 20 */	b lbl_802B6FB0
lbl_802B6F94:
/* 802B6F94  38 61 02 0C */	addi r3, r1, 0x20c
/* 802B6F98  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100001F@ha */
/* 802B6F9C  38 84 00 1F */	addi r4, r4, 0x001F /* 0x0100001F@l */
/* 802B6FA0  48 00 2B C1 */	bl __ct__10JAISoundIDFUl
/* 802B6FA4  7C 64 1B 78 */	mr r4, r3
/* 802B6FA8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6FAC  48 00 2A DD */	bl __as__10JAISoundIDFRC10JAISoundID
lbl_802B6FB0:
/* 802B6FB0  3B E0 00 07 */	li r31, 7
/* 802B6FB4  48 00 00 68 */	b lbl_802B701C
lbl_802B6FB8:
/* 802B6FB8  2C 13 00 02 */	cmpwi r19, 2
/* 802B6FBC  40 82 00 60 */	bne lbl_802B701C
/* 802B6FC0  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B6FC4  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B6FC8  A0 63 00 6A */	lhz r3, 0x6a(r3)
/* 802B6FCC  4B E8 A3 D1 */	bl dComIfGs_isEventBit__FUs
/* 802B6FD0  2C 03 00 00 */	cmpwi r3, 0
/* 802B6FD4  41 82 00 28 */	beq lbl_802B6FFC
/* 802B6FD8  38 61 02 08 */	addi r3, r1, 0x208
/* 802B6FDC  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100001E@ha */
/* 802B6FE0  38 84 00 1E */	addi r4, r4, 0x001E /* 0x0100001E@l */
/* 802B6FE4  48 00 2B 7D */	bl __ct__10JAISoundIDFUl
/* 802B6FE8  7C 64 1B 78 */	mr r4, r3
/* 802B6FEC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B6FF0  48 00 2A 99 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B6FF4  3B E0 00 07 */	li r31, 7
/* 802B6FF8  48 00 00 24 */	b lbl_802B701C
lbl_802B6FFC:
/* 802B6FFC  38 61 02 04 */	addi r3, r1, 0x204
/* 802B7000  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100005E@ha */
/* 802B7004  38 84 00 5E */	addi r4, r4, 0x005E /* 0x0100005E@l */
/* 802B7008  48 00 2B 59 */	bl __ct__10JAISoundIDFUl
/* 802B700C  7C 64 1B 78 */	mr r4, r3
/* 802B7010  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7014  48 00 2A 75 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7018  3B E0 00 35 */	li r31, 0x35
lbl_802B701C:
/* 802B701C  3B C0 00 29 */	li r30, 0x29
/* 802B7020  48 00 01 CC */	b lbl_802B71EC
/* 802B7024  2C 13 00 00 */	cmpwi r19, 0
/* 802B7028  41 82 00 0C */	beq lbl_802B7034
/* 802B702C  2C 13 00 03 */	cmpwi r19, 3
/* 802B7030  40 82 00 28 */	bne lbl_802B7058
lbl_802B7034:
/* 802B7034  38 61 02 00 */	addi r3, r1, 0x200
/* 802B7038  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B703C  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B7040  48 00 2B 21 */	bl __ct__10JAISoundIDFUl
/* 802B7044  7C 64 1B 78 */	mr r4, r3
/* 802B7048  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B704C  48 00 2A 3D */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7050  3B E0 00 08 */	li r31, 8
/* 802B7054  48 00 00 A0 */	b lbl_802B70F4
lbl_802B7058:
/* 802B7058  2C 13 00 01 */	cmpwi r19, 1
/* 802B705C  40 82 00 34 */	bne lbl_802B7090
/* 802B7060  38 61 01 FC */	addi r3, r1, 0x1fc
/* 802B7064  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000019@ha */
/* 802B7068  38 84 00 19 */	addi r4, r4, 0x0019 /* 0x01000019@l */
/* 802B706C  48 00 2A F5 */	bl __ct__10JAISoundIDFUl
/* 802B7070  7C 64 1B 78 */	mr r4, r3
/* 802B7074  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7078  48 00 2A 11 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B707C  3B E0 00 06 */	li r31, 6
/* 802B7080  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B7084  38 80 00 01 */	li r4, 1
/* 802B7088  4B FF 8F 05 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B708C  48 00 00 68 */	b lbl_802B70F4
lbl_802B7090:
/* 802B7090  2C 13 00 02 */	cmpwi r19, 2
/* 802B7094  40 82 00 60 */	bne lbl_802B70F4
/* 802B7098  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B709C  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B70A0  A0 63 00 6A */	lhz r3, 0x6a(r3)
/* 802B70A4  4B E8 A2 F9 */	bl dComIfGs_isEventBit__FUs
/* 802B70A8  2C 03 00 00 */	cmpwi r3, 0
/* 802B70AC  41 82 00 28 */	beq lbl_802B70D4
/* 802B70B0  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 802B70B4  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B70B8  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B70BC  48 00 2A A5 */	bl __ct__10JAISoundIDFUl
/* 802B70C0  7C 64 1B 78 */	mr r4, r3
/* 802B70C4  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B70C8  48 00 29 C1 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B70CC  3B E0 00 08 */	li r31, 8
/* 802B70D0  48 00 00 24 */	b lbl_802B70F4
lbl_802B70D4:
/* 802B70D4  38 61 01 F4 */	addi r3, r1, 0x1f4
/* 802B70D8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100005E@ha */
/* 802B70DC  38 84 00 5E */	addi r4, r4, 0x005E /* 0x0100005E@l */
/* 802B70E0  48 00 2A 81 */	bl __ct__10JAISoundIDFUl
/* 802B70E4  7C 64 1B 78 */	mr r4, r3
/* 802B70E8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B70EC  48 00 29 9D */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B70F0  3B E0 00 35 */	li r31, 0x35
lbl_802B70F4:
/* 802B70F4  3B C0 00 2C */	li r30, 0x2c
/* 802B70F8  48 00 00 F4 */	b lbl_802B71EC
/* 802B70FC  38 61 01 F0 */	addi r3, r1, 0x1f0
/* 802B7100  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B7104  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B7108  48 00 2A 59 */	bl __ct__10JAISoundIDFUl
/* 802B710C  7C 64 1B 78 */	mr r4, r3
/* 802B7110  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7114  48 00 29 75 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7118  3B E0 00 08 */	li r31, 8
/* 802B711C  48 00 00 D0 */	b lbl_802B71EC
/* 802B7120  2C 13 00 00 */	cmpwi r19, 0
/* 802B7124  40 82 00 68 */	bne lbl_802B718C
/* 802B7128  38 60 00 67 */	li r3, 0x67
/* 802B712C  48 00 29 69 */	bl dComIfGs_isSaveSwitch__Fi
/* 802B7130  2C 03 00 00 */	cmpwi r3, 0
/* 802B7134  41 82 00 34 */	beq lbl_802B7168
/* 802B7138  38 61 01 EC */	addi r3, r1, 0x1ec
/* 802B713C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000019@ha */
/* 802B7140  38 84 00 19 */	addi r4, r4, 0x0019 /* 0x01000019@l */
/* 802B7144  48 00 2A 1D */	bl __ct__10JAISoundIDFUl
/* 802B7148  7C 64 1B 78 */	mr r4, r3
/* 802B714C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7150  48 00 29 39 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7154  3B E0 00 06 */	li r31, 6
/* 802B7158  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B715C  38 80 00 01 */	li r4, 1
/* 802B7160  4B FF 8E 2D */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B7164  48 00 00 84 */	b lbl_802B71E8
lbl_802B7168:
/* 802B7168  38 61 01 E8 */	addi r3, r1, 0x1e8
/* 802B716C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B7170  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B7174  48 00 29 ED */	bl __ct__10JAISoundIDFUl
/* 802B7178  7C 64 1B 78 */	mr r4, r3
/* 802B717C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7180  48 00 29 09 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7184  3B E0 00 08 */	li r31, 8
/* 802B7188  48 00 00 60 */	b lbl_802B71E8
lbl_802B718C:
/* 802B718C  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B7190  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B7194  A0 63 00 6A */	lhz r3, 0x6a(r3)
/* 802B7198  4B E8 A2 05 */	bl dComIfGs_isEventBit__FUs
/* 802B719C  2C 03 00 00 */	cmpwi r3, 0
/* 802B71A0  41 82 00 28 */	beq lbl_802B71C8
/* 802B71A4  38 61 01 E4 */	addi r3, r1, 0x1e4
/* 802B71A8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B71AC  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B71B0  48 00 29 B1 */	bl __ct__10JAISoundIDFUl
/* 802B71B4  7C 64 1B 78 */	mr r4, r3
/* 802B71B8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B71BC  48 00 28 CD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B71C0  3B E0 00 08 */	li r31, 8
/* 802B71C4  48 00 00 24 */	b lbl_802B71E8
lbl_802B71C8:
/* 802B71C8  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 802B71CC  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100005E@ha */
/* 802B71D0  38 84 00 5E */	addi r4, r4, 0x005E /* 0x0100005E@l */
/* 802B71D4  48 00 29 8D */	bl __ct__10JAISoundIDFUl
/* 802B71D8  7C 64 1B 78 */	mr r4, r3
/* 802B71DC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B71E0  48 00 28 A9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B71E4  3B E0 00 35 */	li r31, 0x35
lbl_802B71E8:
/* 802B71E8  3B C0 00 2B */	li r30, 0x2b
lbl_802B71EC:
/* 802B71EC  38 00 00 01 */	li r0, 1
/* 802B71F0  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B71F4  48 00 24 C4 */	b lbl_802B96B8
/* 802B71F8  3B A0 00 26 */	li r29, 0x26
/* 802B71FC  3B C0 00 2D */	li r30, 0x2d
/* 802B7200  38 13 FF FD */	addi r0, r19, -3
/* 802B7204  28 00 00 0B */	cmplwi r0, 0xb
/* 802B7208  41 81 00 F4 */	bgt lbl_802B72FC
/* 802B720C  3C 60 80 3D */	lis r3, lit_5350@ha /* 0x803CA7F4@ha */
/* 802B7210  38 63 A7 F4 */	addi r3, r3, lit_5350@l /* 0x803CA7F4@l */
/* 802B7214  54 00 10 3A */	slwi r0, r0, 2
/* 802B7218  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B721C  7C 09 03 A6 */	mtctr r0
/* 802B7220  4E 80 04 20 */	bctr 
/* 802B7224  38 00 00 00 */	li r0, 0
/* 802B7228  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B722C  3A C0 00 01 */	li r22, 1
/* 802B7230  38 60 00 67 */	li r3, 0x67
/* 802B7234  48 00 28 61 */	bl dComIfGs_isSaveSwitch__Fi
/* 802B7238  2C 03 00 00 */	cmpwi r3, 0
/* 802B723C  41 82 24 7C */	beq lbl_802B96B8
/* 802B7240  38 61 01 DC */	addi r3, r1, 0x1dc
/* 802B7244  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000019@ha */
/* 802B7248  38 84 00 19 */	addi r4, r4, 0x0019 /* 0x01000019@l */
/* 802B724C  48 00 29 15 */	bl __ct__10JAISoundIDFUl
/* 802B7250  7C 64 1B 78 */	mr r4, r3
/* 802B7254  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7258  48 00 28 31 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B725C  3B E0 00 06 */	li r31, 6
/* 802B7260  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B7264  38 80 00 00 */	li r4, 0
/* 802B7268  4B FF 8D 25 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B726C  48 00 24 4C */	b lbl_802B96B8
/* 802B7270  3B A0 00 00 */	li r29, 0
/* 802B7274  3B C0 00 00 */	li r30, 0
/* 802B7278  3B 80 00 7F */	li r28, 0x7f
/* 802B727C  48 00 24 3C */	b lbl_802B96B8
/* 802B7280  3B 80 00 65 */	li r28, 0x65
/* 802B7284  48 00 24 34 */	b lbl_802B96B8
/* 802B7288  3B 80 00 69 */	li r28, 0x69
/* 802B728C  48 00 24 2C */	b lbl_802B96B8
/* 802B7290  3B 80 00 6A */	li r28, 0x6a
/* 802B7294  48 00 24 24 */	b lbl_802B96B8
/* 802B7298  3B 80 00 85 */	li r28, 0x85
/* 802B729C  48 00 24 1C */	b lbl_802B96B8
/* 802B72A0  3B 80 00 5C */	li r28, 0x5c
/* 802B72A4  48 00 24 14 */	b lbl_802B96B8
/* 802B72A8  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B72AC  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B72B0  A0 63 00 24 */	lhz r3, 0x24(r3)
/* 802B72B4  4B E8 A0 E9 */	bl dComIfGs_isEventBit__FUs
/* 802B72B8  2C 03 00 00 */	cmpwi r3, 0
/* 802B72BC  41 82 00 40 */	beq lbl_802B72FC
/* 802B72C0  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B72C4  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B72C8  A0 63 04 E2 */	lhz r3, 0x4e2(r3)
/* 802B72CC  4B E8 A0 D1 */	bl dComIfGs_isEventBit__FUs
/* 802B72D0  2C 03 00 00 */	cmpwi r3, 0
/* 802B72D4  40 82 00 28 */	bne lbl_802B72FC
/* 802B72D8  38 61 01 D8 */	addi r3, r1, 0x1d8
/* 802B72DC  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100009F@ha */
/* 802B72E0  38 84 00 9F */	addi r4, r4, 0x009F /* 0x0100009F@l */
/* 802B72E4  48 00 28 7D */	bl __ct__10JAISoundIDFUl
/* 802B72E8  7C 64 1B 78 */	mr r4, r3
/* 802B72EC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B72F0  48 00 27 99 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B72F4  3B E0 00 55 */	li r31, 0x55
/* 802B72F8  48 00 23 C0 */	b lbl_802B96B8
lbl_802B72FC:
/* 802B72FC  3A C0 00 01 */	li r22, 1
/* 802B7300  48 00 23 B8 */	b lbl_802B96B8
/* 802B7304  3B A0 00 2E */	li r29, 0x2e
/* 802B7308  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B730C  28 00 00 00 */	cmplwi r0, 0
/* 802B7310  41 82 01 14 */	beq lbl_802B7424
/* 802B7314  3B C0 00 30 */	li r30, 0x30
/* 802B7318  2C 1A 00 00 */	cmpwi r26, 0
/* 802B731C  40 82 00 68 */	bne lbl_802B7384
/* 802B7320  2C 13 00 0B */	cmpwi r19, 0xb
/* 802B7324  40 82 00 0C */	bne lbl_802B7330
/* 802B7328  3B 80 00 66 */	li r28, 0x66
/* 802B732C  48 00 23 8C */	b lbl_802B96B8
lbl_802B7330:
/* 802B7330  2C 13 00 07 */	cmpwi r19, 7
/* 802B7334  41 82 00 0C */	beq lbl_802B7340
/* 802B7338  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B733C  40 82 00 0C */	bne lbl_802B7348
lbl_802B7340:
/* 802B7340  3B 80 00 67 */	li r28, 0x67
/* 802B7344  48 00 23 74 */	b lbl_802B96B8
lbl_802B7348:
/* 802B7348  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B734C  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B7350  A0 63 00 54 */	lhz r3, 0x54(r3)
/* 802B7354  4B E8 A0 49 */	bl dComIfGs_isEventBit__FUs
/* 802B7358  2C 03 00 00 */	cmpwi r3, 0
/* 802B735C  41 82 23 5C */	beq lbl_802B96B8
/* 802B7360  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 802B7364  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7368  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B736C  48 00 27 F5 */	bl __ct__10JAISoundIDFUl
/* 802B7370  7C 64 1B 78 */	mr r4, r3
/* 802B7374  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7378  48 00 27 11 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B737C  3B E0 00 0E */	li r31, 0xe
/* 802B7380  48 00 23 38 */	b lbl_802B96B8
lbl_802B7384:
/* 802B7384  2C 1A 00 03 */	cmpwi r26, 3
/* 802B7388  40 82 00 1C */	bne lbl_802B73A4
/* 802B738C  2C 13 00 08 */	cmpwi r19, 8
/* 802B7390  41 82 00 0C */	beq lbl_802B739C
/* 802B7394  2C 13 00 0C */	cmpwi r19, 0xc
/* 802B7398  40 82 00 0C */	bne lbl_802B73A4
lbl_802B739C:
/* 802B739C  3B 80 00 68 */	li r28, 0x68
/* 802B73A0  48 00 23 18 */	b lbl_802B96B8
lbl_802B73A4:
/* 802B73A4  2C 1A 00 03 */	cmpwi r26, 3
/* 802B73A8  40 82 00 0C */	bne lbl_802B73B4
/* 802B73AC  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B73B0  41 82 00 14 */	beq lbl_802B73C4
lbl_802B73B4:
/* 802B73B4  2C 1A 00 02 */	cmpwi r26, 2
/* 802B73B8  40 82 00 34 */	bne lbl_802B73EC
/* 802B73BC  2C 13 00 08 */	cmpwi r19, 8
/* 802B73C0  40 82 00 2C */	bne lbl_802B73EC
lbl_802B73C4:
/* 802B73C4  38 61 01 D0 */	addi r3, r1, 0x1d0
/* 802B73C8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100004E@ha */
/* 802B73CC  38 84 00 4E */	addi r4, r4, 0x004E /* 0x0100004E@l */
/* 802B73D0  48 00 27 91 */	bl __ct__10JAISoundIDFUl
/* 802B73D4  7C 64 1B 78 */	mr r4, r3
/* 802B73D8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B73DC  48 00 26 AD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B73E0  3B E0 00 21 */	li r31, 0x21
/* 802B73E4  3B 80 00 69 */	li r28, 0x69
/* 802B73E8  48 00 22 D0 */	b lbl_802B96B8
lbl_802B73EC:
/* 802B73EC  2C 1A 00 03 */	cmpwi r26, 3
/* 802B73F0  40 82 00 10 */	bne lbl_802B7400
/* 802B73F4  2C 13 00 0E */	cmpwi r19, 0xe
/* 802B73F8  40 82 00 08 */	bne lbl_802B7400
/* 802B73FC  3A C0 00 01 */	li r22, 1
lbl_802B7400:
/* 802B7400  38 61 01 CC */	addi r3, r1, 0x1cc
/* 802B7404  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7408  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B740C  48 00 27 55 */	bl __ct__10JAISoundIDFUl
/* 802B7410  7C 64 1B 78 */	mr r4, r3
/* 802B7414  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7418  48 00 26 71 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B741C  3B E0 00 0E */	li r31, 0xe
/* 802B7420  48 00 22 98 */	b lbl_802B96B8
lbl_802B7424:
/* 802B7424  2C 1A 00 03 */	cmpwi r26, 3
/* 802B7428  40 82 00 10 */	bne lbl_802B7438
/* 802B742C  2C 13 00 09 */	cmpwi r19, 9
/* 802B7430  40 82 00 08 */	bne lbl_802B7438
/* 802B7434  3B 80 00 75 */	li r28, 0x75
lbl_802B7438:
/* 802B7438  3B C0 00 2F */	li r30, 0x2f
/* 802B743C  48 00 22 7C */	b lbl_802B96B8
/* 802B7440  2C 13 00 08 */	cmpwi r19, 8
/* 802B7444  40 82 00 0C */	bne lbl_802B7450
/* 802B7448  3B 80 00 68 */	li r28, 0x68
/* 802B744C  48 00 22 6C */	b lbl_802B96B8
lbl_802B7450:
/* 802B7450  2C 13 00 09 */	cmpwi r19, 9
/* 802B7454  40 82 22 64 */	bne lbl_802B96B8
/* 802B7458  3B 80 00 7F */	li r28, 0x7f
/* 802B745C  48 00 22 5C */	b lbl_802B96B8
/* 802B7460  3B A0 00 31 */	li r29, 0x31
/* 802B7464  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B7468  28 00 00 00 */	cmplwi r0, 0
/* 802B746C  41 82 00 2C */	beq lbl_802B7498
/* 802B7470  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 802B7474  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7478  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B747C  48 00 26 E5 */	bl __ct__10JAISoundIDFUl
/* 802B7480  7C 64 1B 78 */	mr r4, r3
/* 802B7484  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7488  48 00 26 01 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B748C  3B E0 00 0E */	li r31, 0xe
/* 802B7490  3B C0 00 33 */	li r30, 0x33
/* 802B7494  48 00 22 24 */	b lbl_802B96B8
lbl_802B7498:
/* 802B7498  2C 13 00 01 */	cmpwi r19, 1
/* 802B749C  40 82 00 2C */	bne lbl_802B74C8
/* 802B74A0  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 802B74A4  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100009F@ha */
/* 802B74A8  38 84 00 9F */	addi r4, r4, 0x009F /* 0x0100009F@l */
/* 802B74AC  48 00 26 B5 */	bl __ct__10JAISoundIDFUl
/* 802B74B0  7C 64 1B 78 */	mr r4, r3
/* 802B74B4  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B74B8  48 00 25 D1 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B74BC  3B E0 00 55 */	li r31, 0x55
/* 802B74C0  3B C0 00 32 */	li r30, 0x32
/* 802B74C4  48 00 21 F4 */	b lbl_802B96B8
lbl_802B74C8:
/* 802B74C8  38 61 01 C0 */	addi r3, r1, 0x1c0
/* 802B74CC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000023@ha */
/* 802B74D0  38 84 00 23 */	addi r4, r4, 0x0023 /* 0x01000023@l */
/* 802B74D4  48 00 26 8D */	bl __ct__10JAISoundIDFUl
/* 802B74D8  7C 64 1B 78 */	mr r4, r3
/* 802B74DC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B74E0  48 00 25 A9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B74E4  3B E0 00 0F */	li r31, 0xf
/* 802B74E8  3B 00 00 01 */	li r24, 1
/* 802B74EC  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B74F0  38 80 00 01 */	li r4, 1
/* 802B74F4  4B FF 8A 99 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B74F8  3B C0 00 32 */	li r30, 0x32
/* 802B74FC  48 00 21 BC */	b lbl_802B96B8
/* 802B7500  3B A0 00 31 */	li r29, 0x31
/* 802B7504  2C 13 00 0B */	cmpwi r19, 0xb
/* 802B7508  40 82 00 14 */	bne lbl_802B751C
/* 802B750C  3B 80 00 6C */	li r28, 0x6c
/* 802B7510  38 00 00 00 */	li r0, 0
/* 802B7514  98 1B 00 1E */	stb r0, 0x1e(r27)
/* 802B7518  48 00 21 A0 */	b lbl_802B96B8
lbl_802B751C:
/* 802B751C  2C 13 00 09 */	cmpwi r19, 9
/* 802B7520  40 82 00 0C */	bne lbl_802B752C
/* 802B7524  3B 80 00 6A */	li r28, 0x6a
/* 802B7528  48 00 21 90 */	b lbl_802B96B8
lbl_802B752C:
/* 802B752C  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B7530  28 00 00 00 */	cmplwi r0, 0
/* 802B7534  41 82 00 7C */	beq lbl_802B75B0
/* 802B7538  2C 13 00 07 */	cmpwi r19, 7
/* 802B753C  40 82 00 0C */	bne lbl_802B7548
/* 802B7540  3B 80 00 78 */	li r28, 0x78
/* 802B7544  48 00 00 64 */	b lbl_802B75A8
lbl_802B7548:
/* 802B7548  2C 13 00 08 */	cmpwi r19, 8
/* 802B754C  40 82 00 0C */	bne lbl_802B7558
/* 802B7550  3B 80 00 66 */	li r28, 0x66
/* 802B7554  48 00 00 54 */	b lbl_802B75A8
lbl_802B7558:
/* 802B7558  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B755C  40 82 00 2C */	bne lbl_802B7588
/* 802B7560  38 61 01 BC */	addi r3, r1, 0x1bc
/* 802B7564  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000038@ha */
/* 802B7568  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x01000038@l */
/* 802B756C  48 00 25 F5 */	bl __ct__10JAISoundIDFUl
/* 802B7570  7C 64 1B 78 */	mr r4, r3
/* 802B7574  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7578  48 00 25 11 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B757C  3B E0 00 21 */	li r31, 0x21
/* 802B7580  3B 80 00 6B */	li r28, 0x6b
/* 802B7584  48 00 00 24 */	b lbl_802B75A8
lbl_802B7588:
/* 802B7588  38 61 01 B8 */	addi r3, r1, 0x1b8
/* 802B758C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7590  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B7594  48 00 25 CD */	bl __ct__10JAISoundIDFUl
/* 802B7598  7C 64 1B 78 */	mr r4, r3
/* 802B759C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B75A0  48 00 24 E9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B75A4  3B E0 00 0E */	li r31, 0xe
lbl_802B75A8:
/* 802B75A8  3B C0 00 33 */	li r30, 0x33
/* 802B75AC  48 00 21 0C */	b lbl_802B96B8
lbl_802B75B0:
/* 802B75B0  3B C0 00 32 */	li r30, 0x32
/* 802B75B4  28 13 00 0D */	cmplwi r19, 0xd
/* 802B75B8  41 81 00 88 */	bgt lbl_802B7640
/* 802B75BC  3C 60 80 3D */	lis r3, lit_5351@ha /* 0x803CA7BC@ha */
/* 802B75C0  38 63 A7 BC */	addi r3, r3, lit_5351@l /* 0x803CA7BC@l */
/* 802B75C4  56 60 10 3A */	slwi r0, r19, 2
/* 802B75C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B75CC  7C 09 03 A6 */	mtctr r0
/* 802B75D0  4E 80 04 20 */	bctr 
/* 802B75D4  3B 80 00 7F */	li r28, 0x7f
/* 802B75D8  3B A0 00 00 */	li r29, 0
/* 802B75DC  3B C0 00 00 */	li r30, 0
/* 802B75E0  48 00 20 D8 */	b lbl_802B96B8
/* 802B75E4  3B 80 00 5C */	li r28, 0x5c
/* 802B75E8  48 00 20 D0 */	b lbl_802B96B8
/* 802B75EC  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B75F0  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B75F4  A0 63 00 24 */	lhz r3, 0x24(r3)
/* 802B75F8  4B E8 9D A5 */	bl dComIfGs_isEventBit__FUs
/* 802B75FC  2C 03 00 00 */	cmpwi r3, 0
/* 802B7600  41 82 20 B8 */	beq lbl_802B96B8
/* 802B7604  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B7608  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B760C  A0 63 04 E2 */	lhz r3, 0x4e2(r3)
/* 802B7610  4B E8 9D 8D */	bl dComIfGs_isEventBit__FUs
/* 802B7614  2C 03 00 00 */	cmpwi r3, 0
/* 802B7618  40 82 20 A0 */	bne lbl_802B96B8
/* 802B761C  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 802B7620  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100009F@ha */
/* 802B7624  38 84 00 9F */	addi r4, r4, 0x009F /* 0x0100009F@l */
/* 802B7628  48 00 25 39 */	bl __ct__10JAISoundIDFUl
/* 802B762C  7C 64 1B 78 */	mr r4, r3
/* 802B7630  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7634  48 00 24 55 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7638  3B E0 00 55 */	li r31, 0x55
/* 802B763C  48 00 20 7C */	b lbl_802B96B8
lbl_802B7640:
/* 802B7640  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 802B7644  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000023@ha */
/* 802B7648  38 84 00 23 */	addi r4, r4, 0x0023 /* 0x01000023@l */
/* 802B764C  48 00 25 15 */	bl __ct__10JAISoundIDFUl
/* 802B7650  7C 64 1B 78 */	mr r4, r3
/* 802B7654  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7658  48 00 24 31 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B765C  3B E0 00 0F */	li r31, 0xf
/* 802B7660  3B 00 00 01 */	li r24, 1
/* 802B7664  2C 1A 00 0E */	cmpwi r26, 0xe
/* 802B7668  40 82 00 14 */	bne lbl_802B767C
/* 802B766C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B7670  38 80 00 01 */	li r4, 1
/* 802B7674  4B FF 89 19 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B7678  48 00 20 40 */	b lbl_802B96B8
lbl_802B767C:
/* 802B767C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B7680  38 80 00 00 */	li r4, 0
/* 802B7684  4B FF 89 09 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B7688  48 00 20 30 */	b lbl_802B96B8
/* 802B768C  3B A0 00 34 */	li r29, 0x34
/* 802B7690  2C 13 00 08 */	cmpwi r19, 8
/* 802B7694  40 82 00 14 */	bne lbl_802B76A8
/* 802B7698  3B 80 00 6E */	li r28, 0x6e
/* 802B769C  38 00 00 00 */	li r0, 0
/* 802B76A0  98 1B 00 1E */	stb r0, 0x1e(r27)
/* 802B76A4  48 00 20 14 */	b lbl_802B96B8
lbl_802B76A8:
/* 802B76A8  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B76AC  28 00 00 00 */	cmplwi r0, 0
/* 802B76B0  41 82 00 2C */	beq lbl_802B76DC
/* 802B76B4  38 61 01 AC */	addi r3, r1, 0x1ac
/* 802B76B8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B76BC  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B76C0  48 00 24 A1 */	bl __ct__10JAISoundIDFUl
/* 802B76C4  7C 64 1B 78 */	mr r4, r3
/* 802B76C8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B76CC  48 00 23 BD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B76D0  3B E0 00 0E */	li r31, 0xe
/* 802B76D4  3B C0 00 36 */	li r30, 0x36
/* 802B76D8  48 00 1F E0 */	b lbl_802B96B8
lbl_802B76DC:
/* 802B76DC  3B C0 00 35 */	li r30, 0x35
/* 802B76E0  28 13 00 0D */	cmplwi r19, 0xd
/* 802B76E4  41 81 00 DC */	bgt lbl_802B77C0
/* 802B76E8  3C 60 80 3D */	lis r3, lit_5352@ha /* 0x803CA784@ha */
/* 802B76EC  38 63 A7 84 */	addi r3, r3, lit_5352@l /* 0x803CA784@l */
/* 802B76F0  56 60 10 3A */	slwi r0, r19, 2
/* 802B76F4  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B76F8  7C 09 03 A6 */	mtctr r0
/* 802B76FC  4E 80 04 20 */	bctr 
/* 802B7700  3B 80 00 7F */	li r28, 0x7f
/* 802B7704  3B A0 00 00 */	li r29, 0
/* 802B7708  3B C0 00 00 */	li r30, 0
/* 802B770C  48 00 1F AC */	b lbl_802B96B8
/* 802B7710  3B 80 00 6E */	li r28, 0x6e
/* 802B7714  48 00 1F A4 */	b lbl_802B96B8
/* 802B7718  3B 80 00 6F */	li r28, 0x6f
/* 802B771C  48 00 1F 9C */	b lbl_802B96B8
/* 802B7720  3A C0 00 01 */	li r22, 1
/* 802B7724  3B 80 00 70 */	li r28, 0x70
/* 802B7728  48 00 1F 90 */	b lbl_802B96B8
/* 802B772C  3B 80 00 71 */	li r28, 0x71
/* 802B7730  48 00 1F 88 */	b lbl_802B96B8
/* 802B7734  3B 80 00 83 */	li r28, 0x83
/* 802B7738  3B E0 00 2C */	li r31, 0x2c
/* 802B773C  48 00 1F 7C */	b lbl_802B96B8
/* 802B7740  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 802B7744  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000026@ha */
/* 802B7748  38 84 00 26 */	addi r4, r4, 0x0026 /* 0x01000026@l */
/* 802B774C  48 00 24 15 */	bl __ct__10JAISoundIDFUl
/* 802B7750  7C 64 1B 78 */	mr r4, r3
/* 802B7754  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7758  48 00 23 31 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B775C  3B E0 00 10 */	li r31, 0x10
/* 802B7760  3B 20 00 18 */	li r25, 0x18
/* 802B7764  3B 80 00 84 */	li r28, 0x84
/* 802B7768  3B 00 00 01 */	li r24, 1
/* 802B776C  48 00 1F 4C */	b lbl_802B96B8
/* 802B7770  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 802B7774  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002F@ha */
/* 802B7778  38 84 00 2F */	addi r4, r4, 0x002F /* 0x0100002F@l */
/* 802B777C  48 00 23 E5 */	bl __ct__10JAISoundIDFUl
/* 802B7780  7C 64 1B 78 */	mr r4, r3
/* 802B7784  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7788  48 00 23 01 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B778C  3B E0 00 1C */	li r31, 0x1c
/* 802B7790  3B 20 00 18 */	li r25, 0x18
/* 802B7794  48 00 1F 24 */	b lbl_802B96B8
/* 802B7798  3A C0 00 01 */	li r22, 1
/* 802B779C  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 802B77A0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000048@ha */
/* 802B77A4  38 84 00 48 */	addi r4, r4, 0x0048 /* 0x01000048@l */
/* 802B77A8  48 00 23 B9 */	bl __ct__10JAISoundIDFUl
/* 802B77AC  7C 64 1B 78 */	mr r4, r3
/* 802B77B0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B77B4  48 00 22 D5 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B77B8  3B E0 00 2C */	li r31, 0x2c
/* 802B77BC  48 00 1E FC */	b lbl_802B96B8
lbl_802B77C0:
/* 802B77C0  38 61 01 9C */	addi r3, r1, 0x19c
/* 802B77C4  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000026@ha */
/* 802B77C8  38 84 00 26 */	addi r4, r4, 0x0026 /* 0x01000026@l */
/* 802B77CC  48 00 23 95 */	bl __ct__10JAISoundIDFUl
/* 802B77D0  7C 64 1B 78 */	mr r4, r3
/* 802B77D4  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B77D8  48 00 22 B1 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B77DC  3B E0 00 10 */	li r31, 0x10
/* 802B77E0  3B 20 00 23 */	li r25, 0x23
/* 802B77E4  3B 00 00 01 */	li r24, 1
/* 802B77E8  48 00 1E D0 */	b lbl_802B96B8
/* 802B77EC  3B A0 00 34 */	li r29, 0x34
/* 802B77F0  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B77F4  28 00 00 00 */	cmplwi r0, 0
/* 802B77F8  41 82 00 54 */	beq lbl_802B784C
/* 802B77FC  3B C0 00 36 */	li r30, 0x36
/* 802B7800  2C 1A 00 00 */	cmpwi r26, 0
/* 802B7804  40 82 00 18 */	bne lbl_802B781C
/* 802B7808  2C 13 00 08 */	cmpwi r19, 8
/* 802B780C  40 82 00 10 */	bne lbl_802B781C
/* 802B7810  3B 80 00 6D */	li r28, 0x6d
/* 802B7814  3B E0 00 0E */	li r31, 0xe
/* 802B7818  48 00 1E A0 */	b lbl_802B96B8
lbl_802B781C:
/* 802B781C  38 61 01 98 */	addi r3, r1, 0x198
/* 802B7820  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7824  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B7828  48 00 23 39 */	bl __ct__10JAISoundIDFUl
/* 802B782C  7C 64 1B 78 */	mr r4, r3
/* 802B7830  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7834  48 00 22 55 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7838  3B E0 00 0E */	li r31, 0xe
/* 802B783C  2C 1A 00 05 */	cmpwi r26, 5
/* 802B7840  40 82 1E 78 */	bne lbl_802B96B8
/* 802B7844  3B 20 00 1C */	li r25, 0x1c
/* 802B7848  48 00 1E 70 */	b lbl_802B96B8
lbl_802B784C:
/* 802B784C  2C 1A 00 02 */	cmpwi r26, 2
/* 802B7850  41 82 00 88 */	beq lbl_802B78D8
/* 802B7854  40 80 00 14 */	bge lbl_802B7868
/* 802B7858  2C 1A 00 00 */	cmpwi r26, 0
/* 802B785C  41 82 01 64 */	beq lbl_802B79C0
/* 802B7860  40 80 00 1C */	bge lbl_802B787C
/* 802B7864  48 00 01 8C */	b lbl_802B79F0
lbl_802B7868:
/* 802B7868  2C 1A 00 07 */	cmpwi r26, 7
/* 802B786C  40 80 01 84 */	bge lbl_802B79F0
/* 802B7870  2C 1A 00 04 */	cmpwi r26, 4
/* 802B7874  40 80 01 7C */	bge lbl_802B79F0
/* 802B7878  48 00 00 AC */	b lbl_802B7924
lbl_802B787C:
/* 802B787C  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B7880  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B7884  A0 63 00 80 */	lhz r3, 0x80(r3)
/* 802B7888  4B E8 9B 15 */	bl dComIfGs_isEventBit__FUs
/* 802B788C  2C 03 00 00 */	cmpwi r3, 0
/* 802B7890  41 82 00 24 */	beq lbl_802B78B4
/* 802B7894  38 61 01 94 */	addi r3, r1, 0x194
/* 802B7898  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100001E@ha */
/* 802B789C  38 84 00 1E */	addi r4, r4, 0x001E /* 0x0100001E@l */
/* 802B78A0  48 00 22 C1 */	bl __ct__10JAISoundIDFUl
/* 802B78A4  7C 64 1B 78 */	mr r4, r3
/* 802B78A8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B78AC  48 00 21 DD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B78B0  48 00 00 20 */	b lbl_802B78D0
lbl_802B78B4:
/* 802B78B4  38 61 01 90 */	addi r3, r1, 0x190
/* 802B78B8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100001F@ha */
/* 802B78BC  38 84 00 1F */	addi r4, r4, 0x001F /* 0x0100001F@l */
/* 802B78C0  48 00 22 A1 */	bl __ct__10JAISoundIDFUl
/* 802B78C4  7C 64 1B 78 */	mr r4, r3
/* 802B78C8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B78CC  48 00 21 BD */	bl __as__10JAISoundIDFRC10JAISoundID
lbl_802B78D0:
/* 802B78D0  3B E0 00 07 */	li r31, 7
/* 802B78D4  48 00 01 1C */	b lbl_802B79F0
lbl_802B78D8:
/* 802B78D8  2C 13 00 0D */	cmpwi r19, 0xd
/* 802B78DC  40 82 00 0C */	bne lbl_802B78E8
/* 802B78E0  3B 80 00 83 */	li r28, 0x83
/* 802B78E4  48 00 01 0C */	b lbl_802B79F0
lbl_802B78E8:
/* 802B78E8  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B78EC  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B78F0  A0 63 00 80 */	lhz r3, 0x80(r3)
/* 802B78F4  4B E8 9A A9 */	bl dComIfGs_isEventBit__FUs
/* 802B78F8  2C 03 00 00 */	cmpwi r3, 0
/* 802B78FC  41 82 00 F4 */	beq lbl_802B79F0
/* 802B7900  38 61 01 8C */	addi r3, r1, 0x18c
/* 802B7904  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B7908  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B790C  48 00 22 55 */	bl __ct__10JAISoundIDFUl
/* 802B7910  7C 64 1B 78 */	mr r4, r3
/* 802B7914  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7918  48 00 21 71 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B791C  3B E0 00 08 */	li r31, 8
/* 802B7920  48 00 00 D0 */	b lbl_802B79F0
lbl_802B7924:
/* 802B7924  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B7928  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B792C  A0 63 00 DA */	lhz r3, 0xda(r3)
/* 802B7930  4B E8 9A 6D */	bl dComIfGs_isEventBit__FUs
/* 802B7934  2C 03 00 00 */	cmpwi r3, 0
/* 802B7938  41 82 00 28 */	beq lbl_802B7960
/* 802B793C  38 61 01 88 */	addi r3, r1, 0x188
/* 802B7940  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000059@ha */
/* 802B7944  38 84 00 59 */	addi r4, r4, 0x0059 /* 0x01000059@l */
/* 802B7948  48 00 22 19 */	bl __ct__10JAISoundIDFUl
/* 802B794C  7C 64 1B 78 */	mr r4, r3
/* 802B7950  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7954  48 00 21 35 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7958  3B E0 00 33 */	li r31, 0x33
/* 802B795C  48 00 00 94 */	b lbl_802B79F0
lbl_802B7960:
/* 802B7960  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B7964  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B7968  A0 63 00 AA */	lhz r3, 0xaa(r3)
/* 802B796C  4B E8 9A 31 */	bl dComIfGs_isEventBit__FUs
/* 802B7970  2C 03 00 00 */	cmpwi r3, 0
/* 802B7974  41 82 00 28 */	beq lbl_802B799C
/* 802B7978  38 61 01 84 */	addi r3, r1, 0x184
/* 802B797C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100001E@ha */
/* 802B7980  38 84 00 1E */	addi r4, r4, 0x001E /* 0x0100001E@l */
/* 802B7984  48 00 21 DD */	bl __ct__10JAISoundIDFUl
/* 802B7988  7C 64 1B 78 */	mr r4, r3
/* 802B798C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7990  48 00 20 F9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7994  3B E0 00 07 */	li r31, 7
/* 802B7998  48 00 00 58 */	b lbl_802B79F0
lbl_802B799C:
/* 802B799C  38 61 01 80 */	addi r3, r1, 0x180
/* 802B79A0  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B79A4  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B79A8  48 00 21 B9 */	bl __ct__10JAISoundIDFUl
/* 802B79AC  7C 64 1B 78 */	mr r4, r3
/* 802B79B0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B79B4  48 00 20 D5 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B79B8  3B E0 00 08 */	li r31, 8
/* 802B79BC  48 00 00 34 */	b lbl_802B79F0
lbl_802B79C0:
/* 802B79C0  2C 13 00 09 */	cmpwi r19, 9
/* 802B79C4  40 82 00 0C */	bne lbl_802B79D0
/* 802B79C8  3B 80 00 85 */	li r28, 0x85
/* 802B79CC  48 00 00 24 */	b lbl_802B79F0
lbl_802B79D0:
/* 802B79D0  38 61 01 7C */	addi r3, r1, 0x17c
/* 802B79D4  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000050@ha */
/* 802B79D8  38 84 00 50 */	addi r4, r4, 0x0050 /* 0x01000050@l */
/* 802B79DC  48 00 21 85 */	bl __ct__10JAISoundIDFUl
/* 802B79E0  7C 64 1B 78 */	mr r4, r3
/* 802B79E4  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B79E8  48 00 20 A1 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B79EC  3B E0 00 2F */	li r31, 0x2f
lbl_802B79F0:
/* 802B79F0  3B C0 00 86 */	li r30, 0x86
/* 802B79F4  48 00 1C C4 */	b lbl_802B96B8
/* 802B79F8  3B A0 00 34 */	li r29, 0x34
/* 802B79FC  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B7A00  28 00 00 00 */	cmplwi r0, 0
/* 802B7A04  41 82 00 2C */	beq lbl_802B7A30
/* 802B7A08  38 61 01 78 */	addi r3, r1, 0x178
/* 802B7A0C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7A10  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B7A14  48 00 21 4D */	bl __ct__10JAISoundIDFUl
/* 802B7A18  7C 64 1B 78 */	mr r4, r3
/* 802B7A1C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7A20  48 00 20 69 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7A24  3B E0 00 0E */	li r31, 0xe
/* 802B7A28  3B C0 00 36 */	li r30, 0x36
/* 802B7A2C  48 00 1C 8C */	b lbl_802B96B8
lbl_802B7A30:
/* 802B7A30  38 61 01 74 */	addi r3, r1, 0x174
/* 802B7A34  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000051@ha */
/* 802B7A38  38 84 00 51 */	addi r4, r4, 0x0051 /* 0x01000051@l */
/* 802B7A3C  48 00 21 25 */	bl __ct__10JAISoundIDFUl
/* 802B7A40  7C 64 1B 78 */	mr r4, r3
/* 802B7A44  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7A48  48 00 20 41 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7A4C  3B E0 00 30 */	li r31, 0x30
/* 802B7A50  3B C0 00 86 */	li r30, 0x86
/* 802B7A54  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B7A58  38 80 00 1E */	li r4, 0x1e
/* 802B7A5C  C0 22 C0 54 */	lfs f1, lit_5342(r2)
/* 802B7A60  48 00 1F C5 */	bl muteSceneBgm__8Z2SeqMgrFUlf
/* 802B7A64  48 00 1C 54 */	b lbl_802B96B8
/* 802B7A68  3B A0 00 34 */	li r29, 0x34
/* 802B7A6C  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B7A70  28 00 00 00 */	cmplwi r0, 0
/* 802B7A74  41 82 00 2C */	beq lbl_802B7AA0
/* 802B7A78  38 61 01 70 */	addi r3, r1, 0x170
/* 802B7A7C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7A80  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B7A84  48 00 20 DD */	bl __ct__10JAISoundIDFUl
/* 802B7A88  7C 64 1B 78 */	mr r4, r3
/* 802B7A8C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7A90  48 00 1F F9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7A94  3B E0 00 0E */	li r31, 0xe
/* 802B7A98  3B C0 00 36 */	li r30, 0x36
/* 802B7A9C  48 00 1C 1C */	b lbl_802B96B8
lbl_802B7AA0:
/* 802B7AA0  2C 13 00 04 */	cmpwi r19, 4
/* 802B7AA4  40 82 00 28 */	bne lbl_802B7ACC
/* 802B7AA8  38 61 01 6C */	addi r3, r1, 0x16c
/* 802B7AAC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000048@ha */
/* 802B7AB0  38 84 00 48 */	addi r4, r4, 0x0048 /* 0x01000048@l */
/* 802B7AB4  48 00 20 AD */	bl __ct__10JAISoundIDFUl
/* 802B7AB8  7C 64 1B 78 */	mr r4, r3
/* 802B7ABC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7AC0  48 00 1F C9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7AC4  3B E0 00 2C */	li r31, 0x2c
/* 802B7AC8  48 00 00 38 */	b lbl_802B7B00
lbl_802B7ACC:
/* 802B7ACC  38 61 01 68 */	addi r3, r1, 0x168
/* 802B7AD0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000051@ha */
/* 802B7AD4  38 84 00 51 */	addi r4, r4, 0x0051 /* 0x01000051@l */
/* 802B7AD8  48 00 20 89 */	bl __ct__10JAISoundIDFUl
/* 802B7ADC  7C 64 1B 78 */	mr r4, r3
/* 802B7AE0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7AE4  48 00 1F A5 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7AE8  3B E0 00 30 */	li r31, 0x30
/* 802B7AEC  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B7AF0  38 80 00 1E */	li r4, 0x1e
/* 802B7AF4  48 00 1E B9 */	bl unMuteSceneBgm__8Z2SeqMgrFUl
/* 802B7AF8  3B 00 00 01 */	li r24, 1
/* 802B7AFC  3B 20 00 2C */	li r25, 0x2c
lbl_802B7B00:
/* 802B7B00  3B C0 00 37 */	li r30, 0x37
/* 802B7B04  48 00 1B B4 */	b lbl_802B96B8
/* 802B7B08  3B A0 00 34 */	li r29, 0x34
/* 802B7B0C  2C 13 00 08 */	cmpwi r19, 8
/* 802B7B10  40 82 00 14 */	bne lbl_802B7B24
/* 802B7B14  3B 80 00 7F */	li r28, 0x7f
/* 802B7B18  3B A0 00 00 */	li r29, 0
/* 802B7B1C  3B C0 00 00 */	li r30, 0
/* 802B7B20  48 00 1B 98 */	b lbl_802B96B8
lbl_802B7B24:
/* 802B7B24  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B7B28  28 00 00 00 */	cmplwi r0, 0
/* 802B7B2C  41 82 00 2C */	beq lbl_802B7B58
/* 802B7B30  38 61 01 64 */	addi r3, r1, 0x164
/* 802B7B34  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7B38  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B7B3C  48 00 20 25 */	bl __ct__10JAISoundIDFUl
/* 802B7B40  7C 64 1B 78 */	mr r4, r3
/* 802B7B44  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7B48  48 00 1F 41 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7B4C  3B E0 00 0E */	li r31, 0xe
/* 802B7B50  3B C0 00 39 */	li r30, 0x39
/* 802B7B54  48 00 1B 64 */	b lbl_802B96B8
lbl_802B7B58:
/* 802B7B58  38 61 01 60 */	addi r3, r1, 0x160
/* 802B7B5C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100001A@ha */
/* 802B7B60  38 84 00 1A */	addi r4, r4, 0x001A /* 0x0100001A@l */
/* 802B7B64  48 00 1F FD */	bl __ct__10JAISoundIDFUl
/* 802B7B68  7C 64 1B 78 */	mr r4, r3
/* 802B7B6C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7B70  48 00 1F 19 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7B74  3B E0 00 11 */	li r31, 0x11
/* 802B7B78  3B C0 00 38 */	li r30, 0x38
/* 802B7B7C  3B 00 00 01 */	li r24, 1
/* 802B7B80  2C 1A 00 03 */	cmpwi r26, 3
/* 802B7B84  40 82 1B 34 */	bne lbl_802B96B8
/* 802B7B88  3A A0 00 01 */	li r21, 1
/* 802B7B8C  48 00 1B 2C */	b lbl_802B96B8
/* 802B7B90  2C 13 00 00 */	cmpwi r19, 0
/* 802B7B94  40 82 00 7C */	bne lbl_802B7C10
/* 802B7B98  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B7B9C  38 80 00 01 */	li r4, 1
/* 802B7BA0  38 A0 02 BC */	li r5, 0x2bc
/* 802B7BA4  38 C0 04 4C */	li r6, 0x44c
/* 802B7BA8  38 E0 05 DC */	li r7, 0x5dc
/* 802B7BAC  48 00 7D D5 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B7BB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802B7BB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802B7BB8  38 80 00 2E */	li r4, 0x2e
/* 802B7BBC  38 A0 00 00 */	li r5, 0
/* 802B7BC0  4B D7 D7 A1 */	bl isSwitch__10dSv_info_cCFii
/* 802B7BC4  2C 03 00 00 */	cmpwi r3, 0
/* 802B7BC8  41 82 00 3C */	beq lbl_802B7C04
/* 802B7BCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 802B7BD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 802B7BD4  38 80 00 11 */	li r4, 0x11
/* 802B7BD8  38 A0 00 00 */	li r5, 0
/* 802B7BDC  4B D7 D7 85 */	bl isSwitch__10dSv_info_cCFii
/* 802B7BE0  2C 03 00 00 */	cmpwi r3, 0
/* 802B7BE4  40 82 00 20 */	bne lbl_802B7C04
/* 802B7BE8  38 61 01 5C */	addi r3, r1, 0x15c
/* 802B7BEC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000057@ha */
/* 802B7BF0  38 84 00 57 */	addi r4, r4, 0x0057 /* 0x01000057@l */
/* 802B7BF4  48 00 1F 6D */	bl __ct__10JAISoundIDFUl
/* 802B7BF8  7C 64 1B 78 */	mr r4, r3
/* 802B7BFC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7C00  48 00 1E 89 */	bl __as__10JAISoundIDFRC10JAISoundID
lbl_802B7C04:
/* 802B7C04  38 00 00 01 */	li r0, 1
/* 802B7C08  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B7C0C  48 00 00 1C */	b lbl_802B7C28
lbl_802B7C10:
/* 802B7C10  2C 13 00 01 */	cmpwi r19, 1
/* 802B7C14  40 82 00 14 */	bne lbl_802B7C28
/* 802B7C18  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B7C1C  38 80 00 21 */	li r4, 0x21
/* 802B7C20  38 A0 00 00 */	li r5, 0
/* 802B7C24  4B FF 77 E5 */	bl bgmStop__8Z2SeqMgrFUll
lbl_802B7C28:
/* 802B7C28  3B E0 00 31 */	li r31, 0x31
/* 802B7C2C  3B A0 00 34 */	li r29, 0x34
/* 802B7C30  3B C0 00 4F */	li r30, 0x4f
/* 802B7C34  48 00 1A 84 */	b lbl_802B96B8
/* 802B7C38  38 61 01 58 */	addi r3, r1, 0x158
/* 802B7C3C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B7C40  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B7C44  48 00 1F 1D */	bl __ct__10JAISoundIDFUl
/* 802B7C48  7C 64 1B 78 */	mr r4, r3
/* 802B7C4C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7C50  48 00 1E 39 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7C54  3B E0 00 08 */	li r31, 8
/* 802B7C58  3B A0 00 34 */	li r29, 0x34
/* 802B7C5C  3B C0 00 4F */	li r30, 0x4f
/* 802B7C60  38 00 00 01 */	li r0, 1
/* 802B7C64  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B7C68  48 00 1A 50 */	b lbl_802B96B8
/* 802B7C6C  2C 13 00 08 */	cmpwi r19, 8
/* 802B7C70  40 82 00 14 */	bne lbl_802B7C84
/* 802B7C74  3B 80 00 7F */	li r28, 0x7f
/* 802B7C78  3B A0 00 00 */	li r29, 0
/* 802B7C7C  3B C0 00 00 */	li r30, 0
/* 802B7C80  48 00 1A 38 */	b lbl_802B96B8
lbl_802B7C84:
/* 802B7C84  38 61 01 54 */	addi r3, r1, 0x154
/* 802B7C88  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000040@ha */
/* 802B7C8C  38 84 00 40 */	addi r4, r4, 0x0040 /* 0x01000040@l */
/* 802B7C90  48 00 1E D1 */	bl __ct__10JAISoundIDFUl
/* 802B7C94  7C 64 1B 78 */	mr r4, r3
/* 802B7C98  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7C9C  48 00 1D ED */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7CA0  3B E0 00 11 */	li r31, 0x11
/* 802B7CA4  3B A0 00 34 */	li r29, 0x34
/* 802B7CA8  3B 20 00 12 */	li r25, 0x12
/* 802B7CAC  3B C0 00 3A */	li r30, 0x3a
/* 802B7CB0  48 00 1A 08 */	b lbl_802B96B8
/* 802B7CB4  3B A0 00 3B */	li r29, 0x3b
/* 802B7CB8  2C 13 00 08 */	cmpwi r19, 8
/* 802B7CBC  40 82 00 14 */	bne lbl_802B7CD0
/* 802B7CC0  3B 80 00 72 */	li r28, 0x72
/* 802B7CC4  38 00 00 00 */	li r0, 0
/* 802B7CC8  98 1B 00 1E */	stb r0, 0x1e(r27)
/* 802B7CCC  48 00 19 EC */	b lbl_802B96B8
lbl_802B7CD0:
/* 802B7CD0  2C 1A 00 01 */	cmpwi r26, 1
/* 802B7CD4  40 82 00 14 */	bne lbl_802B7CE8
/* 802B7CD8  2C 13 00 09 */	cmpwi r19, 9
/* 802B7CDC  40 82 00 0C */	bne lbl_802B7CE8
/* 802B7CE0  3B 80 00 74 */	li r28, 0x74
/* 802B7CE4  48 00 19 D4 */	b lbl_802B96B8
lbl_802B7CE8:
/* 802B7CE8  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B7CEC  41 82 00 0C */	beq lbl_802B7CF8
/* 802B7CF0  2C 13 00 0B */	cmpwi r19, 0xb
/* 802B7CF4  40 82 00 14 */	bne lbl_802B7D08
lbl_802B7CF8:
/* 802B7CF8  3B 80 00 7F */	li r28, 0x7f
/* 802B7CFC  3B A0 00 00 */	li r29, 0
/* 802B7D00  3B C0 00 00 */	li r30, 0
/* 802B7D04  48 00 19 B4 */	b lbl_802B96B8
lbl_802B7D08:
/* 802B7D08  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B7D0C  28 00 00 00 */	cmplwi r0, 0
/* 802B7D10  41 82 00 88 */	beq lbl_802B7D98
/* 802B7D14  38 61 01 50 */	addi r3, r1, 0x150
/* 802B7D18  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7D1C  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B7D20  48 00 1E 41 */	bl __ct__10JAISoundIDFUl
/* 802B7D24  7C 64 1B 78 */	mr r4, r3
/* 802B7D28  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7D2C  48 00 1D 5D */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7D30  3B E0 00 0E */	li r31, 0xe
/* 802B7D34  3B C0 00 3D */	li r30, 0x3d
/* 802B7D38  2C 13 00 0E */	cmpwi r19, 0xe
/* 802B7D3C  40 82 00 2C */	bne lbl_802B7D68
/* 802B7D40  38 00 00 01 */	li r0, 1
/* 802B7D44  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B7D48  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B7D4C  38 80 00 01 */	li r4, 1
/* 802B7D50  38 A0 27 10 */	li r5, 0x2710
/* 802B7D54  3C E0 00 01 */	lis r7, 0x0001 /* 0x00009C40@ha */
/* 802B7D58  38 C7 9C 40 */	addi r6, r7, 0x9C40 /* 0x00009C40@l */
/* 802B7D5C  38 E7 C3 50 */	addi r7, r7, -15536
/* 802B7D60  48 00 7C 21 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B7D64  48 00 19 54 */	b lbl_802B96B8
lbl_802B7D68:
/* 802B7D68  38 60 00 0F */	li r3, 0xf
/* 802B7D6C  48 00 1D 29 */	bl dComIfGs_isSaveSwitch__Fi
/* 802B7D70  2C 03 00 00 */	cmpwi r3, 0
/* 802B7D74  41 82 00 1C */	beq lbl_802B7D90
/* 802B7D78  38 60 00 10 */	li r3, 0x10
/* 802B7D7C  48 00 1D 19 */	bl dComIfGs_isSaveSwitch__Fi
/* 802B7D80  2C 03 00 00 */	cmpwi r3, 0
/* 802B7D84  40 82 00 0C */	bne lbl_802B7D90
/* 802B7D88  38 00 00 01 */	li r0, 1
/* 802B7D8C  98 1B 00 1B */	stb r0, 0x1b(r27)
lbl_802B7D90:
/* 802B7D90  3B 20 00 4D */	li r25, 0x4d
/* 802B7D94  48 00 19 24 */	b lbl_802B96B8
lbl_802B7D98:
/* 802B7D98  2C 1A 00 00 */	cmpwi r26, 0
/* 802B7D9C  40 82 00 2C */	bne lbl_802B7DC8
/* 802B7DA0  38 61 01 4C */	addi r3, r1, 0x14c
/* 802B7DA4  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100005A@ha */
/* 802B7DA8  38 84 00 5A */	addi r4, r4, 0x005A /* 0x0100005A@l */
/* 802B7DAC  48 00 1D B5 */	bl __ct__10JAISoundIDFUl
/* 802B7DB0  7C 64 1B 78 */	mr r4, r3
/* 802B7DB4  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7DB8  48 00 1C D1 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7DBC  3B E0 00 34 */	li r31, 0x34
/* 802B7DC0  3A A0 00 01 */	li r21, 1
/* 802B7DC4  3B 00 00 01 */	li r24, 1
lbl_802B7DC8:
/* 802B7DC8  3B C0 00 3C */	li r30, 0x3c
/* 802B7DCC  48 00 18 EC */	b lbl_802B96B8
/* 802B7DD0  3B A0 00 55 */	li r29, 0x55
/* 802B7DD4  2C 13 00 08 */	cmpwi r19, 8
/* 802B7DD8  40 82 00 14 */	bne lbl_802B7DEC
/* 802B7DDC  3B 80 00 7F */	li r28, 0x7f
/* 802B7DE0  3B A0 00 00 */	li r29, 0
/* 802B7DE4  3B C0 00 00 */	li r30, 0
/* 802B7DE8  48 00 18 D0 */	b lbl_802B96B8
lbl_802B7DEC:
/* 802B7DEC  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B7DF0  28 00 00 00 */	cmplwi r0, 0
/* 802B7DF4  41 82 00 2C */	beq lbl_802B7E20
/* 802B7DF8  38 61 01 48 */	addi r3, r1, 0x148
/* 802B7DFC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7E00  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B7E04  48 00 1D 5D */	bl __ct__10JAISoundIDFUl
/* 802B7E08  7C 64 1B 78 */	mr r4, r3
/* 802B7E0C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7E10  48 00 1C 79 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7E14  3B E0 00 0E */	li r31, 0xe
/* 802B7E18  3B C0 00 3F */	li r30, 0x3f
/* 802B7E1C  48 00 18 9C */	b lbl_802B96B8
lbl_802B7E20:
/* 802B7E20  3B E0 00 34 */	li r31, 0x34
/* 802B7E24  3B C0 00 3E */	li r30, 0x3e
/* 802B7E28  3A A0 00 01 */	li r21, 1
/* 802B7E2C  48 00 18 8C */	b lbl_802B96B8
/* 802B7E30  2C 13 00 08 */	cmpwi r19, 8
/* 802B7E34  40 82 00 14 */	bne lbl_802B7E48
/* 802B7E38  3B 80 00 7F */	li r28, 0x7f
/* 802B7E3C  3B A0 00 00 */	li r29, 0
/* 802B7E40  3B C0 00 00 */	li r30, 0
/* 802B7E44  48 00 18 74 */	b lbl_802B96B8
lbl_802B7E48:
/* 802B7E48  3B A0 00 3B */	li r29, 0x3b
/* 802B7E4C  38 61 01 44 */	addi r3, r1, 0x144
/* 802B7E50  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000042@ha */
/* 802B7E54  38 84 00 42 */	addi r4, r4, 0x0042 /* 0x01000042@l */
/* 802B7E58  48 00 1D 09 */	bl __ct__10JAISoundIDFUl
/* 802B7E5C  7C 64 1B 78 */	mr r4, r3
/* 802B7E60  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7E64  48 00 1C 25 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7E68  3B E0 00 2B */	li r31, 0x2b
/* 802B7E6C  3B C0 00 3E */	li r30, 0x3e
/* 802B7E70  3A A0 00 01 */	li r21, 1
/* 802B7E74  3B 00 00 01 */	li r24, 1
/* 802B7E78  48 00 18 40 */	b lbl_802B96B8
/* 802B7E7C  3B A0 00 3B */	li r29, 0x3b
/* 802B7E80  38 61 01 40 */	addi r3, r1, 0x140
/* 802B7E84  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B7E88  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B7E8C  48 00 1C D5 */	bl __ct__10JAISoundIDFUl
/* 802B7E90  7C 64 1B 78 */	mr r4, r3
/* 802B7E94  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7E98  48 00 1B F1 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7E9C  3B E0 00 08 */	li r31, 8
/* 802B7EA0  3B 20 00 47 */	li r25, 0x47
/* 802B7EA4  3B C0 00 3E */	li r30, 0x3e
/* 802B7EA8  48 00 18 10 */	b lbl_802B96B8
/* 802B7EAC  3B A0 00 55 */	li r29, 0x55
/* 802B7EB0  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B7EB4  28 00 00 00 */	cmplwi r0, 0
/* 802B7EB8  41 82 00 34 */	beq lbl_802B7EEC
/* 802B7EBC  38 61 01 3C */	addi r3, r1, 0x13c
/* 802B7EC0  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003A@ha */
/* 802B7EC4  38 84 00 3A */	addi r4, r4, 0x003A /* 0x0100003A@l */
/* 802B7EC8  48 00 1C 99 */	bl __ct__10JAISoundIDFUl
/* 802B7ECC  7C 64 1B 78 */	mr r4, r3
/* 802B7ED0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7ED4  48 00 1B B5 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7ED8  3B E0 00 24 */	li r31, 0x24
/* 802B7EDC  3B C0 00 41 */	li r30, 0x41
/* 802B7EE0  38 00 00 01 */	li r0, 1
/* 802B7EE4  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B7EE8  48 00 17 D0 */	b lbl_802B96B8
lbl_802B7EEC:
/* 802B7EEC  2C 13 00 04 */	cmpwi r19, 4
/* 802B7EF0  40 82 00 24 */	bne lbl_802B7F14
/* 802B7EF4  38 61 01 38 */	addi r3, r1, 0x138
/* 802B7EF8  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200000B@ha */
/* 802B7EFC  38 84 00 0B */	addi r4, r4, 0x000B /* 0x0200000B@l */
/* 802B7F00  48 00 1C 61 */	bl __ct__10JAISoundIDFUl
/* 802B7F04  7C 64 1B 78 */	mr r4, r3
/* 802B7F08  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7F0C  48 00 1B 7D */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7F10  48 00 00 48 */	b lbl_802B7F58
lbl_802B7F14:
/* 802B7F14  2C 13 00 01 */	cmpwi r19, 1
/* 802B7F18  40 82 00 2C */	bne lbl_802B7F44
/* 802B7F1C  38 61 01 34 */	addi r3, r1, 0x134
/* 802B7F20  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100007A@ha */
/* 802B7F24  38 84 00 7A */	addi r4, r4, 0x007A /* 0x0100007A@l */
/* 802B7F28  48 00 1C 39 */	bl __ct__10JAISoundIDFUl
/* 802B7F2C  7C 64 1B 78 */	mr r4, r3
/* 802B7F30  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7F34  48 00 1B 55 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7F38  3B E0 00 47 */	li r31, 0x47
/* 802B7F3C  3B 20 00 42 */	li r25, 0x42
/* 802B7F40  48 00 00 18 */	b lbl_802B7F58
lbl_802B7F44:
/* 802B7F44  2C 13 00 00 */	cmpwi r19, 0
/* 802B7F48  41 82 00 0C */	beq lbl_802B7F54
/* 802B7F4C  2C 13 00 02 */	cmpwi r19, 2
/* 802B7F50  40 82 00 08 */	bne lbl_802B7F58
lbl_802B7F54:
/* 802B7F54  3B 20 00 57 */	li r25, 0x57
lbl_802B7F58:
/* 802B7F58  3B C0 00 40 */	li r30, 0x40
/* 802B7F5C  48 00 17 5C */	b lbl_802B96B8
/* 802B7F60  3B A0 00 3B */	li r29, 0x3b
/* 802B7F64  2C 13 00 08 */	cmpwi r19, 8
/* 802B7F68  41 82 00 0C */	beq lbl_802B7F74
/* 802B7F6C  2C 13 00 09 */	cmpwi r19, 9
/* 802B7F70  40 82 00 0C */	bne lbl_802B7F7C
lbl_802B7F74:
/* 802B7F74  3B 80 00 82 */	li r28, 0x82
/* 802B7F78  48 00 17 40 */	b lbl_802B96B8
lbl_802B7F7C:
/* 802B7F7C  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B7F80  41 82 00 0C */	beq lbl_802B7F8C
/* 802B7F84  2C 13 00 0B */	cmpwi r19, 0xb
/* 802B7F88  40 82 00 14 */	bne lbl_802B7F9C
lbl_802B7F8C:
/* 802B7F8C  3B A0 00 00 */	li r29, 0
/* 802B7F90  3B C0 00 00 */	li r30, 0
/* 802B7F94  3B 80 00 7F */	li r28, 0x7f
/* 802B7F98  48 00 17 20 */	b lbl_802B96B8
lbl_802B7F9C:
/* 802B7F9C  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B7FA0  28 00 00 00 */	cmplwi r0, 0
/* 802B7FA4  41 82 00 30 */	beq lbl_802B7FD4
/* 802B7FA8  38 61 01 30 */	addi r3, r1, 0x130
/* 802B7FAC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B7FB0  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B7FB4  48 00 1B AD */	bl __ct__10JAISoundIDFUl
/* 802B7FB8  7C 64 1B 78 */	mr r4, r3
/* 802B7FBC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7FC0  48 00 1A C9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7FC4  3B E0 00 0E */	li r31, 0xe
/* 802B7FC8  3B 20 00 2C */	li r25, 0x2c
/* 802B7FCC  3B C0 00 3F */	li r30, 0x3f
/* 802B7FD0  48 00 16 E8 */	b lbl_802B96B8
lbl_802B7FD4:
/* 802B7FD4  38 61 01 2C */	addi r3, r1, 0x12c
/* 802B7FD8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000035@ha */
/* 802B7FDC  38 84 00 35 */	addi r4, r4, 0x0035 /* 0x01000035@l */
/* 802B7FE0  48 00 1B 81 */	bl __ct__10JAISoundIDFUl
/* 802B7FE4  7C 64 1B 78 */	mr r4, r3
/* 802B7FE8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B7FEC  48 00 1A 9D */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B7FF0  3B E0 00 20 */	li r31, 0x20
/* 802B7FF4  3B C0 00 3E */	li r30, 0x3e
/* 802B7FF8  3A A0 00 01 */	li r21, 1
/* 802B7FFC  3B 00 00 01 */	li r24, 1
/* 802B8000  48 00 16 B8 */	b lbl_802B96B8
/* 802B8004  3B A0 00 42 */	li r29, 0x42
/* 802B8008  2C 13 00 08 */	cmpwi r19, 8
/* 802B800C  40 82 00 0C */	bne lbl_802B8018
/* 802B8010  3B 80 00 68 */	li r28, 0x68
/* 802B8014  48 00 16 A4 */	b lbl_802B96B8
lbl_802B8018:
/* 802B8018  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B801C  28 00 00 00 */	cmplwi r0, 0
/* 802B8020  41 82 00 2C */	beq lbl_802B804C
/* 802B8024  38 61 01 28 */	addi r3, r1, 0x128
/* 802B8028  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B802C  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B8030  48 00 1B 31 */	bl __ct__10JAISoundIDFUl
/* 802B8034  7C 64 1B 78 */	mr r4, r3
/* 802B8038  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B803C  48 00 1A 4D */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8040  3B E0 00 0E */	li r31, 0xe
/* 802B8044  3B C0 00 44 */	li r30, 0x44
/* 802B8048  48 00 16 70 */	b lbl_802B96B8
lbl_802B804C:
/* 802B804C  3B C0 00 43 */	li r30, 0x43
/* 802B8050  3B 00 00 01 */	li r24, 1
/* 802B8054  2C 1A 00 01 */	cmpwi r26, 1
/* 802B8058  40 82 00 14 */	bne lbl_802B806C
/* 802B805C  2C 13 00 09 */	cmpwi r19, 9
/* 802B8060  40 82 00 0C */	bne lbl_802B806C
/* 802B8064  3B 80 00 7A */	li r28, 0x7a
/* 802B8068  48 00 16 50 */	b lbl_802B96B8
lbl_802B806C:
/* 802B806C  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B8070  40 82 00 14 */	bne lbl_802B8084
/* 802B8074  3B A0 00 00 */	li r29, 0
/* 802B8078  3B C0 00 00 */	li r30, 0
/* 802B807C  3B 80 00 7F */	li r28, 0x7f
/* 802B8080  48 00 16 38 */	b lbl_802B96B8
lbl_802B8084:
/* 802B8084  2C 13 00 01 */	cmpwi r19, 1
/* 802B8088  40 82 00 24 */	bne lbl_802B80AC
/* 802B808C  2C 1A 00 01 */	cmpwi r26, 1
/* 802B8090  40 82 00 1C */	bne lbl_802B80AC
/* 802B8094  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B8098  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B809C  A0 63 04 3C */	lhz r3, 0x43c(r3)
/* 802B80A0  4B E8 92 FD */	bl dComIfGs_isEventBit__FUs
/* 802B80A4  2C 03 00 00 */	cmpwi r3, 0
/* 802B80A8  40 82 16 10 */	bne lbl_802B96B8
lbl_802B80AC:
/* 802B80AC  38 61 01 24 */	addi r3, r1, 0x124
/* 802B80B0  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003B@ha */
/* 802B80B4  38 84 00 3B */	addi r4, r4, 0x003B /* 0x0100003B@l */
/* 802B80B8  48 00 1A A9 */	bl __ct__10JAISoundIDFUl
/* 802B80BC  7C 64 1B 78 */	mr r4, r3
/* 802B80C0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B80C4  48 00 19 C5 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B80C8  3B E0 00 25 */	li r31, 0x25
/* 802B80CC  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B80D0  7F 44 D3 78 */	mr r4, r26
/* 802B80D4  4B FF 7E B9 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B80D8  48 00 15 E0 */	b lbl_802B96B8
/* 802B80DC  2C 1A 00 06 */	cmpwi r26, 6
/* 802B80E0  40 82 00 10 */	bne lbl_802B80F0
/* 802B80E4  3B A0 00 2E */	li r29, 0x2e
/* 802B80E8  3B C0 00 2F */	li r30, 0x2f
/* 802B80EC  48 00 15 CC */	b lbl_802B96B8
lbl_802B80F0:
/* 802B80F0  3B A0 00 42 */	li r29, 0x42
/* 802B80F4  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B80F8  28 00 00 00 */	cmplwi r0, 0
/* 802B80FC  41 82 00 2C */	beq lbl_802B8128
/* 802B8100  38 61 01 20 */	addi r3, r1, 0x120
/* 802B8104  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B8108  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B810C  48 00 1A 55 */	bl __ct__10JAISoundIDFUl
/* 802B8110  7C 64 1B 78 */	mr r4, r3
/* 802B8114  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8118  48 00 19 71 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B811C  3B E0 00 0E */	li r31, 0xe
/* 802B8120  3B C0 00 44 */	li r30, 0x44
/* 802B8124  48 00 15 94 */	b lbl_802B96B8
lbl_802B8128:
/* 802B8128  3B C0 00 5B */	li r30, 0x5b
/* 802B812C  2C 1A 00 05 */	cmpwi r26, 5
/* 802B8130  40 82 15 88 */	bne lbl_802B96B8
/* 802B8134  2C 13 00 08 */	cmpwi r19, 8
/* 802B8138  40 82 00 0C */	bne lbl_802B8144
/* 802B813C  3B 80 00 73 */	li r28, 0x73
/* 802B8140  48 00 15 78 */	b lbl_802B96B8
lbl_802B8144:
/* 802B8144  2C 13 00 09 */	cmpwi r19, 9
/* 802B8148  40 82 00 14 */	bne lbl_802B815C
/* 802B814C  3B A0 00 00 */	li r29, 0
/* 802B8150  3B C0 00 00 */	li r30, 0
/* 802B8154  3B 80 00 7F */	li r28, 0x7f
/* 802B8158  48 00 15 60 */	b lbl_802B96B8
lbl_802B815C:
/* 802B815C  38 61 01 1C */	addi r3, r1, 0x11c
/* 802B8160  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100009A@ha */
/* 802B8164  38 84 00 9A */	addi r4, r4, 0x009A /* 0x0100009A@l */
/* 802B8168  48 00 19 F9 */	bl __ct__10JAISoundIDFUl
/* 802B816C  7C 64 1B 78 */	mr r4, r3
/* 802B8170  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8174  48 00 19 15 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8178  3B E0 00 08 */	li r31, 8
/* 802B817C  48 00 15 3C */	b lbl_802B96B8
/* 802B8180  3B A0 00 42 */	li r29, 0x42
/* 802B8184  3B C0 00 5B */	li r30, 0x5b
/* 802B8188  2C 1A 00 03 */	cmpwi r26, 3
/* 802B818C  41 82 00 D4 */	beq lbl_802B8260
/* 802B8190  40 80 00 1C */	bge lbl_802B81AC
/* 802B8194  2C 1A 00 01 */	cmpwi r26, 1
/* 802B8198  41 82 00 74 */	beq lbl_802B820C
/* 802B819C  40 80 00 A0 */	bge lbl_802B823C
/* 802B81A0  2C 1A 00 00 */	cmpwi r26, 0
/* 802B81A4  40 80 00 18 */	bge lbl_802B81BC
/* 802B81A8  48 00 15 10 */	b lbl_802B96B8
lbl_802B81AC:
/* 802B81AC  2C 1A 00 05 */	cmpwi r26, 5
/* 802B81B0  41 82 01 04 */	beq lbl_802B82B4
/* 802B81B4  40 80 15 04 */	bge lbl_802B96B8
/* 802B81B8  48 00 00 CC */	b lbl_802B8284
lbl_802B81BC:
/* 802B81BC  2C 13 00 01 */	cmpwi r19, 1
/* 802B81C0  40 82 00 28 */	bne lbl_802B81E8
/* 802B81C4  38 61 01 18 */	addi r3, r1, 0x118
/* 802B81C8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000059@ha */
/* 802B81CC  38 84 00 59 */	addi r4, r4, 0x0059 /* 0x01000059@l */
/* 802B81D0  48 00 19 91 */	bl __ct__10JAISoundIDFUl
/* 802B81D4  7C 64 1B 78 */	mr r4, r3
/* 802B81D8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B81DC  48 00 18 AD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B81E0  3B E0 00 33 */	li r31, 0x33
/* 802B81E4  48 00 14 D4 */	b lbl_802B96B8
lbl_802B81E8:
/* 802B81E8  38 61 01 14 */	addi r3, r1, 0x114
/* 802B81EC  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000058@ha */
/* 802B81F0  38 84 00 58 */	addi r4, r4, 0x0058 /* 0x01000058@l */
/* 802B81F4  48 00 19 6D */	bl __ct__10JAISoundIDFUl
/* 802B81F8  7C 64 1B 78 */	mr r4, r3
/* 802B81FC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8200  48 00 18 89 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8204  3B E0 00 32 */	li r31, 0x32
/* 802B8208  48 00 14 B0 */	b lbl_802B96B8
lbl_802B820C:
/* 802B820C  38 61 01 10 */	addi r3, r1, 0x110
/* 802B8210  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000060@ha */
/* 802B8214  38 84 00 60 */	addi r4, r4, 0x0060 /* 0x01000060@l */
/* 802B8218  48 00 19 49 */	bl __ct__10JAISoundIDFUl
/* 802B821C  7C 64 1B 78 */	mr r4, r3
/* 802B8220  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8224  48 00 18 65 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8228  3B E0 00 37 */	li r31, 0x37
/* 802B822C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B8230  38 80 00 00 */	li r4, 0
/* 802B8234  4B FF 7D 59 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B8238  48 00 14 80 */	b lbl_802B96B8
lbl_802B823C:
/* 802B823C  38 61 01 0C */	addi r3, r1, 0x10c
/* 802B8240  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002C@ha */
/* 802B8244  38 84 00 2C */	addi r4, r4, 0x002C /* 0x0100002C@l */
/* 802B8248  48 00 19 19 */	bl __ct__10JAISoundIDFUl
/* 802B824C  7C 64 1B 78 */	mr r4, r3
/* 802B8250  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8254  48 00 18 35 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8258  3B E0 00 08 */	li r31, 8
/* 802B825C  48 00 14 5C */	b lbl_802B96B8
lbl_802B8260:
/* 802B8260  38 61 01 08 */	addi r3, r1, 0x108
/* 802B8264  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100009B@ha */
/* 802B8268  38 84 00 9B */	addi r4, r4, 0x009B /* 0x0100009B@l */
/* 802B826C  48 00 18 F5 */	bl __ct__10JAISoundIDFUl
/* 802B8270  7C 64 1B 78 */	mr r4, r3
/* 802B8274  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8278  48 00 18 11 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B827C  3B E0 00 56 */	li r31, 0x56
/* 802B8280  48 00 14 38 */	b lbl_802B96B8
lbl_802B8284:
/* 802B8284  38 61 01 04 */	addi r3, r1, 0x104
/* 802B8288  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003B@ha */
/* 802B828C  38 84 00 3B */	addi r4, r4, 0x003B /* 0x0100003B@l */
/* 802B8290  48 00 18 D1 */	bl __ct__10JAISoundIDFUl
/* 802B8294  7C 64 1B 78 */	mr r4, r3
/* 802B8298  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B829C  48 00 17 ED */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B82A0  3B E0 00 25 */	li r31, 0x25
/* 802B82A4  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B82A8  38 80 00 05 */	li r4, 5
/* 802B82AC  4B FF 7C E1 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B82B0  48 00 14 08 */	b lbl_802B96B8
lbl_802B82B4:
/* 802B82B4  38 61 01 00 */	addi r3, r1, 0x100
/* 802B82B8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100001F@ha */
/* 802B82BC  38 84 00 1F */	addi r4, r4, 0x001F /* 0x0100001F@l */
/* 802B82C0  48 00 18 A1 */	bl __ct__10JAISoundIDFUl
/* 802B82C4  7C 64 1B 78 */	mr r4, r3
/* 802B82C8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B82CC  48 00 17 BD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B82D0  3B E0 00 07 */	li r31, 7
/* 802B82D4  48 00 13 E4 */	b lbl_802B96B8
/* 802B82D8  3B A0 00 42 */	li r29, 0x42
/* 802B82DC  3B C0 00 87 */	li r30, 0x87
/* 802B82E0  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B82E4  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B82E8  A0 63 02 42 */	lhz r3, 0x242(r3)
/* 802B82EC  4B E8 90 B1 */	bl dComIfGs_isEventBit__FUs
/* 802B82F0  2C 03 00 00 */	cmpwi r3, 0
/* 802B82F4  41 82 00 20 */	beq lbl_802B8314
/* 802B82F8  38 61 00 FC */	addi r3, r1, 0xfc
/* 802B82FC  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100007A@ha */
/* 802B8300  38 84 00 7A */	addi r4, r4, 0x007A /* 0x0100007A@l */
/* 802B8304  48 00 18 5D */	bl __ct__10JAISoundIDFUl
/* 802B8308  7C 64 1B 78 */	mr r4, r3
/* 802B830C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8310  48 00 17 79 */	bl __as__10JAISoundIDFRC10JAISoundID
lbl_802B8314:
/* 802B8314  3B E0 00 46 */	li r31, 0x46
/* 802B8318  48 00 13 A0 */	b lbl_802B96B8
/* 802B831C  3B A0 00 31 */	li r29, 0x31
/* 802B8320  3B 20 00 1B */	li r25, 0x1b
/* 802B8324  3B C0 00 45 */	li r30, 0x45
/* 802B8328  2C 1A 00 03 */	cmpwi r26, 3
/* 802B832C  40 82 00 28 */	bne lbl_802B8354
/* 802B8330  38 61 00 F8 */	addi r3, r1, 0xf8
/* 802B8334  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000041@ha */
/* 802B8338  38 84 00 41 */	addi r4, r4, 0x0041 /* 0x01000041@l */
/* 802B833C  48 00 18 25 */	bl __ct__10JAISoundIDFUl
/* 802B8340  7C 64 1B 78 */	mr r4, r3
/* 802B8344  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8348  48 00 17 41 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B834C  3B E0 00 2A */	li r31, 0x2a
/* 802B8350  48 00 13 68 */	b lbl_802B96B8
lbl_802B8354:
/* 802B8354  2C 1A 00 02 */	cmpwi r26, 2
/* 802B8358  40 82 00 40 */	bne lbl_802B8398
/* 802B835C  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B8360  40 82 00 14 */	bne lbl_802B8374
/* 802B8364  3B A0 00 00 */	li r29, 0
/* 802B8368  3B C0 00 00 */	li r30, 0
/* 802B836C  3B 80 00 7F */	li r28, 0x7f
/* 802B8370  48 00 13 48 */	b lbl_802B96B8
lbl_802B8374:
/* 802B8374  38 61 00 F4 */	addi r3, r1, 0xf4
/* 802B8378  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006B@ha */
/* 802B837C  38 84 00 6B */	addi r4, r4, 0x006B /* 0x0100006B@l */
/* 802B8380  48 00 17 E1 */	bl __ct__10JAISoundIDFUl
/* 802B8384  7C 64 1B 78 */	mr r4, r3
/* 802B8388  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B838C  48 00 16 FD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8390  3B E0 00 3E */	li r31, 0x3e
/* 802B8394  48 00 13 24 */	b lbl_802B96B8
lbl_802B8398:
/* 802B8398  2C 1A 00 01 */	cmpwi r26, 1
/* 802B839C  40 82 13 1C */	bne lbl_802B96B8
/* 802B83A0  2C 13 00 00 */	cmpwi r19, 0
/* 802B83A4  41 82 00 0C */	beq lbl_802B83B0
/* 802B83A8  2C 13 00 09 */	cmpwi r19, 9
/* 802B83AC  40 82 00 0C */	bne lbl_802B83B8
lbl_802B83B0:
/* 802B83B0  3B 80 00 76 */	li r28, 0x76
/* 802B83B4  48 00 13 04 */	b lbl_802B96B8
lbl_802B83B8:
/* 802B83B8  2C 13 00 08 */	cmpwi r19, 8
/* 802B83BC  41 82 00 0C */	beq lbl_802B83C8
/* 802B83C0  2C 13 00 0B */	cmpwi r19, 0xb
/* 802B83C4  40 82 00 14 */	bne lbl_802B83D8
lbl_802B83C8:
/* 802B83C8  3B A0 00 00 */	li r29, 0
/* 802B83CC  3B C0 00 00 */	li r30, 0
/* 802B83D0  3B 80 00 7F */	li r28, 0x7f
/* 802B83D4  48 00 12 E4 */	b lbl_802B96B8
lbl_802B83D8:
/* 802B83D8  3B 20 00 40 */	li r25, 0x40
/* 802B83DC  48 00 12 DC */	b lbl_802B96B8
/* 802B83E0  2C 13 00 08 */	cmpwi r19, 8
/* 802B83E4  40 82 00 14 */	bne lbl_802B83F8
/* 802B83E8  3B A0 00 00 */	li r29, 0
/* 802B83EC  3B C0 00 00 */	li r30, 0
/* 802B83F0  3B 80 00 7F */	li r28, 0x7f
/* 802B83F4  48 00 00 30 */	b lbl_802B8424
lbl_802B83F8:
/* 802B83F8  38 61 00 F0 */	addi r3, r1, 0xf0
/* 802B83FC  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100004A@ha */
/* 802B8400  38 84 00 4A */	addi r4, r4, 0x004A /* 0x0100004A@l */
/* 802B8404  48 00 17 5D */	bl __ct__10JAISoundIDFUl
/* 802B8408  7C 64 1B 78 */	mr r4, r3
/* 802B840C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8410  48 00 16 79 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8414  3B E0 00 2D */	li r31, 0x2d
/* 802B8418  3B 20 00 3A */	li r25, 0x3a
/* 802B841C  3B A0 00 46 */	li r29, 0x46
/* 802B8420  3B C0 00 47 */	li r30, 0x47
lbl_802B8424:
/* 802B8424  3A A0 00 01 */	li r21, 1
/* 802B8428  48 00 12 90 */	b lbl_802B96B8
/* 802B842C  3B A0 00 48 */	li r29, 0x48
/* 802B8430  3B C0 00 49 */	li r30, 0x49
/* 802B8434  38 13 FF F8 */	addi r0, r19, -8
/* 802B8438  28 00 00 01 */	cmplwi r0, 1
/* 802B843C  40 81 00 0C */	ble lbl_802B8448
/* 802B8440  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B8444  40 82 00 0C */	bne lbl_802B8450
lbl_802B8448:
/* 802B8448  3B 80 00 77 */	li r28, 0x77
/* 802B844C  48 00 12 6C */	b lbl_802B96B8
lbl_802B8450:
/* 802B8450  2C 13 00 0B */	cmpwi r19, 0xb
/* 802B8454  40 82 00 14 */	bne lbl_802B8468
/* 802B8458  3B A0 00 00 */	li r29, 0
/* 802B845C  3B C0 00 00 */	li r30, 0
/* 802B8460  3B 80 00 7F */	li r28, 0x7f
/* 802B8464  48 00 12 54 */	b lbl_802B96B8
lbl_802B8468:
/* 802B8468  38 61 00 EC */	addi r3, r1, 0xec
/* 802B846C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000034@ha */
/* 802B8470  38 84 00 34 */	addi r4, r4, 0x0034 /* 0x01000034@l */
/* 802B8474  48 00 16 ED */	bl __ct__10JAISoundIDFUl
/* 802B8478  7C 64 1B 78 */	mr r4, r3
/* 802B847C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8480  48 00 16 09 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8484  3B E0 00 1F */	li r31, 0x1f
/* 802B8488  48 00 12 30 */	b lbl_802B96B8
/* 802B848C  2C 1A 00 01 */	cmpwi r26, 1
/* 802B8490  40 82 00 24 */	bne lbl_802B84B4
/* 802B8494  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8498  38 80 00 01 */	li r4, 1
/* 802B849C  38 A0 03 E8 */	li r5, 0x3e8
/* 802B84A0  38 C0 07 D0 */	li r6, 0x7d0
/* 802B84A4  38 E0 23 28 */	li r7, 0x2328
/* 802B84A8  48 00 74 D9 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B84AC  3B E0 00 3D */	li r31, 0x3d
/* 802B84B0  3B 20 00 1C */	li r25, 0x1c
lbl_802B84B4:
/* 802B84B4  3B A0 00 48 */	li r29, 0x48
/* 802B84B8  3B C0 00 49 */	li r30, 0x49
/* 802B84BC  48 00 11 FC */	b lbl_802B96B8
/* 802B84C0  2C 13 00 0D */	cmpwi r19, 0xd
/* 802B84C4  41 82 00 2C */	beq lbl_802B84F0
/* 802B84C8  40 80 00 30 */	bge lbl_802B84F8
/* 802B84CC  2C 13 00 0B */	cmpwi r19, 0xb
/* 802B84D0  40 80 00 18 */	bge lbl_802B84E8
/* 802B84D4  2C 13 00 07 */	cmpwi r19, 7
/* 802B84D8  40 80 00 08 */	bge lbl_802B84E0
/* 802B84DC  48 00 00 1C */	b lbl_802B84F8
lbl_802B84E0:
/* 802B84E0  3B 80 00 80 */	li r28, 0x80
/* 802B84E4  48 00 00 38 */	b lbl_802B851C
lbl_802B84E8:
/* 802B84E8  3B 80 00 78 */	li r28, 0x78
/* 802B84EC  48 00 00 30 */	b lbl_802B851C
lbl_802B84F0:
/* 802B84F0  3B 80 00 7E */	li r28, 0x7e
/* 802B84F4  48 00 00 28 */	b lbl_802B851C
lbl_802B84F8:
/* 802B84F8  3A C0 00 01 */	li r22, 1
/* 802B84FC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 802B8500  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000034@ha */
/* 802B8504  38 84 00 34 */	addi r4, r4, 0x0034 /* 0x01000034@l */
/* 802B8508  48 00 16 59 */	bl __ct__10JAISoundIDFUl
/* 802B850C  7C 64 1B 78 */	mr r4, r3
/* 802B8510  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8514  48 00 15 75 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8518  3B E0 00 1F */	li r31, 0x1f
lbl_802B851C:
/* 802B851C  3B A0 00 48 */	li r29, 0x48
/* 802B8520  3B C0 00 49 */	li r30, 0x49
/* 802B8524  48 00 11 94 */	b lbl_802B96B8
/* 802B8528  3B A0 00 4A */	li r29, 0x4a
/* 802B852C  2C 1A 00 0A */	cmpwi r26, 0xa
/* 802B8530  40 82 00 18 */	bne lbl_802B8548
/* 802B8534  2C 13 00 0B */	cmpwi r19, 0xb
/* 802B8538  40 82 00 10 */	bne lbl_802B8548
/* 802B853C  3B 80 00 74 */	li r28, 0x74
/* 802B8540  C3 E2 C0 58 */	lfs f31, lit_5343(r2)
/* 802B8544  48 00 11 74 */	b lbl_802B96B8
lbl_802B8548:
/* 802B8548  2C 13 00 09 */	cmpwi r19, 9
/* 802B854C  41 82 00 0C */	beq lbl_802B8558
/* 802B8550  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B8554  40 82 00 14 */	bne lbl_802B8568
lbl_802B8558:
/* 802B8558  3B A0 00 00 */	li r29, 0
/* 802B855C  3B C0 00 00 */	li r30, 0
/* 802B8560  3B 80 00 7F */	li r28, 0x7f
/* 802B8564  48 00 11 54 */	b lbl_802B96B8
lbl_802B8568:
/* 802B8568  2C 13 00 02 */	cmpwi r19, 2
/* 802B856C  41 82 00 0C */	beq lbl_802B8578
/* 802B8570  2C 13 00 03 */	cmpwi r19, 3
/* 802B8574  40 82 00 54 */	bne lbl_802B85C8
lbl_802B8578:
/* 802B8578  38 61 00 E4 */	addi r3, r1, 0xe4
/* 802B857C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000004@ha */
/* 802B8580  38 84 00 04 */	addi r4, r4, 0x0004 /* 0x01000004@l */
/* 802B8584  48 00 15 DD */	bl __ct__10JAISoundIDFUl
/* 802B8588  7C 64 1B 78 */	mr r4, r3
/* 802B858C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8590  48 00 14 F9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8594  3B E0 00 0D */	li r31, 0xd
/* 802B8598  3B A0 00 54 */	li r29, 0x54
/* 802B859C  3B C0 00 4E */	li r30, 0x4e
/* 802B85A0  38 00 00 01 */	li r0, 1
/* 802B85A4  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B85A8  C3 E2 C0 3C */	lfs f31, lit_3512(r2)
/* 802B85AC  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B85B0  38 80 00 01 */	li r4, 1
/* 802B85B4  38 A0 02 BC */	li r5, 0x2bc
/* 802B85B8  38 C0 04 4C */	li r6, 0x44c
/* 802B85BC  38 E0 05 DC */	li r7, 0x5dc
/* 802B85C0  48 00 73 C1 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B85C4  48 00 10 F4 */	b lbl_802B96B8
lbl_802B85C8:
/* 802B85C8  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B85CC  28 00 00 00 */	cmplwi r0, 0
/* 802B85D0  41 82 00 50 */	beq lbl_802B8620
/* 802B85D4  2C 13 00 0C */	cmpwi r19, 0xc
/* 802B85D8  40 82 00 0C */	bne lbl_802B85E4
/* 802B85DC  3B 80 00 6A */	li r28, 0x6a
/* 802B85E0  48 00 00 24 */	b lbl_802B8604
lbl_802B85E4:
/* 802B85E4  38 61 00 E0 */	addi r3, r1, 0xe0
/* 802B85E8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B85EC  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B85F0  48 00 15 71 */	bl __ct__10JAISoundIDFUl
/* 802B85F4  7C 64 1B 78 */	mr r4, r3
/* 802B85F8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B85FC  48 00 14 8D */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8600  3B E0 00 0E */	li r31, 0xe
lbl_802B8604:
/* 802B8604  3B C0 00 4C */	li r30, 0x4c
/* 802B8608  2C 1A 00 0D */	cmpwi r26, 0xd
/* 802B860C  40 82 10 AC */	bne lbl_802B96B8
/* 802B8610  2C 13 00 0E */	cmpwi r19, 0xe
/* 802B8614  40 82 10 A4 */	bne lbl_802B96B8
/* 802B8618  3B 20 00 1C */	li r25, 0x1c
/* 802B861C  48 00 10 9C */	b lbl_802B96B8
lbl_802B8620:
/* 802B8620  3A 80 00 01 */	li r20, 1
/* 802B8624  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B8628  4B FF E1 0D */	bl checkDayTime__11Z2StatusMgrFv
/* 802B862C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B8630  41 82 00 20 */	beq lbl_802B8650
/* 802B8634  38 61 00 DC */	addi r3, r1, 0xdc
/* 802B8638  3C 80 01 00 */	lis r4, 0x100
/* 802B863C  48 00 15 25 */	bl __ct__10JAISoundIDFUl
/* 802B8640  7C 64 1B 78 */	mr r4, r3
/* 802B8644  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8648  48 00 14 41 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B864C  48 00 00 20 */	b lbl_802B866C
lbl_802B8650:
/* 802B8650  38 61 00 D8 */	addi r3, r1, 0xd8
/* 802B8654  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000001@ha */
/* 802B8658  38 84 00 01 */	addi r4, r4, 0x0001 /* 0x01000001@l */
/* 802B865C  48 00 15 05 */	bl __ct__10JAISoundIDFUl
/* 802B8660  7C 64 1B 78 */	mr r4, r3
/* 802B8664  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8668  48 00 14 21 */	bl __as__10JAISoundIDFRC10JAISoundID
lbl_802B866C:
/* 802B866C  3B E0 00 19 */	li r31, 0x19
/* 802B8670  28 1A 00 0F */	cmplwi r26, 0xf
/* 802B8674  41 81 00 40 */	bgt lbl_802B86B4
/* 802B8678  3C 60 80 3D */	lis r3, lit_5353@ha /* 0x803CA744@ha */
/* 802B867C  38 63 A7 44 */	addi r3, r3, lit_5353@l /* 0x803CA744@l */
/* 802B8680  57 40 10 3A */	slwi r0, r26, 2
/* 802B8684  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B8688  7C 09 03 A6 */	mtctr r0
/* 802B868C  4E 80 04 20 */	bctr 
/* 802B8690  3B C0 00 5E */	li r30, 0x5e
/* 802B8694  48 00 00 20 */	b lbl_802B86B4
/* 802B8698  3B C0 00 5F */	li r30, 0x5f
/* 802B869C  48 00 00 18 */	b lbl_802B86B4
/* 802B86A0  3B C0 00 60 */	li r30, 0x60
/* 802B86A4  48 00 00 10 */	b lbl_802B86B4
/* 802B86A8  3B C0 00 61 */	li r30, 0x61
/* 802B86AC  48 00 00 08 */	b lbl_802B86B4
/* 802B86B0  3B C0 00 4B */	li r30, 0x4b
lbl_802B86B4:
/* 802B86B4  28 1A 00 0F */	cmplwi r26, 0xf
/* 802B86B8  41 81 10 00 */	bgt lbl_802B96B8
/* 802B86BC  3C 60 80 3D */	lis r3, lit_5354@ha /* 0x803CA704@ha */
/* 802B86C0  38 63 A7 04 */	addi r3, r3, lit_5354@l /* 0x803CA704@l */
/* 802B86C4  57 40 10 3A */	slwi r0, r26, 2
/* 802B86C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 802B86CC  7C 09 03 A6 */	mtctr r0
/* 802B86D0  4E 80 04 20 */	bctr 
/* 802B86D4  C3 E2 C0 3C */	lfs f31, lit_3512(r2)
/* 802B86D8  48 00 0F E0 */	b lbl_802B96B8
/* 802B86DC  C3 E2 C0 58 */	lfs f31, lit_5343(r2)
/* 802B86E0  48 00 0F D8 */	b lbl_802B96B8
/* 802B86E4  C3 E2 C0 5C */	lfs f31, lit_5344(r2)
/* 802B86E8  48 00 0F D0 */	b lbl_802B96B8
/* 802B86EC  3B A0 00 4A */	li r29, 0x4a
/* 802B86F0  2C 13 00 08 */	cmpwi r19, 8
/* 802B86F4  40 82 00 10 */	bne lbl_802B8704
/* 802B86F8  3B 80 00 73 */	li r28, 0x73
/* 802B86FC  C3 E2 C0 3C */	lfs f31, lit_3512(r2)
/* 802B8700  48 00 0F B8 */	b lbl_802B96B8
lbl_802B8704:
/* 802B8704  2C 13 00 09 */	cmpwi r19, 9
/* 802B8708  40 82 00 10 */	bne lbl_802B8718
/* 802B870C  3B 80 00 75 */	li r28, 0x75
/* 802B8710  C3 E2 C0 54 */	lfs f31, lit_5342(r2)
/* 802B8714  48 00 0F A4 */	b lbl_802B96B8
lbl_802B8718:
/* 802B8718  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B871C  40 82 00 14 */	bne lbl_802B8730
/* 802B8720  3B A0 00 00 */	li r29, 0
/* 802B8724  3B C0 00 00 */	li r30, 0
/* 802B8728  3B 80 00 7F */	li r28, 0x7f
/* 802B872C  48 00 0F 8C */	b lbl_802B96B8
lbl_802B8730:
/* 802B8730  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B8734  28 00 00 00 */	cmplwi r0, 0
/* 802B8738  41 82 00 2C */	beq lbl_802B8764
/* 802B873C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 802B8740  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B8744  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B8748  48 00 14 19 */	bl __ct__10JAISoundIDFUl
/* 802B874C  7C 64 1B 78 */	mr r4, r3
/* 802B8750  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8754  48 00 13 35 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8758  3B E0 00 0E */	li r31, 0xe
/* 802B875C  3B C0 00 4C */	li r30, 0x4c
/* 802B8760  48 00 0F 58 */	b lbl_802B96B8
lbl_802B8764:
/* 802B8764  2C 1A 00 08 */	cmpwi r26, 8
/* 802B8768  40 82 00 10 */	bne lbl_802B8778
/* 802B876C  3B C0 00 62 */	li r30, 0x62
/* 802B8770  C3 E2 C0 5C */	lfs f31, lit_5344(r2)
/* 802B8774  48 00 00 28 */	b lbl_802B879C
lbl_802B8778:
/* 802B8778  2C 1A 00 10 */	cmpwi r26, 0x10
/* 802B877C  40 82 00 10 */	bne lbl_802B878C
/* 802B8780  3B C0 00 88 */	li r30, 0x88
/* 802B8784  C3 E2 C0 5C */	lfs f31, lit_5344(r2)
/* 802B8788  48 00 00 14 */	b lbl_802B879C
lbl_802B878C:
/* 802B878C  2C 1A 00 11 */	cmpwi r26, 0x11
/* 802B8790  40 82 00 0C */	bne lbl_802B879C
/* 802B8794  3B C0 00 89 */	li r30, 0x89
/* 802B8798  C3 E2 C0 3C */	lfs f31, lit_3512(r2)
lbl_802B879C:
/* 802B879C  3A 80 00 01 */	li r20, 1
/* 802B87A0  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802B87A4  4B FF DF 91 */	bl checkDayTime__11Z2StatusMgrFv
/* 802B87A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B87AC  41 82 00 20 */	beq lbl_802B87CC
/* 802B87B0  38 61 00 D0 */	addi r3, r1, 0xd0
/* 802B87B4  3C 80 01 00 */	lis r4, 0x100
/* 802B87B8  48 00 13 A9 */	bl __ct__10JAISoundIDFUl
/* 802B87BC  7C 64 1B 78 */	mr r4, r3
/* 802B87C0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B87C4  48 00 12 C5 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B87C8  48 00 00 20 */	b lbl_802B87E8
lbl_802B87CC:
/* 802B87CC  38 61 00 CC */	addi r3, r1, 0xcc
/* 802B87D0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000001@ha */
/* 802B87D4  38 84 00 01 */	addi r4, r4, 0x0001 /* 0x01000001@l */
/* 802B87D8  48 00 13 89 */	bl __ct__10JAISoundIDFUl
/* 802B87DC  7C 64 1B 78 */	mr r4, r3
/* 802B87E0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B87E4  48 00 12 A5 */	bl __as__10JAISoundIDFRC10JAISoundID
lbl_802B87E8:
/* 802B87E8  3B E0 00 19 */	li r31, 0x19
/* 802B87EC  48 00 0E CC */	b lbl_802B96B8
/* 802B87F0  3B A0 00 54 */	li r29, 0x54
/* 802B87F4  3B E0 00 3D */	li r31, 0x3d
/* 802B87F8  3B C0 00 4E */	li r30, 0x4e
/* 802B87FC  C3 E2 C0 3C */	lfs f31, lit_3512(r2)
/* 802B8800  38 00 00 01 */	li r0, 1
/* 802B8804  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8808  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B880C  38 80 00 01 */	li r4, 1
/* 802B8810  38 A0 02 BC */	li r5, 0x2bc
/* 802B8814  38 C0 04 4C */	li r6, 0x44c
/* 802B8818  38 E0 05 DC */	li r7, 0x5dc
/* 802B881C  48 00 71 65 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8820  48 00 0E 98 */	b lbl_802B96B8
/* 802B8824  3B A0 00 4A */	li r29, 0x4a
/* 802B8828  2C 13 00 0B */	cmpwi r19, 0xb
/* 802B882C  40 82 00 14 */	bne lbl_802B8840
/* 802B8830  3B A0 00 00 */	li r29, 0
/* 802B8834  3B C0 00 00 */	li r30, 0
/* 802B8838  3B 80 00 7F */	li r28, 0x7f
/* 802B883C  48 00 0E 7C */	b lbl_802B96B8
lbl_802B8840:
/* 802B8840  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B8844  40 82 00 0C */	bne lbl_802B8850
/* 802B8848  3B E0 00 59 */	li r31, 0x59
/* 802B884C  48 00 0E 6C */	b lbl_802B96B8
lbl_802B8850:
/* 802B8850  2C 13 00 08 */	cmpwi r19, 8
/* 802B8854  41 82 0E 64 */	beq lbl_802B96B8
/* 802B8858  2C 13 00 09 */	cmpwi r19, 9
/* 802B885C  41 82 0E 5C */	beq lbl_802B96B8
/* 802B8860  2C 13 00 00 */	cmpwi r19, 0
/* 802B8864  40 82 00 0C */	bne lbl_802B8870
/* 802B8868  3B E0 00 0D */	li r31, 0xd
/* 802B886C  48 00 00 10 */	b lbl_802B887C
lbl_802B8870:
/* 802B8870  2C 13 00 04 */	cmpwi r19, 4
/* 802B8874  40 82 00 08 */	bne lbl_802B887C
/* 802B8878  3B E0 00 3D */	li r31, 0x3d
lbl_802B887C:
/* 802B887C  C3 E2 C0 3C */	lfs f31, lit_3512(r2)
/* 802B8880  3B C0 00 4D */	li r30, 0x4d
/* 802B8884  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8888  38 80 00 01 */	li r4, 1
/* 802B888C  38 A0 02 BC */	li r5, 0x2bc
/* 802B8890  38 C0 04 4C */	li r6, 0x44c
/* 802B8894  38 E0 05 DC */	li r7, 0x5dc
/* 802B8898  48 00 70 E9 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B889C  48 00 0E 1C */	b lbl_802B96B8
/* 802B88A0  3B A0 00 4A */	li r29, 0x4a
/* 802B88A4  48 00 10 F9 */	bl dComIfGs_getStartPoint__Fv
/* 802B88A8  7C 60 07 34 */	extsh r0, r3
/* 802B88AC  2C 00 00 02 */	cmpwi r0, 2
/* 802B88B0  40 82 00 0C */	bne lbl_802B88BC
/* 802B88B4  3B 20 00 50 */	li r25, 0x50
/* 802B88B8  48 00 00 80 */	b lbl_802B8938
lbl_802B88BC:
/* 802B88BC  48 00 10 E1 */	bl dComIfGs_getStartPoint__Fv
/* 802B88C0  7C 60 07 34 */	extsh r0, r3
/* 802B88C4  2C 00 00 03 */	cmpwi r0, 3
/* 802B88C8  40 82 00 0C */	bne lbl_802B88D4
/* 802B88CC  3B 20 00 4F */	li r25, 0x4f
/* 802B88D0  48 00 00 68 */	b lbl_802B8938
lbl_802B88D4:
/* 802B88D4  48 00 10 C9 */	bl dComIfGs_getStartPoint__Fv
/* 802B88D8  7C 60 07 34 */	extsh r0, r3
/* 802B88DC  2C 00 00 04 */	cmpwi r0, 4
/* 802B88E0  40 82 00 0C */	bne lbl_802B88EC
/* 802B88E4  3B 20 00 3B */	li r25, 0x3b
/* 802B88E8  48 00 00 50 */	b lbl_802B8938
lbl_802B88EC:
/* 802B88EC  48 00 10 B1 */	bl dComIfGs_getStartPoint__Fv
/* 802B88F0  7C 60 07 34 */	extsh r0, r3
/* 802B88F4  2C 00 00 05 */	cmpwi r0, 5
/* 802B88F8  40 82 00 0C */	bne lbl_802B8904
/* 802B88FC  3B 20 00 51 */	li r25, 0x51
/* 802B8900  48 00 00 38 */	b lbl_802B8938
lbl_802B8904:
/* 802B8904  48 00 10 99 */	bl dComIfGs_getStartPoint__Fv
/* 802B8908  7C 60 07 34 */	extsh r0, r3
/* 802B890C  2C 00 00 06 */	cmpwi r0, 6
/* 802B8910  40 82 00 0C */	bne lbl_802B891C
/* 802B8914  3B 20 00 52 */	li r25, 0x52
/* 802B8918  48 00 00 20 */	b lbl_802B8938
lbl_802B891C:
/* 802B891C  48 00 10 81 */	bl dComIfGs_getStartPoint__Fv
/* 802B8920  7C 60 07 34 */	extsh r0, r3
/* 802B8924  2C 00 00 07 */	cmpwi r0, 7
/* 802B8928  40 82 00 0C */	bne lbl_802B8934
/* 802B892C  3B 20 00 53 */	li r25, 0x53
/* 802B8930  48 00 00 08 */	b lbl_802B8938
lbl_802B8934:
/* 802B8934  3B E0 00 44 */	li r31, 0x44
lbl_802B8938:
/* 802B8938  3B C0 00 5D */	li r30, 0x5d
/* 802B893C  38 00 00 01 */	li r0, 1
/* 802B8940  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8944  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8948  38 80 00 01 */	li r4, 1
/* 802B894C  38 A0 02 BC */	li r5, 0x2bc
/* 802B8950  38 C0 04 4C */	li r6, 0x44c
/* 802B8954  38 E0 05 DC */	li r7, 0x5dc
/* 802B8958  48 00 70 29 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B895C  48 00 0D 5C */	b lbl_802B96B8
/* 802B8960  38 61 00 C8 */	addi r3, r1, 0xc8
/* 802B8964  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000009@ha */
/* 802B8968  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x01000009@l */
/* 802B896C  48 00 11 F5 */	bl __ct__10JAISoundIDFUl
/* 802B8970  7C 64 1B 78 */	mr r4, r3
/* 802B8974  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8978  48 00 11 11 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B897C  3B E0 00 0A */	li r31, 0xa
/* 802B8980  3B 20 00 40 */	li r25, 0x40
/* 802B8984  3B A0 00 01 */	li r29, 1
/* 802B8988  3B C0 00 02 */	li r30, 2
/* 802B898C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B8990  7F 44 D3 78 */	mr r4, r26
/* 802B8994  4B FF 75 F9 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B8998  48 00 0D 20 */	b lbl_802B96B8
/* 802B899C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 802B89A0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000009@ha */
/* 802B89A4  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x01000009@l */
/* 802B89A8  48 00 11 B9 */	bl __ct__10JAISoundIDFUl
/* 802B89AC  7C 64 1B 78 */	mr r4, r3
/* 802B89B0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B89B4  48 00 10 D5 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B89B8  3B E0 00 0A */	li r31, 0xa
/* 802B89BC  3B 20 00 0B */	li r25, 0xb
/* 802B89C0  3B A0 00 01 */	li r29, 1
/* 802B89C4  3B C0 00 03 */	li r30, 3
/* 802B89C8  38 00 00 01 */	li r0, 1
/* 802B89CC  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B89D0  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B89D4  38 80 00 01 */	li r4, 1
/* 802B89D8  38 A0 02 BC */	li r5, 0x2bc
/* 802B89DC  38 C0 04 4C */	li r6, 0x44c
/* 802B89E0  38 E0 05 DC */	li r7, 0x5dc
/* 802B89E4  48 00 6F 9D */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B89E8  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B89EC  88 8D 82 E0 */	lbz r4, struct_80450860+0x0(r13)
/* 802B89F0  48 00 0F BD */	bl unMuteSceneBgm__8Z2SeqMgrFUl
/* 802B89F4  48 00 0C C4 */	b lbl_802B96B8
/* 802B89F8  3B A0 00 01 */	li r29, 1
/* 802B89FC  38 60 00 02 */	li r3, 2
/* 802B8A00  38 80 00 01 */	li r4, 1
/* 802B8A04  4B D7 4D 3D */	bl dComIfGs_isStageSwitch__Fii
/* 802B8A08  2C 03 00 00 */	cmpwi r3, 0
/* 802B8A0C  41 82 00 28 */	beq lbl_802B8A34
/* 802B8A10  38 61 00 C0 */	addi r3, r1, 0xc0
/* 802B8A14  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000009@ha */
/* 802B8A18  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x01000009@l */
/* 802B8A1C  48 00 11 45 */	bl __ct__10JAISoundIDFUl
/* 802B8A20  7C 64 1B 78 */	mr r4, r3
/* 802B8A24  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8A28  48 00 10 61 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8A2C  3B E0 00 0A */	li r31, 0xa
/* 802B8A30  48 00 00 64 */	b lbl_802B8A94
lbl_802B8A34:
/* 802B8A34  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B8A38  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B8A3C  A0 63 00 6E */	lhz r3, 0x6e(r3)
/* 802B8A40  4B E8 89 5D */	bl dComIfGs_isEventBit__FUs
/* 802B8A44  2C 03 00 00 */	cmpwi r3, 0
/* 802B8A48  41 82 00 24 */	beq lbl_802B8A6C
/* 802B8A4C  38 61 00 BC */	addi r3, r1, 0xbc
/* 802B8A50  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005B@ha */
/* 802B8A54  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0200005B@l */
/* 802B8A58  48 00 11 09 */	bl __ct__10JAISoundIDFUl
/* 802B8A5C  7C 64 1B 78 */	mr r4, r3
/* 802B8A60  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8A64  48 00 10 25 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8A68  48 00 00 2C */	b lbl_802B8A94
lbl_802B8A6C:
/* 802B8A6C  3B E0 00 0C */	li r31, 0xc
/* 802B8A70  3B C0 00 04 */	li r30, 4
/* 802B8A74  38 00 00 01 */	li r0, 1
/* 802B8A78  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8A7C  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8A80  38 80 00 01 */	li r4, 1
/* 802B8A84  38 A0 02 BC */	li r5, 0x2bc
/* 802B8A88  38 C0 04 4C */	li r6, 0x44c
/* 802B8A8C  38 E0 05 DC */	li r7, 0x5dc
/* 802B8A90  48 00 6E F1 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
lbl_802B8A94:
/* 802B8A94  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B8A98  88 8D 82 E0 */	lbz r4, struct_80450860+0x0(r13)
/* 802B8A9C  48 00 0F 11 */	bl unMuteSceneBgm__8Z2SeqMgrFUl
/* 802B8AA0  48 00 0C 18 */	b lbl_802B96B8
/* 802B8AA4  38 61 00 B8 */	addi r3, r1, 0xb8
/* 802B8AA8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000018@ha */
/* 802B8AAC  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x01000018@l */
/* 802B8AB0  48 00 10 B1 */	bl __ct__10JAISoundIDFUl
/* 802B8AB4  7C 64 1B 78 */	mr r4, r3
/* 802B8AB8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8ABC  48 00 0F CD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8AC0  3B E0 00 13 */	li r31, 0x13
/* 802B8AC4  3B 20 00 3C */	li r25, 0x3c
/* 802B8AC8  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B8ACC  7F 44 D3 78 */	mr r4, r26
/* 802B8AD0  4B FF 74 BD */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B8AD4  3B A0 00 05 */	li r29, 5
/* 802B8AD8  3B C0 00 06 */	li r30, 6
/* 802B8ADC  48 00 0B DC */	b lbl_802B96B8
/* 802B8AE0  38 61 00 B4 */	addi r3, r1, 0xb4
/* 802B8AE4  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000018@ha */
/* 802B8AE8  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x01000018@l */
/* 802B8AEC  48 00 10 75 */	bl __ct__10JAISoundIDFUl
/* 802B8AF0  7C 64 1B 78 */	mr r4, r3
/* 802B8AF4  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8AF8  48 00 0F 91 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8AFC  3B E0 00 13 */	li r31, 0x13
/* 802B8B00  3B A0 00 05 */	li r29, 5
/* 802B8B04  3B C0 00 07 */	li r30, 7
/* 802B8B08  3B 20 00 14 */	li r25, 0x14
/* 802B8B0C  38 00 00 01 */	li r0, 1
/* 802B8B10  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8B14  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8B18  38 80 00 01 */	li r4, 1
/* 802B8B1C  38 A0 02 BC */	li r5, 0x2bc
/* 802B8B20  38 C0 04 4C */	li r6, 0x44c
/* 802B8B24  38 E0 05 DC */	li r7, 0x5dc
/* 802B8B28  48 00 6E 59 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8B2C  48 00 0B 8C */	b lbl_802B96B8
/* 802B8B30  3B A0 00 05 */	li r29, 5
/* 802B8B34  38 60 00 03 */	li r3, 3
/* 802B8B38  38 80 00 7C */	li r4, 0x7c
/* 802B8B3C  4B D7 4C 05 */	bl dComIfGs_isStageSwitch__Fii
/* 802B8B40  2C 03 00 00 */	cmpwi r3, 0
/* 802B8B44  41 82 00 28 */	beq lbl_802B8B6C
/* 802B8B48  38 61 00 B0 */	addi r3, r1, 0xb0
/* 802B8B4C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000018@ha */
/* 802B8B50  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x01000018@l */
/* 802B8B54  48 00 10 0D */	bl __ct__10JAISoundIDFUl
/* 802B8B58  7C 64 1B 78 */	mr r4, r3
/* 802B8B5C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8B60  48 00 0F 29 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8B64  3B E0 00 13 */	li r31, 0x13
/* 802B8B68  48 00 0B 50 */	b lbl_802B96B8
lbl_802B8B6C:
/* 802B8B6C  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B8B70  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B8B74  A0 63 00 80 */	lhz r3, 0x80(r3)
/* 802B8B78  4B E8 88 25 */	bl dComIfGs_isEventBit__FUs
/* 802B8B7C  2C 03 00 00 */	cmpwi r3, 0
/* 802B8B80  41 82 00 24 */	beq lbl_802B8BA4
/* 802B8B84  38 61 00 AC */	addi r3, r1, 0xac
/* 802B8B88  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005B@ha */
/* 802B8B8C  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0200005B@l */
/* 802B8B90  48 00 0F D1 */	bl __ct__10JAISoundIDFUl
/* 802B8B94  7C 64 1B 78 */	mr r4, r3
/* 802B8B98  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8B9C  48 00 0E ED */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8BA0  48 00 0B 18 */	b lbl_802B96B8
lbl_802B8BA4:
/* 802B8BA4  3B E0 00 16 */	li r31, 0x16
/* 802B8BA8  3B C0 00 08 */	li r30, 8
/* 802B8BAC  38 00 00 01 */	li r0, 1
/* 802B8BB0  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8BB4  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8BB8  38 80 00 01 */	li r4, 1
/* 802B8BBC  38 A0 02 BC */	li r5, 0x2bc
/* 802B8BC0  38 C0 04 4C */	li r6, 0x44c
/* 802B8BC4  38 E0 05 DC */	li r7, 0x5dc
/* 802B8BC8  48 00 6D B9 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8BCC  48 00 0A EC */	b lbl_802B96B8
/* 802B8BD0  38 61 00 A8 */	addi r3, r1, 0xa8
/* 802B8BD4  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000020@ha */
/* 802B8BD8  38 84 00 20 */	addi r4, r4, 0x0020 /* 0x01000020@l */
/* 802B8BDC  48 00 0F 85 */	bl __ct__10JAISoundIDFUl
/* 802B8BE0  7C 64 1B 78 */	mr r4, r3
/* 802B8BE4  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8BE8  48 00 0E A1 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8BEC  3B E0 00 15 */	li r31, 0x15
/* 802B8BF0  3B 20 00 40 */	li r25, 0x40
/* 802B8BF4  3B A0 00 09 */	li r29, 9
/* 802B8BF8  3B C0 00 0A */	li r30, 0xa
/* 802B8BFC  48 00 0A BC */	b lbl_802B96B8
/* 802B8C00  38 61 00 A4 */	addi r3, r1, 0xa4
/* 802B8C04  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000020@ha */
/* 802B8C08  38 84 00 20 */	addi r4, r4, 0x0020 /* 0x01000020@l */
/* 802B8C0C  48 00 0F 55 */	bl __ct__10JAISoundIDFUl
/* 802B8C10  7C 64 1B 78 */	mr r4, r3
/* 802B8C14  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8C18  48 00 0E 71 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8C1C  3B E0 00 15 */	li r31, 0x15
/* 802B8C20  3B 20 00 17 */	li r25, 0x17
/* 802B8C24  3B A0 00 09 */	li r29, 9
/* 802B8C28  3B C0 00 0B */	li r30, 0xb
/* 802B8C2C  38 00 00 01 */	li r0, 1
/* 802B8C30  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8C34  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8C38  38 80 00 01 */	li r4, 1
/* 802B8C3C  38 A0 02 BC */	li r5, 0x2bc
/* 802B8C40  38 C0 04 4C */	li r6, 0x44c
/* 802B8C44  38 E0 05 DC */	li r7, 0x5dc
/* 802B8C48  48 00 6D 39 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8C4C  48 00 0A 6C */	b lbl_802B96B8
/* 802B8C50  3B A0 00 09 */	li r29, 9
/* 802B8C54  38 60 00 04 */	li r3, 4
/* 802B8C58  38 80 00 0E */	li r4, 0xe
/* 802B8C5C  4B D7 4A E5 */	bl dComIfGs_isStageSwitch__Fii
/* 802B8C60  2C 03 00 00 */	cmpwi r3, 0
/* 802B8C64  41 82 00 28 */	beq lbl_802B8C8C
/* 802B8C68  38 61 00 A0 */	addi r3, r1, 0xa0
/* 802B8C6C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000020@ha */
/* 802B8C70  38 84 00 20 */	addi r4, r4, 0x0020 /* 0x01000020@l */
/* 802B8C74  48 00 0E ED */	bl __ct__10JAISoundIDFUl
/* 802B8C78  7C 64 1B 78 */	mr r4, r3
/* 802B8C7C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8C80  48 00 0E 09 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8C84  3B E0 00 15 */	li r31, 0x15
/* 802B8C88  48 00 0A 30 */	b lbl_802B96B8
lbl_802B8C8C:
/* 802B8C8C  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B8C90  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B8C94  A0 63 00 9C */	lhz r3, 0x9c(r3)
/* 802B8C98  4B E8 87 05 */	bl dComIfGs_isEventBit__FUs
/* 802B8C9C  2C 03 00 00 */	cmpwi r3, 0
/* 802B8CA0  41 82 00 24 */	beq lbl_802B8CC4
/* 802B8CA4  38 61 00 9C */	addi r3, r1, 0x9c
/* 802B8CA8  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005B@ha */
/* 802B8CAC  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0200005B@l */
/* 802B8CB0  48 00 0E B1 */	bl __ct__10JAISoundIDFUl
/* 802B8CB4  7C 64 1B 78 */	mr r4, r3
/* 802B8CB8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8CBC  48 00 0D CD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8CC0  48 00 09 F8 */	b lbl_802B96B8
lbl_802B8CC4:
/* 802B8CC4  3B E0 00 1E */	li r31, 0x1e
/* 802B8CC8  3B C0 00 0C */	li r30, 0xc
/* 802B8CCC  38 00 00 01 */	li r0, 1
/* 802B8CD0  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8CD4  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8CD8  38 80 00 01 */	li r4, 1
/* 802B8CDC  38 A0 02 BC */	li r5, 0x2bc
/* 802B8CE0  38 C0 04 4C */	li r6, 0x44c
/* 802B8CE4  38 E0 05 DC */	li r7, 0x5dc
/* 802B8CE8  48 00 6C 99 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8CEC  48 00 09 CC */	b lbl_802B96B8
/* 802B8CF0  38 61 00 98 */	addi r3, r1, 0x98
/* 802B8CF4  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002D@ha */
/* 802B8CF8  38 84 00 2D */	addi r4, r4, 0x002D /* 0x0100002D@l */
/* 802B8CFC  48 00 0E 65 */	bl __ct__10JAISoundIDFUl
/* 802B8D00  7C 64 1B 78 */	mr r4, r3
/* 802B8D04  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8D08  48 00 0D 81 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8D0C  3B E0 00 1A */	li r31, 0x1a
/* 802B8D10  3B 20 00 41 */	li r25, 0x41
/* 802B8D14  3B A0 00 0D */	li r29, 0xd
/* 802B8D18  3B C0 00 0E */	li r30, 0xe
/* 802B8D1C  2C 1A 00 01 */	cmpwi r26, 1
/* 802B8D20  40 82 09 98 */	bne lbl_802B96B8
/* 802B8D24  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8D28  38 80 00 01 */	li r4, 1
/* 802B8D2C  38 A0 02 BC */	li r5, 0x2bc
/* 802B8D30  38 C0 04 4C */	li r6, 0x44c
/* 802B8D34  38 E0 05 DC */	li r7, 0x5dc
/* 802B8D38  48 00 6C 49 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8D3C  48 00 09 7C */	b lbl_802B96B8
/* 802B8D40  38 61 00 94 */	addi r3, r1, 0x94
/* 802B8D44  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002D@ha */
/* 802B8D48  38 84 00 2D */	addi r4, r4, 0x002D /* 0x0100002D@l */
/* 802B8D4C  48 00 0E 15 */	bl __ct__10JAISoundIDFUl
/* 802B8D50  7C 64 1B 78 */	mr r4, r3
/* 802B8D54  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8D58  48 00 0D 31 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8D5C  3B E0 00 1A */	li r31, 0x1a
/* 802B8D60  3B 20 00 22 */	li r25, 0x22
/* 802B8D64  3B A0 00 0D */	li r29, 0xd
/* 802B8D68  3B C0 00 0F */	li r30, 0xf
/* 802B8D6C  38 00 00 01 */	li r0, 1
/* 802B8D70  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8D74  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8D78  38 80 00 01 */	li r4, 1
/* 802B8D7C  38 A0 02 BC */	li r5, 0x2bc
/* 802B8D80  38 C0 04 4C */	li r6, 0x44c
/* 802B8D84  38 E0 05 DC */	li r7, 0x5dc
/* 802B8D88  48 00 6B F9 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8D8C  48 00 09 2C */	b lbl_802B96B8
/* 802B8D90  3B A0 00 0D */	li r29, 0xd
/* 802B8D94  38 60 00 0A */	li r3, 0xa
/* 802B8D98  38 80 00 0A */	li r4, 0xa
/* 802B8D9C  4B D7 49 A5 */	bl dComIfGs_isStageSwitch__Fii
/* 802B8DA0  2C 03 00 00 */	cmpwi r3, 0
/* 802B8DA4  41 82 00 28 */	beq lbl_802B8DCC
/* 802B8DA8  38 61 00 90 */	addi r3, r1, 0x90
/* 802B8DAC  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002D@ha */
/* 802B8DB0  38 84 00 2D */	addi r4, r4, 0x002D /* 0x0100002D@l */
/* 802B8DB4  48 00 0D AD */	bl __ct__10JAISoundIDFUl
/* 802B8DB8  7C 64 1B 78 */	mr r4, r3
/* 802B8DBC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8DC0  48 00 0C C9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8DC4  3B E0 00 1A */	li r31, 0x1a
/* 802B8DC8  48 00 08 F0 */	b lbl_802B96B8
lbl_802B8DCC:
/* 802B8DCC  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B8DD0  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B8DD4  A0 63 02 12 */	lhz r3, 0x212(r3)
/* 802B8DD8  4B E8 85 C5 */	bl dComIfGs_isEventBit__FUs
/* 802B8DDC  2C 03 00 00 */	cmpwi r3, 0
/* 802B8DE0  41 82 00 24 */	beq lbl_802B8E04
/* 802B8DE4  38 61 00 8C */	addi r3, r1, 0x8c
/* 802B8DE8  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005B@ha */
/* 802B8DEC  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0200005B@l */
/* 802B8DF0  48 00 0D 71 */	bl __ct__10JAISoundIDFUl
/* 802B8DF4  7C 64 1B 78 */	mr r4, r3
/* 802B8DF8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8DFC  48 00 0C 8D */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8E00  48 00 08 B8 */	b lbl_802B96B8
lbl_802B8E04:
/* 802B8E04  3B E0 00 4C */	li r31, 0x4c
/* 802B8E08  3B C0 00 10 */	li r30, 0x10
/* 802B8E0C  38 00 00 01 */	li r0, 1
/* 802B8E10  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8E14  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8E18  38 80 00 01 */	li r4, 1
/* 802B8E1C  38 A0 02 BC */	li r5, 0x2bc
/* 802B8E20  38 C0 04 4C */	li r6, 0x44c
/* 802B8E24  38 E0 05 DC */	li r7, 0x5dc
/* 802B8E28  48 00 6B 59 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8E2C  48 00 08 8C */	b lbl_802B96B8
/* 802B8E30  38 61 00 88 */	addi r3, r1, 0x88
/* 802B8E34  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000037@ha */
/* 802B8E38  38 84 00 37 */	addi r4, r4, 0x0037 /* 0x01000037@l */
/* 802B8E3C  48 00 0D 25 */	bl __ct__10JAISoundIDFUl
/* 802B8E40  7C 64 1B 78 */	mr r4, r3
/* 802B8E44  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8E48  48 00 0C 41 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8E4C  3B E0 00 1D */	li r31, 0x1d
/* 802B8E50  3B 20 00 40 */	li r25, 0x40
/* 802B8E54  3B A0 00 11 */	li r29, 0x11
/* 802B8E58  3B C0 00 12 */	li r30, 0x12
/* 802B8E5C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B8E60  7F 44 D3 78 */	mr r4, r26
/* 802B8E64  4B FF 71 29 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B8E68  48 00 08 50 */	b lbl_802B96B8
/* 802B8E6C  38 61 00 84 */	addi r3, r1, 0x84
/* 802B8E70  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000037@ha */
/* 802B8E74  38 84 00 37 */	addi r4, r4, 0x0037 /* 0x01000037@l */
/* 802B8E78  48 00 0C E9 */	bl __ct__10JAISoundIDFUl
/* 802B8E7C  7C 64 1B 78 */	mr r4, r3
/* 802B8E80  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8E84  48 00 0C 05 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8E88  3B E0 00 1D */	li r31, 0x1d
/* 802B8E8C  3B 20 00 38 */	li r25, 0x38
/* 802B8E90  3B A0 00 11 */	li r29, 0x11
/* 802B8E94  3B C0 00 13 */	li r30, 0x13
/* 802B8E98  38 00 00 01 */	li r0, 1
/* 802B8E9C  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8EA0  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8EA4  38 80 00 01 */	li r4, 1
/* 802B8EA8  38 A0 02 BC */	li r5, 0x2bc
/* 802B8EAC  38 C0 04 4C */	li r6, 0x44c
/* 802B8EB0  38 E0 05 DC */	li r7, 0x5dc
/* 802B8EB4  48 00 6A CD */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8EB8  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B8EBC  7F 44 D3 78 */	mr r4, r26
/* 802B8EC0  4B FF 70 CD */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B8EC4  48 00 07 F4 */	b lbl_802B96B8
/* 802B8EC8  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B8ECC  38 80 00 3C */	li r4, 0x3c
/* 802B8ED0  48 00 0A DD */	bl unMuteSceneBgm__8Z2SeqMgrFUl
/* 802B8ED4  3B A0 00 11 */	li r29, 0x11
/* 802B8ED8  38 60 00 08 */	li r3, 8
/* 802B8EDC  38 80 00 19 */	li r4, 0x19
/* 802B8EE0  4B D7 48 61 */	bl dComIfGs_isStageSwitch__Fii
/* 802B8EE4  2C 03 00 00 */	cmpwi r3, 0
/* 802B8EE8  41 82 00 28 */	beq lbl_802B8F10
/* 802B8EEC  38 61 00 80 */	addi r3, r1, 0x80
/* 802B8EF0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000037@ha */
/* 802B8EF4  38 84 00 37 */	addi r4, r4, 0x0037 /* 0x01000037@l */
/* 802B8EF8  48 00 0C 69 */	bl __ct__10JAISoundIDFUl
/* 802B8EFC  7C 64 1B 78 */	mr r4, r3
/* 802B8F00  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8F04  48 00 0B 85 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8F08  3B E0 00 1D */	li r31, 0x1d
/* 802B8F0C  48 00 07 AC */	b lbl_802B96B8
lbl_802B8F10:
/* 802B8F10  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B8F14  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B8F18  A0 63 02 14 */	lhz r3, 0x214(r3)
/* 802B8F1C  4B E8 84 81 */	bl dComIfGs_isEventBit__FUs
/* 802B8F20  2C 03 00 00 */	cmpwi r3, 0
/* 802B8F24  41 82 00 24 */	beq lbl_802B8F48
/* 802B8F28  38 61 00 7C */	addi r3, r1, 0x7c
/* 802B8F2C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005B@ha */
/* 802B8F30  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0200005B@l */
/* 802B8F34  48 00 0C 2D */	bl __ct__10JAISoundIDFUl
/* 802B8F38  7C 64 1B 78 */	mr r4, r3
/* 802B8F3C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8F40  48 00 0B 49 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8F44  48 00 07 74 */	b lbl_802B96B8
lbl_802B8F48:
/* 802B8F48  3B E0 00 2E */	li r31, 0x2e
/* 802B8F4C  3B C0 00 14 */	li r30, 0x14
/* 802B8F50  38 00 00 01 */	li r0, 1
/* 802B8F54  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8F58  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8F5C  38 80 00 01 */	li r4, 1
/* 802B8F60  38 A0 02 BC */	li r5, 0x2bc
/* 802B8F64  38 C0 04 4C */	li r6, 0x44c
/* 802B8F68  38 E0 05 DC */	li r7, 0x5dc
/* 802B8F6C  48 00 6A 15 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8F70  48 00 07 48 */	b lbl_802B96B8
/* 802B8F74  38 61 00 78 */	addi r3, r1, 0x78
/* 802B8F78  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003C@ha */
/* 802B8F7C  38 84 00 3C */	addi r4, r4, 0x003C /* 0x0100003C@l */
/* 802B8F80  48 00 0B E1 */	bl __ct__10JAISoundIDFUl
/* 802B8F84  7C 64 1B 78 */	mr r4, r3
/* 802B8F88  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8F8C  48 00 0A FD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8F90  3B E0 00 26 */	li r31, 0x26
/* 802B8F94  3B 20 00 40 */	li r25, 0x40
/* 802B8F98  3B A0 00 15 */	li r29, 0x15
/* 802B8F9C  3B C0 00 16 */	li r30, 0x16
/* 802B8FA0  48 00 07 18 */	b lbl_802B96B8
/* 802B8FA4  38 61 00 74 */	addi r3, r1, 0x74
/* 802B8FA8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003C@ha */
/* 802B8FAC  38 84 00 3C */	addi r4, r4, 0x003C /* 0x0100003C@l */
/* 802B8FB0  48 00 0B B1 */	bl __ct__10JAISoundIDFUl
/* 802B8FB4  7C 64 1B 78 */	mr r4, r3
/* 802B8FB8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B8FBC  48 00 0A CD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B8FC0  3B E0 00 26 */	li r31, 0x26
/* 802B8FC4  3B 20 00 3F */	li r25, 0x3f
/* 802B8FC8  3B A0 00 15 */	li r29, 0x15
/* 802B8FCC  3B C0 00 17 */	li r30, 0x17
/* 802B8FD0  38 00 00 01 */	li r0, 1
/* 802B8FD4  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B8FD8  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B8FDC  38 80 00 01 */	li r4, 1
/* 802B8FE0  38 A0 02 BC */	li r5, 0x2bc
/* 802B8FE4  38 C0 04 4C */	li r6, 0x44c
/* 802B8FE8  38 E0 05 DC */	li r7, 0x5dc
/* 802B8FEC  48 00 69 95 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B8FF0  48 00 06 C8 */	b lbl_802B96B8
/* 802B8FF4  3B A0 00 15 */	li r29, 0x15
/* 802B8FF8  38 60 00 07 */	li r3, 7
/* 802B8FFC  38 80 00 18 */	li r4, 0x18
/* 802B9000  4B D7 47 41 */	bl dComIfGs_isStageSwitch__Fii
/* 802B9004  2C 03 00 00 */	cmpwi r3, 0
/* 802B9008  41 82 00 28 */	beq lbl_802B9030
/* 802B900C  38 61 00 70 */	addi r3, r1, 0x70
/* 802B9010  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003C@ha */
/* 802B9014  38 84 00 3C */	addi r4, r4, 0x003C /* 0x0100003C@l */
/* 802B9018  48 00 0B 49 */	bl __ct__10JAISoundIDFUl
/* 802B901C  7C 64 1B 78 */	mr r4, r3
/* 802B9020  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9024  48 00 0A 65 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9028  3B E0 00 26 */	li r31, 0x26
/* 802B902C  48 00 06 8C */	b lbl_802B96B8
lbl_802B9030:
/* 802B9030  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B9034  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B9038  A0 63 02 16 */	lhz r3, 0x216(r3)
/* 802B903C  4B E8 83 61 */	bl dComIfGs_isEventBit__FUs
/* 802B9040  2C 03 00 00 */	cmpwi r3, 0
/* 802B9044  41 82 00 24 */	beq lbl_802B9068
/* 802B9048  38 61 00 6C */	addi r3, r1, 0x6c
/* 802B904C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005B@ha */
/* 802B9050  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0200005B@l */
/* 802B9054  48 00 0B 0D */	bl __ct__10JAISoundIDFUl
/* 802B9058  7C 64 1B 78 */	mr r4, r3
/* 802B905C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9060  48 00 0A 29 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9064  48 00 06 54 */	b lbl_802B96B8
lbl_802B9068:
/* 802B9068  3B E0 00 4E */	li r31, 0x4e
/* 802B906C  3B C0 00 18 */	li r30, 0x18
/* 802B9070  38 00 00 01 */	li r0, 1
/* 802B9074  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B9078  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B907C  38 80 00 01 */	li r4, 1
/* 802B9080  38 A0 02 BC */	li r5, 0x2bc
/* 802B9084  38 C0 04 4C */	li r6, 0x44c
/* 802B9088  38 E0 05 DC */	li r7, 0x5dc
/* 802B908C  48 00 68 F5 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B9090  48 00 06 28 */	b lbl_802B96B8
/* 802B9094  2C 1A 00 10 */	cmpwi r26, 0x10
/* 802B9098  40 82 00 28 */	bne lbl_802B90C0
/* 802B909C  38 61 00 68 */	addi r3, r1, 0x68
/* 802B90A0  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006D@ha */
/* 802B90A4  38 84 00 6D */	addi r4, r4, 0x006D /* 0x0100006D@l */
/* 802B90A8  48 00 0A B9 */	bl __ct__10JAISoundIDFUl
/* 802B90AC  7C 64 1B 78 */	mr r4, r3
/* 802B90B0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B90B4  48 00 09 D5 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B90B8  3B E0 00 40 */	li r31, 0x40
/* 802B90BC  48 00 00 24 */	b lbl_802B90E0
lbl_802B90C0:
/* 802B90C0  38 61 00 64 */	addi r3, r1, 0x64
/* 802B90C4  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003D@ha */
/* 802B90C8  38 84 00 3D */	addi r4, r4, 0x003D /* 0x0100003D@l */
/* 802B90CC  48 00 0A 95 */	bl __ct__10JAISoundIDFUl
/* 802B90D0  7C 64 1B 78 */	mr r4, r3
/* 802B90D4  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B90D8  48 00 09 B1 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B90DC  3B E0 00 27 */	li r31, 0x27
lbl_802B90E0:
/* 802B90E0  3B A0 00 19 */	li r29, 0x19
/* 802B90E4  3B C0 00 1A */	li r30, 0x1a
/* 802B90E8  48 00 05 D0 */	b lbl_802B96B8
/* 802B90EC  38 61 00 60 */	addi r3, r1, 0x60
/* 802B90F0  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003D@ha */
/* 802B90F4  38 84 00 3D */	addi r4, r4, 0x003D /* 0x0100003D@l */
/* 802B90F8  48 00 0A 69 */	bl __ct__10JAISoundIDFUl
/* 802B90FC  7C 64 1B 78 */	mr r4, r3
/* 802B9100  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9104  48 00 09 85 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9108  3B E0 00 27 */	li r31, 0x27
/* 802B910C  3B 20 00 43 */	li r25, 0x43
/* 802B9110  3B A0 00 19 */	li r29, 0x19
/* 802B9114  3B C0 00 1B */	li r30, 0x1b
/* 802B9118  38 00 00 01 */	li r0, 1
/* 802B911C  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B9120  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B9124  38 80 00 01 */	li r4, 1
/* 802B9128  38 A0 02 BC */	li r5, 0x2bc
/* 802B912C  38 C0 04 4C */	li r6, 0x44c
/* 802B9130  38 E0 05 DC */	li r7, 0x5dc
/* 802B9134  48 00 68 4D */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B9138  48 00 05 80 */	b lbl_802B96B8
/* 802B913C  3B A0 00 19 */	li r29, 0x19
/* 802B9140  38 60 00 16 */	li r3, 0x16
/* 802B9144  38 80 00 25 */	li r4, 0x25
/* 802B9148  4B D7 45 F9 */	bl dComIfGs_isStageSwitch__Fii
/* 802B914C  2C 03 00 00 */	cmpwi r3, 0
/* 802B9150  41 82 00 28 */	beq lbl_802B9178
/* 802B9154  38 61 00 5C */	addi r3, r1, 0x5c
/* 802B9158  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003D@ha */
/* 802B915C  38 84 00 3D */	addi r4, r4, 0x003D /* 0x0100003D@l */
/* 802B9160  48 00 0A 01 */	bl __ct__10JAISoundIDFUl
/* 802B9164  7C 64 1B 78 */	mr r4, r3
/* 802B9168  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B916C  48 00 09 1D */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9170  3B E0 00 27 */	li r31, 0x27
/* 802B9174  48 00 05 44 */	b lbl_802B96B8
lbl_802B9178:
/* 802B9178  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B917C  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B9180  A0 63 02 18 */	lhz r3, 0x218(r3)
/* 802B9184  4B E8 82 19 */	bl dComIfGs_isEventBit__FUs
/* 802B9188  2C 03 00 00 */	cmpwi r3, 0
/* 802B918C  41 82 00 24 */	beq lbl_802B91B0
/* 802B9190  38 61 00 58 */	addi r3, r1, 0x58
/* 802B9194  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005B@ha */
/* 802B9198  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0200005B@l */
/* 802B919C  48 00 09 C5 */	bl __ct__10JAISoundIDFUl
/* 802B91A0  7C 64 1B 78 */	mr r4, r3
/* 802B91A4  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B91A8  48 00 08 E1 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B91AC  48 00 05 0C */	b lbl_802B96B8
lbl_802B91B0:
/* 802B91B0  3B E0 00 1E */	li r31, 0x1e
/* 802B91B4  3B C0 00 1C */	li r30, 0x1c
/* 802B91B8  38 00 00 01 */	li r0, 1
/* 802B91BC  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B91C0  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B91C4  38 80 00 01 */	li r4, 1
/* 802B91C8  38 A0 02 BC */	li r5, 0x2bc
/* 802B91CC  38 C0 04 4C */	li r6, 0x44c
/* 802B91D0  38 E0 05 DC */	li r7, 0x5dc
/* 802B91D4  48 00 67 AD */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B91D8  48 00 04 E0 */	b lbl_802B96B8
/* 802B91DC  2C 13 00 08 */	cmpwi r19, 8
/* 802B91E0  40 82 00 2C */	bne lbl_802B920C
/* 802B91E4  2C 1A 00 00 */	cmpwi r26, 0
/* 802B91E8  41 82 00 0C */	beq lbl_802B91F4
/* 802B91EC  2C 1A 00 09 */	cmpwi r26, 9
/* 802B91F0  40 82 00 0C */	bne lbl_802B91FC
lbl_802B91F4:
/* 802B91F4  3B 80 00 77 */	li r28, 0x77
/* 802B91F8  48 00 00 54 */	b lbl_802B924C
lbl_802B91FC:
/* 802B91FC  2C 1A 00 0B */	cmpwi r26, 0xb
/* 802B9200  40 82 00 4C */	bne lbl_802B924C
/* 802B9204  3B 80 00 81 */	li r28, 0x81
/* 802B9208  48 00 00 44 */	b lbl_802B924C
lbl_802B920C:
/* 802B920C  2C 13 00 09 */	cmpwi r19, 9
/* 802B9210  40 82 00 0C */	bne lbl_802B921C
/* 802B9214  3B 80 00 78 */	li r28, 0x78
/* 802B9218  48 00 00 34 */	b lbl_802B924C
lbl_802B921C:
/* 802B921C  3A C0 00 01 */	li r22, 1
/* 802B9220  38 61 00 54 */	addi r3, r1, 0x54
/* 802B9224  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003E@ha */
/* 802B9228  38 84 00 3E */	addi r4, r4, 0x003E /* 0x0100003E@l */
/* 802B922C  48 00 09 35 */	bl __ct__10JAISoundIDFUl
/* 802B9230  7C 64 1B 78 */	mr r4, r3
/* 802B9234  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9238  48 00 08 51 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B923C  3B E0 00 28 */	li r31, 0x28
/* 802B9240  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B9244  7F 44 D3 78 */	mr r4, r26
/* 802B9248  4B FF 6D 45 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_802B924C:
/* 802B924C  3B A0 00 1D */	li r29, 0x1d
/* 802B9250  3B C0 00 1E */	li r30, 0x1e
/* 802B9254  48 00 04 64 */	b lbl_802B96B8
/* 802B9258  38 61 00 50 */	addi r3, r1, 0x50
/* 802B925C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003E@ha */
/* 802B9260  38 84 00 3E */	addi r4, r4, 0x003E /* 0x0100003E@l */
/* 802B9264  48 00 08 FD */	bl __ct__10JAISoundIDFUl
/* 802B9268  7C 64 1B 78 */	mr r4, r3
/* 802B926C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9270  48 00 08 19 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9274  3B E0 00 28 */	li r31, 0x28
/* 802B9278  3B 20 00 48 */	li r25, 0x48
/* 802B927C  3B A0 00 1D */	li r29, 0x1d
/* 802B9280  3B C0 00 1F */	li r30, 0x1f
/* 802B9284  38 00 00 01 */	li r0, 1
/* 802B9288  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B928C  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B9290  38 80 00 01 */	li r4, 1
/* 802B9294  38 A0 02 BC */	li r5, 0x2bc
/* 802B9298  38 C0 04 4C */	li r6, 0x44c
/* 802B929C  38 E0 05 DC */	li r7, 0x5dc
/* 802B92A0  48 00 66 E1 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B92A4  48 00 04 14 */	b lbl_802B96B8
/* 802B92A8  2C 13 00 08 */	cmpwi r19, 8
/* 802B92AC  40 82 00 0C */	bne lbl_802B92B8
/* 802B92B0  3B 80 00 81 */	li r28, 0x81
/* 802B92B4  48 00 04 04 */	b lbl_802B96B8
lbl_802B92B8:
/* 802B92B8  2C 13 00 09 */	cmpwi r19, 9
/* 802B92BC  40 82 00 0C */	bne lbl_802B92C8
/* 802B92C0  3B 80 00 79 */	li r28, 0x79
/* 802B92C4  48 00 03 F4 */	b lbl_802B96B8
lbl_802B92C8:
/* 802B92C8  38 60 00 17 */	li r3, 0x17
/* 802B92CC  38 80 00 16 */	li r4, 0x16
/* 802B92D0  4B D7 44 71 */	bl dComIfGs_isStageSwitch__Fii
/* 802B92D4  2C 03 00 00 */	cmpwi r3, 0
/* 802B92D8  41 82 00 28 */	beq lbl_802B9300
/* 802B92DC  38 61 00 4C */	addi r3, r1, 0x4c
/* 802B92E0  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003E@ha */
/* 802B92E4  38 84 00 3E */	addi r4, r4, 0x003E /* 0x0100003E@l */
/* 802B92E8  48 00 08 79 */	bl __ct__10JAISoundIDFUl
/* 802B92EC  7C 64 1B 78 */	mr r4, r3
/* 802B92F0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B92F4  48 00 07 95 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B92F8  3B E0 00 28 */	li r31, 0x28
/* 802B92FC  48 00 03 BC */	b lbl_802B96B8
lbl_802B9300:
/* 802B9300  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B9304  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B9308  A0 63 04 74 */	lhz r3, 0x474(r3)
/* 802B930C  4B E8 80 91 */	bl dComIfGs_isEventBit__FUs
/* 802B9310  2C 03 00 00 */	cmpwi r3, 0
/* 802B9314  41 82 03 A4 */	beq lbl_802B96B8
/* 802B9318  38 61 00 48 */	addi r3, r1, 0x48
/* 802B931C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200005B@ha */
/* 802B9320  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0200005B@l */
/* 802B9324  48 00 08 3D */	bl __ct__10JAISoundIDFUl
/* 802B9328  7C 64 1B 78 */	mr r4, r3
/* 802B932C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9330  48 00 07 59 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9334  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802B9338  38 63 07 F4 */	addi r3, r3, 0x7f4
/* 802B933C  48 00 06 59 */	bl func_802B9994
/* 802B9340  7C 70 1B 78 */	mr r16, r3
/* 802B9344  48 00 00 3C */	b lbl_802B9380
lbl_802B9348:
/* 802B9348  38 61 00 44 */	addi r3, r1, 0x44
/* 802B934C  80 90 00 00 */	lwz r4, 0(r16)
/* 802B9350  48 00 06 39 */	bl getID__8JAISoundCFv
/* 802B9354  80 61 00 44 */	lwz r3, 0x44(r1)
/* 802B9358  3C 03 FE 00 */	addis r0, r3, 0xfe00
/* 802B935C  28 00 00 46 */	cmplwi r0, 0x46
/* 802B9360  40 82 00 1C */	bne lbl_802B937C
/* 802B9364  38 61 00 40 */	addi r3, r1, 0x40
/* 802B9368  38 80 FF FF */	li r4, -1
/* 802B936C  48 00 07 F5 */	bl __ct__10JAISoundIDFUl
/* 802B9370  7C 64 1B 78 */	mr r4, r3
/* 802B9374  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9378  48 00 07 11 */	bl __as__10JAISoundIDFRC10JAISoundID
lbl_802B937C:
/* 802B937C  82 10 00 0C */	lwz r16, 0xc(r16)
lbl_802B9380:
/* 802B9380  28 10 00 00 */	cmplwi r16, 0
/* 802B9384  40 82 FF C4 */	bne lbl_802B9348
/* 802B9388  48 00 03 30 */	b lbl_802B96B8
/* 802B938C  3B A0 00 1D */	li r29, 0x1d
/* 802B9390  3B E0 00 39 */	li r31, 0x39
/* 802B9394  3B C0 00 20 */	li r30, 0x20
/* 802B9398  2C 1A 00 32 */	cmpwi r26, 0x32
/* 802B939C  40 82 00 0C */	bne lbl_802B93A8
/* 802B93A0  38 00 00 01 */	li r0, 1
/* 802B93A4  98 1B 00 1E */	stb r0, 0x1e(r27)
lbl_802B93A8:
/* 802B93A8  38 00 00 01 */	li r0, 1
/* 802B93AC  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B93B0  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B93B4  38 80 00 01 */	li r4, 1
/* 802B93B8  38 A0 02 BC */	li r5, 0x2bc
/* 802B93BC  38 C0 04 4C */	li r6, 0x44c
/* 802B93C0  38 E0 05 DC */	li r7, 0x5dc
/* 802B93C4  48 00 65 BD */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B93C8  48 00 02 F0 */	b lbl_802B96B8
/* 802B93CC  2C 1A 00 01 */	cmpwi r26, 1
/* 802B93D0  41 80 00 30 */	blt lbl_802B9400
/* 802B93D4  2C 1A 00 06 */	cmpwi r26, 6
/* 802B93D8  41 81 00 28 */	bgt lbl_802B9400
/* 802B93DC  38 61 00 3C */	addi r3, r1, 0x3c
/* 802B93E0  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000040@ha */
/* 802B93E4  38 84 00 40 */	addi r4, r4, 0x0040 /* 0x02000040@l */
/* 802B93E8  48 00 07 79 */	bl __ct__10JAISoundIDFUl
/* 802B93EC  7C 64 1B 78 */	mr r4, r3
/* 802B93F0  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B93F4  48 00 06 95 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B93F8  3B 20 00 58 */	li r25, 0x58
/* 802B93FC  48 00 00 50 */	b lbl_802B944C
lbl_802B9400:
/* 802B9400  2C 1A 00 08 */	cmpwi r26, 8
/* 802B9404  41 82 00 0C */	beq lbl_802B9410
/* 802B9408  2C 1A 00 0C */	cmpwi r26, 0xc
/* 802B940C  40 82 00 2C */	bne lbl_802B9438
lbl_802B9410:
/* 802B9410  38 61 00 38 */	addi r3, r1, 0x38
/* 802B9414  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100003F@ha */
/* 802B9418  38 84 00 3F */	addi r4, r4, 0x003F /* 0x0100003F@l */
/* 802B941C  48 00 07 45 */	bl __ct__10JAISoundIDFUl
/* 802B9420  7C 64 1B 78 */	mr r4, r3
/* 802B9424  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9428  48 00 06 61 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B942C  3B E0 00 29 */	li r31, 0x29
/* 802B9430  3A A0 00 01 */	li r21, 1
/* 802B9434  48 00 00 18 */	b lbl_802B944C
lbl_802B9438:
/* 802B9438  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B943C  38 80 00 2D */	li r4, 0x2d
/* 802B9440  38 A0 00 00 */	li r5, 0
/* 802B9444  4B FF 5F C5 */	bl bgmStop__8Z2SeqMgrFUll
/* 802B9448  3B 20 00 3D */	li r25, 0x3d
lbl_802B944C:
/* 802B944C  3B A0 00 21 */	li r29, 0x21
/* 802B9450  3B C0 00 22 */	li r30, 0x22
/* 802B9454  38 00 00 01 */	li r0, 1
/* 802B9458  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B945C  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B9460  38 80 00 01 */	li r4, 1
/* 802B9464  38 A0 02 BC */	li r5, 0x2bc
/* 802B9468  38 C0 04 4C */	li r6, 0x44c
/* 802B946C  38 E0 05 DC */	li r7, 0x5dc
/* 802B9470  48 00 65 11 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B9474  48 00 02 44 */	b lbl_802B96B8
/* 802B9478  2C 1A 00 32 */	cmpwi r26, 0x32
/* 802B947C  40 82 00 58 */	bne lbl_802B94D4
/* 802B9480  2C 13 00 08 */	cmpwi r19, 8
/* 802B9484  40 82 00 0C */	bne lbl_802B9490
/* 802B9488  3B 80 00 7B */	li r28, 0x7b
/* 802B948C  48 00 00 48 */	b lbl_802B94D4
lbl_802B9490:
/* 802B9490  2C 13 00 00 */	cmpwi r19, 0
/* 802B9494  40 82 00 10 */	bne lbl_802B94A4
/* 802B9498  3B E0 00 49 */	li r31, 0x49
/* 802B949C  3B C0 00 23 */	li r30, 0x23
/* 802B94A0  48 00 00 34 */	b lbl_802B94D4
lbl_802B94A4:
/* 802B94A4  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B94A8  40 82 00 0C */	bne lbl_802B94B4
/* 802B94AC  3B 80 00 7B */	li r28, 0x7b
/* 802B94B0  48 00 00 24 */	b lbl_802B94D4
lbl_802B94B4:
/* 802B94B4  2C 13 00 01 */	cmpwi r19, 1
/* 802B94B8  40 82 00 10 */	bne lbl_802B94C8
/* 802B94BC  3B E0 00 4A */	li r31, 0x4a
/* 802B94C0  3B C0 00 24 */	li r30, 0x24
/* 802B94C4  48 00 00 10 */	b lbl_802B94D4
lbl_802B94C8:
/* 802B94C8  2C 13 00 09 */	cmpwi r19, 9
/* 802B94CC  40 82 00 08 */	bne lbl_802B94D4
/* 802B94D0  3B 80 00 7C */	li r28, 0x7c
lbl_802B94D4:
/* 802B94D4  3B A0 00 56 */	li r29, 0x56
/* 802B94D8  38 00 00 01 */	li r0, 1
/* 802B94DC  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B94E0  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B94E4  38 80 00 01 */	li r4, 1
/* 802B94E8  38 A0 02 BC */	li r5, 0x2bc
/* 802B94EC  38 C0 04 4C */	li r6, 0x44c
/* 802B94F0  38 E0 05 DC */	li r7, 0x5dc
/* 802B94F4  48 00 64 8D */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B94F8  48 00 01 C0 */	b lbl_802B96B8
/* 802B94FC  3B E0 00 4B */	li r31, 0x4b
/* 802B9500  3B C0 00 63 */	li r30, 0x63
/* 802B9504  3B A0 00 8C */	li r29, 0x8c
/* 802B9508  38 00 00 01 */	li r0, 1
/* 802B950C  98 1B 00 1B */	stb r0, 0x1b(r27)
/* 802B9510  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802B9514  38 80 00 01 */	li r4, 1
/* 802B9518  38 A0 02 BC */	li r5, 0x2bc
/* 802B951C  38 C0 04 4C */	li r6, 0x44c
/* 802B9520  38 E0 05 DC */	li r7, 0x5dc
/* 802B9524  48 00 64 5D */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
/* 802B9528  48 00 01 90 */	b lbl_802B96B8
/* 802B952C  2C 13 00 08 */	cmpwi r19, 8
/* 802B9530  40 82 00 10 */	bne lbl_802B9540
/* 802B9534  3B 80 00 7C */	li r28, 0x7c
/* 802B9538  C3 E2 C0 60 */	lfs f31, lit_5345(r2)
/* 802B953C  48 00 01 7C */	b lbl_802B96B8
lbl_802B9540:
/* 802B9540  2C 13 00 0A */	cmpwi r19, 0xa
/* 802B9544  40 82 00 0C */	bne lbl_802B9550
/* 802B9548  3B 80 00 7D */	li r28, 0x7d
/* 802B954C  48 00 01 6C */	b lbl_802B96B8
lbl_802B9550:
/* 802B9550  2C 13 00 09 */	cmpwi r19, 9
/* 802B9554  40 82 00 10 */	bne lbl_802B9564
/* 802B9558  3B 80 00 7E */	li r28, 0x7e
/* 802B955C  C3 E2 C0 64 */	lfs f31, lit_5346(r2)
/* 802B9560  48 00 01 58 */	b lbl_802B96B8
lbl_802B9564:
/* 802B9564  2C 13 00 0B */	cmpwi r19, 0xb
/* 802B9568  40 82 01 50 */	bne lbl_802B96B8
/* 802B956C  3B 80 00 7F */	li r28, 0x7f
/* 802B9570  48 00 01 48 */	b lbl_802B96B8
/* 802B9574  3B 80 00 7C */	li r28, 0x7c
/* 802B9578  48 00 01 40 */	b lbl_802B96B8
/* 802B957C  3B C0 00 51 */	li r30, 0x51
/* 802B9580  2C 1A 00 31 */	cmpwi r26, 0x31
/* 802B9584  40 82 00 14 */	bne lbl_802B9598
/* 802B9588  2C 13 00 05 */	cmpwi r19, 5
/* 802B958C  41 80 00 0C */	blt lbl_802B9598
/* 802B9590  2C 13 00 08 */	cmpwi r19, 8
/* 802B9594  40 81 01 24 */	ble lbl_802B96B8
lbl_802B9598:
/* 802B9598  38 61 00 34 */	addi r3, r1, 0x34
/* 802B959C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000077@ha */
/* 802B95A0  38 84 00 77 */	addi r4, r4, 0x0077 /* 0x01000077@l */
/* 802B95A4  48 00 05 BD */	bl __ct__10JAISoundIDFUl
/* 802B95A8  7C 64 1B 78 */	mr r4, r3
/* 802B95AC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B95B0  48 00 04 D9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B95B4  3B E0 00 45 */	li r31, 0x45
/* 802B95B8  48 00 01 00 */	b lbl_802B96B8
/* 802B95BC  3B A0 00 11 */	li r29, 0x11
/* 802B95C0  3B C0 00 12 */	li r30, 0x12
/* 802B95C4  38 61 00 30 */	addi r3, r1, 0x30
/* 802B95C8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000077@ha */
/* 802B95CC  38 84 00 77 */	addi r4, r4, 0x0077 /* 0x01000077@l */
/* 802B95D0  48 00 05 91 */	bl __ct__10JAISoundIDFUl
/* 802B95D4  7C 64 1B 78 */	mr r4, r3
/* 802B95D8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B95DC  48 00 04 AD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B95E0  3B E0 00 45 */	li r31, 0x45
/* 802B95E4  48 00 00 D4 */	b lbl_802B96B8
/* 802B95E8  3B C0 00 52 */	li r30, 0x52
/* 802B95EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 802B95F0  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000077@ha */
/* 802B95F4  38 84 00 77 */	addi r4, r4, 0x0077 /* 0x01000077@l */
/* 802B95F8  48 00 05 69 */	bl __ct__10JAISoundIDFUl
/* 802B95FC  7C 64 1B 78 */	mr r4, r3
/* 802B9600  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9604  48 00 04 85 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9608  3B E0 00 45 */	li r31, 0x45
/* 802B960C  48 00 00 AC */	b lbl_802B96B8
/* 802B9610  3B A0 00 05 */	li r29, 5
/* 802B9614  3B C0 00 06 */	li r30, 6
/* 802B9618  38 61 00 28 */	addi r3, r1, 0x28
/* 802B961C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000077@ha */
/* 802B9620  38 84 00 77 */	addi r4, r4, 0x0077 /* 0x01000077@l */
/* 802B9624  48 00 05 3D */	bl __ct__10JAISoundIDFUl
/* 802B9628  7C 64 1B 78 */	mr r4, r3
/* 802B962C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9630  48 00 04 59 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9634  3B E0 00 45 */	li r31, 0x45
/* 802B9638  48 00 00 80 */	b lbl_802B96B8
/* 802B963C  3B C0 00 50 */	li r30, 0x50
/* 802B9640  38 61 00 24 */	addi r3, r1, 0x24
/* 802B9644  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000077@ha */
/* 802B9648  38 84 00 77 */	addi r4, r4, 0x0077 /* 0x01000077@l */
/* 802B964C  48 00 05 15 */	bl __ct__10JAISoundIDFUl
/* 802B9650  7C 64 1B 78 */	mr r4, r3
/* 802B9654  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9658  48 00 04 31 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B965C  3B E0 00 45 */	li r31, 0x45
/* 802B9660  48 00 00 58 */	b lbl_802B96B8
/* 802B9664  3B C0 00 53 */	li r30, 0x53
/* 802B9668  88 1B 00 1E */	lbz r0, 0x1e(r27)
/* 802B966C  28 00 00 00 */	cmplwi r0, 0
/* 802B9670  41 82 00 28 */	beq lbl_802B9698
/* 802B9674  38 61 00 20 */	addi r3, r1, 0x20
/* 802B9678  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000016@ha */
/* 802B967C  38 84 00 16 */	addi r4, r4, 0x0016 /* 0x01000016@l */
/* 802B9680  48 00 04 E1 */	bl __ct__10JAISoundIDFUl
/* 802B9684  7C 64 1B 78 */	mr r4, r3
/* 802B9688  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B968C  48 00 03 FD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9690  3B E0 00 0E */	li r31, 0xe
/* 802B9694  48 00 00 24 */	b lbl_802B96B8
lbl_802B9698:
/* 802B9698  38 61 00 1C */	addi r3, r1, 0x1c
/* 802B969C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000077@ha */
/* 802B96A0  38 84 00 77 */	addi r4, r4, 0x0077 /* 0x01000077@l */
/* 802B96A4  48 00 04 BD */	bl __ct__10JAISoundIDFUl
/* 802B96A8  7C 64 1B 78 */	mr r4, r3
/* 802B96AC  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B96B0  48 00 03 D9 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B96B4  3B E0 00 45 */	li r31, 0x45
lbl_802B96B8:
/* 802B96B8  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B96BC  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B96C0  A0 63 00 D0 */	lhz r3, 0xd0(r3)
/* 802B96C4  4B E8 7C D9 */	bl dComIfGs_isEventBit__FUs
/* 802B96C8  2C 03 00 00 */	cmpwi r3, 0
/* 802B96CC  41 82 00 C0 */	beq lbl_802B978C
/* 802B96D0  3C 60 80 3A */	lis r3, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 802B96D4  38 63 72 88 */	addi r3, r3, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 802B96D8  A0 63 01 F4 */	lhz r3, 0x1f4(r3)
/* 802B96DC  4B E8 7C C1 */	bl dComIfGs_isEventBit__FUs
/* 802B96E0  2C 03 00 00 */	cmpwi r3, 0
/* 802B96E4  40 82 00 A8 */	bne lbl_802B978C
/* 802B96E8  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802B96EC  40 82 00 A0 */	bne lbl_802B978C
/* 802B96F0  2C 17 00 22 */	cmpwi r23, 0x22
/* 802B96F4  41 82 00 98 */	beq lbl_802B978C
/* 802B96F8  3B E0 00 36 */	li r31, 0x36
/* 802B96FC  2C 17 00 18 */	cmpwi r23, 0x18
/* 802B9700  40 82 00 28 */	bne lbl_802B9728
/* 802B9704  2C 1A 00 05 */	cmpwi r26, 5
/* 802B9708  40 82 00 20 */	bne lbl_802B9728
/* 802B970C  38 61 00 18 */	addi r3, r1, 0x18
/* 802B9710  38 80 FF FF */	li r4, -1
/* 802B9714  48 00 04 4D */	bl __ct__10JAISoundIDFUl
/* 802B9718  7C 64 1B 78 */	mr r4, r3
/* 802B971C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9720  48 00 03 69 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9724  48 00 00 60 */	b lbl_802B9784
lbl_802B9728:
/* 802B9728  38 61 00 14 */	addi r3, r1, 0x14
/* 802B972C  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100005F@ha */
/* 802B9730  38 84 00 5F */	addi r4, r4, 0x005F /* 0x0100005F@l */
/* 802B9734  48 00 04 2D */	bl __ct__10JAISoundIDFUl
/* 802B9738  7C 64 1B 78 */	mr r4, r3
/* 802B973C  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B9740  48 00 03 49 */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B9744  2C 17 00 17 */	cmpwi r23, 0x17
/* 802B9748  40 82 00 0C */	bne lbl_802B9754
/* 802B974C  2C 1A 00 05 */	cmpwi r26, 5
/* 802B9750  41 82 00 14 */	beq lbl_802B9764
lbl_802B9754:
/* 802B9754  2C 17 00 18 */	cmpwi r23, 0x18
/* 802B9758  41 82 00 0C */	beq lbl_802B9764
/* 802B975C  2C 17 00 19 */	cmpwi r23, 0x19
/* 802B9760  40 82 00 18 */	bne lbl_802B9778
lbl_802B9764:
/* 802B9764  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B9768  38 80 00 21 */	li r4, 0x21
/* 802B976C  C0 22 C0 54 */	lfs f1, lit_5342(r2)
/* 802B9770  48 00 02 B5 */	bl muteSceneBgm__8Z2SeqMgrFUlf
/* 802B9774  48 00 00 10 */	b lbl_802B9784
lbl_802B9778:
/* 802B9778  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B977C  38 80 00 21 */	li r4, 0x21
/* 802B9780  48 00 02 2D */	bl unMuteSceneBgm__8Z2SeqMgrFUl
lbl_802B9784:
/* 802B9784  3B 00 00 00 */	li r24, 0
/* 802B9788  48 00 00 5C */	b lbl_802B97E4
lbl_802B978C:
/* 802B978C  80 1B 00 04 */	lwz r0, 4(r27)
/* 802B9790  2C 00 00 18 */	cmpwi r0, 0x18
/* 802B9794  40 82 00 50 */	bne lbl_802B97E4
/* 802B9798  88 1B 00 0C */	lbz r0, 0xc(r27)
/* 802B979C  2C 00 00 01 */	cmpwi r0, 1
/* 802B97A0  40 82 00 44 */	bne lbl_802B97E4
/* 802B97A4  2C 17 00 16 */	cmpwi r23, 0x16
/* 802B97A8  40 82 00 0C */	bne lbl_802B97B4
/* 802B97AC  2C 1A 00 03 */	cmpwi r26, 3
/* 802B97B0  41 82 00 34 */	beq lbl_802B97E4
lbl_802B97B4:
/* 802B97B4  38 61 00 10 */	addi r3, r1, 0x10
/* 802B97B8  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000060@ha */
/* 802B97BC  38 84 00 60 */	addi r4, r4, 0x0060 /* 0x01000060@l */
/* 802B97C0  48 00 03 A1 */	bl __ct__10JAISoundIDFUl
/* 802B97C4  7C 64 1B 78 */	mr r4, r3
/* 802B97C8  38 61 02 3C */	addi r3, r1, 0x23c
/* 802B97CC  48 00 02 BD */	bl __as__10JAISoundIDFRC10JAISoundID
/* 802B97D0  3B E0 00 37 */	li r31, 0x37
/* 802B97D4  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B97D8  38 80 00 01 */	li r4, 1
/* 802B97DC  4B FF 67 B1 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 802B97E0  3B 00 00 00 */	li r24, 0
lbl_802B97E4:
/* 802B97E4  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802B97E8  38 63 07 9C */	addi r3, r3, 0x79c
/* 802B97EC  48 00 01 8D */	bl isActive__12JAIStreamMgrCFv
/* 802B97F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802B97F4  41 82 00 64 */	beq lbl_802B9858
/* 802B97F8  82 6D 85 D8 */	lwz r19, data_80450B58(r13)
/* 802B97FC  80 6D 85 E0 */	lwz r3, data_80450B60(r13)
/* 802B9800  38 63 07 F4 */	addi r3, r3, 0x7f4
/* 802B9804  48 00 01 91 */	bl func_802B9994
/* 802B9808  7C 70 1B 78 */	mr r16, r3
/* 802B980C  56 D1 06 3E */	clrlwi r17, r22, 0x18
/* 802B9810  48 00 00 40 */	b lbl_802B9850
lbl_802B9814:
/* 802B9814  28 11 00 00 */	cmplwi r17, 0
/* 802B9818  40 82 00 28 */	bne lbl_802B9840
/* 802B981C  38 61 00 0C */	addi r3, r1, 0xc
/* 802B9820  80 90 00 00 */	lwz r4, 0(r16)
/* 802B9824  48 00 01 65 */	bl getID__8JAISoundCFv
/* 802B9828  7E 63 9B 78 */	mr r3, r19
/* 802B982C  38 81 00 0C */	addi r4, r1, 0xc
/* 802B9830  4B FE D9 31 */	bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802B9834  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802B9838  28 00 00 71 */	cmplwi r0, 0x71
/* 802B983C  41 82 00 10 */	beq lbl_802B984C
lbl_802B9840:
/* 802B9840  80 70 00 00 */	lwz r3, 0(r16)
/* 802B9844  88 8D 82 E0 */	lbz r4, struct_80450860+0x0(r13)
/* 802B9848  4B FE 8C 95 */	bl stop__8JAISoundFUl
lbl_802B984C:
/* 802B984C  82 10 00 0C */	lwz r16, 0xc(r16)
lbl_802B9850:
/* 802B9850  28 10 00 00 */	cmplwi r16, 0
/* 802B9854  40 82 FF C0 */	bne lbl_802B9814
lbl_802B9858:
/* 802B9858  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B985C  7E A4 AB 78 */	mr r4, r21
/* 802B9860  38 A0 00 1E */	li r5, 0x1e
/* 802B9864  4B FF 9A B5 */	bl setHeightVolMod__8Z2SeqMgrFbUl
/* 802B9868  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B986C  7F 04 C3 78 */	mr r4, r24
/* 802B9870  38 A0 00 00 */	li r5, 0
/* 802B9874  4B FF 9B 25 */	bl setTimeProcVolMod__8Z2SeqMgrFbUl
/* 802B9878  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802B987C  7E 84 A3 78 */	mr r4, r20
/* 802B9880  48 00 00 E9 */	bl setFieldBgmPlay__8Z2SeqMgrFb
/* 802B9884  80 6D 85 BC */	lwz r3, data_80450B3C(r13)
/* 802B9888  7E E4 BB 78 */	mr r4, r23
/* 802B988C  7F 45 07 74 */	extsb r5, r26
/* 802B9890  FC 20 F8 90 */	fmr f1, f31
/* 802B9894  48 00 D2 2D */	bl initSceneEnvSe__10Z2EnvSeMgrFlScf
/* 802B9898  80 1B 00 04 */	lwz r0, 4(r27)
/* 802B989C  7C 00 B8 00 */	cmpw r0, r23
/* 802B98A0  40 82 00 64 */	bne lbl_802B9904
/* 802B98A4  80 61 02 3C */	lwz r3, 0x23c(r1)
/* 802B98A8  80 1B 00 00 */	lwz r0, 0(r27)
/* 802B98AC  7C 03 00 40 */	cmplw r3, r0
/* 802B98B0  40 82 00 54 */	bne lbl_802B9904
/* 802B98B4  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 802B98B8  88 1B 00 0E */	lbz r0, 0xe(r27)
/* 802B98BC  7C 03 00 40 */	cmplw r3, r0
/* 802B98C0  40 82 00 44 */	bne lbl_802B9904
/* 802B98C4  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 802B98C8  88 1B 00 10 */	lbz r0, 0x10(r27)
/* 802B98CC  7C 03 00 40 */	cmplw r3, r0
/* 802B98D0  40 82 00 34 */	bne lbl_802B9904
/* 802B98D4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 802B98D8  88 1B 00 12 */	lbz r0, 0x12(r27)
/* 802B98DC  7C 03 00 40 */	cmplw r3, r0
/* 802B98E0  40 82 00 24 */	bne lbl_802B9904
/* 802B98E4  57 23 06 3E */	clrlwi r3, r25, 0x18
/* 802B98E8  88 1B 00 14 */	lbz r0, 0x14(r27)
/* 802B98EC  7C 03 00 40 */	cmplw r3, r0
/* 802B98F0  40 82 00 14 */	bne lbl_802B9904
/* 802B98F4  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802B98F8  88 1B 00 16 */	lbz r0, 0x16(r27)
/* 802B98FC  7C 03 00 40 */	cmplw r3, r0
/* 802B9900  41 82 00 38 */	beq lbl_802B9938
lbl_802B9904:
/* 802B9904  92 FB 00 04 */	stw r23, 4(r27)
/* 802B9908  38 61 00 08 */	addi r3, r1, 8
/* 802B990C  38 81 02 3C */	addi r4, r1, 0x23c
/* 802B9910  48 00 00 4D */	bl __ct__10JAISoundIDFRC10JAISoundID
/* 802B9914  7C 64 1B 78 */	mr r4, r3
/* 802B9918  7F 63 DB 78 */	mr r3, r27
/* 802B991C  7F A5 EB 78 */	mr r5, r29
/* 802B9920  7F C6 F3 78 */	mr r6, r30
/* 802B9924  7F E7 FB 78 */	mr r7, r31
/* 802B9928  7F 28 CB 78 */	mr r8, r25
/* 802B992C  7F 89 E3 78 */	mr r9, r28
/* 802B9930  39 40 00 00 */	li r10, 0
/* 802B9934  48 00 02 35 */	bl sceneChange__10Z2SceneMgrF10JAISoundIDUcUcUcUcUcb
lbl_802B9938:
/* 802B9938  9B 5B 00 0C */	stb r26, 0xc(r27)
/* 802B993C  E3 E1 02 88 */	psq_l f31, 648(r1), 0, 0 /* qr0 */
/* 802B9940  CB E1 02 80 */	lfd f31, 0x280(r1)
/* 802B9944  39 61 02 80 */	addi r11, r1, 0x280
/* 802B9948  48 0A 88 AD */	bl _restgpr_16
/* 802B994C  80 01 02 94 */	lwz r0, 0x294(r1)
/* 802B9950  7C 08 03 A6 */	mtlr r0
/* 802B9954  38 21 02 90 */	addi r1, r1, 0x290
/* 802B9958  4E 80 00 20 */	blr 
