lbl_80503FCC:
/* 80503FCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80503FD0  7C 08 02 A6 */	mflr r0
/* 80503FD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80503FD8  39 61 00 40 */	addi r11, r1, 0x40
/* 80503FDC  4B E5 E1 FD */	bl _savegpr_28
/* 80503FE0  7C 7E 1B 78 */	mr r30, r3
/* 80503FE4  3C 80 80 50 */	lis r4, lit_3999@ha /* 0x805046DC@ha */
/* 80503FE8  3B E4 46 DC */	addi r31, r4, lit_3999@l /* 0x805046DC@l */
/* 80503FEC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80503FF0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80503FF4  40 82 01 70 */	bne lbl_80504164
/* 80503FF8  7F C0 F3 79 */	or. r0, r30, r30
/* 80503FFC  41 82 01 5C */	beq lbl_80504158
/* 80504000  7C 1D 03 78 */	mr r29, r0
/* 80504004  4B B1 4B 61 */	bl __ct__10fopAc_ac_cFv
/* 80504008  38 7D 05 B4 */	addi r3, r29, 0x5b4
/* 8050400C  4B B7 1E A1 */	bl __ct__12dBgS_AcchCirFv
/* 80504010  3B 9D 05 F4 */	addi r28, r29, 0x5f4
/* 80504014  7F 83 E3 78 */	mr r3, r28
/* 80504018  4B B7 20 89 */	bl __ct__9dBgS_AcchFv
/* 8050401C  3C 60 80 50 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80504918@ha */
/* 80504020  38 63 49 18 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80504918@l */
/* 80504024  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80504028  38 03 00 0C */	addi r0, r3, 0xc
/* 8050402C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80504030  38 03 00 18 */	addi r0, r3, 0x18
/* 80504034  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80504038  38 7C 00 14 */	addi r3, r28, 0x14
/* 8050403C  4B B7 4E 2D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80504040  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80504044  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80504048  90 1D 07 E4 */	stw r0, 0x7e4(r29)
/* 8050404C  38 7D 07 E8 */	addi r3, r29, 0x7e8
/* 80504050  4B B7 F7 11 */	bl __ct__10dCcD_GSttsFv
/* 80504054  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80504058  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8050405C  90 7D 07 E4 */	stw r3, 0x7e4(r29)
/* 80504060  38 03 00 20 */	addi r0, r3, 0x20
/* 80504064  90 1D 07 E8 */	stw r0, 0x7e8(r29)
/* 80504068  3B 9D 08 08 */	addi r28, r29, 0x808
/* 8050406C  7F 83 E3 78 */	mr r3, r28
/* 80504070  4B B7 F9 B9 */	bl __ct__12dCcD_GObjInfFv
/* 80504074  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80504078  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8050407C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80504080  3C 60 80 50 */	lis r3, __vt__8cM3dGAab@ha /* 0x8050490C@ha */
/* 80504084  38 03 49 0C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8050490C@l */
/* 80504088  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8050408C  3C 60 80 50 */	lis r3, __vt__8cM3dGSph@ha /* 0x80504900@ha */
/* 80504090  38 03 49 00 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80504900@l */
/* 80504094  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80504098  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8050409C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 805040A0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 805040A4  38 03 00 58 */	addi r0, r3, 0x58
/* 805040A8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 805040AC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 805040B0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 805040B4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 805040B8  38 03 00 2C */	addi r0, r3, 0x2c
/* 805040BC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 805040C0  38 03 00 84 */	addi r0, r3, 0x84
/* 805040C4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 805040C8  3B 9D 09 40 */	addi r28, r29, 0x940
/* 805040CC  7F 83 E3 78 */	mr r3, r28
/* 805040D0  4B B7 F9 59 */	bl __ct__12dCcD_GObjInfFv
/* 805040D4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805040D8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805040DC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 805040E0  3C 60 80 50 */	lis r3, __vt__8cM3dGAab@ha /* 0x8050490C@ha */
/* 805040E4  38 03 49 0C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8050490C@l */
/* 805040E8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 805040EC  3C 60 80 50 */	lis r3, __vt__8cM3dGCyl@ha /* 0x805048F4@ha */
/* 805040F0  38 03 48 F4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x805048F4@l */
/* 805040F4  90 1C 01 38 */	stw r0, 0x138(r28)
/* 805040F8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 805040FC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80504100  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80504104  38 03 00 58 */	addi r0, r3, 0x58
/* 80504108  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8050410C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80504110  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80504114  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80504118  38 03 00 2C */	addi r0, r3, 0x2c
/* 8050411C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80504120  38 03 00 84 */	addi r0, r3, 0x84
/* 80504124  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80504128  38 7D 0A D8 */	addi r3, r29, 0xad8
/* 8050412C  4B DB DB E5 */	bl __ct__18Z2SoundObjBeeGroupFv
/* 80504130  38 7D 0A F8 */	addi r3, r29, 0xaf8
/* 80504134  4B DB A7 11 */	bl __ct__16Z2SoundObjSimpleFv
/* 80504138  38 7D 0B 1C */	addi r3, r29, 0xb1c
/* 8050413C  3C 80 80 50 */	lis r4, __ct__12nest_hahen_sFv@ha /* 0x805044E8@ha */
/* 80504140  38 84 44 E8 */	addi r4, r4, __ct__12nest_hahen_sFv@l /* 0x805044E8@l */
/* 80504144  3C A0 80 50 */	lis r5, __dt__12nest_hahen_sFv@ha /* 0x805044AC@ha */
/* 80504148  38 A5 44 AC */	addi r5, r5, __dt__12nest_hahen_sFv@l /* 0x805044AC@l */
/* 8050414C  38 C0 00 58 */	li r6, 0x58
/* 80504150  38 E0 00 05 */	li r7, 5
/* 80504154  4B E5 DC 0D */	bl __construct_array
lbl_80504158:
/* 80504158  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8050415C  60 00 00 08 */	ori r0, r0, 8
/* 80504160  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80504164:
/* 80504164  38 7E 05 68 */	addi r3, r30, 0x568
/* 80504168  3C 80 80 50 */	lis r4, d_a_e_nest__stringBase0@ha /* 0x805047EC@ha */
/* 8050416C  38 84 47 EC */	addi r4, r4, d_a_e_nest__stringBase0@l /* 0x805047EC@l */
/* 80504170  38 84 00 08 */	addi r4, r4, 8
/* 80504174  4B B2 8D 49 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80504178  7C 7D 1B 78 */	mr r29, r3
/* 8050417C  2C 1D 00 04 */	cmpwi r29, 4
/* 80504180  40 82 03 10 */	bne lbl_80504490
/* 80504184  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80504188  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8050418C  98 1E 05 73 */	stb r0, 0x573(r30)
/* 80504190  38 60 00 00 */	li r3, 0
/* 80504194  B0 7E 04 E8 */	sth r3, 0x4e8(r30)
/* 80504198  B0 7E 04 E0 */	sth r3, 0x4e0(r30)
/* 8050419C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805041A0  98 1E 05 70 */	stb r0, 0x570(r30)
/* 805041A4  38 00 00 01 */	li r0, 1
/* 805041A8  98 1E 05 70 */	stb r0, 0x570(r30)
/* 805041AC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805041B0  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805041B4  98 1E 05 71 */	stb r0, 0x571(r30)
/* 805041B8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805041BC  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 805041C0  98 1E 05 72 */	stb r0, 0x572(r30)
/* 805041C4  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 805041C8  28 00 00 FF */	cmplwi r0, 0xff
/* 805041CC  40 82 00 08 */	bne lbl_805041D4
/* 805041D0  98 7E 05 72 */	stb r3, 0x572(r30)
lbl_805041D4:
/* 805041D4  7F C3 F3 78 */	mr r3, r30
/* 805041D8  3C 80 80 50 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80503EA0@ha */
/* 805041DC  38 84 3E A0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80503EA0@l */
/* 805041E0  38 A0 30 00 */	li r5, 0x3000
/* 805041E4  4B B1 62 CD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805041E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805041EC  40 82 00 0C */	bne lbl_805041F8
/* 805041F0  38 60 00 05 */	li r3, 5
/* 805041F4  48 00 02 A0 */	b lbl_80504494
lbl_805041F8:
/* 805041F8  3C 60 80 50 */	lis r3, data_80504950@ha /* 0x80504950@ha */
/* 805041FC  8C 03 49 50 */	lbzu r0, data_80504950@l(r3)  /* 0x80504950@l */
/* 80504200  28 00 00 00 */	cmplwi r0, 0
/* 80504204  40 82 00 20 */	bne lbl_80504224
/* 80504208  38 00 00 01 */	li r0, 1
/* 8050420C  98 1E 0C F4 */	stb r0, 0xcf4(r30)
/* 80504210  98 03 00 00 */	stb r0, 0(r3)
/* 80504214  38 00 FF FF */	li r0, -1
/* 80504218  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x80504960@ha */
/* 8050421C  38 63 49 60 */	addi r3, r3, l_HIO@l /* 0x80504960@l */
/* 80504220  98 03 00 04 */	stb r0, 4(r3)
lbl_80504224:
/* 80504224  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80504228  38 03 00 24 */	addi r0, r3, 0x24
/* 8050422C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80504230  7F C3 F3 78 */	mr r3, r30
/* 80504234  C0 3F 01 00 */	lfs f1, 0x100(r31)
/* 80504238  FC 40 08 90 */	fmr f2, f1
/* 8050423C  FC 60 08 90 */	fmr f3, f1
/* 80504240  4B B1 62 E9 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80504244  7F C3 F3 78 */	mr r3, r30
/* 80504248  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 8050424C  FC 40 08 90 */	fmr f2, f1
/* 80504250  FC 60 08 90 */	fmr f3, f1
/* 80504254  4B B1 62 E5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80504258  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 8050425C  28 00 00 FF */	cmplwi r0, 0xff
/* 80504260  41 82 00 0C */	beq lbl_8050426C
/* 80504264  28 00 00 00 */	cmplwi r0, 0
/* 80504268  40 82 00 0C */	bne lbl_80504274
lbl_8050426C:
/* 8050426C  38 00 00 0A */	li r0, 0xa
/* 80504270  98 1E 05 72 */	stb r0, 0x572(r30)
lbl_80504274:
/* 80504274  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 80504278  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 8050427C  C8 3F 01 08 */	lfd f1, 0x108(r31)
/* 80504280  90 01 00 24 */	stw r0, 0x24(r1)
/* 80504284  3C 00 43 30 */	lis r0, 0x4330
/* 80504288  90 01 00 20 */	stw r0, 0x20(r1)
/* 8050428C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80504290  EC 00 08 28 */	fsubs f0, f0, f1
/* 80504294  EC 02 00 32 */	fmuls f0, f2, f0
/* 80504298  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8050429C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 805042A0  B0 1E 0A AE */	sth r0, 0xaae(r30)
/* 805042A4  88 9E 05 73 */	lbz r4, 0x573(r30)
/* 805042A8  28 04 00 FF */	cmplwi r4, 0xff
/* 805042AC  41 82 00 A0 */	beq lbl_8050434C
/* 805042B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805042B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805042B8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805042BC  7C 05 07 74 */	extsb r5, r0
/* 805042C0  4B B3 10 A1 */	bl isSwitch__10dSv_info_cCFii
/* 805042C4  2C 03 00 00 */	cmpwi r3, 0
/* 805042C8  41 82 00 84 */	beq lbl_8050434C
/* 805042CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805042D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805042D4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805042D8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805042DC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805042E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805042E4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 805042E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805042EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805042F0  38 61 00 10 */	addi r3, r1, 0x10
/* 805042F4  4B B1 99 C9 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 805042F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805042FC  41 82 00 10 */	beq lbl_8050430C
/* 80504300  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80504304  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80504308  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_8050430C:
/* 8050430C  38 60 00 01 */	li r3, 1
/* 80504310  98 7E 0B 18 */	stb r3, 0xb18(r30)
/* 80504314  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80504318  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8050431C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80504320  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80504324  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80504328  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8050432C  38 00 00 05 */	li r0, 5
/* 80504330  B0 1E 05 7E */	sth r0, 0x57e(r30)
/* 80504334  B0 7E 05 80 */	sth r3, 0x580(r30)
/* 80504338  80 7E 0B 1C */	lwz r3, 0xb1c(r30)
/* 8050433C  38 03 00 24 */	addi r0, r3, 0x24
/* 80504340  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80504344  7F A3 EB 78 */	mr r3, r29
/* 80504348  48 00 01 4C */	b lbl_80504494
lbl_8050434C:
/* 8050434C  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80504350  38 80 00 64 */	li r4, 0x64
/* 80504354  38 A0 00 00 */	li r5, 0
/* 80504358  7F C6 F3 78 */	mr r6, r30
/* 8050435C  4B B7 F5 05 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80504360  38 7E 08 08 */	addi r3, r30, 0x808
/* 80504364  3C 80 80 50 */	lis r4, cc_sph_src@ha /* 0x80504820@ha */
/* 80504368  38 84 48 20 */	addi r4, r4, cc_sph_src@l /* 0x80504820@l */
/* 8050436C  4B B8 06 C9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80504370  38 1E 07 CC */	addi r0, r30, 0x7cc
/* 80504374  90 1E 08 4C */	stw r0, 0x84c(r30)
/* 80504378  38 7E 09 40 */	addi r3, r30, 0x940
/* 8050437C  3C 80 80 50 */	lis r4, cc_cyl_src@ha /* 0x80504860@ha */
/* 80504380  38 84 48 60 */	addi r4, r4, cc_cyl_src@l /* 0x80504860@l */
/* 80504384  4B B8 05 31 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80504388  38 1E 07 CC */	addi r0, r30, 0x7cc
/* 8050438C  90 1E 09 84 */	stw r0, 0x984(r30)
/* 80504390  88 1E 05 70 */	lbz r0, 0x570(r30)
/* 80504394  28 00 00 01 */	cmplwi r0, 1
/* 80504398  40 82 00 9C */	bne lbl_80504434
/* 8050439C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805043A0  7C 07 07 74 */	extsb r7, r0
/* 805043A4  38 00 00 00 */	li r0, 0
/* 805043A8  90 01 00 08 */	stw r0, 8(r1)
/* 805043AC  38 60 01 ED */	li r3, 0x1ed
/* 805043B0  28 1E 00 00 */	cmplwi r30, 0
/* 805043B4  41 82 00 0C */	beq lbl_805043C0
/* 805043B8  80 9E 00 04 */	lwz r4, 4(r30)
/* 805043BC  48 00 00 08 */	b lbl_805043C4
lbl_805043C0:
/* 805043C0  38 80 FF FF */	li r4, -1
lbl_805043C4:
/* 805043C4  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 805043C8  54 00 80 1E */	slwi r0, r0, 0x10
/* 805043CC  60 05 01 00 */	ori r5, r0, 0x100
/* 805043D0  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 805043D4  7C A5 03 78 */	or r5, r5, r0
/* 805043D8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 805043DC  39 00 00 00 */	li r8, 0
/* 805043E0  39 20 00 00 */	li r9, 0
/* 805043E4  39 40 FF FF */	li r10, -1
/* 805043E8  4B B1 5B 09 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 805043EC  38 00 00 00 */	li r0, 0
/* 805043F0  90 01 00 08 */	stw r0, 8(r1)
/* 805043F4  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 805043F8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805043FC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80504400  7F C6 F3 78 */	mr r6, r30
/* 80504404  38 E0 00 01 */	li r7, 1
/* 80504408  39 1E 05 B4 */	addi r8, r30, 0x5b4
/* 8050440C  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80504410  39 40 00 00 */	li r10, 0
/* 80504414  4B B7 1E 35 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80504418  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8050441C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80504420  EC 21 00 32 */	fmuls f1, f1, f0
/* 80504424  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80504428  FC 40 08 90 */	fmr f2, f1
/* 8050442C  4B B7 1B 2D */	bl SetWall__12dBgS_AcchCirFff
/* 80504430  48 00 00 50 */	b lbl_80504480
lbl_80504434:
/* 80504434  28 00 00 02 */	cmplwi r0, 2
/* 80504438  40 82 00 48 */	bne lbl_80504480
/* 8050443C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80504440  7C 07 07 74 */	extsb r7, r0
/* 80504444  38 00 00 00 */	li r0, 0
/* 80504448  90 01 00 08 */	stw r0, 8(r1)
/* 8050444C  38 60 01 EC */	li r3, 0x1ec
/* 80504450  28 1E 00 00 */	cmplwi r30, 0
/* 80504454  41 82 00 0C */	beq lbl_80504460
/* 80504458  80 9E 00 04 */	lwz r4, 4(r30)
/* 8050445C  48 00 00 08 */	b lbl_80504464
lbl_80504460:
/* 80504460  38 80 FF FF */	li r4, -1
lbl_80504464:
/* 80504464  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 80504468  64 05 FF 00 */	oris r5, r0, 0xff00
/* 8050446C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80504470  39 00 00 00 */	li r8, 0
/* 80504474  39 20 00 00 */	li r9, 0
/* 80504478  39 40 FF FF */	li r10, -1
/* 8050447C  4B B1 5A 75 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_80504480:
/* 80504480  7F C3 F3 78 */	mr r3, r30
/* 80504484  4B FF D5 BD */	bl mtx_cc_set__FP12e_nest_class
/* 80504488  38 00 FF FF */	li r0, -1
/* 8050448C  90 1E 0A A4 */	stw r0, 0xaa4(r30)
lbl_80504490:
/* 80504490  7F A3 EB 78 */	mr r3, r29
lbl_80504494:
/* 80504494  39 61 00 40 */	addi r11, r1, 0x40
/* 80504498  4B E5 DD 8D */	bl _restgpr_28
/* 8050449C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805044A0  7C 08 03 A6 */	mtlr r0
/* 805044A4  38 21 00 40 */	addi r1, r1, 0x40
/* 805044A8  4E 80 00 20 */	blr 
