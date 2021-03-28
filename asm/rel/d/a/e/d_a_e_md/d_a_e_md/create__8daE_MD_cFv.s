lbl_8070A044:
/* 8070A044  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8070A048  7C 08 02 A6 */	mflr r0
/* 8070A04C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8070A050  39 61 00 40 */	addi r11, r1, 0x40
/* 8070A054  4B C5 81 84 */	b _savegpr_28
/* 8070A058  7C 7D 1B 78 */	mr r29, r3
/* 8070A05C  3C 80 80 71 */	lis r4, ccCylSrc@ha
/* 8070A060  3B E4 A4 EC */	addi r31, r4, ccCylSrc@l
/* 8070A064  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8070A068  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8070A06C  40 82 00 E8 */	bne lbl_8070A154
/* 8070A070  7F A0 EB 79 */	or. r0, r29, r29
/* 8070A074  41 82 00 D4 */	beq lbl_8070A148
/* 8070A078  7C 1E 03 78 */	mr r30, r0
/* 8070A07C  4B 90 EA E8 */	b __ct__10fopAc_ac_cFv
/* 8070A080  38 7E 05 E4 */	addi r3, r30, 0x5e4
/* 8070A084  4B BB 6E E0 */	b __ct__15Z2CreatureEnemyFv
/* 8070A088  38 7E 06 98 */	addi r3, r30, 0x698
/* 8070A08C  4B 96 BE 20 */	b __ct__12dBgS_AcchCirFv
/* 8070A090  3B 9E 06 D8 */	addi r28, r30, 0x6d8
/* 8070A094  7F 83 E3 78 */	mr r3, r28
/* 8070A098  4B 96 C0 08 */	b __ct__9dBgS_AcchFv
/* 8070A09C  3C 60 80 71 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8070A0A0  38 63 A5 E0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8070A0A4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8070A0A8  38 03 00 0C */	addi r0, r3, 0xc
/* 8070A0AC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8070A0B0  38 03 00 18 */	addi r0, r3, 0x18
/* 8070A0B4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8070A0B8  38 7C 00 14 */	addi r3, r28, 0x14
/* 8070A0BC  4B 96 ED AC */	b SetObj__16dBgS_PolyPassChkFv
/* 8070A0C0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8070A0C4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8070A0C8  90 1E 08 C8 */	stw r0, 0x8c8(r30)
/* 8070A0CC  38 7E 08 CC */	addi r3, r30, 0x8cc
/* 8070A0D0  4B 97 96 90 */	b __ct__10dCcD_GSttsFv
/* 8070A0D4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8070A0D8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8070A0DC  90 7E 08 C8 */	stw r3, 0x8c8(r30)
/* 8070A0E0  38 03 00 20 */	addi r0, r3, 0x20
/* 8070A0E4  90 1E 08 CC */	stw r0, 0x8cc(r30)
/* 8070A0E8  3B 9E 08 EC */	addi r28, r30, 0x8ec
/* 8070A0EC  7F 83 E3 78 */	mr r3, r28
/* 8070A0F0  4B 97 99 38 */	b __ct__12dCcD_GObjInfFv
/* 8070A0F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8070A0F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8070A0FC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8070A100  3C 60 80 71 */	lis r3, __vt__8cM3dGAab@ha
/* 8070A104  38 03 A5 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 8070A108  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8070A10C  3C 60 80 71 */	lis r3, __vt__8cM3dGCyl@ha
/* 8070A110  38 03 A5 C8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8070A114  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8070A118  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8070A11C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8070A120  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8070A124  38 03 00 58 */	addi r0, r3, 0x58
/* 8070A128  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8070A12C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8070A130  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8070A134  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8070A138  38 03 00 2C */	addi r0, r3, 0x2c
/* 8070A13C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8070A140  38 03 00 84 */	addi r0, r3, 0x84
/* 8070A144  90 1C 01 38 */	stw r0, 0x138(r28)
lbl_8070A148:
/* 8070A148  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8070A14C  60 00 00 08 */	ori r0, r0, 8
/* 8070A150  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8070A154:
/* 8070A154  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 8070A158  3C 80 80 71 */	lis r4, stringBase0@ha
/* 8070A15C  38 84 A5 70 */	addi r4, r4, stringBase0@l
/* 8070A160  4B 92 2D 5C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8070A164  7C 7E 1B 78 */	mr r30, r3
/* 8070A168  2C 1E 00 04 */	cmpwi r30, 4
/* 8070A16C  40 82 02 44 */	bne lbl_8070A3B0
/* 8070A170  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 8070A174  88 03 0C 98 */	lbz r0, struct_80450C98+0x0@l(r3)
/* 8070A178  28 00 00 00 */	cmplwi r0, 0
/* 8070A17C  41 82 00 1C */	beq lbl_8070A198
/* 8070A180  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8070A184  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8070A188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070A18C  40 81 00 0C */	ble lbl_8070A198
/* 8070A190  38 60 00 05 */	li r3, 5
/* 8070A194  48 00 02 20 */	b lbl_8070A3B4
lbl_8070A198:
/* 8070A198  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8070A19C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8070A1A0  98 1D 05 D0 */	stb r0, 0x5d0(r29)
/* 8070A1A4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8070A1A8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8070A1AC  28 00 00 01 */	cmplwi r0, 1
/* 8070A1B0  40 82 00 18 */	bne lbl_8070A1C8
/* 8070A1B4  38 00 00 00 */	li r0, 0
/* 8070A1B8  90 1D 05 B0 */	stw r0, 0x5b0(r29)
/* 8070A1BC  38 00 00 01 */	li r0, 1
/* 8070A1C0  98 1D 05 D9 */	stb r0, 0x5d9(r29)
/* 8070A1C4  48 00 00 34 */	b lbl_8070A1F8
lbl_8070A1C8:
/* 8070A1C8  28 00 00 00 */	cmplwi r0, 0
/* 8070A1CC  40 82 00 10 */	bne lbl_8070A1DC
/* 8070A1D0  38 00 00 01 */	li r0, 1
/* 8070A1D4  90 1D 05 B0 */	stw r0, 0x5b0(r29)
/* 8070A1D8  48 00 00 20 */	b lbl_8070A1F8
lbl_8070A1DC:
/* 8070A1DC  28 00 00 02 */	cmplwi r0, 2
/* 8070A1E0  40 82 00 10 */	bne lbl_8070A1F0
/* 8070A1E4  38 00 00 02 */	li r0, 2
/* 8070A1E8  90 1D 05 B0 */	stw r0, 0x5b0(r29)
/* 8070A1EC  48 00 00 0C */	b lbl_8070A1F8
lbl_8070A1F0:
/* 8070A1F0  38 00 00 00 */	li r0, 0
/* 8070A1F4  90 1D 05 B0 */	stw r0, 0x5b0(r29)
lbl_8070A1F8:
/* 8070A1F8  88 9D 05 D0 */	lbz r4, 0x5d0(r29)
/* 8070A1FC  28 04 00 FF */	cmplwi r4, 0xff
/* 8070A200  41 82 00 28 */	beq lbl_8070A228
/* 8070A204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070A208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070A20C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8070A210  7C 05 07 74 */	extsb r5, r0
/* 8070A214  4B 92 B1 4C */	b isSwitch__10dSv_info_cCFii
/* 8070A218  2C 03 00 00 */	cmpwi r3, 0
/* 8070A21C  41 82 00 0C */	beq lbl_8070A228
/* 8070A220  38 60 00 05 */	li r3, 5
/* 8070A224  48 00 01 90 */	b lbl_8070A3B4
lbl_8070A228:
/* 8070A228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8070A22C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8070A230  38 63 09 58 */	addi r3, r3, 0x958
/* 8070A234  38 80 00 07 */	li r4, 7
/* 8070A238  4B 92 A6 FC */	b isDungeonItem__12dSv_memBit_cCFi
/* 8070A23C  2C 03 00 00 */	cmpwi r3, 0
/* 8070A240  41 82 00 28 */	beq lbl_8070A268
/* 8070A244  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8070A248  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8070A24C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8070A250  41 82 00 10 */	beq lbl_8070A260
/* 8070A254  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8070A258  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8070A25C  40 82 00 0C */	bne lbl_8070A268
lbl_8070A260:
/* 8070A260  38 60 00 05 */	li r3, 5
/* 8070A264  48 00 01 50 */	b lbl_8070A3B4
lbl_8070A268:
/* 8070A268  7F A3 EB 78 */	mr r3, r29
/* 8070A26C  3C 80 80 71 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8070A270  38 84 8E E8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8070A274  38 A0 24 90 */	li r5, 0x2490
/* 8070A278  4B 91 02 38 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8070A27C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8070A280  40 82 00 0C */	bne lbl_8070A28C
/* 8070A284  38 60 00 05 */	li r3, 5
/* 8070A288  48 00 01 2C */	b lbl_8070A3B4
lbl_8070A28C:
/* 8070A28C  80 7D 06 8C */	lwz r3, 0x68c(r29)
/* 8070A290  80 63 00 04 */	lwz r3, 4(r3)
/* 8070A294  38 03 00 24 */	addi r0, r3, 0x24
/* 8070A298  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8070A29C  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 8070A2A0  2C 00 00 01 */	cmpwi r0, 1
/* 8070A2A4  41 82 00 18 */	beq lbl_8070A2BC
/* 8070A2A8  80 7D 06 90 */	lwz r3, 0x690(r29)
/* 8070A2AC  80 63 00 04 */	lwz r3, 4(r3)
/* 8070A2B0  38 03 00 24 */	addi r0, r3, 0x24
/* 8070A2B4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8070A2B8  48 00 00 10 */	b lbl_8070A2C8
lbl_8070A2BC:
/* 8070A2BC  80 7D 06 94 */	lwz r3, 0x694(r29)
/* 8070A2C0  38 03 00 24 */	addi r0, r3, 0x24
/* 8070A2C4  90 1D 05 04 */	stw r0, 0x504(r29)
lbl_8070A2C8:
/* 8070A2C8  38 7D 06 98 */	addi r3, r29, 0x698
/* 8070A2CC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8070A2D0  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 8070A2D4  4B 96 BC 84 */	b SetWall__12dBgS_AcchCirFff
/* 8070A2D8  7F A3 EB 78 */	mr r3, r29
/* 8070A2DC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8070A2E0  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 8070A2E4  FC 60 08 90 */	fmr f3, f1
/* 8070A2E8  C0 9F 00 68 */	lfs f4, 0x68(r31)
/* 8070A2EC  C0 BF 00 7C */	lfs f5, 0x7c(r31)
/* 8070A2F0  FC C0 28 90 */	fmr f6, f5
/* 8070A2F4  4B 91 02 54 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8070A2F8  38 00 00 00 */	li r0, 0
/* 8070A2FC  90 01 00 08 */	stw r0, 8(r1)
/* 8070A300  38 7D 06 D8 */	addi r3, r29, 0x6d8
/* 8070A304  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8070A308  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8070A30C  7F A6 EB 78 */	mr r6, r29
/* 8070A310  38 E0 00 01 */	li r7, 1
/* 8070A314  39 1D 06 98 */	addi r8, r29, 0x698
/* 8070A318  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8070A31C  39 40 00 00 */	li r10, 0
/* 8070A320  4B 96 BF 28 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8070A324  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8070A328  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8070A32C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8070A330  EC 21 00 2A */	fadds f1, f1, f0
/* 8070A334  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8070A338  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8070A33C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8070A340  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8070A344  38 61 00 1C */	addi r3, r1, 0x1c
/* 8070A348  4B 91 39 74 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8070A34C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8070A350  41 82 00 10 */	beq lbl_8070A360
/* 8070A354  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 8070A358  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 8070A35C  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
lbl_8070A360:
/* 8070A360  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8070A364  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8070A368  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8070A36C  EC 21 00 2A */	fadds f1, f1, f0
/* 8070A370  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8070A374  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8070A378  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8070A37C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8070A380  38 7D 05 E4 */	addi r3, r29, 0x5e4
/* 8070A384  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8070A388  38 A1 00 10 */	addi r5, r1, 0x10
/* 8070A38C  38 C0 00 03 */	li r6, 3
/* 8070A390  38 E0 00 01 */	li r7, 1
/* 8070A394  4B BB 6D 00 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8070A398  38 1D 05 E4 */	addi r0, r29, 0x5e4
/* 8070A39C  90 1D 0A 30 */	stw r0, 0xa30(r29)
/* 8070A3A0  7F A3 EB 78 */	mr r3, r29
/* 8070A3A4  4B FF EA 55 */	bl initCcCylinder__8daE_MD_cFv
/* 8070A3A8  7F A3 EB 78 */	mr r3, r29
/* 8070A3AC  4B FF FC 79 */	bl daE_MD_Execute__FP8daE_MD_c
lbl_8070A3B0:
/* 8070A3B0  7F C3 F3 78 */	mr r3, r30
lbl_8070A3B4:
/* 8070A3B4  39 61 00 40 */	addi r11, r1, 0x40
/* 8070A3B8  4B C5 7E 6C */	b _restgpr_28
/* 8070A3BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8070A3C0  7C 08 03 A6 */	mtlr r0
/* 8070A3C4  38 21 00 40 */	addi r1, r1, 0x40
/* 8070A3C8  4E 80 00 20 */	blr 
