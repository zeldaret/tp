lbl_8047114C:
/* 8047114C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80471150  7C 08 02 A6 */	mflr r0
/* 80471154  90 01 00 24 */	stw r0, 0x24(r1)
/* 80471158  39 61 00 20 */	addi r11, r1, 0x20
/* 8047115C  4B EF 10 78 */	b _savegpr_27
/* 80471160  7C 7D 1B 78 */	mr r29, r3
/* 80471164  3B C0 00 00 */	li r30, 0
/* 80471168  4B CE E5 C8 */	b checkCarryStartLightBallB__9daPy_py_cFv
/* 8047116C  28 03 00 00 */	cmplwi r3, 0
/* 80471170  41 82 01 08 */	beq lbl_80471278
/* 80471174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80471178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8047117C  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 80471180  7F 83 E3 78 */	mr r3, r28
/* 80471184  38 80 26 20 */	li r4, 0x2620
/* 80471188  4B BC 38 1C */	b offEventBit__11dSv_event_cFUs
/* 8047118C  7F 83 E3 78 */	mr r3, r28
/* 80471190  38 80 26 08 */	li r4, 0x2608
/* 80471194  4B BC 38 10 */	b offEventBit__11dSv_event_cFUs
/* 80471198  7F 83 E3 78 */	mr r3, r28
/* 8047119C  38 80 26 02 */	li r4, 0x2602
/* 804711A0  4B BC 38 04 */	b offEventBit__11dSv_event_cFUs
/* 804711A4  7F 83 E3 78 */	mr r3, r28
/* 804711A8  38 80 27 80 */	li r4, 0x2780
/* 804711AC  4B BC 37 F8 */	b offEventBit__11dSv_event_cFUs
/* 804711B0  7F 83 E3 78 */	mr r3, r28
/* 804711B4  38 80 27 20 */	li r4, 0x2720
/* 804711B8  4B BC 37 EC */	b offEventBit__11dSv_event_cFUs
/* 804711BC  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 804711C0  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 804711C4  7C 00 07 74 */	extsb r0, r0
/* 804711C8  2C 00 00 33 */	cmpwi r0, 0x33
/* 804711CC  40 82 00 14 */	bne lbl_804711E0
/* 804711D0  7F 83 E3 78 */	mr r3, r28
/* 804711D4  38 80 26 02 */	li r4, 0x2602
/* 804711D8  4B BC 37 B4 */	b onEventBit__11dSv_event_cFUs
/* 804711DC  48 00 00 60 */	b lbl_8047123C
lbl_804711E0:
/* 804711E0  2C 00 00 34 */	cmpwi r0, 0x34
/* 804711E4  40 82 00 14 */	bne lbl_804711F8
/* 804711E8  7F 83 E3 78 */	mr r3, r28
/* 804711EC  38 80 27 20 */	li r4, 0x2720
/* 804711F0  4B BC 37 9C */	b onEventBit__11dSv_event_cFUs
/* 804711F4  48 00 00 48 */	b lbl_8047123C
lbl_804711F8:
/* 804711F8  2C 00 00 00 */	cmpwi r0, 0
/* 804711FC  40 82 00 14 */	bne lbl_80471210
/* 80471200  7F 83 E3 78 */	mr r3, r28
/* 80471204  38 80 26 20 */	li r4, 0x2620
/* 80471208  4B BC 37 84 */	b onEventBit__11dSv_event_cFUs
/* 8047120C  48 00 00 30 */	b lbl_8047123C
lbl_80471210:
/* 80471210  2C 00 00 01 */	cmpwi r0, 1
/* 80471214  41 82 00 0C */	beq lbl_80471220
/* 80471218  2C 00 00 02 */	cmpwi r0, 2
/* 8047121C  40 82 00 14 */	bne lbl_80471230
lbl_80471220:
/* 80471220  7F 83 E3 78 */	mr r3, r28
/* 80471224  38 80 26 08 */	li r4, 0x2608
/* 80471228  4B BC 37 64 */	b onEventBit__11dSv_event_cFUs
/* 8047122C  48 00 00 10 */	b lbl_8047123C
lbl_80471230:
/* 80471230  7F 83 E3 78 */	mr r3, r28
/* 80471234  38 80 27 80 */	li r4, 0x2780
/* 80471238  4B BC 37 54 */	b onEventBit__11dSv_event_cFUs
lbl_8047123C:
/* 8047123C  7F A3 EB 78 */	mr r3, r29
/* 80471240  38 80 00 01 */	li r4, 1
/* 80471244  4B BA B9 04 */	b fopAcM_setCarryNow__FP10fopAc_ac_ci
/* 80471248  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 8047124C  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80471250  7C 00 07 75 */	extsb. r0, r0
/* 80471254  40 82 02 B8 */	bne lbl_8047150C
/* 80471258  3C 60 80 47 */	lis r3, s_setB_sub__FPvPv@ha
/* 8047125C  38 63 F6 10 */	addi r3, r3, s_setB_sub__FPvPv@l
/* 80471260  7F A4 EB 78 */	mr r4, r29
/* 80471264  4B BB 00 D4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80471268  7C 7E 1B 79 */	or. r30, r3, r3
/* 8047126C  40 82 02 A0 */	bne lbl_8047150C
/* 80471270  38 60 00 00 */	li r3, 0
/* 80471274  48 00 03 1C */	b lbl_80471590
lbl_80471278:
/* 80471278  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8047127C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80471280  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80471284  7F E3 FB 78 */	mr r3, r31
/* 80471288  38 80 26 20 */	li r4, 0x2620
/* 8047128C  4B BC 37 30 */	b isEventBit__11dSv_event_cCFUs
/* 80471290  2C 03 00 00 */	cmpwi r3, 0
/* 80471294  40 82 00 88 */	bne lbl_8047131C
/* 80471298  7F E3 FB 78 */	mr r3, r31
/* 8047129C  38 80 26 08 */	li r4, 0x2608
/* 804712A0  4B BC 37 1C */	b isEventBit__11dSv_event_cCFUs
/* 804712A4  2C 03 00 00 */	cmpwi r3, 0
/* 804712A8  40 82 00 74 */	bne lbl_8047131C
/* 804712AC  7F E3 FB 78 */	mr r3, r31
/* 804712B0  38 80 26 02 */	li r4, 0x2602
/* 804712B4  4B BC 37 08 */	b isEventBit__11dSv_event_cCFUs
/* 804712B8  2C 03 00 00 */	cmpwi r3, 0
/* 804712BC  40 82 00 60 */	bne lbl_8047131C
/* 804712C0  7F E3 FB 78 */	mr r3, r31
/* 804712C4  38 80 27 80 */	li r4, 0x2780
/* 804712C8  4B BC 36 F4 */	b isEventBit__11dSv_event_cCFUs
/* 804712CC  2C 03 00 00 */	cmpwi r3, 0
/* 804712D0  40 82 00 4C */	bne lbl_8047131C
/* 804712D4  7F E3 FB 78 */	mr r3, r31
/* 804712D8  38 80 27 20 */	li r4, 0x2720
/* 804712DC  4B BC 36 E0 */	b isEventBit__11dSv_event_cCFUs
/* 804712E0  2C 03 00 00 */	cmpwi r3, 0
/* 804712E4  40 82 00 38 */	bne lbl_8047131C
/* 804712E8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 804712EC  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 804712F0  2C 00 00 34 */	cmpwi r0, 0x34
/* 804712F4  41 82 02 18 */	beq lbl_8047150C
/* 804712F8  7F E3 FB 78 */	mr r3, r31
/* 804712FC  38 80 27 10 */	li r4, 0x2710
/* 80471300  4B BC 36 BC */	b isEventBit__11dSv_event_cCFUs
/* 80471304  2C 03 00 00 */	cmpwi r3, 0
/* 80471308  40 82 00 0C */	bne lbl_80471314
/* 8047130C  7F A3 EB 78 */	mr r3, r29
/* 80471310  48 00 05 85 */	bl resetIconPosForLightBallB__12daObjCarry_cFv
lbl_80471314:
/* 80471314  38 60 00 05 */	li r3, 5
/* 80471318  48 00 02 78 */	b lbl_80471590
lbl_8047131C:
/* 8047131C  7F E3 FB 78 */	mr r3, r31
/* 80471320  38 80 26 20 */	li r4, 0x2620
/* 80471324  4B BC 36 98 */	b isEventBit__11dSv_event_cCFUs
/* 80471328  2C 03 00 00 */	cmpwi r3, 0
/* 8047132C  41 82 00 14 */	beq lbl_80471340
/* 80471330  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80471334  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80471338  7C 00 07 75 */	extsb. r0, r0
/* 8047133C  40 82 00 AC */	bne lbl_804713E8
lbl_80471340:
/* 80471340  7F E3 FB 78 */	mr r3, r31
/* 80471344  38 80 26 08 */	li r4, 0x2608
/* 80471348  4B BC 36 74 */	b isEventBit__11dSv_event_cCFUs
/* 8047134C  2C 03 00 00 */	cmpwi r3, 0
/* 80471350  41 82 00 20 */	beq lbl_80471370
/* 80471354  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80471358  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 8047135C  7C 00 07 74 */	extsb r0, r0
/* 80471360  2C 00 00 01 */	cmpwi r0, 1
/* 80471364  41 82 00 0C */	beq lbl_80471370
/* 80471368  2C 00 00 02 */	cmpwi r0, 2
/* 8047136C  40 82 00 7C */	bne lbl_804713E8
lbl_80471370:
/* 80471370  7F E3 FB 78 */	mr r3, r31
/* 80471374  38 80 26 02 */	li r4, 0x2602
/* 80471378  4B BC 36 44 */	b isEventBit__11dSv_event_cCFUs
/* 8047137C  2C 03 00 00 */	cmpwi r3, 0
/* 80471380  41 82 00 14 */	beq lbl_80471394
/* 80471384  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 80471388  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 8047138C  2C 00 00 33 */	cmpwi r0, 0x33
/* 80471390  40 82 00 58 */	bne lbl_804713E8
lbl_80471394:
/* 80471394  7F E3 FB 78 */	mr r3, r31
/* 80471398  38 80 27 20 */	li r4, 0x2720
/* 8047139C  4B BC 36 20 */	b isEventBit__11dSv_event_cCFUs
/* 804713A0  2C 03 00 00 */	cmpwi r3, 0
/* 804713A4  41 82 00 14 */	beq lbl_804713B8
/* 804713A8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 804713AC  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 804713B0  2C 00 00 34 */	cmpwi r0, 0x34
/* 804713B4  40 82 00 34 */	bne lbl_804713E8
lbl_804713B8:
/* 804713B8  7F E3 FB 78 */	mr r3, r31
/* 804713BC  38 80 27 80 */	li r4, 0x2780
/* 804713C0  4B BC 35 FC */	b isEventBit__11dSv_event_cCFUs
/* 804713C4  2C 03 00 00 */	cmpwi r3, 0
/* 804713C8  41 82 00 50 */	beq lbl_80471418
/* 804713CC  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 804713D0  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 804713D4  7C 00 07 74 */	extsb r0, r0
/* 804713D8  2C 00 00 04 */	cmpwi r0, 4
/* 804713DC  41 82 00 3C */	beq lbl_80471418
/* 804713E0  2C 00 00 05 */	cmpwi r0, 5
/* 804713E4  41 82 00 34 */	beq lbl_80471418
lbl_804713E8:
/* 804713E8  7F E3 FB 78 */	mr r3, r31
/* 804713EC  38 80 26 20 */	li r4, 0x2620
/* 804713F0  4B BC 35 CC */	b isEventBit__11dSv_event_cCFUs
/* 804713F4  2C 03 00 00 */	cmpwi r3, 0
/* 804713F8  40 82 00 10 */	bne lbl_80471408
/* 804713FC  7F A3 EB 78 */	mr r3, r29
/* 80471400  48 00 04 95 */	bl resetIconPosForLightBallB__12daObjCarry_cFv
/* 80471404  48 00 00 0C */	b lbl_80471410
lbl_80471408:
/* 80471408  7F A3 EB 78 */	mr r3, r29
/* 8047140C  48 00 03 A9 */	bl setIconPosForLightBallBAtR00__12daObjCarry_cFv
lbl_80471410:
/* 80471410  38 60 00 05 */	li r3, 5
/* 80471414  48 00 01 7C */	b lbl_80471590
lbl_80471418:
/* 80471418  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 8047141C  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80471420  7C 00 07 75 */	extsb. r0, r0
/* 80471424  40 82 00 C4 */	bne lbl_804714E8
/* 80471428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8047142C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80471430  38 80 00 3F */	li r4, 0x3f
/* 80471434  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80471438  7C 05 07 74 */	extsb r5, r0
/* 8047143C  4B BC 3F 24 */	b isSwitch__10dSv_info_cCFii
/* 80471440  2C 03 00 00 */	cmpwi r3, 0
/* 80471444  41 82 00 0C */	beq lbl_80471450
/* 80471448  38 60 00 05 */	li r3, 5
/* 8047144C  48 00 01 44 */	b lbl_80471590
lbl_80471450:
/* 80471450  38 00 FF FF */	li r0, -1
/* 80471454  3C 60 80 48 */	lis r3, l_sw_id@ha
/* 80471458  90 03 B1 D8 */	stw r0, l_sw_id@l(r3)
/* 8047145C  3B 60 00 00 */	li r27, 0
/* 80471460  3B C0 00 00 */	li r30, 0
/* 80471464  3C 60 80 48 */	lis r3, l_event_bitB@ha
/* 80471468  3B 83 A3 E0 */	addi r28, r3, l_event_bitB@l
lbl_8047146C:
/* 8047146C  7F E3 FB 78 */	mr r3, r31
/* 80471470  7C 9C F2 2E */	lhzx r4, r28, r30
/* 80471474  4B BC 35 48 */	b isEventBit__11dSv_event_cCFUs
/* 80471478  2C 03 00 00 */	cmpwi r3, 0
/* 8047147C  41 82 00 10 */	beq lbl_8047148C
/* 80471480  3C 60 80 48 */	lis r3, l_sw_id@ha
/* 80471484  93 63 B1 D8 */	stw r27, l_sw_id@l(r3)
/* 80471488  48 00 00 14 */	b lbl_8047149C
lbl_8047148C:
/* 8047148C  3B 7B 00 01 */	addi r27, r27, 1
/* 80471490  2C 1B 00 06 */	cmpwi r27, 6
/* 80471494  3B DE 00 02 */	addi r30, r30, 2
/* 80471498  41 80 FF D4 */	blt lbl_8047146C
lbl_8047149C:
/* 8047149C  3C 60 80 48 */	lis r3, l_sw_id@ha
/* 804714A0  80 03 B1 D8 */	lwz r0, l_sw_id@l(r3)
/* 804714A4  2C 00 FF FF */	cmpwi r0, -1
/* 804714A8  41 82 00 1C */	beq lbl_804714C4
/* 804714AC  3C 60 80 47 */	lis r3, s_sw_sub__FPvPv@ha
/* 804714B0  38 63 F5 2C */	addi r3, r3, s_sw_sub__FPvPv@l
/* 804714B4  7F A4 EB 78 */	mr r4, r29
/* 804714B8  4B BA FE 80 */	b fpcEx_Search__FPFPvPv_PvPv
/* 804714BC  7C 7E 1B 78 */	mr r30, r3
/* 804714C0  48 00 00 18 */	b lbl_804714D8
lbl_804714C4:
/* 804714C4  3C 60 80 47 */	lis r3, s_setB_sub__FPvPv@ha
/* 804714C8  38 63 F6 10 */	addi r3, r3, s_setB_sub__FPvPv@l
/* 804714CC  7F A4 EB 78 */	mr r4, r29
/* 804714D0  4B BA FE 68 */	b fpcEx_Search__FPFPvPv_PvPv
/* 804714D4  7C 7E 1B 78 */	mr r30, r3
lbl_804714D8:
/* 804714D8  28 1E 00 00 */	cmplwi r30, 0
/* 804714DC  40 82 00 1C */	bne lbl_804714F8
/* 804714E0  38 60 00 00 */	li r3, 0
/* 804714E4  48 00 00 AC */	b lbl_80471590
lbl_804714E8:
/* 804714E8  2C 00 00 34 */	cmpwi r0, 0x34
/* 804714EC  41 82 00 0C */	beq lbl_804714F8
/* 804714F0  38 60 00 05 */	li r3, 5
/* 804714F4  48 00 00 9C */	b lbl_80471590
lbl_804714F8:
/* 804714F8  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 804714FC  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 80471500  98 1D 04 E2 */	stb r0, 0x4e2(r29)
/* 80471504  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80471508  98 1D 04 8C */	stb r0, 0x48c(r29)
lbl_8047150C:
/* 8047150C  28 1E 00 00 */	cmplwi r30, 0
/* 80471510  41 82 00 7C */	beq lbl_8047158C
/* 80471514  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80471518  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 8047151C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80471520  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 80471524  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 80471528  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 8047152C  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80471530  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80471534  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80471538  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8047153C  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80471540  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80471544  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80471548  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 8047154C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80471550  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80471554  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80471558  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 8047155C  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80471560  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80471564  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80471568  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 8047156C  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80471570  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80471574  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80471578  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 8047157C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80471580  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80471584  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80471588  D0 1D 05 58 */	stfs f0, 0x558(r29)
lbl_8047158C:
/* 8047158C  38 60 00 02 */	li r3, 2
lbl_80471590:
/* 80471590  39 61 00 20 */	addi r11, r1, 0x20
/* 80471594  4B EF 0C 8C */	b _restgpr_27
/* 80471598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047159C  7C 08 03 A6 */	mtlr r0
/* 804715A0  38 21 00 20 */	addi r1, r1, 0x20
/* 804715A4  4E 80 00 20 */	blr 
