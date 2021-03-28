lbl_8060F0D0:
/* 8060F0D0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8060F0D4  7C 08 02 A6 */	mflr r0
/* 8060F0D8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8060F0DC  39 61 00 40 */	addi r11, r1, 0x40
/* 8060F0E0  4B D5 30 DC */	b _savegpr_21
/* 8060F0E4  7C 7F 1B 78 */	mr r31, r3
/* 8060F0E8  3C 80 80 61 */	lis r4, cNullVec__6Z2Calc@ha
/* 8060F0EC  3B A4 00 94 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 8060F0F0  3C 80 80 61 */	lis r4, lit_3928@ha
/* 8060F0F4  3B C4 FD E0 */	addi r30, r4, lit_3928@l
/* 8060F0F8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8060F0FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8060F100  40 82 01 C8 */	bne lbl_8060F2C8
/* 8060F104  7F E0 FB 79 */	or. r0, r31, r31
/* 8060F108  41 82 01 B4 */	beq lbl_8060F2BC
/* 8060F10C  7C 1C 03 78 */	mr r28, r0
/* 8060F110  4B A0 9A 54 */	b __ct__10fopAc_ac_cFv
/* 8060F114  38 7C 06 20 */	addi r3, r28, 0x620
/* 8060F118  3C 80 80 61 */	lis r4, __ct__4cXyzFv@ha
/* 8060F11C  38 84 F8 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 8060F120  3C A0 80 61 */	lis r5, __dt__4cXyzFv@ha
/* 8060F124  38 A5 FD 78 */	addi r5, r5, __dt__4cXyzFv@l
/* 8060F128  38 C0 00 0C */	li r6, 0xc
/* 8060F12C  38 E0 00 14 */	li r7, 0x14
/* 8060F130  4B D5 2C 30 */	b __construct_array
/* 8060F134  38 7C 07 10 */	addi r3, r28, 0x710
/* 8060F138  3C 80 80 61 */	lis r4, __ct__4cXyzFv@ha
/* 8060F13C  38 84 F8 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 8060F140  3C A0 80 61 */	lis r5, __dt__4cXyzFv@ha
/* 8060F144  38 A5 FD 78 */	addi r5, r5, __dt__4cXyzFv@l
/* 8060F148  38 C0 00 0C */	li r6, 0xc
/* 8060F14C  38 E0 00 14 */	li r7, 0x14
/* 8060F150  4B D5 2C 10 */	b __construct_array
/* 8060F154  38 7C 08 00 */	addi r3, r28, 0x800
/* 8060F158  3C 80 80 61 */	lis r4, __ct__4cXyzFv@ha
/* 8060F15C  38 84 F8 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 8060F160  3C A0 80 61 */	lis r5, __dt__4cXyzFv@ha
/* 8060F164  38 A5 FD 78 */	addi r5, r5, __dt__4cXyzFv@l
/* 8060F168  38 C0 00 0C */	li r6, 0xc
/* 8060F16C  38 E0 00 14 */	li r7, 0x14
/* 8060F170  4B D5 2B F0 */	b __construct_array
/* 8060F174  38 7C 09 E0 */	addi r3, r28, 0x9e0
/* 8060F178  4B CB 1D EC */	b __ct__15Z2CreatureEnemyFv
/* 8060F17C  38 7C 0B 1C */	addi r3, r28, 0xb1c
/* 8060F180  4B A6 6D 2C */	b __ct__12dBgS_AcchCirFv
/* 8060F184  3A BC 0B 5C */	addi r21, r28, 0xb5c
/* 8060F188  7E A3 AB 78 */	mr r3, r21
/* 8060F18C  4B A6 6F 14 */	b __ct__9dBgS_AcchFv
/* 8060F190  3C 60 80 61 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8060F194  38 63 03 F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8060F198  90 75 00 10 */	stw r3, 0x10(r21)
/* 8060F19C  38 03 00 0C */	addi r0, r3, 0xc
/* 8060F1A0  90 15 00 14 */	stw r0, 0x14(r21)
/* 8060F1A4  38 03 00 18 */	addi r0, r3, 0x18
/* 8060F1A8  90 15 00 24 */	stw r0, 0x24(r21)
/* 8060F1AC  38 75 00 14 */	addi r3, r21, 0x14
/* 8060F1B0  4B A6 9C B8 */	b SetObj__16dBgS_PolyPassChkFv
/* 8060F1B4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8060F1B8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8060F1BC  90 1C 0D 4C */	stw r0, 0xd4c(r28)
/* 8060F1C0  38 7C 0D 50 */	addi r3, r28, 0xd50
/* 8060F1C4  4B A7 45 9C */	b __ct__10dCcD_GSttsFv
/* 8060F1C8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8060F1CC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8060F1D0  90 7C 0D 4C */	stw r3, 0xd4c(r28)
/* 8060F1D4  38 03 00 20 */	addi r0, r3, 0x20
/* 8060F1D8  90 1C 0D 50 */	stw r0, 0xd50(r28)
/* 8060F1DC  38 7C 0D 70 */	addi r3, r28, 0xd70
/* 8060F1E0  3C 80 80 61 */	lis r4, __ct__8dCcD_SphFv@ha
/* 8060F1E4  38 84 F6 A4 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 8060F1E8  3C A0 80 61 */	lis r5, __dt__8dCcD_SphFv@ha
/* 8060F1EC  38 A5 F5 D8 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 8060F1F0  38 C0 01 38 */	li r6, 0x138
/* 8060F1F4  38 E0 00 0F */	li r7, 0xf
/* 8060F1F8  4B D5 2B 68 */	b __construct_array
/* 8060F1FC  3B 7C 1F BC */	addi r27, r28, 0x1fbc
/* 8060F200  7F 63 DB 78 */	mr r3, r27
/* 8060F204  4B A7 48 24 */	b __ct__12dCcD_GObjInfFv
/* 8060F208  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8060F20C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8060F210  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8060F214  3C 60 80 61 */	lis r3, __vt__8cM3dGAab@ha
/* 8060F218  38 03 03 E4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8060F21C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8060F220  3C 60 80 61 */	lis r3, __vt__8cM3dGSph@ha
/* 8060F224  38 03 03 D8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8060F228  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8060F22C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8060F230  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8060F234  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8060F238  38 03 00 58 */	addi r0, r3, 0x58
/* 8060F23C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8060F240  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8060F244  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8060F248  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8060F24C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8060F250  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8060F254  38 03 00 84 */	addi r0, r3, 0x84
/* 8060F258  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8060F25C  38 7C 20 F4 */	addi r3, r28, 0x20f4
/* 8060F260  3C 80 80 61 */	lis r4, __ct__8dCcD_SphFv@ha
/* 8060F264  38 84 F6 A4 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 8060F268  3C A0 80 61 */	lis r5, __dt__8dCcD_SphFv@ha
/* 8060F26C  38 A5 F5 D8 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 8060F270  38 C0 01 38 */	li r6, 0x138
/* 8060F274  38 E0 00 02 */	li r7, 2
/* 8060F278  4B D5 2A E8 */	b __construct_array
/* 8060F27C  38 7C 23 64 */	addi r3, r28, 0x2364
/* 8060F280  3C 80 80 61 */	lis r4, __ct__8dCcD_SphFv@ha
/* 8060F284  38 84 F6 A4 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 8060F288  3C A0 80 61 */	lis r5, __dt__8dCcD_SphFv@ha
/* 8060F28C  38 A5 F5 D8 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 8060F290  38 C0 01 38 */	li r6, 0x138
/* 8060F294  38 E0 00 02 */	li r7, 2
/* 8060F298  4B D5 2A C8 */	b __construct_array
/* 8060F29C  38 7C 26 64 */	addi r3, r28, 0x2664
/* 8060F2A0  3C 80 80 61 */	lis r4, __ct__4cXyzFv@ha
/* 8060F2A4  38 84 F8 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 8060F2A8  3C A0 80 61 */	lis r5, __dt__4cXyzFv@ha
/* 8060F2AC  38 A5 FD 78 */	addi r5, r5, __dt__4cXyzFv@l
/* 8060F2B0  38 C0 00 0C */	li r6, 0xc
/* 8060F2B4  38 E0 00 04 */	li r7, 4
/* 8060F2B8  4B D5 2A A8 */	b __construct_array
lbl_8060F2BC:
/* 8060F2BC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8060F2C0  60 00 00 08 */	ori r0, r0, 8
/* 8060F2C4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8060F2C8:
/* 8060F2C8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8060F2CC  98 1F 0A FB */	stb r0, 0xafb(r31)
/* 8060F2D0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8060F2D4  3C 80 80 61 */	lis r4, stringBase0@ha
/* 8060F2D8  38 84 00 84 */	addi r4, r4, stringBase0@l
/* 8060F2DC  38 84 00 07 */	addi r4, r4, 7
/* 8060F2E0  4B A1 DB DC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8060F2E4  7C 7C 1B 78 */	mr r28, r3
/* 8060F2E8  2C 1C 00 04 */	cmpwi r28, 4
/* 8060F2EC  40 82 02 40 */	bne lbl_8060F52C
/* 8060F2F0  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 8060F2F4  3C 80 80 61 */	lis r4, stringBase0@ha
/* 8060F2F8  38 84 00 84 */	addi r4, r4, stringBase0@l
/* 8060F2FC  4B A1 DB C0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8060F300  7C 7C 1B 78 */	mr r28, r3
/* 8060F304  2C 1C 00 04 */	cmpwi r28, 4
/* 8060F308  40 82 02 24 */	bne lbl_8060F52C
/* 8060F30C  7F E3 FB 78 */	mr r3, r31
/* 8060F310  3C 80 80 61 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8060F314  38 84 F0 B0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8060F318  3C A0 00 01 */	lis r5, 0x0001 /* 0x00011960@ha */
/* 8060F31C  38 A5 19 60 */	addi r5, r5, 0x1960 /* 0x00011960@l */
/* 8060F320  4B A0 B1 90 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8060F324  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8060F328  40 82 00 0C */	bne lbl_8060F334
/* 8060F32C  38 60 00 05 */	li r3, 5
/* 8060F330  48 00 02 00 */	b lbl_8060F530
lbl_8060F334:
/* 8060F334  3C 60 80 61 */	lis r3, data_80610440@ha
/* 8060F338  8C 03 04 40 */	lbzu r0, data_80610440@l(r3)
/* 8060F33C  28 00 00 00 */	cmplwi r0, 0
/* 8060F340  40 82 00 20 */	bne lbl_8060F360
/* 8060F344  38 00 00 01 */	li r0, 1
/* 8060F348  98 03 00 00 */	stb r0, 0(r3)
/* 8060F34C  98 1F 26 C8 */	stb r0, 0x26c8(r31)
/* 8060F350  38 00 FF FF */	li r0, -1
/* 8060F354  3C 60 80 61 */	lis r3, l_HIO@ha
/* 8060F358  38 63 04 50 */	addi r3, r3, l_HIO@l
/* 8060F35C  98 03 00 04 */	stb r0, 4(r3)
lbl_8060F360:
/* 8060F360  38 00 00 00 */	li r0, 0
/* 8060F364  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8060F368  38 00 00 16 */	li r0, 0x16
/* 8060F36C  98 1F 05 46 */	stb r0, 0x546(r31)
/* 8060F370  38 00 00 28 */	li r0, 0x28
/* 8060F374  98 1F 05 48 */	stb r0, 0x548(r31)
/* 8060F378  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060F37C  80 63 00 04 */	lwz r3, 4(r3)
/* 8060F380  38 03 00 24 */	addi r0, r3, 0x24
/* 8060F384  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8060F388  7F E3 FB 78 */	mr r3, r31
/* 8060F38C  C0 3E 02 9C */	lfs f1, 0x29c(r30)
/* 8060F390  FC 40 08 90 */	fmr f2, f1
/* 8060F394  FC 60 08 90 */	fmr f3, f1
/* 8060F398  4B A0 B1 90 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8060F39C  7F E3 FB 78 */	mr r3, r31
/* 8060F3A0  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8060F3A4  FC 40 08 90 */	fmr f2, f1
/* 8060F3A8  FC 60 08 90 */	fmr f3, f1
/* 8060F3AC  4B A0 B1 8C */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8060F3B0  38 00 00 00 */	li r0, 0
/* 8060F3B4  90 01 00 08 */	stw r0, 8(r1)
/* 8060F3B8  38 7F 0B 5C */	addi r3, r31, 0xb5c
/* 8060F3BC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8060F3C0  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8060F3C4  7F E6 FB 78 */	mr r6, r31
/* 8060F3C8  38 E0 00 01 */	li r7, 1
/* 8060F3CC  39 1F 0B 1C */	addi r8, r31, 0xb1c
/* 8060F3D0  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 8060F3D4  39 40 00 00 */	li r10, 0
/* 8060F3D8  4B A6 6E 70 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8060F3DC  38 7F 0B 1C */	addi r3, r31, 0xb1c
/* 8060F3E0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8060F3E4  C0 5E 02 A0 */	lfs f2, 0x2a0(r30)
/* 8060F3E8  4B A6 6B 70 */	b SetWall__12dBgS_AcchCirFff
/* 8060F3EC  38 00 02 BC */	li r0, 0x2bc
/* 8060F3F0  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8060F3F4  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 8060F3F8  38 7F 0D 34 */	addi r3, r31, 0xd34
/* 8060F3FC  38 80 00 FF */	li r4, 0xff
/* 8060F400  38 A0 00 00 */	li r5, 0
/* 8060F404  7F E6 FB 78 */	mr r6, r31
/* 8060F408  4B A7 44 58 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8060F40C  3A C0 00 00 */	li r22, 0
/* 8060F410  3B 60 00 00 */	li r27, 0
/* 8060F414  3A FF 0D 34 */	addi r23, r31, 0xd34
lbl_8060F418:
/* 8060F418  7F 1F DA 14 */	add r24, r31, r27
/* 8060F41C  38 78 0D 70 */	addi r3, r24, 0xd70
/* 8060F420  38 9D 00 38 */	addi r4, r29, 0x38
/* 8060F424  4B A7 56 10 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8060F428  92 F8 0D B4 */	stw r23, 0xdb4(r24)
/* 8060F42C  3A D6 00 01 */	addi r22, r22, 1
/* 8060F430  2C 16 00 0F */	cmpwi r22, 0xf
/* 8060F434  3B 7B 01 38 */	addi r27, r27, 0x138
/* 8060F438  41 80 FF E0 */	blt lbl_8060F418
/* 8060F43C  3C 60 DC FC */	lis r3, 0xDCFC /* 0xDCFBFDFD@ha */
/* 8060F440  38 03 FD FD */	addi r0, r3, 0xFDFD /* 0xDCFBFDFD@l */
/* 8060F444  90 1F 1F B8 */	stw r0, 0x1fb8(r31)
/* 8060F448  38 7F 1F BC */	addi r3, r31, 0x1fbc
/* 8060F44C  38 9D 00 78 */	addi r4, r29, 0x78
/* 8060F450  4B A7 55 E4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8060F454  3A FF 0D 34 */	addi r23, r31, 0xd34
/* 8060F458  92 FF 20 00 */	stw r23, 0x2000(r31)
/* 8060F45C  3A A0 00 00 */	li r21, 0
/* 8060F460  3B 60 00 00 */	li r27, 0
/* 8060F464  3B 00 00 07 */	li r24, 7
/* 8060F468  3C 60 D8 BC */	lis r3, 0xD8BC /* 0xD8BBDDDD@ha */
/* 8060F46C  3B 23 DD DD */	addi r25, r3, 0xDDDD /* 0xD8BBDDDD@l */
/* 8060F470  3B 40 00 02 */	li r26, 2
lbl_8060F474:
/* 8060F474  7E DF DA 14 */	add r22, r31, r27
/* 8060F478  38 76 20 F4 */	addi r3, r22, 0x20f4
/* 8060F47C  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 8060F480  4B A7 55 B4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8060F484  92 F6 21 38 */	stw r23, 0x2138(r22)
/* 8060F488  9B 16 21 69 */	stb r24, 0x2169(r22)
/* 8060F48C  38 76 23 64 */	addi r3, r22, 0x2364
/* 8060F490  38 9D 00 B8 */	addi r4, r29, 0xb8
/* 8060F494  4B A7 55 A0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8060F498  92 F6 23 A8 */	stw r23, 0x23a8(r22)
/* 8060F49C  93 36 23 8C */	stw r25, 0x238c(r22)
/* 8060F4A0  80 16 24 00 */	lwz r0, 0x2400(r22)
/* 8060F4A4  60 00 00 01 */	ori r0, r0, 1
/* 8060F4A8  90 16 24 00 */	stw r0, 0x2400(r22)
/* 8060F4AC  9B 56 24 1E */	stb r26, 0x241e(r22)
/* 8060F4B0  3A B5 00 01 */	addi r21, r21, 1
/* 8060F4B4  2C 15 00 02 */	cmpwi r21, 2
/* 8060F4B8  3B 7B 01 38 */	addi r27, r27, 0x138
/* 8060F4BC  41 80 FF B8 */	blt lbl_8060F474
/* 8060F4C0  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060F4C4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8060F4C8  38 BF 05 38 */	addi r5, r31, 0x538
/* 8060F4CC  38 C0 00 03 */	li r6, 3
/* 8060F4D0  38 E0 00 01 */	li r7, 1
/* 8060F4D4  4B CB 1B C0 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8060F4D8  38 1F 09 E0 */	addi r0, r31, 0x9e0
/* 8060F4DC  90 1F 25 DC */	stw r0, 0x25dc(r31)
/* 8060F4E0  38 00 00 00 */	li r0, 0
/* 8060F4E4  98 1F 0A FE */	stb r0, 0xafe(r31)
/* 8060F4E8  7F E3 FB 78 */	mr r3, r31
/* 8060F4EC  38 80 00 00 */	li r4, 0
/* 8060F4F0  38 A0 00 00 */	li r5, 0
/* 8060F4F4  4B FF 85 39 */	bl setActionMode__9daB_MGN_cFii
/* 8060F4F8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8060F4FC  D0 1F 0A E8 */	stfs f0, 0xae8(r31)
/* 8060F500  38 00 00 00 */	li r0, 0
/* 8060F504  98 1F 0A F8 */	stb r0, 0xaf8(r31)
/* 8060F508  D0 1F 0A F4 */	stfs f0, 0xaf4(r31)
/* 8060F50C  38 00 00 01 */	li r0, 1
/* 8060F510  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8060F514  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8060F518  98 03 12 C8 */	stb r0, 0x12c8(r3)
/* 8060F51C  98 03 12 C2 */	stb r0, 0x12c2(r3)
/* 8060F520  98 03 12 C3 */	stb r0, 0x12c3(r3)
/* 8060F524  7F E3 FB 78 */	mr r3, r31
/* 8060F528  4B FF F4 E9 */	bl daB_MGN_Execute__FP9daB_MGN_c
lbl_8060F52C:
/* 8060F52C  7F 83 E3 78 */	mr r3, r28
lbl_8060F530:
/* 8060F530  39 61 00 40 */	addi r11, r1, 0x40
/* 8060F534  4B D5 2C D4 */	b _restgpr_21
/* 8060F538  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8060F53C  7C 08 03 A6 */	mtlr r0
/* 8060F540  38 21 00 40 */	addi r1, r1, 0x40
/* 8060F544  4E 80 00 20 */	blr 
