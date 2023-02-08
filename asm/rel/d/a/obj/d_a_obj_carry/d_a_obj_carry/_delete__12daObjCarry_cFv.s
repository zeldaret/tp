lbl_80472734:
/* 80472734  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80472738  7C 08 02 A6 */	mflr r0
/* 8047273C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80472740  39 61 00 50 */	addi r11, r1, 0x50
/* 80472744  4B EE FA 91 */	bl _savegpr_27
/* 80472748  7C 7F 1B 78 */	mr r31, r3
/* 8047274C  3C 60 80 48 */	lis r3, l_cyl_info@ha /* 0x8047990C@ha */
/* 80472750  3B C3 99 0C */	addi r30, r3, l_cyl_info@l /* 0x8047990C@l */
/* 80472754  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80472758  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047275C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80472760  A0 9F 04 94 */	lhz r4, 0x494(r31)
/* 80472764  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80472768  7C 05 07 74 */	extsb r5, r0
/* 8047276C  4B BC 2F 49 */	bl offActor__10dSv_info_cFii
/* 80472770  88 7F 0C F0 */	lbz r3, 0xcf0(r31)
/* 80472774  28 03 00 06 */	cmplwi r3, 6
/* 80472778  41 82 00 2C */	beq lbl_804727A4
/* 8047277C  28 03 00 0B */	cmplwi r3, 0xb
/* 80472780  41 82 00 24 */	beq lbl_804727A4
/* 80472784  38 00 00 00 */	li r0, 0
/* 80472788  2C 03 00 08 */	cmpwi r3, 8
/* 8047278C  41 82 00 0C */	beq lbl_80472798
/* 80472790  2C 03 00 09 */	cmpwi r3, 9
/* 80472794  40 82 00 08 */	bne lbl_8047279C
lbl_80472798:
/* 80472798  38 00 00 01 */	li r0, 1
lbl_8047279C:
/* 8047279C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804727A0  41 82 00 0C */	beq lbl_804727AC
lbl_804727A4:
/* 804727A4  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 804727A8  4B E4 B8 51 */	bl deleteObject__14Z2SoundObjBaseFv
lbl_804727AC:
/* 804727AC  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 804727B0  28 00 00 08 */	cmplwi r0, 8
/* 804727B4  41 82 00 0C */	beq lbl_804727C0
/* 804727B8  28 00 00 09 */	cmplwi r0, 9
/* 804727BC  40 82 00 20 */	bne lbl_804727DC
lbl_804727C0:
/* 804727C0  88 1F 0E 0C */	lbz r0, 0xe0c(r31)
/* 804727C4  28 00 00 00 */	cmplwi r0, 0
/* 804727C8  41 82 00 14 */	beq lbl_804727DC
/* 804727CC  38 7F 0D F8 */	addi r3, r31, 0xdf8
/* 804727D0  4B D3 50 99 */	bl dKy_dalkmist_inf_cut__FP18DALKMIST_INFLUENCE
/* 804727D4  38 00 00 00 */	li r0, 0
/* 804727D8  98 1F 0E 0C */	stb r0, 0xe0c(r31)
lbl_804727DC:
/* 804727DC  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 804727E0  28 00 00 08 */	cmplwi r0, 8
/* 804727E4  40 82 01 6C */	bne lbl_80472950
/* 804727E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804727EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804727F0  3B 63 07 F0 */	addi r27, r3, 0x7f0
/* 804727F4  7F 63 DB 78 */	mr r3, r27
/* 804727F8  38 80 26 40 */	li r4, 0x2640
/* 804727FC  4B BC 21 C1 */	bl isEventBit__11dSv_event_cCFUs
/* 80472800  2C 03 00 00 */	cmpwi r3, 0
/* 80472804  41 82 00 3C */	beq lbl_80472840
/* 80472808  28 1D 00 00 */	cmplwi r29, 0
/* 8047280C  41 82 00 A8 */	beq lbl_804728B4
/* 80472810  28 1F 00 00 */	cmplwi r31, 0
/* 80472814  41 82 00 0C */	beq lbl_80472820
/* 80472818  83 9F 00 04 */	lwz r28, 4(r31)
/* 8047281C  48 00 00 08 */	b lbl_80472824
lbl_80472820:
/* 80472820  3B 80 FF FF */	li r28, -1
lbl_80472824:
/* 80472824  7F A3 EB 78 */	mr r3, r29
/* 80472828  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8047282C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80472830  7D 89 03 A6 */	mtctr r12
/* 80472834  4E 80 04 21 */	bctrl 
/* 80472838  7C 03 E0 40 */	cmplw r3, r28
/* 8047283C  41 82 00 78 */	beq lbl_804728B4
lbl_80472840:
/* 80472840  7F 63 DB 78 */	mr r3, r27
/* 80472844  38 80 26 10 */	li r4, 0x2610
/* 80472848  4B BC 21 5D */	bl offEventBit__11dSv_event_cFUs
/* 8047284C  7F 63 DB 78 */	mr r3, r27
/* 80472850  38 80 26 04 */	li r4, 0x2604
/* 80472854  4B BC 21 51 */	bl offEventBit__11dSv_event_cFUs
/* 80472858  7F 63 DB 78 */	mr r3, r27
/* 8047285C  38 80 26 01 */	li r4, 0x2601
/* 80472860  4B BC 21 45 */	bl offEventBit__11dSv_event_cFUs
/* 80472864  7F 63 DB 78 */	mr r3, r27
/* 80472868  38 80 27 40 */	li r4, 0x2740
/* 8047286C  4B BC 21 39 */	bl offEventBit__11dSv_event_cFUs
/* 80472870  7F 63 DB 78 */	mr r3, r27
/* 80472874  38 80 26 40 */	li r4, 0x2640
/* 80472878  4B BC 21 45 */	bl isEventBit__11dSv_event_cCFUs
/* 8047287C  2C 03 00 00 */	cmpwi r3, 0
/* 80472880  40 82 00 34 */	bne lbl_804728B4
/* 80472884  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 80472888  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8047288C  C0 1E 0A AC */	lfs f0, 0xaac(r30)
/* 80472890  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80472894  C0 1E 0A E0 */	lfs f0, 0xae0(r30)
/* 80472898  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8047289C  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 804728A0  54 03 C6 BE */	rlwinm r3, r0, 0x18, 0x1a, 0x1f
/* 804728A4  38 80 00 0C */	li r4, 0xc
/* 804728A8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804728AC  38 C0 00 33 */	li r6, 0x33
/* 804728B0  4B C2 9B 1D */	bl setPosition__7dTres_cFiUcPC3Veci
lbl_804728B4:
/* 804728B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804728B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804728BC  38 80 00 5A */	li r4, 0x5a
/* 804728C0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804728C4  7C 05 07 74 */	extsb r5, r0
/* 804728C8  4B BC 2A 99 */	bl isSwitch__10dSv_info_cCFii
/* 804728CC  2C 03 00 00 */	cmpwi r3, 0
/* 804728D0  41 82 01 54 */	beq lbl_80472A24
/* 804728D4  7F 63 DB 78 */	mr r3, r27
/* 804728D8  38 80 26 40 */	li r4, 0x2640
/* 804728DC  4B BC 20 E1 */	bl isEventBit__11dSv_event_cCFUs
/* 804728E0  2C 03 00 00 */	cmpwi r3, 0
/* 804728E4  40 82 01 40 */	bne lbl_80472A24
/* 804728E8  28 1D 00 00 */	cmplwi r29, 0
/* 804728EC  41 82 01 38 */	beq lbl_80472A24
/* 804728F0  28 1F 00 00 */	cmplwi r31, 0
/* 804728F4  41 82 00 0C */	beq lbl_80472900
/* 804728F8  83 9F 00 04 */	lwz r28, 4(r31)
/* 804728FC  48 00 00 08 */	b lbl_80472904
lbl_80472900:
/* 80472900  3B 80 FF FF */	li r28, -1
lbl_80472904:
/* 80472904  7F A3 EB 78 */	mr r3, r29
/* 80472908  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8047290C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80472910  7D 89 03 A6 */	mtctr r12
/* 80472914  4E 80 04 21 */	bctrl 
/* 80472918  7C 03 E0 40 */	cmplw r3, r28
/* 8047291C  41 82 01 08 */	beq lbl_80472A24
/* 80472920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80472924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80472928  38 80 00 AA */	li r4, 0xaa
/* 8047292C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80472930  7C 05 07 74 */	extsb r5, r0
/* 80472934  4B BC 28 CD */	bl onSwitch__10dSv_info_cFii
/* 80472938  3C 60 80 48 */	lis r3, d_a_obj_carry__stringBase0@ha /* 0x8047A4BC@ha */
/* 8047293C  38 63 A4 BC */	addi r3, r3, d_a_obj_carry__stringBase0@l /* 0x8047A4BC@l */
/* 80472940  38 63 01 4D */	addi r3, r3, 0x14d
/* 80472944  4C C6 31 82 */	crclr 6
/* 80472948  4B B9 42 C5 */	bl OSReport_Error
/* 8047294C  48 00 00 D8 */	b lbl_80472A24
lbl_80472950:
/* 80472950  28 00 00 09 */	cmplwi r0, 9
/* 80472954  40 82 00 D0 */	bne lbl_80472A24
/* 80472958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047295C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80472960  3B 63 07 F0 */	addi r27, r3, 0x7f0
/* 80472964  7F 63 DB 78 */	mr r3, r27
/* 80472968  38 80 26 20 */	li r4, 0x2620
/* 8047296C  4B BC 20 51 */	bl isEventBit__11dSv_event_cCFUs
/* 80472970  2C 03 00 00 */	cmpwi r3, 0
/* 80472974  41 82 00 3C */	beq lbl_804729B0
/* 80472978  28 1D 00 00 */	cmplwi r29, 0
/* 8047297C  41 82 00 A8 */	beq lbl_80472A24
/* 80472980  28 1F 00 00 */	cmplwi r31, 0
/* 80472984  41 82 00 0C */	beq lbl_80472990
/* 80472988  83 9F 00 04 */	lwz r28, 4(r31)
/* 8047298C  48 00 00 08 */	b lbl_80472994
lbl_80472990:
/* 80472990  3B 80 FF FF */	li r28, -1
lbl_80472994:
/* 80472994  7F A3 EB 78 */	mr r3, r29
/* 80472998  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8047299C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 804729A0  7D 89 03 A6 */	mtctr r12
/* 804729A4  4E 80 04 21 */	bctrl 
/* 804729A8  7C 03 E0 40 */	cmplw r3, r28
/* 804729AC  41 82 00 78 */	beq lbl_80472A24
lbl_804729B0:
/* 804729B0  7F 63 DB 78 */	mr r3, r27
/* 804729B4  38 80 26 08 */	li r4, 0x2608
/* 804729B8  4B BC 1F ED */	bl offEventBit__11dSv_event_cFUs
/* 804729BC  7F 63 DB 78 */	mr r3, r27
/* 804729C0  38 80 26 02 */	li r4, 0x2602
/* 804729C4  4B BC 1F E1 */	bl offEventBit__11dSv_event_cFUs
/* 804729C8  7F 63 DB 78 */	mr r3, r27
/* 804729CC  38 80 27 80 */	li r4, 0x2780
/* 804729D0  4B BC 1F D5 */	bl offEventBit__11dSv_event_cFUs
/* 804729D4  7F 63 DB 78 */	mr r3, r27
/* 804729D8  38 80 27 20 */	li r4, 0x2720
/* 804729DC  4B BC 1F C9 */	bl offEventBit__11dSv_event_cFUs
/* 804729E0  7F 63 DB 78 */	mr r3, r27
/* 804729E4  38 80 26 20 */	li r4, 0x2620
/* 804729E8  4B BC 1F D5 */	bl isEventBit__11dSv_event_cCFUs
/* 804729EC  2C 03 00 00 */	cmpwi r3, 0
/* 804729F0  40 82 00 34 */	bne lbl_80472A24
/* 804729F4  C0 1E 0A 48 */	lfs f0, 0xa48(r30)
/* 804729F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804729FC  C0 1E 0A AC */	lfs f0, 0xaac(r30)
/* 80472A00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80472A04  C0 1E 0A E0 */	lfs f0, 0xae0(r30)
/* 80472A08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80472A0C  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 80472A10  54 03 C6 BE */	rlwinm r3, r0, 0x18, 0x1a, 0x1f
/* 80472A14  38 80 00 0C */	li r4, 0xc
/* 80472A18  38 A1 00 20 */	addi r5, r1, 0x20
/* 80472A1C  38 C0 00 34 */	li r6, 0x34
/* 80472A20  4B C2 99 AD */	bl setPosition__7dTres_cFiUcPC3Veci
lbl_80472A24:
/* 80472A24  88 1F 0C F0 */	lbz r0, 0xcf0(r31)
/* 80472A28  2C 00 00 03 */	cmpwi r0, 3
/* 80472A2C  40 82 00 F8 */	bne lbl_80472B24
/* 80472A30  C0 3E 0B 10 */	lfs f1, 0xb10(r30)
/* 80472A34  C0 1F 06 0C */	lfs f0, 0x60c(r31)
/* 80472A38  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80472A3C  41 82 00 44 */	beq lbl_80472A80
/* 80472A40  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80472A44  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80472A48  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80472A4C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80472A50  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80472A54  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80472A58  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 80472A5C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80472A60  38 81 00 14 */	addi r4, r1, 0x14
/* 80472A64  4B BB F2 D5 */	bl savePos__12daObjCarry_cFi4cXyz
/* 80472A68  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 80472A6C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80472A70  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80472A74  7C 04 07 74 */	extsb r4, r0
/* 80472A78  4B BB F3 35 */	bl setRoomNo__12daObjCarry_cFiSc
/* 80472A7C  48 00 00 78 */	b lbl_80472AF4
lbl_80472A80:
/* 80472A80  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80472A84  7C 00 07 74 */	extsb r0, r0
/* 80472A88  7C 1B 03 78 */	mr r27, r0
/* 80472A8C  2C 00 FF FF */	cmpwi r0, -1
/* 80472A90  40 82 00 10 */	bne lbl_80472AA0
/* 80472A94  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80472A98  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 80472A9C  7C 1B 03 78 */	mr r27, r0
lbl_80472AA0:
/* 80472AA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80472AA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80472AA8  38 63 4E C4 */	addi r3, r3, 0x4ec4
/* 80472AAC  7F 64 DB 78 */	mr r4, r27
/* 80472AB0  4B BB 1A 39 */	bl checkRoomDisp__20dStage_roomControl_cCFi
/* 80472AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80472AB8  40 82 00 3C */	bne lbl_80472AF4
/* 80472ABC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80472AC0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80472AC4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80472AC8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80472ACC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80472AD0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80472AD4  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 80472AD8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80472ADC  38 81 00 08 */	addi r4, r1, 8
/* 80472AE0  4B BB F2 59 */	bl savePos__12daObjCarry_cFi4cXyz
/* 80472AE4  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 80472AE8  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80472AEC  7F 64 07 74 */	extsb r4, r27
/* 80472AF0  4B BB F2 BD */	bl setRoomNo__12daObjCarry_cFiSc
lbl_80472AF4:
/* 80472AF4  88 1F 0D B7 */	lbz r0, 0xdb7(r31)
/* 80472AF8  28 00 00 00 */	cmplwi r0, 0
/* 80472AFC  41 82 00 18 */	beq lbl_80472B14
/* 80472B00  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 80472B04  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80472B08  38 80 00 01 */	li r4, 1
/* 80472B0C  4B BB F2 59 */	bl onSttsFlag__12daObjCarry_cFiUc
/* 80472B10  48 00 00 14 */	b lbl_80472B24
lbl_80472B14:
/* 80472B14  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 80472B18  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80472B1C  38 80 00 01 */	li r4, 1
/* 80472B20  4B BB F2 59 */	bl offSttsFlag__12daObjCarry_cFiUc
lbl_80472B24:
/* 80472B24  7F E3 FB 78 */	mr r3, r31
/* 80472B28  4B FF CB 95 */	bl getArcName__12daObjCarry_cFv
/* 80472B2C  7C 64 1B 78 */	mr r4, r3
/* 80472B30  38 7F 05 68 */	addi r3, r31, 0x568
/* 80472B34  4B BB A4 D5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80472B38  38 60 00 01 */	li r3, 1
/* 80472B3C  39 61 00 50 */	addi r11, r1, 0x50
/* 80472B40  4B EE F6 E1 */	bl _restgpr_27
/* 80472B44  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80472B48  7C 08 03 A6 */	mtlr r0
/* 80472B4C  38 21 00 50 */	addi r1, r1, 0x50
/* 80472B50  4E 80 00 20 */	blr 
