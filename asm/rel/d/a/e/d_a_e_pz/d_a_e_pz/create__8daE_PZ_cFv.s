lbl_8076010C:
/* 8076010C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80760110  7C 08 02 A6 */	mflr r0
/* 80760114  90 01 00 34 */	stw r0, 0x34(r1)
/* 80760118  39 61 00 30 */	addi r11, r1, 0x30
/* 8076011C  4B C0 20 BD */	bl _savegpr_28
/* 80760120  7C 7F 1B 78 */	mr r31, r3
/* 80760124  3C 80 80 76 */	lis r4, cNullVec__6Z2Calc@ha /* 0x807617BC@ha */
/* 80760128  3B 84 17 BC */	addi r28, r4, cNullVec__6Z2Calc@l /* 0x807617BC@l */
/* 8076012C  3C 80 80 76 */	lis r4, lit_3906@ha /* 0x807614FC@ha */
/* 80760130  3B C4 14 FC */	addi r30, r4, lit_3906@l /* 0x807614FC@l */
/* 80760134  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80760138  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8076013C  40 82 00 1C */	bne lbl_80760158
/* 80760140  28 1F 00 00 */	cmplwi r31, 0
/* 80760144  41 82 00 08 */	beq lbl_8076014C
/* 80760148  48 00 06 A5 */	bl __ct__8daE_PZ_cFv
lbl_8076014C:
/* 8076014C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80760150  60 00 00 08 */	ori r0, r0, 8
/* 80760154  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80760158:
/* 80760158  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8076015C  3C 80 80 76 */	lis r4, d_a_e_pz__stringBase0@ha /* 0x807617B4@ha */
/* 80760160  38 84 17 B4 */	addi r4, r4, d_a_e_pz__stringBase0@l /* 0x807617B4@l */
/* 80760164  4B 8C CD 59 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80760168  7C 7D 1B 78 */	mr r29, r3
/* 8076016C  2C 1D 00 04 */	cmpwi r29, 4
/* 80760170  40 82 06 60 */	bne lbl_807607D0
/* 80760174  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80760178  98 1F 07 D4 */	stb r0, 0x7d4(r31)
/* 8076017C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80760180  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80760184  98 1F 07 D5 */	stb r0, 0x7d5(r31)
/* 80760188  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8076018C  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80760190  98 1F 07 D6 */	stb r0, 0x7d6(r31)
/* 80760194  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 80760198  28 00 00 FF */	cmplwi r0, 0xff
/* 8076019C  40 82 00 0C */	bne lbl_807601A8
/* 807601A0  38 00 00 00 */	li r0, 0
/* 807601A4  98 1F 07 D4 */	stb r0, 0x7d4(r31)
lbl_807601A8:
/* 807601A8  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 807601AC  28 00 00 00 */	cmplwi r0, 0
/* 807601B0  41 82 00 14 */	beq lbl_807601C4
/* 807601B4  28 00 00 01 */	cmplwi r0, 1
/* 807601B8  41 82 00 0C */	beq lbl_807601C4
/* 807601BC  38 00 00 FF */	li r0, 0xff
/* 807601C0  98 1F 07 D6 */	stb r0, 0x7d6(r31)
lbl_807601C4:
/* 807601C4  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 807601C8  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha /* 0x80761E0C@ha */
/* 807601CC  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l /* 0x80761E0C@l */
/* 807601D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 807601D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 807601D8  D0 1F 07 CC */	stfs f0, 0x7cc(r31)
/* 807601DC  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 807601E0  28 00 00 0A */	cmplwi r0, 0xa
/* 807601E4  40 82 00 44 */	bne lbl_80760228
/* 807601E8  7F E3 FB 78 */	mr r3, r31
/* 807601EC  38 80 00 00 */	li r4, 0
/* 807601F0  4B FF 86 C9 */	bl mEntrySUB__8daE_PZ_cFb
/* 807601F4  38 00 00 00 */	li r0, 0
/* 807601F8  98 1F 04 96 */	stb r0, 0x496(r31)
/* 807601FC  7F E3 FB 78 */	mr r3, r31
/* 80760200  C0 3E 02 9C */	lfs f1, 0x29c(r30)
/* 80760204  FC 40 08 90 */	fmr f2, f1
/* 80760208  FC 60 08 90 */	fmr f3, f1
/* 8076020C  4B 8B A3 1D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80760210  7F E3 FB 78 */	mr r3, r31
/* 80760214  C0 3E 02 A0 */	lfs f1, 0x2a0(r30)
/* 80760218  FC 40 08 90 */	fmr f2, f1
/* 8076021C  FC 60 08 90 */	fmr f3, f1
/* 80760220  4B 8B A3 19 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80760224  48 00 05 A4 */	b lbl_807607C8
lbl_80760228:
/* 80760228  28 00 00 00 */	cmplwi r0, 0
/* 8076022C  41 82 00 0C */	beq lbl_80760238
/* 80760230  28 00 00 01 */	cmplwi r0, 1
/* 80760234  40 82 00 6C */	bne lbl_807602A0
lbl_80760238:
/* 80760238  88 9F 07 D6 */	lbz r4, 0x7d6(r31)
/* 8076023C  28 04 00 FF */	cmplwi r4, 0xff
/* 80760240  41 82 00 60 */	beq lbl_807602A0
/* 80760244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80760248  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076024C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80760250  7C 05 07 74 */	extsb r5, r0
/* 80760254  4B 8D 51 0D */	bl isSwitch__10dSv_info_cCFii
/* 80760258  2C 03 00 00 */	cmpwi r3, 0
/* 8076025C  41 82 00 44 */	beq lbl_807602A0
/* 80760260  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80760264  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80760268  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8076026C  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 80760270  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80760274  38 60 02 B6 */	li r3, 0x2b6
/* 80760278  38 80 00 01 */	li r4, 1
/* 8076027C  38 A1 00 10 */	addi r5, r1, 0x10
/* 80760280  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80760284  7C 06 07 74 */	extsb r6, r0
/* 80760288  38 E0 00 00 */	li r7, 0
/* 8076028C  39 00 00 00 */	li r8, 0
/* 80760290  39 20 FF FF */	li r9, -1
/* 80760294  4B 8B 9B 05 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80760298  38 60 00 05 */	li r3, 5
/* 8076029C  48 00 05 38 */	b lbl_807607D4
lbl_807602A0:
/* 807602A0  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 807602A4  28 00 00 28 */	cmplwi r0, 0x28
/* 807602A8  41 82 00 44 */	beq lbl_807602EC
/* 807602AC  28 00 00 1E */	cmplwi r0, 0x1e
/* 807602B0  41 82 00 3C */	beq lbl_807602EC
/* 807602B4  38 A0 3F F0 */	li r5, 0x3ff0
/* 807602B8  28 00 00 14 */	cmplwi r0, 0x14
/* 807602BC  41 80 00 10 */	blt lbl_807602CC
/* 807602C0  28 00 00 17 */	cmplwi r0, 0x17
/* 807602C4  41 81 00 08 */	bgt lbl_807602CC
/* 807602C8  38 A0 29 20 */	li r5, 0x2920
lbl_807602CC:
/* 807602CC  7F E3 FB 78 */	mr r3, r31
/* 807602D0  3C 80 80 76 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x807600EC@ha */
/* 807602D4  38 84 00 EC */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x807600EC@l */
/* 807602D8  4B 8B A1 D9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807602DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807602E0  40 82 00 0C */	bne lbl_807602EC
/* 807602E4  38 60 00 05 */	li r3, 5
/* 807602E8  48 00 04 EC */	b lbl_807607D4
lbl_807602EC:
/* 807602EC  3C 60 80 76 */	lis r3, struct_80761DFC+0x1@ha /* 0x80761DFD@ha */
/* 807602F0  8C 03 1D FD */	lbzu r0, struct_80761DFC+0x1@l(r3)  /* 0x80761DFD@l */
/* 807602F4  28 00 00 00 */	cmplwi r0, 0
/* 807602F8  40 82 00 20 */	bne lbl_80760318
/* 807602FC  38 00 00 01 */	li r0, 1
/* 80760300  98 03 00 00 */	stb r0, 0(r3)
/* 80760304  98 1F 0E E4 */	stb r0, 0xee4(r31)
/* 80760308  38 00 FF FF */	li r0, -1
/* 8076030C  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha /* 0x80761E0C@ha */
/* 80760310  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l /* 0x80761E0C@l */
/* 80760314  98 03 00 04 */	stb r0, 4(r3)
lbl_80760318:
/* 80760318  38 00 00 04 */	li r0, 4
/* 8076031C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80760320  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80760324  38 80 00 FE */	li r4, 0xfe
/* 80760328  38 A0 00 00 */	li r5, 0
/* 8076032C  7F E6 FB 78 */	mr r6, r31
/* 80760330  4B 92 35 31 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80760334  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 80760338  28 00 00 14 */	cmplwi r0, 0x14
/* 8076033C  41 80 00 0C */	blt lbl_80760348
/* 80760340  28 00 00 17 */	cmplwi r0, 0x17
/* 80760344  40 81 00 B4 */	ble lbl_807603F8
lbl_80760348:
/* 80760348  28 00 00 1E */	cmplwi r0, 0x1e
/* 8076034C  41 82 00 AC */	beq lbl_807603F8
/* 80760350  28 00 00 28 */	cmplwi r0, 0x28
/* 80760354  41 82 00 A4 */	beq lbl_807603F8
/* 80760358  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8076035C  80 63 00 04 */	lwz r3, 4(r3)
/* 80760360  38 03 00 24 */	addi r0, r3, 0x24
/* 80760364  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80760368  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 8076036C  38 9C 00 38 */	addi r4, r28, 0x38
/* 80760370  4B 92 45 45 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80760374  38 1F 0A D4 */	addi r0, r31, 0xad4
/* 80760378  90 1F 0B 54 */	stw r0, 0xb54(r31)
/* 8076037C  38 7F 0C 4C */	addi r3, r31, 0xc4c
/* 80760380  38 9C 00 BC */	addi r4, r28, 0xbc
/* 80760384  4B 92 45 31 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80760388  38 1F 0A D4 */	addi r0, r31, 0xad4
/* 8076038C  90 1F 0C 90 */	stw r0, 0xc90(r31)
/* 80760390  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80760394  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80760398  38 BF 05 38 */	addi r5, r31, 0x538
/* 8076039C  38 C0 00 03 */	li r6, 3
/* 807603A0  38 E0 00 01 */	li r7, 1
/* 807603A4  4B B6 0C F1 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807603A8  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 807603AC  90 1F 0E C8 */	stw r0, 0xec8(r31)
/* 807603B0  38 00 00 0C */	li r0, 0xc
/* 807603B4  98 1F 0E DE */	stb r0, 0xede(r31)
/* 807603B8  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 807603BC  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 807603C0  7F E3 FB 78 */	mr r3, r31
/* 807603C4  38 80 00 00 */	li r4, 0
/* 807603C8  4B FF 84 F1 */	bl mEntrySUB__8daE_PZ_cFb
/* 807603CC  7F E3 FB 78 */	mr r3, r31
/* 807603D0  C0 3E 02 A8 */	lfs f1, 0x2a8(r30)
/* 807603D4  FC 40 08 90 */	fmr f2, f1
/* 807603D8  FC 60 08 90 */	fmr f3, f1
/* 807603DC  4B 8B A1 4D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807603E0  7F E3 FB 78 */	mr r3, r31
/* 807603E4  C0 3E 01 F0 */	lfs f1, 0x1f0(r30)
/* 807603E8  FC 40 08 90 */	fmr f2, f1
/* 807603EC  FC 60 08 90 */	fmr f3, f1
/* 807603F0  4B 8B A1 49 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807603F4  48 00 00 40 */	b lbl_80760434
lbl_807603F8:
/* 807603F8  7F E3 FB 78 */	mr r3, r31
/* 807603FC  38 80 00 00 */	li r4, 0
/* 80760400  4B FF 84 B9 */	bl mEntrySUB__8daE_PZ_cFb
/* 80760404  38 00 00 00 */	li r0, 0
/* 80760408  98 1F 04 96 */	stb r0, 0x496(r31)
/* 8076040C  7F E3 FB 78 */	mr r3, r31
/* 80760410  C0 3E 02 AC */	lfs f1, 0x2ac(r30)
/* 80760414  FC 40 08 90 */	fmr f2, f1
/* 80760418  FC 60 08 90 */	fmr f3, f1
/* 8076041C  4B 8B A1 0D */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80760420  7F E3 FB 78 */	mr r3, r31
/* 80760424  C0 3E 02 B0 */	lfs f1, 0x2b0(r30)
/* 80760428  FC 40 08 90 */	fmr f2, f1
/* 8076042C  FC 60 08 90 */	fmr f3, f1
/* 80760430  4B 8B A1 09 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
lbl_80760434:
/* 80760434  38 00 00 00 */	li r0, 0
/* 80760438  90 01 00 08 */	stw r0, 8(r1)
/* 8076043C  38 7F 08 90 */	addi r3, r31, 0x890
/* 80760440  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80760444  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80760448  7F E6 FB 78 */	mr r6, r31
/* 8076044C  38 E0 00 01 */	li r7, 1
/* 80760450  39 1F 08 50 */	addi r8, r31, 0x850
/* 80760454  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80760458  39 40 00 00 */	li r10, 0
/* 8076045C  4B 91 5D ED */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80760460  38 7F 08 50 */	addi r3, r31, 0x850
/* 80760464  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 80760468  C0 5E 02 B4 */	lfs f2, 0x2b4(r30)
/* 8076046C  4B 91 5A ED */	bl SetWall__12dBgS_AcchCirFff
/* 80760470  38 00 02 1C */	li r0, 0x21c
/* 80760474  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80760478  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 8076047C  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80760480  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 80760484  C0 3F 07 CC */	lfs f1, 0x7cc(r31)
/* 80760488  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8076048C  D0 1F 07 9C */	stfs f0, 0x79c(r31)
/* 80760490  D0 3F 07 A0 */	stfs f1, 0x7a0(r31)
/* 80760494  D0 1F 07 A4 */	stfs f0, 0x7a4(r31)
/* 80760498  38 00 00 00 */	li r0, 0
/* 8076049C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 807604A0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 807604A4  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 807604A8  28 00 00 14 */	cmplwi r0, 0x14
/* 807604AC  41 80 00 0C */	blt lbl_807604B8
/* 807604B0  28 00 00 17 */	cmplwi r0, 0x17
/* 807604B4  40 81 02 60 */	ble lbl_80760714
lbl_807604B8:
/* 807604B8  28 00 00 1E */	cmplwi r0, 0x1e
/* 807604BC  41 82 02 58 */	beq lbl_80760714
/* 807604C0  28 00 00 28 */	cmplwi r0, 0x28
/* 807604C4  41 82 02 50 */	beq lbl_80760714
/* 807604C8  38 00 00 03 */	li r0, 3
/* 807604CC  98 1F 07 D3 */	stb r0, 0x7d3(r31)
/* 807604D0  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 807604D4  28 00 00 00 */	cmplwi r0, 0
/* 807604D8  40 82 00 64 */	bne lbl_8076053C
/* 807604DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807604E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807604E4  38 80 00 1C */	li r4, 0x1c
/* 807604E8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807604EC  7C 05 07 74 */	extsb r5, r0
/* 807604F0  4B 8D 4E 71 */	bl isSwitch__10dSv_info_cCFii
/* 807604F4  2C 03 00 00 */	cmpwi r3, 0
/* 807604F8  41 82 00 A0 */	beq lbl_80760598
/* 807604FC  38 00 00 00 */	li r0, 0
/* 80760500  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 80760504  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 80760508  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076050C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80760510  38 80 00 1B */	li r4, 0x1b
/* 80760514  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80760518  7C 05 07 74 */	extsb r5, r0
/* 8076051C  4B 8D 4C E5 */	bl onSwitch__10dSv_info_cFii
/* 80760520  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80760524  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80760528  38 80 00 1C */	li r4, 0x1c
/* 8076052C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80760530  7C 05 07 74 */	extsb r5, r0
/* 80760534  4B 8D 4D 7D */	bl offSwitch__10dSv_info_cFii
/* 80760538  48 00 00 60 */	b lbl_80760598
lbl_8076053C:
/* 8076053C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80760540  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80760544  38 80 00 19 */	li r4, 0x19
/* 80760548  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8076054C  7C 05 07 74 */	extsb r5, r0
/* 80760550  4B 8D 4E 11 */	bl isSwitch__10dSv_info_cCFii
/* 80760554  2C 03 00 00 */	cmpwi r3, 0
/* 80760558  41 82 00 40 */	beq lbl_80760598
/* 8076055C  38 00 00 00 */	li r0, 0
/* 80760560  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 80760564  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 80760568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076056C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80760570  38 80 00 19 */	li r4, 0x19
/* 80760574  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80760578  7C 05 07 74 */	extsb r5, r0
/* 8076057C  4B 8D 4D 35 */	bl offSwitch__10dSv_info_cFii
/* 80760580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80760584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80760588  38 80 00 1A */	li r4, 0x1a
/* 8076058C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80760590  7C 05 07 74 */	extsb r5, r0
/* 80760594  4B 8D 4D 1D */	bl offSwitch__10dSv_info_cFii
lbl_80760598:
/* 80760598  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 8076059C  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 807605A0  28 00 00 00 */	cmplwi r0, 0
/* 807605A4  41 82 00 94 */	beq lbl_80760638
/* 807605A8  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 807605AC  28 00 00 00 */	cmplwi r0, 0
/* 807605B0  40 82 00 38 */	bne lbl_807605E8
/* 807605B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807605B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807605BC  38 80 00 19 */	li r4, 0x19
/* 807605C0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807605C4  7C 05 07 74 */	extsb r5, r0
/* 807605C8  4B 8D 4C 39 */	bl onSwitch__10dSv_info_cFii
/* 807605CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807605D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807605D4  38 80 00 1A */	li r4, 0x1a
/* 807605D8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807605DC  7C 05 07 74 */	extsb r5, r0
/* 807605E0  4B 8D 4C 21 */	bl onSwitch__10dSv_info_cFii
/* 807605E4  48 00 00 34 */	b lbl_80760618
lbl_807605E8:
/* 807605E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807605EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807605F0  38 80 00 1B */	li r4, 0x1b
/* 807605F4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807605F8  7C 05 07 74 */	extsb r5, r0
/* 807605FC  4B 8D 4C 05 */	bl onSwitch__10dSv_info_cFii
/* 80760600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80760604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80760608  38 80 00 1C */	li r4, 0x1c
/* 8076060C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80760610  7C 05 07 74 */	extsb r5, r0
/* 80760614  4B 8D 4B ED */	bl onSwitch__10dSv_info_cFii
lbl_80760618:
/* 80760618  38 00 00 00 */	li r0, 0
/* 8076061C  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 80760620  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 80760624  7F E3 FB 78 */	mr r3, r31
/* 80760628  38 80 00 00 */	li r4, 0
/* 8076062C  38 A0 00 00 */	li r5, 0
/* 80760630  4B FF 82 7D */	bl setActionMode__8daE_PZ_cFii
/* 80760634  48 00 01 94 */	b lbl_807607C8
lbl_80760638:
/* 80760638  80 1F 0B 28 */	lwz r0, 0xb28(r31)
/* 8076063C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80760640  90 1F 0B 28 */	stw r0, 0xb28(r31)
/* 80760644  80 1F 0B 3C */	lwz r0, 0xb3c(r31)
/* 80760648  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8076064C  90 1F 0B 3C */	stw r0, 0xb3c(r31)
/* 80760650  38 00 00 00 */	li r0, 0
/* 80760654  98 1F 05 46 */	stb r0, 0x546(r31)
/* 80760658  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8076065C  54 00 00 3E */	slwi r0, r0, 0
/* 80760660  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80760664  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80760668  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8076066C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80760670  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 80760674  28 00 00 00 */	cmplwi r0, 0
/* 80760678  40 82 00 50 */	bne lbl_807606C8
/* 8076067C  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 80760680  D0 1F 07 BC */	stfs f0, 0x7bc(r31)
/* 80760684  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80760688  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076068C  38 80 00 19 */	li r4, 0x19
/* 80760690  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80760694  7C 05 07 74 */	extsb r5, r0
/* 80760698  4B 8D 4C 19 */	bl offSwitch__10dSv_info_cFii
/* 8076069C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807606A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807606A4  38 80 00 1A */	li r4, 0x1a
/* 807606A8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807606AC  7C 05 07 74 */	extsb r5, r0
/* 807606B0  4B 8D 4C 01 */	bl offSwitch__10dSv_info_cFii
/* 807606B4  7F E3 FB 78 */	mr r3, r31
/* 807606B8  38 80 00 01 */	li r4, 1
/* 807606BC  38 A0 00 00 */	li r5, 0
/* 807606C0  4B FF 81 ED */	bl setActionMode__8daE_PZ_cFii
/* 807606C4  48 00 01 04 */	b lbl_807607C8
lbl_807606C8:
/* 807606C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807606CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807606D0  38 80 00 1B */	li r4, 0x1b
/* 807606D4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807606D8  7C 05 07 74 */	extsb r5, r0
/* 807606DC  4B 8D 4B 25 */	bl onSwitch__10dSv_info_cFii
/* 807606E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807606E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807606E8  38 80 00 1C */	li r4, 0x1c
/* 807606EC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 807606F0  7C 05 07 74 */	extsb r5, r0
/* 807606F4  4B 8D 4B BD */	bl offSwitch__10dSv_info_cFii
/* 807606F8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807606FC  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80760700  7F E3 FB 78 */	mr r3, r31
/* 80760704  38 80 00 01 */	li r4, 1
/* 80760708  38 A0 00 64 */	li r5, 0x64
/* 8076070C  4B FF 81 A1 */	bl setActionMode__8daE_PZ_cFii
/* 80760710  48 00 00 B8 */	b lbl_807607C8
lbl_80760714:
/* 80760714  28 00 00 1E */	cmplwi r0, 0x1e
/* 80760718  41 82 00 50 */	beq lbl_80760768
/* 8076071C  28 00 00 28 */	cmplwi r0, 0x28
/* 80760720  41 82 00 48 */	beq lbl_80760768
/* 80760724  28 00 00 16 */	cmplwi r0, 0x16
/* 80760728  41 82 00 0C */	beq lbl_80760734
/* 8076072C  28 00 00 17 */	cmplwi r0, 0x17
/* 80760730  40 82 00 1C */	bne lbl_8076074C
lbl_80760734:
/* 80760734  88 7F 07 D4 */	lbz r3, 0x7d4(r31)
/* 80760738  38 03 FF FE */	addi r0, r3, -2
/* 8076073C  98 1F 07 D4 */	stb r0, 0x7d4(r31)
/* 80760740  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80760744  60 00 40 00 */	ori r0, r0, 0x4000
/* 80760748  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_8076074C:
/* 8076074C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80760750  D0 1F 07 C8 */	stfs f0, 0x7c8(r31)
/* 80760754  7F E3 FB 78 */	mr r3, r31
/* 80760758  38 80 00 06 */	li r4, 6
/* 8076075C  38 A0 00 00 */	li r5, 0
/* 80760760  4B FF 81 4D */	bl setActionMode__8daE_PZ_cFii
/* 80760764  48 00 00 64 */	b lbl_807607C8
lbl_80760768:
/* 80760768  28 00 00 1E */	cmplwi r0, 0x1e
/* 8076076C  40 82 00 20 */	bne lbl_8076078C
/* 80760770  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80760774  D0 1F 07 C8 */	stfs f0, 0x7c8(r31)
/* 80760778  7F E3 FB 78 */	mr r3, r31
/* 8076077C  38 80 00 06 */	li r4, 6
/* 80760780  38 A0 00 0A */	li r5, 0xa
/* 80760784  4B FF 81 29 */	bl setActionMode__8daE_PZ_cFii
/* 80760788  48 00 00 40 */	b lbl_807607C8
lbl_8076078C:
/* 8076078C  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 80760790  38 9C 00 7C */	addi r4, r28, 0x7c
/* 80760794  4B 92 42 A1 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80760798  38 1F 0A D4 */	addi r0, r31, 0xad4
/* 8076079C  90 1F 0D CC */	stw r0, 0xdcc(r31)
/* 807607A0  38 7F 08 50 */	addi r3, r31, 0x850
/* 807607A4  C0 3E 01 6C */	lfs f1, 0x16c(r30)
/* 807607A8  FC 40 08 90 */	fmr f2, f1
/* 807607AC  4B 91 57 AD */	bl SetWall__12dBgS_AcchCirFff
/* 807607B0  C0 1F 07 CC */	lfs f0, 0x7cc(r31)
/* 807607B4  D0 1F 07 C8 */	stfs f0, 0x7c8(r31)
/* 807607B8  7F E3 FB 78 */	mr r3, r31
/* 807607BC  38 80 00 07 */	li r4, 7
/* 807607C0  38 A0 00 00 */	li r5, 0
/* 807607C4  4B FF 80 E9 */	bl setActionMode__8daE_PZ_cFii
lbl_807607C8:
/* 807607C8  7F E3 FB 78 */	mr r3, r31
/* 807607CC  4B FF F2 95 */	bl daE_PZ_Execute__FP8daE_PZ_c
lbl_807607D0:
/* 807607D0  7F A3 EB 78 */	mr r3, r29
lbl_807607D4:
/* 807607D4  39 61 00 30 */	addi r11, r1, 0x30
/* 807607D8  4B C0 1A 4D */	bl _restgpr_28
/* 807607DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807607E0  7C 08 03 A6 */	mtlr r0
/* 807607E4  38 21 00 30 */	addi r1, r1, 0x30
/* 807607E8  4E 80 00 20 */	blr 
