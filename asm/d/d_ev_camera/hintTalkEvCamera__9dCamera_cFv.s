lbl_800965AC:
/* 800965AC  94 21 FD D0 */	stwu r1, -0x230(r1)
/* 800965B0  7C 08 02 A6 */	mflr r0
/* 800965B4  90 01 02 34 */	stw r0, 0x234(r1)
/* 800965B8  DB E1 02 20 */	stfd f31, 0x220(r1)
/* 800965BC  F3 E1 02 28 */	psq_st f31, 552(r1), 0, 0 /* qr0 */
/* 800965C0  DB C1 02 10 */	stfd f30, 0x210(r1)
/* 800965C4  F3 C1 02 18 */	psq_st f30, 536(r1), 0, 0 /* qr0 */
/* 800965C8  39 61 02 10 */	addi r11, r1, 0x210
/* 800965CC  48 2C BB FD */	bl _savegpr_24
/* 800965D0  7C 79 1B 78 */	mr r25, r3
/* 800965D4  83 C3 01 80 */	lwz r30, 0x180(r3)
/* 800965D8  80 03 01 74 */	lwz r0, 0x174(r3)
/* 800965DC  28 00 00 00 */	cmplwi r0, 0
/* 800965E0  40 82 00 A4 */	bne lbl_80096684
/* 800965E4  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 800965E8  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l
/* 800965EC  38 85 02 27 */	addi r4, r5, 0x227
/* 800965F0  38 A5 02 2F */	addi r5, r5, 0x22f
/* 800965F4  4B FF 30 01 */	bl getEvActor__9dCamera_cFPcPc
/* 800965F8  90 79 03 E8 */	stw r3, 0x3e8(r25)
/* 800965FC  7F 23 CB 78 */	mr r3, r25
/* 80096600  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 80096604  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l
/* 80096608  38 85 02 35 */	addi r4, r5, 0x235
/* 8009660C  38 A5 00 72 */	addi r5, r5, 0x72
/* 80096610  4B FF 2F E5 */	bl getEvActor__9dCamera_cFPcPc
/* 80096614  90 79 03 EC */	stw r3, 0x3ec(r25)
/* 80096618  7F 23 CB 78 */	mr r3, r25
/* 8009661C  38 99 04 1C */	addi r4, r25, 0x41c
/* 80096620  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80096624  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80096628  38 A5 00 1E */	addi r5, r5, 0x1e
/* 8009662C  C0 22 8F F8 */	lfs f1, lit_8223(r2)
/* 80096630  4B FF 2B 25 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80096634  7F 23 CB 78 */	mr r3, r25
/* 80096638  38 99 04 18 */	addi r4, r25, 0x418
/* 8009663C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80096640  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80096644  38 A5 00 9C */	addi r5, r5, 0x9c
/* 80096648  C0 22 91 A8 */	lfs f1, lit_11415(r2)
/* 8009664C  4B FF 2B 09 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 80096650  7F 23 CB 78 */	mr r3, r25
/* 80096654  38 99 04 20 */	addi r4, r25, 0x420
/* 80096658  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8009665C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80096660  38 A5 02 3D */	addi r5, r5, 0x23d
/* 80096664  C0 22 90 6C */	lfs f1, lit_8747(r2)
/* 80096668  4B FF 2A ED */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8009666C  7F 23 CB 78 */	mr r3, r25
/* 80096670  38 99 04 24 */	addi r4, r25, 0x424
/* 80096674  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80096678  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 8009667C  38 C0 00 14 */	li r6, 0x14
/* 80096680  4B FF 2A 0D */	bl getEvIntData__9dCamera_cFPiPci
lbl_80096684:
/* 80096684  80 B9 03 E8 */	lwz r5, 0x3e8(r25)
/* 80096688  28 05 00 00 */	cmplwi r5, 0
/* 8009668C  41 82 00 10 */	beq lbl_8009669C
/* 80096690  80 19 03 EC */	lwz r0, 0x3ec(r25)
/* 80096694  28 00 00 00 */	cmplwi r0, 0
/* 80096698  40 82 00 0C */	bne lbl_800966A4
lbl_8009669C:
/* 8009669C  38 60 00 01 */	li r3, 1
/* 800966A0  48 00 08 14 */	b lbl_80096EB4
lbl_800966A4:
/* 800966A4  80 19 01 74 */	lwz r0, 0x174(r25)
/* 800966A8  28 00 00 00 */	cmplwi r0, 0
/* 800966AC  40 82 06 64 */	bne lbl_80096D10
/* 800966B0  38 61 01 6C */	addi r3, r1, 0x16c
/* 800966B4  7F 24 CB 78 */	mr r4, r25
/* 800966B8  48 00 10 65 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 800966BC  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 800966C0  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 800966C4  C0 01 01 70 */	lfs f0, 0x170(r1)
/* 800966C8  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 800966CC  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 800966D0  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 800966D4  38 61 01 60 */	addi r3, r1, 0x160
/* 800966D8  7F 24 CB 78 */	mr r4, r25
/* 800966DC  80 B9 03 EC */	lwz r5, 0x3ec(r25)
/* 800966E0  48 00 10 3D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 800966E4  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 800966E8  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 800966EC  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 800966F0  D0 01 01 A0 */	stfs f0, 0x1a0(r1)
/* 800966F4  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 800966F8  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 800966FC  3B A0 00 00 */	li r29, 0
/* 80096700  80 79 03 E8 */	lwz r3, 0x3e8(r25)
/* 80096704  A8 03 00 08 */	lha r0, 8(r3)
/* 80096708  2C 00 00 FF */	cmpwi r0, 0xff
/* 8009670C  40 82 00 30 */	bne lbl_8009673C
/* 80096710  7F C3 F3 78 */	mr r3, r30
/* 80096714  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80096718  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8009671C  7D 89 03 A6 */	mtctr r12
/* 80096720  4E 80 04 21 */	bctrl 
/* 80096724  C0 03 00 00 */	lfs f0, 0(r3)
/* 80096728  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 8009672C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80096730  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 80096734  C0 03 00 08 */	lfs f0, 8(r3)
/* 80096738  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
lbl_8009673C:
/* 8009673C  80 19 03 EC */	lwz r0, 0x3ec(r25)
/* 80096740  80 B9 01 80 */	lwz r5, 0x180(r25)
/* 80096744  7C 00 28 40 */	cmplw r0, r5
/* 80096748  40 82 00 90 */	bne lbl_800967D8
/* 8009674C  80 19 01 90 */	lwz r0, 0x190(r25)
/* 80096750  2C 00 00 01 */	cmpwi r0, 1
/* 80096754  40 82 00 84 */	bne lbl_800967D8
/* 80096758  38 61 01 54 */	addi r3, r1, 0x154
/* 8009675C  7F 24 CB 78 */	mr r4, r25
/* 80096760  48 00 0F FD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80096764  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 80096768  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 8009676C  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 80096770  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 80096774  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 80096778  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 8009677C  C0 01 01 A0 */	lfs f0, 0x1a0(r1)
/* 80096780  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 80096784  38 61 01 48 */	addi r3, r1, 0x148
/* 80096788  38 81 01 90 */	addi r4, r1, 0x190
/* 8009678C  38 A1 01 9C */	addi r5, r1, 0x19c
/* 80096790  48 1D 03 A5 */	bl __mi__4cXyzCFRC3Vec
/* 80096794  C0 01 01 48 */	lfs f0, 0x148(r1)
/* 80096798  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 8009679C  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 800967A0  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 800967A4  C0 01 01 50 */	lfs f0, 0x150(r1)
/* 800967A8  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 800967AC  38 61 01 30 */	addi r3, r1, 0x130
/* 800967B0  38 81 01 3C */	addi r4, r1, 0x13c
/* 800967B4  48 1D 05 31 */	bl norm__4cXyzCFv
/* 800967B8  38 61 01 24 */	addi r3, r1, 0x124
/* 800967BC  38 81 01 30 */	addi r4, r1, 0x130
/* 800967C0  C0 22 8F 68 */	lfs f1, lit_8187(r2)
/* 800967C4  48 1D 03 C1 */	bl __ml__4cXyzCFf
/* 800967C8  38 61 01 9C */	addi r3, r1, 0x19c
/* 800967CC  38 81 01 24 */	addi r4, r1, 0x124
/* 800967D0  7C 65 1B 78 */	mr r5, r3
/* 800967D4  48 2B 08 BD */	bl PSVECAdd
lbl_800967D8:
/* 800967D8  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 800967DC  D0 19 04 28 */	stfs f0, 0x428(r25)
/* 800967E0  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 800967E4  D0 19 04 2C */	stfs f0, 0x42c(r25)
/* 800967E8  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 800967EC  D0 19 04 30 */	stfs f0, 0x430(r25)
/* 800967F0  C0 19 00 5C */	lfs f0, 0x5c(r25)
/* 800967F4  D0 19 04 08 */	stfs f0, 0x408(r25)
/* 800967F8  A8 19 00 60 */	lha r0, 0x60(r25)
/* 800967FC  B0 19 04 0C */	sth r0, 0x40c(r25)
/* 80096800  A8 19 00 62 */	lha r0, 0x62(r25)
/* 80096804  B0 19 04 0E */	sth r0, 0x40e(r25)
/* 80096808  38 61 01 18 */	addi r3, r1, 0x118
/* 8009680C  38 81 01 9C */	addi r4, r1, 0x19c
/* 80096810  38 A1 01 A8 */	addi r5, r1, 0x1a8
/* 80096814  48 1D 03 21 */	bl __mi__4cXyzCFRC3Vec
/* 80096818  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 8009681C  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80096820  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 80096824  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80096828  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 8009682C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80096830  38 79 04 10 */	addi r3, r25, 0x410
/* 80096834  38 81 01 78 */	addi r4, r1, 0x178
/* 80096838  48 1D B2 39 */	bl Val__7cSGlobeFRC4cXyz
/* 8009683C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80096840  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80096844  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 80096848  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 8009684C  41 82 00 24 */	beq lbl_80096870
/* 80096850  38 61 00 54 */	addi r3, r1, 0x54
/* 80096854  C0 22 8F 40 */	lfs f1, lit_7357(r2)
/* 80096858  48 1D A7 71 */	bl __ct__7cSAngleFf
/* 8009685C  38 61 00 18 */	addi r3, r1, 0x18
/* 80096860  A8 81 00 54 */	lha r4, 0x54(r1)
/* 80096864  48 1D A7 35 */	bl __ct__7cSAngleFs
/* 80096868  A8 01 00 18 */	lha r0, 0x18(r1)
/* 8009686C  B0 19 04 14 */	sth r0, 0x414(r25)
lbl_80096870:
/* 80096870  38 61 01 0C */	addi r3, r1, 0x10c
/* 80096874  38 81 01 78 */	addi r4, r1, 0x178
/* 80096878  C0 22 91 AC */	lfs f1, lit_11416(r2)
/* 8009687C  48 1D 03 09 */	bl __ml__4cXyzCFf
/* 80096880  38 61 01 00 */	addi r3, r1, 0x100
/* 80096884  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 80096888  38 A1 01 0C */	addi r5, r1, 0x10c
/* 8009688C  48 1D 02 59 */	bl __pl__4cXyzCFRC3Vec
/* 80096890  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 80096894  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 80096898  C0 21 01 04 */	lfs f1, 0x104(r1)
/* 8009689C  D0 21 01 88 */	stfs f1, 0x188(r1)
/* 800968A0  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 800968A4  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 800968A8  C0 19 04 20 */	lfs f0, 0x420(r25)
/* 800968AC  EC 01 00 2A */	fadds f0, f1, f0
/* 800968B0  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 800968B4  C0 19 04 18 */	lfs f0, 0x418(r25)
/* 800968B8  D0 19 04 08 */	stfs f0, 0x408(r25)
/* 800968BC  38 A1 01 B0 */	addi r5, r1, 0x1b0
/* 800968C0  3C 60 80 38 */	lis r3, lit_11087@ha
/* 800968C4  38 63 AA BC */	addi r3, r3, lit_11087@l
/* 800968C8  38 83 FF FC */	addi r4, r3, -4
/* 800968CC  38 00 00 05 */	li r0, 5
/* 800968D0  7C 09 03 A6 */	mtctr r0
lbl_800968D4:
/* 800968D4  80 64 00 04 */	lwz r3, 4(r4)
/* 800968D8  84 04 00 08 */	lwzu r0, 8(r4)
/* 800968DC  90 65 00 04 */	stw r3, 4(r5)
/* 800968E0  94 05 00 08 */	stwu r0, 8(r5)
/* 800968E4  42 00 FF F0 */	bdnz lbl_800968D4
/* 800968E8  80 79 00 A8 */	lwz r3, 0xa8(r25)
/* 800968EC  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 800968F0  41 82 00 14 */	beq lbl_80096904
/* 800968F4  C0 21 01 B4 */	lfs f1, 0x1b4(r1)
/* 800968F8  C0 01 01 C0 */	lfs f0, 0x1c0(r1)
/* 800968FC  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80096900  D0 21 01 C0 */	stfs f1, 0x1c0(r1)
lbl_80096904:
/* 80096904  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80096908  41 82 00 14 */	beq lbl_8009691C
/* 8009690C  C0 21 01 BC */	lfs f1, 0x1bc(r1)
/* 80096910  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 80096914  D0 01 01 BC */	stfs f0, 0x1bc(r1)
/* 80096918  D0 21 01 B8 */	stfs f1, 0x1b8(r1)
lbl_8009691C:
/* 8009691C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80096920  41 82 00 14 */	beq lbl_80096934
/* 80096924  C0 21 01 B4 */	lfs f1, 0x1b4(r1)
/* 80096928  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 8009692C  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 80096930  D0 21 01 B8 */	stfs f1, 0x1b8(r1)
lbl_80096934:
/* 80096934  3B 40 00 00 */	li r26, 0
/* 80096938  38 61 00 60 */	addi r3, r1, 0x60
/* 8009693C  3B 79 04 16 */	addi r27, r25, 0x416
/* 80096940  7F 64 DB 78 */	mr r4, r27
/* 80096944  48 1D A6 25 */	bl __ct__7cSAngleFRC7cSAngle
/* 80096948  3B 00 00 00 */	li r24, 0
/* 8009694C  7F C3 F3 78 */	mr r3, r30
/* 80096950  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80096954  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80096958  7D 89 03 A6 */	mtctr r12
/* 8009695C  4E 80 04 21 */	bctrl 
/* 80096960  28 03 00 00 */	cmplwi r3, 0
/* 80096964  40 82 00 74 */	bne lbl_800969D8
/* 80096968  7F C3 F3 78 */	mr r3, r30
/* 8009696C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80096970  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 80096974  7D 89 03 A6 */	mtctr r12
/* 80096978  4E 80 04 21 */	bctrl 
/* 8009697C  28 03 00 00 */	cmplwi r3, 0
/* 80096980  40 82 00 58 */	bne lbl_800969D8
/* 80096984  7F C3 F3 78 */	mr r3, r30
/* 80096988  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8009698C  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 80096990  7D 89 03 A6 */	mtctr r12
/* 80096994  4E 80 04 21 */	bctrl 
/* 80096998  28 03 00 00 */	cmplwi r3, 0
/* 8009699C  40 82 00 3C */	bne lbl_800969D8
/* 800969A0  7F C3 F3 78 */	mr r3, r30
/* 800969A4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800969A8  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800969AC  7D 89 03 A6 */	mtctr r12
/* 800969B0  4E 80 04 21 */	bctrl 
/* 800969B4  28 03 00 00 */	cmplwi r3, 0
/* 800969B8  40 82 00 20 */	bne lbl_800969D8
/* 800969BC  7F C3 F3 78 */	mr r3, r30
/* 800969C0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800969C4  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800969C8  7D 89 03 A6 */	mtctr r12
/* 800969CC  4E 80 04 21 */	bctrl 
/* 800969D0  28 03 00 00 */	cmplwi r3, 0
/* 800969D4  41 82 00 08 */	beq lbl_800969DC
lbl_800969D8:
/* 800969D8  3B 00 00 01 */	li r24, 1
lbl_800969DC:
/* 800969DC  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 800969E0  41 82 00 60 */	beq lbl_80096A40
/* 800969E4  83 BE 28 18 */	lwz r29, 0x2818(r30)
/* 800969E8  38 61 00 50 */	addi r3, r1, 0x50
/* 800969EC  7F 24 CB 78 */	mr r4, r25
/* 800969F0  80 B9 01 80 */	lwz r5, 0x180(r25)
/* 800969F4  48 00 0D 45 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 800969F8  A8 01 00 50 */	lha r0, 0x50(r1)
/* 800969FC  B0 01 00 60 */	sth r0, 0x60(r1)
/* 80096A00  38 61 00 4C */	addi r3, r1, 0x4c
/* 80096A04  7F 64 DB 78 */	mr r4, r27
/* 80096A08  38 A1 00 60 */	addi r5, r1, 0x60
/* 80096A0C  48 1D A7 99 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80096A10  A8 01 00 4C */	lha r0, 0x4c(r1)
/* 80096A14  A8 8D 8C 08 */	lha r4, _0__7cSAngle(r13)
/* 80096A18  7C 80 02 78 */	xor r0, r4, r0
/* 80096A1C  7C 03 0E 70 */	srawi r3, r0, 1
/* 80096A20  7C 00 20 38 */	and r0, r0, r4
/* 80096A24  7C 00 18 50 */	subf r0, r0, r3
/* 80096A28  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80096A2C  41 82 00 0C */	beq lbl_80096A38
/* 80096A30  C3 E2 91 B0 */	lfs f31, lit_11417(r2)
/* 80096A34  48 00 00 48 */	b lbl_80096A7C
lbl_80096A38:
/* 80096A38  C3 E2 8E DC */	lfs f31, lit_5346(r2)
/* 80096A3C  48 00 00 40 */	b lbl_80096A7C
lbl_80096A40:
/* 80096A40  38 61 00 48 */	addi r3, r1, 0x48
/* 80096A44  7F 64 DB 78 */	mr r4, r27
/* 80096A48  38 B9 04 0E */	addi r5, r25, 0x40e
/* 80096A4C  48 1D A7 59 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80096A50  A8 81 00 48 */	lha r4, 0x48(r1)
/* 80096A54  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80096A58  7C 80 02 78 */	xor r0, r4, r0
/* 80096A5C  7C 03 0E 70 */	srawi r3, r0, 1
/* 80096A60  7C 00 20 38 */	and r0, r0, r4
/* 80096A64  7C 00 18 50 */	subf r0, r0, r3
/* 80096A68  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80096A6C  41 82 00 0C */	beq lbl_80096A78
/* 80096A70  C3 E2 91 B0 */	lfs f31, lit_11417(r2)
/* 80096A74  48 00 00 08 */	b lbl_80096A7C
lbl_80096A78:
/* 80096A78  C3 E2 8E DC */	lfs f31, lit_5346(r2)
lbl_80096A7C:
/* 80096A7C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80096A80  C0 22 8F B4 */	lfs f1, lit_8206(r2)
/* 80096A84  48 1D A5 45 */	bl __ct__7cSAngleFf
/* 80096A88  3B 80 00 00 */	li r28, 0
/* 80096A8C  3B D9 04 14 */	addi r30, r25, 0x414
/* 80096A90  3B E1 01 B4 */	addi r31, r1, 0x1b4
/* 80096A94  C3 C2 91 C0 */	lfs f30, lit_11421(r2)
lbl_80096A98:
/* 80096A98  3B 60 00 00 */	li r27, 0
/* 80096A9C  3B 00 00 00 */	li r24, 0
lbl_80096AA0:
/* 80096AA0  38 61 00 58 */	addi r3, r1, 0x58
/* 80096AA4  7C 1F C4 2E */	lfsx f0, r31, r24
/* 80096AA8  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80096AAC  48 1D A5 1D */	bl __ct__7cSAngleFf
/* 80096AB0  38 61 00 44 */	addi r3, r1, 0x44
/* 80096AB4  38 81 00 60 */	addi r4, r1, 0x60
/* 80096AB8  38 A1 00 58 */	addi r5, r1, 0x58
/* 80096ABC  48 1D A6 B9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80096AC0  38 61 00 14 */	addi r3, r1, 0x14
/* 80096AC4  A8 81 00 44 */	lha r4, 0x44(r1)
/* 80096AC8  48 1D A4 D1 */	bl __ct__7cSAngleFs
/* 80096ACC  A8 01 00 14 */	lha r0, 0x14(r1)
/* 80096AD0  B0 19 04 0E */	sth r0, 0x40e(r25)
/* 80096AD4  38 61 00 58 */	addi r3, r1, 0x58
/* 80096AD8  48 1D A6 49 */	bl Cos__7cSAngleCFv
/* 80096ADC  38 61 00 40 */	addi r3, r1, 0x40
/* 80096AE0  7F C4 F3 78 */	mr r4, r30
/* 80096AE4  48 1D A7 81 */	bl __ml__7cSAngleCFf
/* 80096AE8  38 61 00 3C */	addi r3, r1, 0x3c
/* 80096AEC  38 81 00 40 */	addi r4, r1, 0x40
/* 80096AF0  C0 22 91 B4 */	lfs f1, lit_11418(r2)
/* 80096AF4  48 1D A7 71 */	bl __ml__7cSAngleCFf
/* 80096AF8  38 61 00 38 */	addi r3, r1, 0x38
/* 80096AFC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80096B00  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80096B04  48 1D A6 71 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80096B08  38 61 00 10 */	addi r3, r1, 0x10
/* 80096B0C  A8 81 00 38 */	lha r4, 0x38(r1)
/* 80096B10  48 1D A4 89 */	bl __ct__7cSAngleFs
/* 80096B14  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80096B18  B0 19 04 0C */	sth r0, 0x40c(r25)
/* 80096B1C  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80096B20  38 81 01 78 */	addi r4, r1, 0x178
/* 80096B24  C0 22 91 B4 */	lfs f1, lit_11418(r2)
/* 80096B28  48 1D 00 5D */	bl __ml__4cXyzCFf
/* 80096B2C  38 61 00 58 */	addi r3, r1, 0x58
/* 80096B30  48 1D A5 F1 */	bl Cos__7cSAngleCFv
/* 80096B34  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80096B38  38 81 00 F4 */	addi r4, r1, 0xf4
/* 80096B3C  48 1D 00 49 */	bl __ml__4cXyzCFf
/* 80096B40  38 61 00 DC */	addi r3, r1, 0xdc
/* 80096B44  38 81 01 84 */	addi r4, r1, 0x184
/* 80096B48  38 A1 00 E8 */	addi r5, r1, 0xe8
/* 80096B4C  48 1C FF E9 */	bl __mi__4cXyzCFRC3Vec
/* 80096B50  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80096B54  D0 19 03 F0 */	stfs f0, 0x3f0(r25)
/* 80096B58  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80096B5C  D0 19 03 F4 */	stfs f0, 0x3f4(r25)
/* 80096B60  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80096B64  D0 19 03 F8 */	stfs f0, 0x3f8(r25)
/* 80096B68  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80096B6C  38 99 04 08 */	addi r4, r25, 0x408
/* 80096B70  48 1D AF 45 */	bl Xyz__7cSGlobeCFv
/* 80096B74  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80096B78  38 99 03 F0 */	addi r4, r25, 0x3f0
/* 80096B7C  38 A1 00 D0 */	addi r5, r1, 0xd0
/* 80096B80  48 1C FF 65 */	bl __pl__4cXyzCFRC3Vec
/* 80096B84  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 80096B88  D0 19 03 FC */	stfs f0, 0x3fc(r25)
/* 80096B8C  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 80096B90  D0 19 04 00 */	stfs f0, 0x400(r25)
/* 80096B94  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80096B98  D0 19 04 04 */	stfs f0, 0x404(r25)
/* 80096B9C  7F 23 CB 78 */	mr r3, r25
/* 80096BA0  38 81 01 9C */	addi r4, r1, 0x19c
/* 80096BA4  38 B9 03 FC */	addi r5, r25, 0x3fc
/* 80096BA8  38 C0 40 07 */	li r6, 0x4007
/* 80096BAC  48 0C EF 45 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80096BB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80096BB4  40 82 00 E4 */	bne lbl_80096C98
/* 80096BB8  7F 23 CB 78 */	mr r3, r25
/* 80096BBC  38 81 01 A8 */	addi r4, r1, 0x1a8
/* 80096BC0  38 B9 03 FC */	addi r5, r25, 0x3fc
/* 80096BC4  38 C0 40 07 */	li r6, 0x4007
/* 80096BC8  48 0C EF 29 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80096BCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80096BD0  40 82 00 C8 */	bne lbl_80096C98
/* 80096BD4  7F 23 CB 78 */	mr r3, r25
/* 80096BD8  38 99 03 F0 */	addi r4, r25, 0x3f0
/* 80096BDC  38 B9 03 FC */	addi r5, r25, 0x3fc
/* 80096BE0  38 C0 40 07 */	li r6, 0x4007
/* 80096BE4  48 0C EF 0D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80096BE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80096BEC  40 82 00 AC */	bne lbl_80096C98
/* 80096BF0  C0 01 01 9C */	lfs f0, 0x19c(r1)
/* 80096BF4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80096BF8  C0 01 01 A0 */	lfs f0, 0x1a0(r1)
/* 80096BFC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80096C00  C0 01 01 A4 */	lfs f0, 0x1a4(r1)
/* 80096C04  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80096C08  C0 19 03 FC */	lfs f0, 0x3fc(r25)
/* 80096C0C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80096C10  C0 19 04 00 */	lfs f0, 0x400(r25)
/* 80096C14  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80096C18  C0 19 04 04 */	lfs f0, 0x404(r25)
/* 80096C1C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80096C20  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80096C24  38 81 00 AC */	addi r4, r1, 0xac
/* 80096C28  80 B9 03 EC */	lwz r5, 0x3ec(r25)
/* 80096C2C  80 D9 03 E8 */	lwz r6, 0x3e8(r25)
/* 80096C30  7F A7 EB 78 */	mr r7, r29
/* 80096C34  4B FF 8E 61 */	bl func_8008FA94
/* 80096C38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80096C3C  40 82 00 5C */	bne lbl_80096C98
/* 80096C40  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 80096C44  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80096C48  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 80096C4C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80096C50  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 80096C54  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80096C58  C0 19 03 FC */	lfs f0, 0x3fc(r25)
/* 80096C5C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80096C60  C0 19 04 00 */	lfs f0, 0x400(r25)
/* 80096C64  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80096C68  C0 19 04 04 */	lfs f0, 0x404(r25)
/* 80096C6C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80096C70  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80096C74  38 81 00 94 */	addi r4, r1, 0x94
/* 80096C78  80 B9 03 EC */	lwz r5, 0x3ec(r25)
/* 80096C7C  80 D9 03 E8 */	lwz r6, 0x3e8(r25)
/* 80096C80  7F A7 EB 78 */	mr r7, r29
/* 80096C84  4B FF 8E 11 */	bl func_8008FA94
/* 80096C88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80096C8C  40 82 00 0C */	bne lbl_80096C98
/* 80096C90  3B 40 00 01 */	li r26, 1
/* 80096C94  48 00 00 58 */	b lbl_80096CEC
lbl_80096C98:
/* 80096C98  57 60 F0 02 */	slwi r0, r27, 0x1e
/* 80096C9C  57 63 0F FE */	srwi r3, r27, 0x1f
/* 80096CA0  7C 03 00 50 */	subf r0, r3, r0
/* 80096CA4  54 00 10 3E */	rotlwi r0, r0, 2
/* 80096CA8  7C 00 1A 14 */	add r0, r0, r3
/* 80096CAC  2C 00 00 03 */	cmpwi r0, 3
/* 80096CB0  40 82 00 2C */	bne lbl_80096CDC
/* 80096CB4  38 61 00 34 */	addi r3, r1, 0x34
/* 80096CB8  2C 1C 00 00 */	cmpwi r28, 0
/* 80096CBC  41 82 00 0C */	beq lbl_80096CC8
/* 80096CC0  C0 22 91 B8 */	lfs f1, lit_11419(r2)
/* 80096CC4  48 00 00 08 */	b lbl_80096CCC
lbl_80096CC8:
/* 80096CC8  C0 22 91 BC */	lfs f1, lit_11420(r2)
lbl_80096CCC:
/* 80096CCC  48 1D A2 FD */	bl __ct__7cSAngleFf
/* 80096CD0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80096CD4  38 81 00 34 */	addi r4, r1, 0x34
/* 80096CD8  48 1D A4 FD */	bl __apl__7cSAngleFRC7cSAngle
lbl_80096CDC:
/* 80096CDC  3B 7B 00 01 */	addi r27, r27, 1
/* 80096CE0  2C 1B 00 0C */	cmpwi r27, 0xc
/* 80096CE4  3B 18 00 04 */	addi r24, r24, 4
/* 80096CE8  41 80 FD B8 */	blt lbl_80096AA0
lbl_80096CEC:
/* 80096CEC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80096CF0  40 82 00 20 */	bne lbl_80096D10
/* 80096CF4  FF E0 F8 50 */	fneg f31, f31
/* 80096CF8  C0 19 04 08 */	lfs f0, 0x408(r25)
/* 80096CFC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80096D00  D0 19 04 08 */	stfs f0, 0x408(r25)
/* 80096D04  3B 9C 00 01 */	addi r28, r28, 1
/* 80096D08  2C 1C 00 02 */	cmpwi r28, 2
/* 80096D0C  41 80 FD 8C */	blt lbl_80096A98
lbl_80096D10:
/* 80096D10  88 19 01 58 */	lbz r0, 0x158(r25)
/* 80096D14  28 00 00 00 */	cmplwi r0, 0
/* 80096D18  40 82 01 98 */	bne lbl_80096EB0
/* 80096D1C  80 79 01 74 */	lwz r3, 0x174(r25)
/* 80096D20  38 03 00 01 */	addi r0, r3, 1
/* 80096D24  C8 22 8E E8 */	lfd f1, lit_5846(r2)
/* 80096D28  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 80096D2C  3C 60 43 30 */	lis r3, 0x4330
/* 80096D30  90 61 01 E0 */	stw r3, 0x1e0(r1)
/* 80096D34  C8 01 01 E0 */	lfd f0, 0x1e0(r1)
/* 80096D38  EC 40 08 28 */	fsubs f2, f0, f1
/* 80096D3C  80 19 04 24 */	lwz r0, 0x424(r25)
/* 80096D40  C8 22 8E F8 */	lfd f1, lit_5962(r2)
/* 80096D44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80096D48  90 01 01 EC */	stw r0, 0x1ec(r1)
/* 80096D4C  90 61 01 E8 */	stw r3, 0x1e8(r1)
/* 80096D50  C8 01 01 E8 */	lfd f0, 0x1e8(r1)
/* 80096D54  EC 00 08 28 */	fsubs f0, f0, f1
/* 80096D58  EC 22 00 24 */	fdivs f1, f2, f0
/* 80096D5C  C0 42 91 C4 */	lfs f2, lit_11422(r2)
/* 80096D60  4B FF 13 DD */	bl rationalBezierRatio__8dCamMathFff
/* 80096D64  FF C0 08 90 */	fmr f30, f1
/* 80096D68  38 61 00 88 */	addi r3, r1, 0x88
/* 80096D6C  38 99 03 F0 */	addi r4, r25, 0x3f0
/* 80096D70  38 B9 00 64 */	addi r5, r25, 0x64
/* 80096D74  48 1C FD C1 */	bl __mi__4cXyzCFRC3Vec
/* 80096D78  38 61 00 7C */	addi r3, r1, 0x7c
/* 80096D7C  38 81 00 88 */	addi r4, r1, 0x88
/* 80096D80  FC 20 F0 90 */	fmr f1, f30
/* 80096D84  48 1C FE 01 */	bl __ml__4cXyzCFf
/* 80096D88  38 79 00 64 */	addi r3, r25, 0x64
/* 80096D8C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80096D90  7C 65 1B 78 */	mr r5, r3
/* 80096D94  48 2B 02 FD */	bl PSVECAdd
/* 80096D98  C0 39 00 5C */	lfs f1, 0x5c(r25)
/* 80096D9C  C0 19 04 08 */	lfs f0, 0x408(r25)
/* 80096DA0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80096DA4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80096DA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80096DAC  D0 19 00 5C */	stfs f0, 0x5c(r25)
/* 80096DB0  38 61 00 30 */	addi r3, r1, 0x30
/* 80096DB4  38 99 04 0C */	addi r4, r25, 0x40c
/* 80096DB8  3B 19 00 60 */	addi r24, r25, 0x60
/* 80096DBC  7F 05 C3 78 */	mr r5, r24
/* 80096DC0  48 1D A3 E5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80096DC4  38 61 00 2C */	addi r3, r1, 0x2c
/* 80096DC8  38 81 00 30 */	addi r4, r1, 0x30
/* 80096DCC  FC 20 F0 90 */	fmr f1, f30
/* 80096DD0  48 1D A4 95 */	bl __ml__7cSAngleCFf
/* 80096DD4  38 61 00 28 */	addi r3, r1, 0x28
/* 80096DD8  7F 04 C3 78 */	mr r4, r24
/* 80096DDC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80096DE0  48 1D A3 95 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80096DE4  38 61 00 0C */	addi r3, r1, 0xc
/* 80096DE8  A8 81 00 28 */	lha r4, 0x28(r1)
/* 80096DEC  48 1D A1 AD */	bl __ct__7cSAngleFs
/* 80096DF0  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80096DF4  B0 19 00 60 */	sth r0, 0x60(r25)
/* 80096DF8  38 61 00 24 */	addi r3, r1, 0x24
/* 80096DFC  38 99 04 0E */	addi r4, r25, 0x40e
/* 80096E00  3B 19 00 62 */	addi r24, r25, 0x62
/* 80096E04  7F 05 C3 78 */	mr r5, r24
/* 80096E08  48 1D A3 9D */	bl __mi__7cSAngleCFRC7cSAngle
/* 80096E0C  38 61 00 20 */	addi r3, r1, 0x20
/* 80096E10  38 81 00 24 */	addi r4, r1, 0x24
/* 80096E14  FC 20 F0 90 */	fmr f1, f30
/* 80096E18  48 1D A4 4D */	bl __ml__7cSAngleCFf
/* 80096E1C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80096E20  7F 04 C3 78 */	mr r4, r24
/* 80096E24  38 A1 00 20 */	addi r5, r1, 0x20
/* 80096E28  48 1D A3 4D */	bl __pl__7cSAngleCFRC7cSAngle
/* 80096E2C  38 61 00 08 */	addi r3, r1, 8
/* 80096E30  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 80096E34  48 1D A1 65 */	bl __ct__7cSAngleFs
/* 80096E38  A8 01 00 08 */	lha r0, 8(r1)
/* 80096E3C  B0 19 00 62 */	sth r0, 0x62(r25)
/* 80096E40  38 61 00 70 */	addi r3, r1, 0x70
/* 80096E44  38 99 00 5C */	addi r4, r25, 0x5c
/* 80096E48  48 1D AC 6D */	bl Xyz__7cSGlobeCFv
/* 80096E4C  38 61 00 64 */	addi r3, r1, 0x64
/* 80096E50  38 99 00 64 */	addi r4, r25, 0x64
/* 80096E54  38 A1 00 70 */	addi r5, r1, 0x70
/* 80096E58  48 1C FC 8D */	bl __pl__4cXyzCFRC3Vec
/* 80096E5C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80096E60  D0 19 00 70 */	stfs f0, 0x70(r25)
/* 80096E64  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80096E68  D0 19 00 74 */	stfs f0, 0x74(r25)
/* 80096E6C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80096E70  D0 19 00 78 */	stfs f0, 0x78(r25)
/* 80096E74  C0 39 00 80 */	lfs f1, 0x80(r25)
/* 80096E78  C0 19 04 1C */	lfs f0, 0x41c(r25)
/* 80096E7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80096E80  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80096E84  EC 01 00 2A */	fadds f0, f1, f0
/* 80096E88  D0 19 00 80 */	stfs f0, 0x80(r25)
/* 80096E8C  80 99 01 74 */	lwz r4, 0x174(r25)
/* 80096E90  80 79 04 24 */	lwz r3, 0x424(r25)
/* 80096E94  38 03 FF FF */	addi r0, r3, -1
/* 80096E98  7C 04 00 40 */	cmplw r4, r0
/* 80096E9C  40 82 00 0C */	bne lbl_80096EA8
/* 80096EA0  38 00 00 01 */	li r0, 1
/* 80096EA4  98 19 01 58 */	stb r0, 0x158(r25)
lbl_80096EA8:
/* 80096EA8  38 60 00 00 */	li r3, 0
/* 80096EAC  48 00 00 08 */	b lbl_80096EB4
lbl_80096EB0:
/* 80096EB0  38 60 00 01 */	li r3, 1
lbl_80096EB4:
/* 80096EB4  E3 E1 02 28 */	psq_l f31, 552(r1), 0, 0 /* qr0 */
/* 80096EB8  CB E1 02 20 */	lfd f31, 0x220(r1)
/* 80096EBC  E3 C1 02 18 */	psq_l f30, 536(r1), 0, 0 /* qr0 */
/* 80096EC0  CB C1 02 10 */	lfd f30, 0x210(r1)
/* 80096EC4  39 61 02 10 */	addi r11, r1, 0x210
/* 80096EC8  48 2C B3 4D */	bl _restgpr_24
/* 80096ECC  80 01 02 34 */	lwz r0, 0x234(r1)
/* 80096ED0  7C 08 03 A6 */	mtlr r0
/* 80096ED4  38 21 02 30 */	addi r1, r1, 0x230
/* 80096ED8  4E 80 00 20 */	blr 
