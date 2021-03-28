lbl_80CB1F10:
/* 80CB1F10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CB1F14  7C 08 02 A6 */	mflr r0
/* 80CB1F18  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CB1F1C  39 61 00 40 */	addi r11, r1, 0x40
/* 80CB1F20  4B 6B 02 B8 */	b _savegpr_28
/* 80CB1F24  7C 7D 1B 78 */	mr r29, r3
/* 80CB1F28  7C 9E 23 78 */	mr r30, r4
/* 80CB1F2C  3C 60 80 CB */	lis r3, cNullVec__6Z2Calc@ha
/* 80CB1F30  3B E3 26 F0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80CB1F34  3C 60 80 CB */	lis r3, data_80CB2858@ha
/* 80CB1F38  38 A3 28 58 */	addi r5, r3, data_80CB2858@l
/* 80CB1F3C  88 05 00 00 */	lbz r0, 0(r5)
/* 80CB1F40  7C 00 07 75 */	extsb. r0, r0
/* 80CB1F44  40 82 00 70 */	bne lbl_80CB1FB4
/* 80CB1F48  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 80CB1F4C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 80CB1F50  90 7F 00 50 */	stw r3, 0x50(r31)
/* 80CB1F54  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80CB1F58  80 1F 00 28 */	lwz r0, 0x28(r31)
/* 80CB1F5C  90 1F 00 58 */	stw r0, 0x58(r31)
/* 80CB1F60  38 9F 00 50 */	addi r4, r31, 0x50
/* 80CB1F64  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80CB1F68  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 80CB1F6C  90 64 00 0C */	stw r3, 0xc(r4)
/* 80CB1F70  90 04 00 10 */	stw r0, 0x10(r4)
/* 80CB1F74  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80CB1F78  90 04 00 14 */	stw r0, 0x14(r4)
/* 80CB1F7C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 80CB1F80  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 80CB1F84  90 64 00 18 */	stw r3, 0x18(r4)
/* 80CB1F88  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80CB1F8C  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80CB1F90  90 04 00 20 */	stw r0, 0x20(r4)
/* 80CB1F94  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 80CB1F98  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 80CB1F9C  90 64 00 24 */	stw r3, 0x24(r4)
/* 80CB1FA0  90 04 00 28 */	stw r0, 0x28(r4)
/* 80CB1FA4  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80CB1FA8  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80CB1FAC  38 00 00 01 */	li r0, 1
/* 80CB1FB0  98 05 00 00 */	stb r0, 0(r5)
lbl_80CB1FB4:
/* 80CB1FB4  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80CB1FB8  4B 39 68 B4 */	b eventUpdate__17dEvLib_callback_cFv
/* 80CB1FBC  88 1D 05 D1 */	lbz r0, 0x5d1(r29)
/* 80CB1FC0  28 00 00 00 */	cmplwi r0, 0
/* 80CB1FC4  41 82 01 28 */	beq lbl_80CB20EC
/* 80CB1FC8  3C 60 80 CB */	lis r3, l_HIO@ha
/* 80CB1FCC  38 63 28 4C */	addi r3, r3, l_HIO@l
/* 80CB1FD0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CB1FD4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CB1FD8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CB1FDC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CB1FE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB1FE4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80CB1FE8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CB1FEC  38 00 00 FF */	li r0, 0xff
/* 80CB1FF0  90 01 00 08 */	stw r0, 8(r1)
/* 80CB1FF4  38 80 00 00 */	li r4, 0
/* 80CB1FF8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB1FFC  38 00 FF FF */	li r0, -1
/* 80CB2000  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB2004  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB2008  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB200C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB2010  80 9D 05 D8 */	lwz r4, 0x5d8(r29)
/* 80CB2014  38 A0 00 00 */	li r5, 0
/* 80CB2018  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008670@ha */
/* 80CB201C  38 C6 86 70 */	addi r6, r6, 0x8670 /* 0x00008670@l */
/* 80CB2020  38 FD 05 C4 */	addi r7, r29, 0x5c4
/* 80CB2024  39 00 00 00 */	li r8, 0
/* 80CB2028  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 80CB202C  39 41 00 24 */	addi r10, r1, 0x24
/* 80CB2030  3D 60 80 CB */	lis r11, lit_3739@ha
/* 80CB2034  C0 2B 26 C8 */	lfs f1, lit_3739@l(r11)
/* 80CB2038  4B 39 B4 94 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB203C  90 7D 05 D8 */	stw r3, 0x5d8(r29)
/* 80CB2040  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80CB2044  38 00 00 FF */	li r0, 0xff
/* 80CB2048  90 01 00 08 */	stw r0, 8(r1)
/* 80CB204C  38 80 00 00 */	li r4, 0
/* 80CB2050  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CB2054  38 00 FF FF */	li r0, -1
/* 80CB2058  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CB205C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CB2060  90 81 00 18 */	stw r4, 0x18(r1)
/* 80CB2064  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80CB2068  80 9D 05 DC */	lwz r4, 0x5dc(r29)
/* 80CB206C  38 A0 00 00 */	li r5, 0
/* 80CB2070  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008671@ha */
/* 80CB2074  38 C6 86 71 */	addi r6, r6, 0x8671 /* 0x00008671@l */
/* 80CB2078  38 FD 05 C4 */	addi r7, r29, 0x5c4
/* 80CB207C  39 00 00 00 */	li r8, 0
/* 80CB2080  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 80CB2084  39 41 00 24 */	addi r10, r1, 0x24
/* 80CB2088  3D 60 80 CB */	lis r11, lit_3739@ha
/* 80CB208C  C0 2B 26 C8 */	lfs f1, lit_3739@l(r11)
/* 80CB2090  4B 39 B4 3C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CB2094  90 7D 05 DC */	stw r3, 0x5dc(r29)
/* 80CB2098  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80CB209C  7C 03 07 74 */	extsb r3, r0
/* 80CB20A0  4B 37 AF CC */	b dComIfGp_getReverb__Fi
/* 80CB20A4  7C 67 1B 78 */	mr r7, r3
/* 80CB20A8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080018@ha */
/* 80CB20AC  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00080018@l */
/* 80CB20B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CB20B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CB20B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CB20BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CB20C0  38 81 00 20 */	addi r4, r1, 0x20
/* 80CB20C4  38 BD 05 C4 */	addi r5, r29, 0x5c4
/* 80CB20C8  38 C0 00 00 */	li r6, 0
/* 80CB20CC  3D 00 80 CB */	lis r8, lit_3739@ha
/* 80CB20D0  C0 28 26 C8 */	lfs f1, lit_3739@l(r8)
/* 80CB20D4  FC 40 08 90 */	fmr f2, f1
/* 80CB20D8  3D 00 80 CB */	lis r8, lit_3814@ha
/* 80CB20DC  C0 68 26 E4 */	lfs f3, lit_3814@l(r8)
/* 80CB20E0  FC 80 18 90 */	fmr f4, f3
/* 80CB20E4  39 00 00 00 */	li r8, 0
/* 80CB20E8  4B 5F A4 24 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CB20EC:
/* 80CB20EC  7F A3 EB 78 */	mr r3, r29
/* 80CB20F0  88 1D 05 D6 */	lbz r0, 0x5d6(r29)
/* 80CB20F4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CB20F8  39 9F 00 50 */	addi r12, r31, 0x50
/* 80CB20FC  7D 8C 02 14 */	add r12, r12, r0
/* 80CB2100  4B 6A FF 84 */	b __ptmf_scall
/* 80CB2104  60 00 00 00 */	nop 
/* 80CB2108  80 7D 05 C0 */	lwz r3, 0x5c0(r29)
/* 80CB210C  38 03 00 24 */	addi r0, r3, 0x24
/* 80CB2110  90 1E 00 00 */	stw r0, 0(r30)
/* 80CB2114  7F A3 EB 78 */	mr r3, r29
/* 80CB2118  4B FF F9 CD */	bl setBaseMtx__12daPoCandle_cFv
/* 80CB211C  7F A3 EB 78 */	mr r3, r29
/* 80CB2120  4B FF FD 41 */	bl pointLightProc__12daPoCandle_cFv
/* 80CB2124  38 60 00 01 */	li r3, 1
/* 80CB2128  39 61 00 40 */	addi r11, r1, 0x40
/* 80CB212C  4B 6B 00 F8 */	b _restgpr_28
/* 80CB2130  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CB2134  7C 08 03 A6 */	mtlr r0
/* 80CB2138  38 21 00 40 */	addi r1, r1, 0x40
/* 80CB213C  4E 80 00 20 */	blr 
