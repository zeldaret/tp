lbl_80211BEC:
/* 80211BEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80211BF0  7C 08 02 A6 */	mflr r0
/* 80211BF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80211BF8  39 61 00 30 */	addi r11, r1, 0x30
/* 80211BFC  48 15 05 D1 */	bl _savegpr_25
/* 80211C00  7C 7C 1B 78 */	mr r28, r3
/* 80211C04  3C 60 80 3A */	lis r3, a_tag@ha /* 0x80398258@ha */
/* 80211C08  3B C3 82 58 */	addi r30, r3, a_tag@l /* 0x80398258@l */
/* 80211C0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80211C10  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80211C14  A3 5F 00 02 */	lhz r26, 2(r31)
/* 80211C18  4B E1 C0 91 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 80211C1C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80211C20  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 80211C24  7C 00 18 40 */	cmplw r0, r3
/* 80211C28  40 81 00 0C */	ble lbl_80211C34
/* 80211C2C  4B E1 C0 7D */	bl dComIfGs_getMaxLifeGauge__Fv
/* 80211C30  B0 7F 00 02 */	sth r3, 2(r31)
lbl_80211C34:
/* 80211C34  38 60 00 6C */	li r3, 0x6c
/* 80211C38  48 0B D0 15 */	bl __nw__FUl
/* 80211C3C  7C 60 1B 79 */	or. r0, r3, r3
/* 80211C40  41 82 00 28 */	beq lbl_80211C68
/* 80211C44  80 9C 00 78 */	lwz r4, 0x78(r28)
/* 80211C48  3C A0 72 74 */	lis r5, 0x7274 /* 0x72745F6E@ha */
/* 80211C4C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x72745F6E@l */
/* 80211C50  3C A0 00 68 */	lis r5, 0x0068 /* 0x00686561@ha */
/* 80211C54  38 A5 65 61 */	addi r5, r5, 0x6561 /* 0x00686561@l */
/* 80211C58  38 E0 00 02 */	li r7, 2
/* 80211C5C  39 00 00 00 */	li r8, 0
/* 80211C60  48 04 1D 25 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80211C64  7C 60 1B 78 */	mr r0, r3
lbl_80211C68:
/* 80211C68  90 1C 01 24 */	stw r0, 0x124(r28)
/* 80211C6C  3B A0 00 00 */	li r29, 0
/* 80211C70  3B 60 00 00 */	li r27, 0
/* 80211C74  3B 40 00 00 */	li r26, 0
lbl_80211C78:
/* 80211C78  38 60 00 6C */	li r3, 0x6c
/* 80211C7C  48 0B CF D1 */	bl __nw__FUl
/* 80211C80  7C 60 1B 79 */	or. r0, r3, r3
/* 80211C84  41 82 00 28 */	beq lbl_80211CAC
/* 80211C88  80 9C 00 78 */	lwz r4, 0x78(r28)
/* 80211C8C  38 1E 00 C8 */	addi r0, r30, 0xc8
/* 80211C90  7C C0 D2 14 */	add r6, r0, r26
/* 80211C94  80 A6 00 00 */	lwz r5, 0(r6)
/* 80211C98  80 C6 00 04 */	lwz r6, 4(r6)
/* 80211C9C  38 E0 00 00 */	li r7, 0
/* 80211CA0  39 00 00 00 */	li r8, 0
/* 80211CA4  48 04 1C E1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80211CA8  7C 60 1B 78 */	mr r0, r3
lbl_80211CAC:
/* 80211CAC  7F 3C DA 14 */	add r25, r28, r27
/* 80211CB0  90 19 01 28 */	stw r0, 0x128(r25)
/* 80211CB4  38 60 00 6C */	li r3, 0x6c
/* 80211CB8  48 0B CF 95 */	bl __nw__FUl
/* 80211CBC  7C 60 1B 79 */	or. r0, r3, r3
/* 80211CC0  41 82 00 28 */	beq lbl_80211CE8
/* 80211CC4  80 9C 00 78 */	lwz r4, 0x78(r28)
/* 80211CC8  38 1E 01 68 */	addi r0, r30, 0x168
/* 80211CCC  7C C0 D2 14 */	add r6, r0, r26
/* 80211CD0  80 A6 00 00 */	lwz r5, 0(r6)
/* 80211CD4  80 C6 00 04 */	lwz r6, 4(r6)
/* 80211CD8  38 E0 00 02 */	li r7, 2
/* 80211CDC  39 00 00 00 */	li r8, 0
/* 80211CE0  48 04 1C A5 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80211CE4  7C 60 1B 78 */	mr r0, r3
lbl_80211CE8:
/* 80211CE8  90 19 01 78 */	stw r0, 0x178(r25)
/* 80211CEC  38 60 00 1C */	li r3, 0x1c
/* 80211CF0  48 0B CF 5D */	bl __nw__FUl
/* 80211CF4  7C 60 1B 79 */	or. r0, r3, r3
/* 80211CF8  41 82 00 28 */	beq lbl_80211D20
/* 80211CFC  80 9C 00 78 */	lwz r4, 0x78(r28)
/* 80211D00  38 1E 02 08 */	addi r0, r30, 0x208
/* 80211D04  7C C0 D2 14 */	add r6, r0, r26
/* 80211D08  80 A6 00 00 */	lwz r5, 0(r6)
/* 80211D0C  80 C6 00 04 */	lwz r6, 4(r6)
/* 80211D10  38 E0 00 02 */	li r7, 2
/* 80211D14  39 00 00 00 */	li r8, 0
/* 80211D18  48 04 36 E5 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 80211D1C  7C 60 1B 78 */	mr r0, r3
lbl_80211D20:
/* 80211D20  90 19 04 40 */	stw r0, 0x440(r25)
/* 80211D24  38 60 00 1C */	li r3, 0x1c
/* 80211D28  48 0B CF 25 */	bl __nw__FUl
/* 80211D2C  7C 60 1B 79 */	or. r0, r3, r3
/* 80211D30  41 82 00 28 */	beq lbl_80211D58
/* 80211D34  80 9C 00 78 */	lwz r4, 0x78(r28)
/* 80211D38  38 1E 02 A8 */	addi r0, r30, 0x2a8
/* 80211D3C  7C C0 D2 14 */	add r6, r0, r26
/* 80211D40  80 A6 00 00 */	lwz r5, 0(r6)
/* 80211D44  80 C6 00 04 */	lwz r6, 4(r6)
/* 80211D48  38 E0 00 00 */	li r7, 0
/* 80211D4C  39 00 00 00 */	li r8, 0
/* 80211D50  48 04 36 AD */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 80211D54  7C 60 1B 78 */	mr r0, r3
lbl_80211D58:
/* 80211D58  7F 3C D2 14 */	add r25, r28, r26
/* 80211D5C  90 19 03 A0 */	stw r0, 0x3a0(r25)
/* 80211D60  38 60 00 1C */	li r3, 0x1c
/* 80211D64  48 0B CE E9 */	bl __nw__FUl
/* 80211D68  7C 60 1B 79 */	or. r0, r3, r3
/* 80211D6C  41 82 00 28 */	beq lbl_80211D94
/* 80211D70  80 9C 00 78 */	lwz r4, 0x78(r28)
/* 80211D74  38 1E 03 48 */	addi r0, r30, 0x348
/* 80211D78  7C C0 D2 14 */	add r6, r0, r26
/* 80211D7C  80 A6 00 00 */	lwz r5, 0(r6)
/* 80211D80  80 C6 00 04 */	lwz r6, 4(r6)
/* 80211D84  38 E0 00 00 */	li r7, 0
/* 80211D88  39 00 00 00 */	li r8, 0
/* 80211D8C  48 04 36 71 */	bl __ct__13CPaneMgrAlphaFP9J2DScreenUxUcP10JKRExpHeap
/* 80211D90  7C 60 1B 78 */	mr r0, r3
lbl_80211D94:
/* 80211D94  90 19 03 A4 */	stw r0, 0x3a4(r25)
/* 80211D98  3B BD 00 01 */	addi r29, r29, 1
/* 80211D9C  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80211DA0  3B 7B 00 04 */	addi r27, r27, 4
/* 80211DA4  3B 5A 00 08 */	addi r26, r26, 8
/* 80211DA8  41 80 FE D0 */	blt lbl_80211C78
/* 80211DAC  38 60 00 6C */	li r3, 0x6c
/* 80211DB0  48 0B CE 9D */	bl __nw__FUl
/* 80211DB4  7C 60 1B 79 */	or. r0, r3, r3
/* 80211DB8  41 82 00 24 */	beq lbl_80211DDC
/* 80211DBC  80 9C 00 78 */	lwz r4, 0x78(r28)
/* 80211DC0  3C A0 67 68 */	lis r5, 0x6768 /* 0x67685F6E@ha */
/* 80211DC4  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x67685F6E@l */
/* 80211DC8  38 A0 62 69 */	li r5, 0x6269
/* 80211DCC  38 E0 00 02 */	li r7, 2
/* 80211DD0  39 00 00 00 */	li r8, 0
/* 80211DD4  48 04 1B B1 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80211DD8  7C 60 1B 78 */	mr r0, r3
lbl_80211DDC:
/* 80211DDC  90 1C 01 C8 */	stw r0, 0x1c8(r28)
/* 80211DE0  80 7C 01 24 */	lwz r3, 0x124(r28)
/* 80211DE4  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80211DE8  48 04 39 E9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80211DEC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80211DF0  38 A3 EB C8 */	addi r5, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80211DF4  C0 25 00 08 */	lfs f1, 8(r5)
/* 80211DF8  C0 42 AE 80 */	lfs f2, lit_4182(r2)
/* 80211DFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80211E00  A0 83 61 C0 */	lhz r4, g_dComIfG_gameInfo@l(r3)  /* 0x804061C0@l */
/* 80211E04  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80211E08  28 00 00 32 */	cmplwi r0, 0x32
/* 80211E0C  41 81 00 08 */	bgt lbl_80211E14
/* 80211E10  C0 45 00 0C */	lfs f2, 0xc(r5)
lbl_80211E14:
/* 80211E14  A0 1F 00 02 */	lhz r0, 2(r31)
/* 80211E18  7F 83 E3 78 */	mr r3, r28
/* 80211E1C  7C 84 07 34 */	extsh r4, r4
/* 80211E20  7C 05 07 34 */	extsh r5, r0
/* 80211E24  3C C0 80 43 */	lis r6, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80211E28  38 C6 EB C8 */	addi r6, r6, g_drawHIO@l /* 0x8042EBC8@l */
/* 80211E2C  C0 06 00 28 */	lfs f0, 0x28(r6)
/* 80211E30  EC 20 08 2A */	fadds f1, f0, f1
/* 80211E34  C0 06 00 2C */	lfs f0, 0x2c(r6)
/* 80211E38  EC 40 10 2A */	fadds f2, f0, f2
/* 80211E3C  48 00 2B B9 */	bl drawLife__13dMeter2Draw_cFssff
/* 80211E40  7F 83 E3 78 */	mr r3, r28
/* 80211E44  38 80 00 01 */	li r4, 1
/* 80211E48  48 00 2D D9 */	bl setAlphaLifeChange__13dMeter2Draw_cFb
/* 80211E4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80211E50  48 15 03 C9 */	bl _restgpr_25
/* 80211E54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80211E58  7C 08 03 A6 */	mtlr r0
/* 80211E5C  38 21 00 30 */	addi r1, r1, 0x30
/* 80211E60  4E 80 00 20 */	blr 
