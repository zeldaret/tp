lbl_801127F0:
/* 801127F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801127F4  7C 08 02 A6 */	mflr r0
/* 801127F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801127FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80112800  48 24 F9 DD */	bl _savegpr_29
/* 80112804  7C 7F 1B 78 */	mr r31, r3
/* 80112808  4B F9 14 85 */	bl setItemHeap__9daAlink_cFv
/* 8011280C  7C 7E 1B 78 */	mr r30, r3
/* 80112810  7F E3 FB 78 */	mr r3, r31
/* 80112814  38 80 03 11 */	li r4, 0x311
/* 80112818  38 A0 28 00 */	li r5, 0x2800
/* 8011281C  4B FA D6 2D */	bl loadAramBmd__9daAlink_cFUsUl
/* 80112820  7C 64 1B 78 */	mr r4, r3
/* 80112824  7F E3 FB 78 */	mr r3, r31
/* 80112828  38 A0 00 00 */	li r5, 0
/* 8011282C  38 C0 00 00 */	li r6, 0
/* 80112830  4B F9 15 4D */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80112834  90 7F 07 08 */	stw r3, 0x708(r31)
/* 80112838  7F E3 FB 78 */	mr r3, r31
/* 8011283C  38 80 03 17 */	li r4, 0x317
/* 80112840  38 A0 10 00 */	li r5, 0x1000
/* 80112844  4B FA D6 05 */	bl loadAramBmd__9daAlink_cFUsUl
/* 80112848  90 7F 07 68 */	stw r3, 0x768(r31)
/* 8011284C  38 60 00 10 */	li r3, 0x10
/* 80112850  48 1B C3 FD */	bl __nw__FUl
/* 80112854  28 03 00 00 */	cmplwi r3, 0
/* 80112858  41 82 00 2C */	beq lbl_80112884
/* 8011285C  3C 80 80 3D */	lis r4, __vt__9J3DPacket@ha
/* 80112860  38 04 D9 7C */	addi r0, r4, __vt__9J3DPacket@l
/* 80112864  90 03 00 00 */	stw r0, 0(r3)
/* 80112868  38 00 00 00 */	li r0, 0
/* 8011286C  90 03 00 04 */	stw r0, 4(r3)
/* 80112870  90 03 00 08 */	stw r0, 8(r3)
/* 80112874  90 03 00 0C */	stw r0, 0xc(r3)
/* 80112878  3C 80 80 3B */	lis r4, __vt__Q29daAlink_c14hsChainShape_c@ha
/* 8011287C  38 04 35 EC */	addi r0, r4, __vt__Q29daAlink_c14hsChainShape_c@l
/* 80112880  90 03 00 00 */	stw r0, 0(r3)
lbl_80112884:
/* 80112884  90 7F 07 70 */	stw r3, 0x770(r31)
/* 80112888  38 60 04 D8 */	li r3, 0x4d8
/* 8011288C  48 1B C4 39 */	bl __nwa__FUl
/* 80112890  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha
/* 80112894  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 80112898  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha
/* 8011289C  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 801128A0  38 C0 00 0C */	li r6, 0xc
/* 801128A4  38 E0 00 66 */	li r7, 0x66
/* 801128A8  48 24 F6 6D */	bl __construct_new_array
/* 801128AC  90 7F 38 40 */	stw r3, 0x3840(r31)
/* 801128B0  38 60 02 74 */	li r3, 0x274
/* 801128B4  48 1B C4 11 */	bl __nwa__FUl
/* 801128B8  3C 80 80 11 */	lis r4, __ct__5csXyzFv@ha
/* 801128BC  38 84 2C 80 */	addi r4, r4, __ct__5csXyzFv@l
/* 801128C0  3C A0 80 02 */	lis r5, __dt__5csXyzFv@ha
/* 801128C4  38 A5 8B D0 */	addi r5, r5, __dt__5csXyzFv@l
/* 801128C8  38 C0 00 06 */	li r6, 6
/* 801128CC  38 E0 00 66 */	li r7, 0x66
/* 801128D0  48 24 F6 45 */	bl __construct_new_array
/* 801128D4  90 7F 38 44 */	stw r3, 0x3844(r31)
/* 801128D8  38 60 04 D8 */	li r3, 0x4d8
/* 801128DC  48 1B C3 E9 */	bl __nwa__FUl
/* 801128E0  3C 80 80 01 */	lis r4, __ct__4cXyzFv@ha
/* 801128E4  38 84 25 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 801128E8  3C A0 80 01 */	lis r5, __dt__4cXyzFv@ha
/* 801128EC  38 A5 91 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 801128F0  38 C0 00 0C */	li r6, 0xc
/* 801128F4  38 E0 00 66 */	li r7, 0x66
/* 801128F8  48 24 F6 1D */	bl __construct_new_array
/* 801128FC  90 7F 38 48 */	stw r3, 0x3848(r31)
/* 80112900  38 60 00 40 */	li r3, 0x40
/* 80112904  48 1B C3 49 */	bl __nw__FUl
/* 80112908  7C 60 1B 79 */	or. r0, r3, r3
/* 8011290C  41 82 00 0C */	beq lbl_80112918
/* 80112910  4B F6 35 9D */	bl __ct__12dBgS_AcchCirFv
/* 80112914  7C 60 1B 78 */	mr r0, r3
lbl_80112918:
/* 80112918  90 1F 07 74 */	stw r0, 0x774(r31)
/* 8011291C  38 60 01 D8 */	li r3, 0x1d8
/* 80112920  48 1B C3 2D */	bl __nw__FUl
/* 80112924  7C 7D 1B 79 */	or. r29, r3, r3
/* 80112928  41 82 00 2C */	beq lbl_80112954
/* 8011292C  4B F6 37 75 */	bl __ct__9dBgS_AcchFv
/* 80112930  3C 60 80 3B */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80112934  38 63 35 C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80112938  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8011293C  38 03 00 0C */	addi r0, r3, 0xc
/* 80112940  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80112944  38 03 00 18 */	addi r0, r3, 0x18
/* 80112948  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8011294C  38 7D 00 14 */	addi r3, r29, 0x14
/* 80112950  4B F6 65 19 */	bl SetObj__16dBgS_PolyPassChkFv
lbl_80112954:
/* 80112954  93 BF 07 78 */	stw r29, 0x778(r31)
/* 80112958  38 60 00 20 */	li r3, 0x20
/* 8011295C  48 1B C2 F1 */	bl __nw__FUl
/* 80112960  7C 60 1B 79 */	or. r0, r3, r3
/* 80112964  41 82 00 0C */	beq lbl_80112970
/* 80112968  48 1A BE DD */	bl __ct__16Z2SoundObjSimpleFv
/* 8011296C  7C 60 1B 78 */	mr r0, r3
lbl_80112970:
/* 80112970  90 1F 07 6C */	stw r0, 0x76c(r31)
/* 80112974  38 60 00 70 */	li r3, 0x70
/* 80112978  48 1B C2 D5 */	bl __nw__FUl
/* 8011297C  7C 60 1B 79 */	or. r0, r3, r3
/* 80112980  41 82 00 0C */	beq lbl_8011298C
/* 80112984  4B F6 55 D9 */	bl __ct__14dBgS_ObjLinChkFv
/* 80112988  7C 60 1B 78 */	mr r0, r3
lbl_8011298C:
/* 8011298C  90 1F 07 7C */	stw r0, 0x77c(r31)
/* 80112990  80 7F 07 7C */	lwz r3, 0x77c(r31)
/* 80112994  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 80112998  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 8011299C  90 03 00 6C */	stw r0, 0x6c(r3)
/* 801129A0  80 7F 07 7C */	lwz r3, 0x77c(r31)
/* 801129A4  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 801129A8  60 00 00 02 */	ori r0, r0, 2
/* 801129AC  90 03 00 6C */	stw r0, 0x6c(r3)
/* 801129B0  38 60 00 70 */	li r3, 0x70
/* 801129B4  48 1B C2 99 */	bl __nw__FUl
/* 801129B8  7C 60 1B 79 */	or. r0, r3, r3
/* 801129BC  41 82 00 0C */	beq lbl_801129C8
/* 801129C0  4B F6 55 9D */	bl __ct__14dBgS_ObjLinChkFv
/* 801129C4  7C 60 1B 78 */	mr r0, r3
lbl_801129C8:
/* 801129C8  90 1F 07 80 */	stw r0, 0x780(r31)
/* 801129CC  38 60 00 38 */	li r3, 0x38
/* 801129D0  48 1B C2 7D */	bl __nw__FUl
/* 801129D4  90 7F 2F 1C */	stw r3, 0x2f1c(r31)
/* 801129D8  80 7F 2F 1C */	lwz r3, 0x2f1c(r31)
/* 801129DC  80 9F 07 78 */	lwz r4, 0x778(r31)
/* 801129E0  C0 22 94 28 */	lfs f1, lit_14621(r2)
/* 801129E4  C0 42 96 24 */	lfs f2, lit_33587(r2)
/* 801129E8  4B F3 E2 B5 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 801129EC  7F C3 F3 78 */	mr r3, r30
/* 801129F0  4B EF C7 DD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801129F4  80 7F 07 70 */	lwz r3, 0x770(r31)
/* 801129F8  93 E3 00 0C */	stw r31, 0xc(r3)
/* 801129FC  3C 00 00 40 */	lis r0, 0x40
/* 80112A00  90 1F 0F C8 */	stw r0, 0xfc8(r31)
/* 80112A04  38 00 00 03 */	li r0, 3
/* 80112A08  98 1F 10 2E */	stb r0, 0x102e(r31)
/* 80112A0C  38 00 00 06 */	li r0, 6
/* 80112A10  98 1F 10 2C */	stb r0, 0x102c(r31)
/* 80112A14  38 00 00 02 */	li r0, 2
/* 80112A18  98 1F 0F CC */	stb r0, 0xfcc(r31)
/* 80112A1C  38 00 00 00 */	li r0, 0
/* 80112A20  98 1F 10 2D */	stb r0, 0x102d(r31)
/* 80112A24  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 80112A28  3C 80 80 39 */	lis r4, m__22daAlinkHIO_ironBall_c0@ha
/* 80112A2C  38 84 EA 70 */	addi r4, r4, m__22daAlinkHIO_ironBall_c0@l
/* 80112A30  C0 24 00 7C */	lfs f1, 0x7c(r4)
/* 80112A34  48 15 CC D5 */	bl SetR__8cM3dGSphFf
/* 80112A38  81 1F 38 44 */	lwz r8, 0x3844(r31)
/* 80112A3C  39 20 00 00 */	li r9, 0
/* 80112A40  38 60 00 00 */	li r3, 0
/* 80112A44  38 80 00 00 */	li r4, 0
/* 80112A48  3C A0 80 43 */	lis r5, Zero__4cXyz@ha
/* 80112A4C  38 C5 0C F4 */	addi r6, r5, Zero__4cXyz@l
/* 80112A50  38 00 00 66 */	li r0, 0x66
/* 80112A54  7C 09 03 A6 */	mtctr r0
lbl_80112A58:
/* 80112A58  2C 09 00 02 */	cmpwi r9, 2
/* 80112A5C  40 80 00 1C */	bge lbl_80112A78
/* 80112A60  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80112A64  38 00 00 00 */	li r0, 0
/* 80112A68  B0 08 00 00 */	sth r0, 0(r8)
/* 80112A6C  B0 A8 00 02 */	sth r5, 2(r8)
/* 80112A70  B0 88 00 04 */	sth r4, 4(r8)
/* 80112A74  48 00 00 20 */	b lbl_80112A94
lbl_80112A78:
/* 80112A78  A8 A8 FF FE */	lha r5, -2(r8)
/* 80112A7C  38 A5 30 00 */	addi r5, r5, 0x3000
/* 80112A80  A8 FF 04 E6 */	lha r7, 0x4e6(r31)
/* 80112A84  38 00 00 00 */	li r0, 0
/* 80112A88  B0 08 00 00 */	sth r0, 0(r8)
/* 80112A8C  B0 E8 00 02 */	sth r7, 2(r8)
/* 80112A90  B0 A8 00 04 */	sth r5, 4(r8)
lbl_80112A94:
/* 80112A94  80 1F 38 48 */	lwz r0, 0x3848(r31)
/* 80112A98  7C A0 1A 14 */	add r5, r0, r3
/* 80112A9C  C0 06 00 00 */	lfs f0, 0(r6)
/* 80112AA0  D0 05 00 00 */	stfs f0, 0(r5)
/* 80112AA4  C0 06 00 04 */	lfs f0, 4(r6)
/* 80112AA8  D0 05 00 04 */	stfs f0, 4(r5)
/* 80112AAC  C0 06 00 08 */	lfs f0, 8(r6)
/* 80112AB0  D0 05 00 08 */	stfs f0, 8(r5)
/* 80112AB4  80 1F 38 40 */	lwz r0, 0x3840(r31)
/* 80112AB8  7C A0 1A 14 */	add r5, r0, r3
/* 80112ABC  C0 1F 05 C8 */	lfs f0, 0x5c8(r31)
/* 80112AC0  D0 05 00 00 */	stfs f0, 0(r5)
/* 80112AC4  C0 1F 05 CC */	lfs f0, 0x5cc(r31)
/* 80112AC8  D0 05 00 04 */	stfs f0, 4(r5)
/* 80112ACC  C0 1F 05 D0 */	lfs f0, 0x5d0(r31)
/* 80112AD0  D0 05 00 08 */	stfs f0, 8(r5)
/* 80112AD4  39 29 00 01 */	addi r9, r9, 1
/* 80112AD8  38 63 00 0C */	addi r3, r3, 0xc
/* 80112ADC  38 84 30 00 */	addi r4, r4, 0x3000
/* 80112AE0  39 08 00 06 */	addi r8, r8, 6
/* 80112AE4  42 00 FF 74 */	bdnz lbl_80112A58
/* 80112AE8  38 00 00 00 */	li r0, 0
/* 80112AEC  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80112AF0  38 00 00 06 */	li r0, 6
/* 80112AF4  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 80112AF8  C0 1F 05 C8 */	lfs f0, 0x5c8(r31)
/* 80112AFC  D0 1F 38 04 */	stfs f0, 0x3804(r31)
/* 80112B00  C0 1F 05 CC */	lfs f0, 0x5cc(r31)
/* 80112B04  D0 1F 38 08 */	stfs f0, 0x3808(r31)
/* 80112B08  C0 1F 05 D0 */	lfs f0, 0x5d0(r31)
/* 80112B0C  D0 1F 38 0C */	stfs f0, 0x380c(r31)
/* 80112B10  C0 1F 05 C8 */	lfs f0, 0x5c8(r31)
/* 80112B14  D0 1F 38 10 */	stfs f0, 0x3810(r31)
/* 80112B18  C0 1F 05 CC */	lfs f0, 0x5cc(r31)
/* 80112B1C  D0 1F 38 14 */	stfs f0, 0x3814(r31)
/* 80112B20  C0 1F 05 D0 */	lfs f0, 0x5d0(r31)
/* 80112B24  D0 1F 38 18 */	stfs f0, 0x3818(r31)
/* 80112B28  80 7F 07 74 */	lwz r3, 0x774(r31)
/* 80112B2C  C0 22 94 28 */	lfs f1, lit_14621(r2)
/* 80112B30  FC 40 08 90 */	fmr f2, f1
/* 80112B34  4B F6 34 25 */	bl SetWall__12dBgS_AcchCirFff
/* 80112B38  81 5F 38 44 */	lwz r10, 0x3844(r31)
/* 80112B3C  91 41 00 08 */	stw r10, 8(r1)
/* 80112B40  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 80112B44  38 9F 38 04 */	addi r4, r31, 0x3804
/* 80112B48  38 BF 38 10 */	addi r5, r31, 0x3810
/* 80112B4C  7F E6 FB 78 */	mr r6, r31
/* 80112B50  38 E0 00 01 */	li r7, 1
/* 80112B54  81 1F 07 74 */	lwz r8, 0x774(r31)
/* 80112B58  81 3F 38 48 */	lwz r9, 0x3848(r31)
/* 80112B5C  4B F6 36 ED */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80112B60  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 80112B64  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80112B68  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 80112B6C  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80112B70  C0 02 96 24 */	lfs f0, lit_33587(r2)
/* 80112B74  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 80112B78  D0 03 00 C8 */	stfs f0, 0xc8(r3)
/* 80112B7C  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 80112B80  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80112B84  60 00 20 00 */	ori r0, r0, 0x2000
/* 80112B88  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80112B8C  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 80112B90  38 63 00 14 */	addi r3, r3, 0x14
/* 80112B94  4B F6 62 E1 */	bl ClrObj__16dBgS_PolyPassChkFv
/* 80112B98  80 7F 07 78 */	lwz r3, 0x778(r31)
/* 80112B9C  38 63 00 14 */	addi r3, r3, 0x14
/* 80112BA0  4B F6 63 F5 */	bl SetIronBall__16dBgS_PolyPassChkFv
/* 80112BA4  80 7F 07 80 */	lwz r3, 0x780(r31)
/* 80112BA8  38 63 00 58 */	addi r3, r3, 0x58
/* 80112BAC  4B F6 62 C9 */	bl ClrObj__16dBgS_PolyPassChkFv
/* 80112BB0  80 7F 07 80 */	lwz r3, 0x780(r31)
/* 80112BB4  38 63 00 58 */	addi r3, r3, 0x58
/* 80112BB8  4B F6 63 DD */	bl SetIronBall__16dBgS_PolyPassChkFv
/* 80112BBC  38 00 00 00 */	li r0, 0
/* 80112BC0  90 1F 32 D4 */	stw r0, 0x32d4(r31)
/* 80112BC4  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 80112BC8  38 9F 37 F8 */	addi r4, r31, 0x37f8
/* 80112BCC  38 A0 00 01 */	li r5, 1
/* 80112BD0  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80112BD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80112BD8  7D 89 03 A6 */	mtctr r12
/* 80112BDC  4E 80 04 21 */	bctrl 
/* 80112BE0  38 60 00 01 */	li r3, 1
/* 80112BE4  88 1F 2D 74 */	lbz r0, 0x2d74(r31)
/* 80112BE8  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80112BEC  98 1F 2D 74 */	stb r0, 0x2d74(r31)
/* 80112BF0  38 00 00 00 */	li r0, 0
/* 80112BF4  B0 1F 30 1C */	sth r0, 0x301c(r31)
/* 80112BF8  B0 1F 30 24 */	sth r0, 0x3024(r31)
/* 80112BFC  B0 1F 30 26 */	sth r0, 0x3026(r31)
/* 80112C00  38 7F 17 3C */	addi r3, r31, 0x173c
/* 80112C04  38 80 00 DC */	li r4, 0xdc
/* 80112C08  38 A0 00 FF */	li r5, 0xff
/* 80112C0C  7F E6 FB 78 */	mr r6, r31
/* 80112C10  4B F7 0C 51 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80112C14  38 7F 17 78 */	addi r3, r31, 0x1778
/* 80112C18  3C 80 80 3B */	lis r4, l_sphSrc@ha
/* 80112C1C  38 84 27 98 */	addi r4, r4, l_sphSrc@l
/* 80112C20  4B F7 1E 15 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80112C24  38 1F 17 3C */	addi r0, r31, 0x173c
/* 80112C28  90 1F 17 BC */	stw r0, 0x17bc(r31)
/* 80112C2C  80 1F 17 90 */	lwz r0, 0x1790(r31)
/* 80112C30  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80112C34  90 1F 17 90 */	stw r0, 0x1790(r31)
/* 80112C38  80 1F 17 78 */	lwz r0, 0x1778(r31)
/* 80112C3C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80112C40  90 1F 17 78 */	stw r0, 0x1778(r31)
/* 80112C44  38 7F 18 9C */	addi r3, r31, 0x189c
/* 80112C48  C0 22 93 D4 */	lfs f1, lit_11442(r2)
/* 80112C4C  48 15 CA BD */	bl SetR__8cM3dGSphFf
/* 80112C50  38 7F 17 A4 */	addi r3, r31, 0x17a4
/* 80112C54  38 80 00 08 */	li r4, 8
/* 80112C58  48 15 1C A9 */	bl SetIGrp__10cCcD_ObjCoFUl
/* 80112C5C  38 7F 17 A4 */	addi r3, r31, 0x17a4
/* 80112C60  38 80 00 60 */	li r4, 0x60
/* 80112C64  48 15 1C B9 */	bl SetVsGrp__10cCcD_ObjCoFUl
/* 80112C68  39 61 00 20 */	addi r11, r1, 0x20
/* 80112C6C  48 24 F5 BD */	bl _restgpr_29
/* 80112C70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80112C74  7C 08 03 A6 */	mtlr r0
/* 80112C78  38 21 00 20 */	addi r1, r1, 0x20
/* 80112C7C  4E 80 00 20 */	blr 
