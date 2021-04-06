lbl_806BB004:
/* 806BB004  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806BB008  7C 08 02 A6 */	mflr r0
/* 806BB00C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806BB010  39 61 00 30 */	addi r11, r1, 0x30
/* 806BB014  4B CA 71 C5 */	bl _savegpr_28
/* 806BB018  7C 7D 1B 78 */	mr r29, r3
/* 806BB01C  3C 80 80 6C */	lis r4, lit_3826@ha /* 0x806BB6D0@ha */
/* 806BB020  3B E4 B6 D0 */	addi r31, r4, lit_3826@l /* 0x806BB6D0@l */
/* 806BB024  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806BB028  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806BB02C  40 82 00 C8 */	bne lbl_806BB0F4
/* 806BB030  7F A0 EB 79 */	or. r0, r29, r29
/* 806BB034  41 82 00 B4 */	beq lbl_806BB0E8
/* 806BB038  7C 1E 03 78 */	mr r30, r0
/* 806BB03C  4B 95 DB 29 */	bl __ct__10fopAc_ac_cFv
/* 806BB040  38 7E 06 18 */	addi r3, r30, 0x618
/* 806BB044  3C 80 80 6C */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806BB460@ha */
/* 806BB048  38 84 B4 60 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806BB460@l */
/* 806BB04C  3C A0 80 6C */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806BB394@ha */
/* 806BB050  38 A5 B3 94 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806BB394@l */
/* 806BB054  38 C0 01 38 */	li r6, 0x138
/* 806BB058  38 E0 00 02 */	li r7, 2
/* 806BB05C  4B CA 6D 05 */	bl __construct_array
/* 806BB060  38 7E 08 88 */	addi r3, r30, 0x888
/* 806BB064  3C 80 80 6C */	lis r4, __ct__8dCcD_SphFv@ha /* 0x806BB460@ha */
/* 806BB068  38 84 B4 60 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x806BB460@l */
/* 806BB06C  3C A0 80 6C */	lis r5, __dt__8dCcD_SphFv@ha /* 0x806BB394@ha */
/* 806BB070  38 A5 B3 94 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x806BB394@l */
/* 806BB074  38 C0 01 38 */	li r6, 0x138
/* 806BB078  38 E0 00 03 */	li r7, 3
/* 806BB07C  4B CA 6C E5 */	bl __construct_array
/* 806BB080  38 7E 0C 4C */	addi r3, r30, 0xc4c
/* 806BB084  4B C0 5E E1 */	bl __ct__15Z2CreatureEnemyFv
/* 806BB088  38 7E 0C F0 */	addi r3, r30, 0xcf0
/* 806BB08C  4B 9B AE 21 */	bl __ct__12dBgS_AcchCirFv
/* 806BB090  3B 9E 0D 30 */	addi r28, r30, 0xd30
/* 806BB094  7F 83 E3 78 */	mr r3, r28
/* 806BB098  4B 9B B0 09 */	bl __ct__9dBgS_AcchFv
/* 806BB09C  3C 60 80 6C */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806BB894@ha */
/* 806BB0A0  38 63 B8 94 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806BB894@l */
/* 806BB0A4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 806BB0A8  38 03 00 0C */	addi r0, r3, 0xc
/* 806BB0AC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 806BB0B0  38 03 00 18 */	addi r0, r3, 0x18
/* 806BB0B4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 806BB0B8  38 7C 00 14 */	addi r3, r28, 0x14
/* 806BB0BC  4B 9B DD AD */	bl SetObj__16dBgS_PolyPassChkFv
/* 806BB0C0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806BB0C4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806BB0C8  90 1E 0F 20 */	stw r0, 0xf20(r30)
/* 806BB0CC  38 7E 0F 24 */	addi r3, r30, 0xf24
/* 806BB0D0  4B 9C 86 91 */	bl __ct__10dCcD_GSttsFv
/* 806BB0D4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806BB0D8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806BB0DC  90 7E 0F 20 */	stw r3, 0xf20(r30)
/* 806BB0E0  38 03 00 20 */	addi r0, r3, 0x20
/* 806BB0E4  90 1E 0F 24 */	stw r0, 0xf24(r30)
lbl_806BB0E8:
/* 806BB0E8  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 806BB0EC  60 00 00 08 */	ori r0, r0, 8
/* 806BB0F0  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_806BB0F4:
/* 806BB0F4  38 7D 0C 40 */	addi r3, r29, 0xc40
/* 806BB0F8  3C 80 80 6C */	lis r4, d_a_e_fk__stringBase0@ha /* 0x806BB81C@ha */
/* 806BB0FC  38 84 B8 1C */	addi r4, r4, d_a_e_fk__stringBase0@l /* 0x806BB81C@l */
/* 806BB100  4B 97 1D BD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806BB104  7C 7E 1B 78 */	mr r30, r3
/* 806BB108  2C 1E 00 04 */	cmpwi r30, 4
/* 806BB10C  40 82 01 FC */	bne lbl_806BB308
/* 806BB110  7F A3 EB 78 */	mr r3, r29
/* 806BB114  3C 80 80 6C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806B9514@ha */
/* 806BB118  38 84 95 14 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806B9514@l */
/* 806BB11C  38 A0 1C 20 */	li r5, 0x1c20
/* 806BB120  4B 95 F3 91 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806BB124  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BB128  40 82 00 0C */	bne lbl_806BB134
/* 806BB12C  38 60 00 05 */	li r3, 5
/* 806BB130  48 00 01 DC */	b lbl_806BB30C
lbl_806BB134:
/* 806BB134  3C 60 80 6C */	lis r3, struct_806BB90C+0x1@ha /* 0x806BB90D@ha */
/* 806BB138  8C 03 B9 0D */	lbzu r0, struct_806BB90C+0x1@l(r3)  /* 0x806BB90D@l */
/* 806BB13C  28 00 00 00 */	cmplwi r0, 0
/* 806BB140  40 82 00 20 */	bne lbl_806BB160
/* 806BB144  38 00 00 01 */	li r0, 1
/* 806BB148  98 03 00 00 */	stb r0, 0(r3)
/* 806BB14C  98 1D 0F 68 */	stb r0, 0xf68(r29)
/* 806BB150  38 00 FF FF */	li r0, -1
/* 806BB154  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806BB91C@ha */
/* 806BB158  38 63 B9 1C */	addi r3, r3, l_HIO@l /* 0x806BB91C@l */
/* 806BB15C  98 03 00 04 */	stb r0, 4(r3)
lbl_806BB160:
/* 806BB160  80 7D 0C 30 */	lwz r3, 0xc30(r29)
/* 806BB164  80 63 00 04 */	lwz r3, 4(r3)
/* 806BB168  38 03 00 24 */	addi r0, r3, 0x24
/* 806BB16C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 806BB170  7F A3 EB 78 */	mr r3, r29
/* 806BB174  C0 3F 01 34 */	lfs f1, 0x134(r31)
/* 806BB178  C0 5F 00 04 */	lfs f2, 4(r31)
/* 806BB17C  FC 60 08 90 */	fmr f3, f1
/* 806BB180  4B 95 F3 A9 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806BB184  7F A3 EB 78 */	mr r3, r29
/* 806BB188  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 806BB18C  FC 40 08 90 */	fmr f2, f1
/* 806BB190  FC 60 08 90 */	fmr f3, f1
/* 806BB194  4B 95 F3 A5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806BB198  7F A3 EB 78 */	mr r3, r29
/* 806BB19C  4B FF FD D9 */	bl CreateChk__8daE_FK_cFv
/* 806BB1A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BB1A4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806BB1A8  38 00 00 00 */	li r0, 0
/* 806BB1AC  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806BB1B0  90 01 00 08 */	stw r0, 8(r1)
/* 806BB1B4  38 7D 0D 30 */	addi r3, r29, 0xd30
/* 806BB1B8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806BB1BC  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 806BB1C0  7F A6 EB 78 */	mr r6, r29
/* 806BB1C4  38 E0 00 01 */	li r7, 1
/* 806BB1C8  39 1D 0C F0 */	addi r8, r29, 0xcf0
/* 806BB1CC  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 806BB1D0  39 40 00 00 */	li r10, 0
/* 806BB1D4  4B 9B B0 75 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806BB1D8  38 7D 0C 4C */	addi r3, r29, 0xc4c
/* 806BB1DC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806BB1E0  38 BD 05 38 */	addi r5, r29, 0x538
/* 806BB1E4  38 C0 00 03 */	li r6, 3
/* 806BB1E8  38 E0 00 01 */	li r7, 1
/* 806BB1EC  4B C0 5E A9 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806BB1F0  38 1D 0C 4C */	addi r0, r29, 0xc4c
/* 806BB1F4  90 1D 0F 4C */	stw r0, 0xf4c(r29)
/* 806BB1F8  38 00 00 01 */	li r0, 1
/* 806BB1FC  98 1D 0F 62 */	stb r0, 0xf62(r29)
/* 806BB200  7F A3 EB 78 */	mr r3, r29
/* 806BB204  4B FF E3 31 */	bl initBodySph__8daE_FK_cFv
/* 806BB208  7F A3 EB 78 */	mr r3, r29
/* 806BB20C  4B FF E3 B1 */	bl initSwordSph__8daE_FK_cFv
/* 806BB210  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 806BB214  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 806BB218  38 7D 0C 4C */	addi r3, r29, 0xc4c
/* 806BB21C  3C 80 80 6C */	lis r4, d_a_e_fk__stringBase0@ha /* 0x806BB81C@ha */
/* 806BB220  38 84 B8 1C */	addi r4, r4, d_a_e_fk__stringBase0@l /* 0x806BB81C@l */
/* 806BB224  38 84 00 0A */	addi r4, r4, 0xa
/* 806BB228  4B C0 69 69 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 806BB22C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806BB230  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 806BB234  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 806BB238  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 806BB23C  D0 1D 05 E4 */	stfs f0, 0x5e4(r29)
/* 806BB240  80 7D 0C 30 */	lwz r3, 0xc30(r29)
/* 806BB244  80 A3 00 04 */	lwz r5, 4(r3)
/* 806BB248  93 A5 00 14 */	stw r29, 0x14(r5)
/* 806BB24C  38 E0 00 00 */	li r7, 0
/* 806BB250  3C 60 80 6C */	lis r3, JointCallBack__FP8J3DJointi@ha /* 0x806B99DC@ha */
/* 806BB254  38 83 99 DC */	addi r4, r3, JointCallBack__FP8J3DJointi@l /* 0x806B99DC@l */
/* 806BB258  48 00 00 20 */	b lbl_806BB278
lbl_806BB25C:
/* 806BB25C  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 806BB260  41 82 00 14 */	beq lbl_806BB274
/* 806BB264  80 66 00 28 */	lwz r3, 0x28(r6)
/* 806BB268  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 806BB26C  7C 63 00 2E */	lwzx r3, r3, r0
/* 806BB270  90 83 00 04 */	stw r4, 4(r3)
lbl_806BB274:
/* 806BB274  38 E7 00 01 */	addi r7, r7, 1
lbl_806BB278:
/* 806BB278  80 C5 00 04 */	lwz r6, 4(r5)
/* 806BB27C  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 806BB280  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 806BB284  7C 00 18 40 */	cmplw r0, r3
/* 806BB288  41 80 FF D4 */	blt lbl_806BB25C
/* 806BB28C  38 00 00 0A */	li r0, 0xa
/* 806BB290  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806BB294  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806BB298  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806BB29C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806BB2A0  EC 21 00 2A */	fadds f1, f1, f0
/* 806BB2A4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806BB2A8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806BB2AC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806BB2B0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806BB2B4  38 61 00 10 */	addi r3, r1, 0x10
/* 806BB2B8  4B 96 2A 05 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 806BB2BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BB2C0  41 82 00 10 */	beq lbl_806BB2D0
/* 806BB2C4  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 806BB2C8  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 806BB2CC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_806BB2D0:
/* 806BB2D0  38 00 00 01 */	li r0, 1
/* 806BB2D4  98 1D 06 15 */	stb r0, 0x615(r29)
/* 806BB2D8  38 00 00 00 */	li r0, 0
/* 806BB2DC  98 1D 06 16 */	stb r0, 0x616(r29)
/* 806BB2E0  7F A3 EB 78 */	mr r3, r29
/* 806BB2E4  38 80 00 0C */	li r4, 0xc
/* 806BB2E8  38 A0 00 02 */	li r5, 2
/* 806BB2EC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806BB2F0  FC 40 08 90 */	fmr f2, f1
/* 806BB2F4  4B FF E7 35 */	bl SetAnm__8daE_FK_cFiiff
/* 806BB2F8  38 00 03 E8 */	li r0, 0x3e8
/* 806BB2FC  B0 1D 05 C6 */	sth r0, 0x5c6(r29)
/* 806BB300  7F A3 EB 78 */	mr r3, r29
/* 806BB304  4B FF FC 29 */	bl daE_FK_Execute__FP8daE_FK_c
lbl_806BB308:
/* 806BB308  7F C3 F3 78 */	mr r3, r30
lbl_806BB30C:
/* 806BB30C  39 61 00 30 */	addi r11, r1, 0x30
/* 806BB310  4B CA 6F 15 */	bl _restgpr_28
/* 806BB314  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806BB318  7C 08 03 A6 */	mtlr r0
/* 806BB31C  38 21 00 30 */	addi r1, r1, 0x30
/* 806BB320  4E 80 00 20 */	blr 
