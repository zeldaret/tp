lbl_80788F88:
/* 80788F88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80788F8C  7C 08 02 A6 */	mflr r0
/* 80788F90  90 01 00 44 */	stw r0, 0x44(r1)
/* 80788F94  39 61 00 40 */	addi r11, r1, 0x40
/* 80788F98  4B BD 92 2C */	b _savegpr_23
/* 80788F9C  7C 79 1B 78 */	mr r25, r3
/* 80788FA0  3C 80 80 79 */	lis r4, lit_1109@ha
/* 80788FA4  3B A4 A0 30 */	addi r29, r4, lit_1109@l
/* 80788FA8  3C 80 80 79 */	lis r4, cNullVec__6Z2Calc@ha
/* 80788FAC  3B C4 9D 90 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80788FB0  3C 80 80 79 */	lis r4, lit_3908@ha
/* 80788FB4  3B E4 9C 38 */	addi r31, r4, lit_3908@l
/* 80788FB8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80788FBC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80788FC0  40 82 01 5C */	bne lbl_8078911C
/* 80788FC4  7F 20 CB 79 */	or. r0, r25, r25
/* 80788FC8  41 82 01 48 */	beq lbl_80789110
/* 80788FCC  7C 18 03 78 */	mr r24, r0
/* 80788FD0  4B 88 FB 94 */	b __ct__10fopAc_ac_cFv
/* 80788FD4  38 78 05 E4 */	addi r3, r24, 0x5e4
/* 80788FD8  4B B3 7F 8C */	b __ct__15Z2CreatureEnemyFv
/* 80788FDC  38 78 07 1C */	addi r3, r24, 0x71c
/* 80788FE0  4B 8E CE CC */	b __ct__12dBgS_AcchCirFv
/* 80788FE4  3A F8 07 5C */	addi r23, r24, 0x75c
/* 80788FE8  7E E3 BB 78 */	mr r3, r23
/* 80788FEC  4B 8E D0 B4 */	b __ct__9dBgS_AcchFv
/* 80788FF0  3C 60 80 79 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80788FF4  38 63 9F F8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80788FF8  90 77 00 10 */	stw r3, 0x10(r23)
/* 80788FFC  38 03 00 0C */	addi r0, r3, 0xc
/* 80789000  90 17 00 14 */	stw r0, 0x14(r23)
/* 80789004  38 03 00 18 */	addi r0, r3, 0x18
/* 80789008  90 17 00 24 */	stw r0, 0x24(r23)
/* 8078900C  38 77 00 14 */	addi r3, r23, 0x14
/* 80789010  4B 8E FE 58 */	b SetObj__16dBgS_PolyPassChkFv
/* 80789014  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80789018  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8078901C  90 18 09 4C */	stw r0, 0x94c(r24)
/* 80789020  38 78 09 50 */	addi r3, r24, 0x950
/* 80789024  4B 8F A7 3C */	b __ct__10dCcD_GSttsFv
/* 80789028  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8078902C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80789030  90 78 09 4C */	stw r3, 0x94c(r24)
/* 80789034  38 03 00 20 */	addi r0, r3, 0x20
/* 80789038  90 18 09 50 */	stw r0, 0x950(r24)
/* 8078903C  38 78 09 70 */	addi r3, r24, 0x970
/* 80789040  3C 80 80 79 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80789044  38 84 95 74 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80789048  3C A0 80 79 */	lis r5, __dt__8dCcD_SphFv@ha
/* 8078904C  38 A5 94 A8 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80789050  38 C0 01 38 */	li r6, 0x138
/* 80789054  38 E0 00 03 */	li r7, 3
/* 80789058  4B BD 8D 08 */	b __construct_array
/* 8078905C  3A F8 0D 18 */	addi r23, r24, 0xd18
/* 80789060  7E E3 BB 78 */	mr r3, r23
/* 80789064  4B 8F A9 C4 */	b __ct__12dCcD_GObjInfFv
/* 80789068  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8078906C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80789070  90 17 01 20 */	stw r0, 0x120(r23)
/* 80789074  3C 60 80 79 */	lis r3, __vt__8cM3dGAab@ha
/* 80789078  38 03 9F EC */	addi r0, r3, __vt__8cM3dGAab@l
/* 8078907C  90 17 01 1C */	stw r0, 0x11c(r23)
/* 80789080  3C 60 80 79 */	lis r3, __vt__8cM3dGSph@ha
/* 80789084  38 03 9F E0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80789088  90 17 01 34 */	stw r0, 0x134(r23)
/* 8078908C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80789090  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80789094  90 77 01 20 */	stw r3, 0x120(r23)
/* 80789098  3B 83 00 58 */	addi r28, r3, 0x58
/* 8078909C  93 97 01 34 */	stw r28, 0x134(r23)
/* 807890A0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807890A4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807890A8  90 77 00 3C */	stw r3, 0x3c(r23)
/* 807890AC  3B 63 00 2C */	addi r27, r3, 0x2c
/* 807890B0  93 77 01 20 */	stw r27, 0x120(r23)
/* 807890B4  3B 43 00 84 */	addi r26, r3, 0x84
/* 807890B8  93 57 01 34 */	stw r26, 0x134(r23)
/* 807890BC  3A F8 0E 50 */	addi r23, r24, 0xe50
/* 807890C0  7E E3 BB 78 */	mr r3, r23
/* 807890C4  4B 8F A9 64 */	b __ct__12dCcD_GObjInfFv
/* 807890C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807890CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807890D0  90 17 01 20 */	stw r0, 0x120(r23)
/* 807890D4  3C 60 80 79 */	lis r3, __vt__8cM3dGAab@ha
/* 807890D8  38 03 9F EC */	addi r0, r3, __vt__8cM3dGAab@l
/* 807890DC  90 17 01 1C */	stw r0, 0x11c(r23)
/* 807890E0  3C 60 80 79 */	lis r3, __vt__8cM3dGSph@ha
/* 807890E4  38 03 9F E0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807890E8  90 17 01 34 */	stw r0, 0x134(r23)
/* 807890EC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807890F0  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 807890F4  90 17 01 20 */	stw r0, 0x120(r23)
/* 807890F8  93 97 01 34 */	stw r28, 0x134(r23)
/* 807890FC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80789100  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80789104  90 17 00 3C */	stw r0, 0x3c(r23)
/* 80789108  93 77 01 20 */	stw r27, 0x120(r23)
/* 8078910C  93 57 01 34 */	stw r26, 0x134(r23)
lbl_80789110:
/* 80789110  80 19 04 A0 */	lwz r0, 0x4a0(r25)
/* 80789114  60 00 00 08 */	ori r0, r0, 8
/* 80789118  90 19 04 A0 */	stw r0, 0x4a0(r25)
lbl_8078911C:
/* 8078911C  38 79 05 AC */	addi r3, r25, 0x5ac
/* 80789120  3C 80 80 79 */	lis r4, stringBase0@ha
/* 80789124  38 84 9D 84 */	addi r4, r4, stringBase0@l
/* 80789128  4B 8A 3D 94 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8078912C  7C 7A 1B 78 */	mr r26, r3
/* 80789130  2C 1A 00 04 */	cmpwi r26, 4
/* 80789134  40 82 02 C8 */	bne lbl_807893FC
/* 80789138  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 8078913C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80789140  90 19 05 BC */	stw r0, 0x5bc(r25)
/* 80789144  80 99 05 BC */	lwz r4, 0x5bc(r25)
/* 80789148  2C 04 00 FF */	cmpwi r4, 0xff
/* 8078914C  41 82 00 28 */	beq lbl_80789174
/* 80789150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80789154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80789158  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 8078915C  7C 05 07 74 */	extsb r5, r0
/* 80789160  4B 8A C2 00 */	b isSwitch__10dSv_info_cCFii
/* 80789164  2C 03 00 00 */	cmpwi r3, 0
/* 80789168  41 82 00 0C */	beq lbl_80789174
/* 8078916C  38 60 00 05 */	li r3, 5
/* 80789170  48 00 02 90 */	b lbl_80789400
lbl_80789174:
/* 80789174  38 60 00 00 */	li r3, 0
/* 80789178  B0 79 04 E8 */	sth r3, 0x4e8(r25)
/* 8078917C  B0 79 04 E0 */	sth r3, 0x4e0(r25)
/* 80789180  80 19 00 B0 */	lwz r0, 0xb0(r25)
/* 80789184  98 19 05 B6 */	stb r0, 0x5b6(r25)
/* 80789188  88 19 05 B6 */	lbz r0, 0x5b6(r25)
/* 8078918C  28 00 00 FF */	cmplwi r0, 0xff
/* 80789190  40 82 00 08 */	bne lbl_80789198
/* 80789194  98 79 05 B6 */	stb r3, 0x5b6(r25)
lbl_80789198:
/* 80789198  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 8078919C  2C 00 00 07 */	cmpwi r0, 7
/* 807891A0  40 82 00 0C */	bne lbl_807891AC
/* 807891A4  38 00 00 02 */	li r0, 2
/* 807891A8  98 19 05 B6 */	stb r0, 0x5b6(r25)
lbl_807891AC:
/* 807891AC  80 19 00 B0 */	lwz r0, 0xb0(r25)
/* 807891B0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807891B4  98 19 05 B7 */	stb r0, 0x5b7(r25)
/* 807891B8  88 19 05 B7 */	lbz r0, 0x5b7(r25)
/* 807891BC  28 00 00 FF */	cmplwi r0, 0xff
/* 807891C0  40 82 00 0C */	bne lbl_807891CC
/* 807891C4  38 00 00 03 */	li r0, 3
/* 807891C8  98 19 05 B7 */	stb r0, 0x5b7(r25)
lbl_807891CC:
/* 807891CC  80 19 00 B0 */	lwz r0, 0xb0(r25)
/* 807891D0  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 807891D4  98 19 05 B8 */	stb r0, 0x5b8(r25)
/* 807891D8  80 19 00 B0 */	lwz r0, 0xb0(r25)
/* 807891DC  54 00 27 3E */	srwi r0, r0, 0x1c
/* 807891E0  98 19 05 B9 */	stb r0, 0x5b9(r25)
/* 807891E4  88 19 05 B8 */	lbz r0, 0x5b8(r25)
/* 807891E8  28 00 00 01 */	cmplwi r0, 1
/* 807891EC  40 81 00 0C */	ble lbl_807891F8
/* 807891F0  38 00 00 00 */	li r0, 0
/* 807891F4  98 19 05 B8 */	stb r0, 0x5b8(r25)
lbl_807891F8:
/* 807891F8  88 19 05 B9 */	lbz r0, 0x5b9(r25)
/* 807891FC  28 00 00 01 */	cmplwi r0, 1
/* 80789200  40 81 00 0C */	ble lbl_8078920C
/* 80789204  38 00 00 00 */	li r0, 0
/* 80789208  98 19 05 B9 */	stb r0, 0x5b9(r25)
lbl_8078920C:
/* 8078920C  7F 23 CB 78 */	mr r3, r25
/* 80789210  3C 80 80 79 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80789214  38 84 8D A8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80789218  38 A0 2F 60 */	li r5, 0x2f60
/* 8078921C  4B 89 12 94 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80789220  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80789224  40 82 00 0C */	bne lbl_80789230
/* 80789228  38 60 00 05 */	li r3, 5
/* 8078922C  48 00 01 D4 */	b lbl_80789400
lbl_80789230:
/* 80789230  88 1D 00 3D */	lbz r0, 0x3d(r29)
/* 80789234  28 00 00 00 */	cmplwi r0, 0
/* 80789238  40 82 00 1C */	bne lbl_80789254
/* 8078923C  38 00 00 01 */	li r0, 1
/* 80789240  98 19 0F AC */	stb r0, 0xfac(r25)
/* 80789244  98 1D 00 3D */	stb r0, 0x3d(r29)
/* 80789248  38 00 FF FF */	li r0, -1
/* 8078924C  38 7D 00 4C */	addi r3, r29, 0x4c
/* 80789250  98 03 00 04 */	stb r0, 4(r3)
lbl_80789254:
/* 80789254  80 19 04 9C */	lwz r0, 0x49c(r25)
/* 80789258  60 00 01 00 */	ori r0, r0, 0x100
/* 8078925C  90 19 04 9C */	stw r0, 0x49c(r25)
/* 80789260  38 00 00 04 */	li r0, 4
/* 80789264  90 19 05 5C */	stw r0, 0x55c(r25)
/* 80789268  80 79 05 D4 */	lwz r3, 0x5d4(r25)
/* 8078926C  80 63 00 04 */	lwz r3, 4(r3)
/* 80789270  38 03 00 24 */	addi r0, r3, 0x24
/* 80789274  90 19 05 04 */	stw r0, 0x504(r25)
/* 80789278  7F 23 CB 78 */	mr r3, r25
/* 8078927C  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 80789280  FC 40 08 90 */	fmr f2, f1
/* 80789284  FC 60 08 90 */	fmr f3, f1
/* 80789288  4B 89 12 A0 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8078928C  7F 23 CB 78 */	mr r3, r25
/* 80789290  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80789294  FC 40 08 90 */	fmr f2, f1
/* 80789298  FC 60 08 90 */	fmr f3, f1
/* 8078929C  4B 89 12 9C */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807892A0  38 00 00 00 */	li r0, 0
/* 807892A4  90 01 00 08 */	stw r0, 8(r1)
/* 807892A8  38 79 07 5C */	addi r3, r25, 0x75c
/* 807892AC  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807892B0  38 B9 04 BC */	addi r5, r25, 0x4bc
/* 807892B4  7F 26 CB 78 */	mr r6, r25
/* 807892B8  38 E0 00 01 */	li r7, 1
/* 807892BC  39 19 07 1C */	addi r8, r25, 0x71c
/* 807892C0  39 39 04 F8 */	addi r9, r25, 0x4f8
/* 807892C4  39 40 00 00 */	li r10, 0
/* 807892C8  4B 8E CF 80 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807892CC  38 79 07 1C */	addi r3, r25, 0x71c
/* 807892D0  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 807892D4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807892D8  4B 8E CC 80 */	b SetWall__12dBgS_AcchCirFff
/* 807892DC  38 00 00 C8 */	li r0, 0xc8
/* 807892E0  B0 19 05 62 */	sth r0, 0x562(r25)
/* 807892E4  B0 19 05 60 */	sth r0, 0x560(r25)
/* 807892E8  38 79 09 34 */	addi r3, r25, 0x934
/* 807892EC  38 80 00 C8 */	li r4, 0xc8
/* 807892F0  38 A0 00 00 */	li r5, 0
/* 807892F4  7F 26 CB 78 */	mr r6, r25
/* 807892F8  4B 8F A5 68 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807892FC  3B 80 00 00 */	li r28, 0
/* 80789300  3A E0 00 00 */	li r23, 0
/* 80789304  3B 19 09 34 */	addi r24, r25, 0x934
lbl_80789308:
/* 80789308  7F 79 BA 14 */	add r27, r25, r23
/* 8078930C  38 7B 09 70 */	addi r3, r27, 0x970
/* 80789310  38 9E 01 1C */	addi r4, r30, 0x11c
/* 80789314  4B 8F B7 20 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80789318  93 1B 09 B4 */	stw r24, 0x9b4(r27)
/* 8078931C  3B 9C 00 01 */	addi r28, r28, 1
/* 80789320  2C 1C 00 02 */	cmpwi r28, 2
/* 80789324  3A F7 01 38 */	addi r23, r23, 0x138
/* 80789328  40 81 FF E0 */	ble lbl_80789308
/* 8078932C  38 79 0D 18 */	addi r3, r25, 0xd18
/* 80789330  38 9E 01 5C */	addi r4, r30, 0x15c
/* 80789334  4B 8F B7 00 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80789338  38 19 09 34 */	addi r0, r25, 0x934
/* 8078933C  90 19 0D 5C */	stw r0, 0xd5c(r25)
/* 80789340  38 79 0E 50 */	addi r3, r25, 0xe50
/* 80789344  38 9E 01 9C */	addi r4, r30, 0x19c
/* 80789348  4B 8F B6 EC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8078934C  38 19 09 34 */	addi r0, r25, 0x934
/* 80789350  90 19 0E 94 */	stw r0, 0xe94(r25)
/* 80789354  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80789358  4B AD E5 FC */	b cM_rndF__Ff
/* 8078935C  FC 00 08 1E */	fctiwz f0, f1
/* 80789360  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80789364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80789368  54 00 04 2E */	rlwinm r0, r0, 0, 0x10, 0x17
/* 8078936C  B0 19 06 88 */	sth r0, 0x688(r25)
/* 80789370  38 79 05 E4 */	addi r3, r25, 0x5e4
/* 80789374  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80789378  38 B9 05 38 */	addi r5, r25, 0x538
/* 8078937C  38 C0 00 03 */	li r6, 3
/* 80789380  38 E0 00 01 */	li r7, 1
/* 80789384  4B B3 7D 10 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80789388  38 79 05 E4 */	addi r3, r25, 0x5e4
/* 8078938C  3C 80 80 79 */	lis r4, stringBase0@ha
/* 80789390  38 84 9D 84 */	addi r4, r4, stringBase0@l
/* 80789394  4B B3 87 FC */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 80789398  38 19 05 E4 */	addi r0, r25, 0x5e4
/* 8078939C  90 19 0F 90 */	stw r0, 0xf90(r25)
/* 807893A0  38 00 00 22 */	li r0, 0x22
/* 807893A4  90 19 0F A0 */	stw r0, 0xfa0(r25)
/* 807893A8  38 00 00 1E */	li r0, 0x1e
/* 807893AC  98 19 05 C0 */	stb r0, 0x5c0(r25)
/* 807893B0  88 19 05 B6 */	lbz r0, 0x5b6(r25)
/* 807893B4  28 00 00 00 */	cmplwi r0, 0
/* 807893B8  40 82 00 10 */	bne lbl_807893C8
/* 807893BC  38 00 00 00 */	li r0, 0
/* 807893C0  B0 19 06 8A */	sth r0, 0x68a(r25)
/* 807893C4  48 00 00 28 */	b lbl_807893EC
lbl_807893C8:
/* 807893C8  28 00 00 01 */	cmplwi r0, 1
/* 807893CC  40 82 00 10 */	bne lbl_807893DC
/* 807893D0  38 00 00 20 */	li r0, 0x20
/* 807893D4  B0 19 06 8A */	sth r0, 0x68a(r25)
/* 807893D8  48 00 00 14 */	b lbl_807893EC
lbl_807893DC:
/* 807893DC  28 00 00 02 */	cmplwi r0, 2
/* 807893E0  40 82 00 0C */	bne lbl_807893EC
/* 807893E4  38 00 00 21 */	li r0, 0x21
/* 807893E8  B0 19 06 8A */	sth r0, 0x68a(r25)
lbl_807893EC:
/* 807893EC  38 00 00 00 */	li r0, 0
/* 807893F0  90 1D 00 A0 */	stw r0, 0xa0(r29)
/* 807893F4  7F 23 CB 78 */	mr r3, r25
/* 807893F8  4B FF F1 71 */	bl daE_SF_Execute__FP10e_sf_class
lbl_807893FC:
/* 807893FC  7F 43 D3 78 */	mr r3, r26
lbl_80789400:
/* 80789400  39 61 00 40 */	addi r11, r1, 0x40
/* 80789404  4B BD 8E 0C */	b _restgpr_23
/* 80789408  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8078940C  7C 08 03 A6 */	mtlr r0
/* 80789410  38 21 00 40 */	addi r1, r1, 0x40
/* 80789414  4E 80 00 20 */	blr 
