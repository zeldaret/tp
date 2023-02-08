lbl_804EF3CC:
/* 804EF3CC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804EF3D0  7C 08 02 A6 */	mflr r0
/* 804EF3D4  90 01 00 74 */	stw r0, 0x74(r1)
/* 804EF3D8  39 61 00 70 */	addi r11, r1, 0x70
/* 804EF3DC  4B E7 2D ED */	bl _savegpr_24
/* 804EF3E0  7C 7B 1B 78 */	mr r27, r3
/* 804EF3E4  7C 9C 23 78 */	mr r28, r4
/* 804EF3E8  3C 80 80 50 */	lis r4, lit_3777@ha /* 0x804FA6BC@ha */
/* 804EF3EC  3B E4 A6 BC */	addi r31, r4, lit_3777@l /* 0x804FA6BC@l */
/* 804EF3F0  4B B2 98 F1 */	bl fopAc_IsActor__FPv
/* 804EF3F4  2C 03 00 00 */	cmpwi r3, 0
/* 804EF3F8  41 82 02 28 */	beq lbl_804EF620
/* 804EF3FC  A8 1B 00 08 */	lha r0, 8(r27)
/* 804EF400  2C 00 00 6B */	cmpwi r0, 0x6b
/* 804EF404  40 82 02 1C */	bne lbl_804EF620
/* 804EF408  38 60 00 00 */	li r3, 0
/* 804EF40C  38 00 00 0A */	li r0, 0xa
/* 804EF410  7C 09 03 A6 */	mtctr r0
lbl_804EF414:
/* 804EF414  38 03 18 98 */	addi r0, r3, 0x1898
/* 804EF418  7C 1C 00 2E */	lwzx r0, r28, r0
/* 804EF41C  7C 00 D8 40 */	cmplw r0, r27
/* 804EF420  40 82 00 0C */	bne lbl_804EF42C
/* 804EF424  38 60 00 00 */	li r3, 0
/* 804EF428  48 00 01 FC */	b lbl_804EF624
lbl_804EF42C:
/* 804EF42C  38 63 00 04 */	addi r3, r3, 4
/* 804EF430  42 00 FF E4 */	bdnz lbl_804EF414
/* 804EF434  3B A0 00 00 */	li r29, 0
/* 804EF438  3B 40 00 00 */	li r26, 0
lbl_804EF43C:
/* 804EF43C  3B DA 18 98 */	addi r30, r26, 0x1898
/* 804EF440  7C 1C F0 2E */	lwzx r0, r28, r30
/* 804EF444  28 00 00 00 */	cmplwi r0, 0
/* 804EF448  40 82 01 C8 */	bne lbl_804EF610
/* 804EF44C  80 1B 05 A4 */	lwz r0, 0x5a4(r27)
/* 804EF450  2C 00 00 00 */	cmpwi r0, 0
/* 804EF454  40 82 01 BC */	bne lbl_804EF610
/* 804EF458  38 61 00 2C */	addi r3, r1, 0x2c
/* 804EF45C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804EF460  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804EF464  4B D7 76 D1 */	bl __mi__4cXyzCFRC3Vec
/* 804EF468  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804EF46C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804EF470  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804EF474  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804EF478  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804EF47C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804EF480  38 61 00 38 */	addi r3, r1, 0x38
/* 804EF484  4B E5 7C B5 */	bl PSVECSquareMag
/* 804EF488  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804EF48C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EF490  40 81 00 58 */	ble lbl_804EF4E8
/* 804EF494  FC 00 08 34 */	frsqrte f0, f1
/* 804EF498  C8 9F 00 70 */	lfd f4, 0x70(r31)
/* 804EF49C  FC 44 00 32 */	fmul f2, f4, f0
/* 804EF4A0  C8 7F 00 78 */	lfd f3, 0x78(r31)
/* 804EF4A4  FC 00 00 32 */	fmul f0, f0, f0
/* 804EF4A8  FC 01 00 32 */	fmul f0, f1, f0
/* 804EF4AC  FC 03 00 28 */	fsub f0, f3, f0
/* 804EF4B0  FC 02 00 32 */	fmul f0, f2, f0
/* 804EF4B4  FC 44 00 32 */	fmul f2, f4, f0
/* 804EF4B8  FC 00 00 32 */	fmul f0, f0, f0
/* 804EF4BC  FC 01 00 32 */	fmul f0, f1, f0
/* 804EF4C0  FC 03 00 28 */	fsub f0, f3, f0
/* 804EF4C4  FC 02 00 32 */	fmul f0, f2, f0
/* 804EF4C8  FC 44 00 32 */	fmul f2, f4, f0
/* 804EF4CC  FC 00 00 32 */	fmul f0, f0, f0
/* 804EF4D0  FC 01 00 32 */	fmul f0, f1, f0
/* 804EF4D4  FC 03 00 28 */	fsub f0, f3, f0
/* 804EF4D8  FC 02 00 32 */	fmul f0, f2, f0
/* 804EF4DC  FC 21 00 32 */	fmul f1, f1, f0
/* 804EF4E0  FC 20 08 18 */	frsp f1, f1
/* 804EF4E4  48 00 00 88 */	b lbl_804EF56C
lbl_804EF4E8:
/* 804EF4E8  C8 1F 00 80 */	lfd f0, 0x80(r31)
/* 804EF4EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EF4F0  40 80 00 10 */	bge lbl_804EF500
/* 804EF4F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804EF4F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804EF4FC  48 00 00 70 */	b lbl_804EF56C
lbl_804EF500:
/* 804EF500  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804EF504  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804EF508  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804EF50C  3C 00 7F 80 */	lis r0, 0x7f80
/* 804EF510  7C 03 00 00 */	cmpw r3, r0
/* 804EF514  41 82 00 14 */	beq lbl_804EF528
/* 804EF518  40 80 00 40 */	bge lbl_804EF558
/* 804EF51C  2C 03 00 00 */	cmpwi r3, 0
/* 804EF520  41 82 00 20 */	beq lbl_804EF540
/* 804EF524  48 00 00 34 */	b lbl_804EF558
lbl_804EF528:
/* 804EF528  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804EF52C  41 82 00 0C */	beq lbl_804EF538
/* 804EF530  38 00 00 01 */	li r0, 1
/* 804EF534  48 00 00 28 */	b lbl_804EF55C
lbl_804EF538:
/* 804EF538  38 00 00 02 */	li r0, 2
/* 804EF53C  48 00 00 20 */	b lbl_804EF55C
lbl_804EF540:
/* 804EF540  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804EF544  41 82 00 0C */	beq lbl_804EF550
/* 804EF548  38 00 00 05 */	li r0, 5
/* 804EF54C  48 00 00 10 */	b lbl_804EF55C
lbl_804EF550:
/* 804EF550  38 00 00 03 */	li r0, 3
/* 804EF554  48 00 00 08 */	b lbl_804EF55C
lbl_804EF558:
/* 804EF558  38 00 00 04 */	li r0, 4
lbl_804EF55C:
/* 804EF55C  2C 00 00 01 */	cmpwi r0, 1
/* 804EF560  40 82 00 0C */	bne lbl_804EF56C
/* 804EF564  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804EF568  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804EF56C:
/* 804EF56C  3C 60 80 50 */	lis r3, fire_range@ha /* 0x804FAF78@ha */
/* 804EF570  C0 03 AF 78 */	lfs f0, fire_range@l(r3)  /* 0x804FAF78@l */
/* 804EF574  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EF578  40 80 00 98 */	bge lbl_804EF610
/* 804EF57C  38 00 00 00 */	li r0, 0
/* 804EF580  B0 01 00 28 */	sth r0, 0x28(r1)
/* 804EF584  B0 01 00 24 */	sth r0, 0x24(r1)
/* 804EF588  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 804EF58C  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 804EF590  4B D7 80 E5 */	bl cM_atan2s__Fff
/* 804EF594  B0 61 00 26 */	sth r3, 0x26(r1)
/* 804EF598  3B 00 00 00 */	li r24, 0
/* 804EF59C  3B 40 00 00 */	li r26, 0
/* 804EF5A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804EF5A4  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804EF5A8  3C 60 80 50 */	lis r3, h_id@ha /* 0x804FA970@ha */
/* 804EF5AC  3B A3 A9 70 */	addi r29, r3, h_id@l /* 0x804FA970@l */
lbl_804EF5B0:
/* 804EF5B0  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 804EF5B4  38 80 00 00 */	li r4, 0
/* 804EF5B8  90 81 00 08 */	stw r4, 8(r1)
/* 804EF5BC  38 00 FF FF */	li r0, -1
/* 804EF5C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804EF5C4  90 81 00 10 */	stw r4, 0x10(r1)
/* 804EF5C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804EF5CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804EF5D0  38 80 00 00 */	li r4, 0
/* 804EF5D4  7C BD D2 2E */	lhzx r5, r29, r26
/* 804EF5D8  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 804EF5DC  38 E0 00 00 */	li r7, 0
/* 804EF5E0  39 01 00 24 */	addi r8, r1, 0x24
/* 804EF5E4  39 20 00 00 */	li r9, 0
/* 804EF5E8  39 40 00 FF */	li r10, 0xff
/* 804EF5EC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804EF5F0  4B B5 D4 A1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804EF5F4  3B 18 00 01 */	addi r24, r24, 1
/* 804EF5F8  2C 18 00 03 */	cmpwi r24, 3
/* 804EF5FC  3B 5A 00 02 */	addi r26, r26, 2
/* 804EF600  41 80 FF B0 */	blt lbl_804EF5B0
/* 804EF604  7F 7C F1 2E */	stwx r27, r28, r30
/* 804EF608  38 60 00 00 */	li r3, 0
/* 804EF60C  48 00 00 18 */	b lbl_804EF624
lbl_804EF610:
/* 804EF610  3B BD 00 01 */	addi r29, r29, 1
/* 804EF614  2C 1D 00 0A */	cmpwi r29, 0xa
/* 804EF618  3B 5A 00 04 */	addi r26, r26, 4
/* 804EF61C  41 80 FE 20 */	blt lbl_804EF43C
lbl_804EF620:
/* 804EF620  38 60 00 00 */	li r3, 0
lbl_804EF624:
/* 804EF624  39 61 00 70 */	addi r11, r1, 0x70
/* 804EF628  4B E7 2B ED */	bl _restgpr_24
/* 804EF62C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804EF630  7C 08 03 A6 */	mtlr r0
/* 804EF634  38 21 00 70 */	addi r1, r1, 0x70
/* 804EF638  4E 80 00 20 */	blr 
