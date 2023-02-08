lbl_80BCC01C:
/* 80BCC01C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BCC020  7C 08 02 A6 */	mflr r0
/* 80BCC024  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BCC028  39 61 00 20 */	addi r11, r1, 0x20
/* 80BCC02C  4B 79 61 AD */	bl _savegpr_28
/* 80BCC030  7C 7D 1B 78 */	mr r29, r3
/* 80BCC034  3C 80 80 BD */	lis r4, lit_3775@ha /* 0x80BCC578@ha */
/* 80BCC038  3B E4 C5 78 */	addi r31, r4, lit_3775@l /* 0x80BCC578@l */
/* 80BCC03C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BCC040  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BCC044  40 82 00 FC */	bne lbl_80BCC140
/* 80BCC048  7F A0 EB 79 */	or. r0, r29, r29
/* 80BCC04C  41 82 00 E8 */	beq lbl_80BCC134
/* 80BCC050  7C 1E 03 78 */	mr r30, r0
/* 80BCC054  4B 59 1F BD */	bl __ct__9dInsect_cFv
/* 80BCC058  3C 60 80 BD */	lis r3, __vt__10daObjCHO_c@ha /* 0x80BCC720@ha */
/* 80BCC05C  38 03 C7 20 */	addi r0, r3, __vt__10daObjCHO_c@l /* 0x80BCC720@l */
/* 80BCC060  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80BCC064  38 7E 05 90 */	addi r3, r30, 0x590
/* 80BCC068  4B 4A 9E 45 */	bl __ct__12dBgS_AcchCirFv
/* 80BCC06C  3B 9E 05 D0 */	addi r28, r30, 0x5d0
/* 80BCC070  7F 83 E3 78 */	mr r3, r28
/* 80BCC074  4B 4A A0 2D */	bl __ct__9dBgS_AcchFv
/* 80BCC078  3C 60 80 BD */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BCC6F0@ha */
/* 80BCC07C  38 63 C6 F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BCC6F0@l */
/* 80BCC080  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80BCC084  38 03 00 0C */	addi r0, r3, 0xc
/* 80BCC088  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80BCC08C  38 03 00 18 */	addi r0, r3, 0x18
/* 80BCC090  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80BCC094  38 7C 00 14 */	addi r3, r28, 0x14
/* 80BCC098  4B 4A CD D1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BCC09C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BCC0A0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BCC0A4  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 80BCC0A8  38 7E 07 C4 */	addi r3, r30, 0x7c4
/* 80BCC0AC  4B 4B 76 B5 */	bl __ct__10dCcD_GSttsFv
/* 80BCC0B0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BCC0B4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BCC0B8  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80BCC0BC  38 03 00 20 */	addi r0, r3, 0x20
/* 80BCC0C0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80BCC0C4  3B 9E 07 E4 */	addi r28, r30, 0x7e4
/* 80BCC0C8  7F 83 E3 78 */	mr r3, r28
/* 80BCC0CC  4B 4B 79 5D */	bl __ct__12dCcD_GObjInfFv
/* 80BCC0D0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BCC0D4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BCC0D8  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BCC0DC  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha /* 0x80BCC6E4@ha */
/* 80BCC0E0  38 03 C6 E4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BCC6E4@l */
/* 80BCC0E4  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 80BCC0E8  3C 60 80 BD */	lis r3, __vt__8cM3dGSph@ha /* 0x80BCC6D8@ha */
/* 80BCC0EC  38 03 C6 D8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BCC6D8@l */
/* 80BCC0F0  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BCC0F4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BCC0F8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BCC0FC  90 7C 01 20 */	stw r3, 0x120(r28)
/* 80BCC100  38 03 00 58 */	addi r0, r3, 0x58
/* 80BCC104  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BCC108  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BCC10C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BCC110  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80BCC114  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BCC118  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80BCC11C  38 03 00 84 */	addi r0, r3, 0x84
/* 80BCC120  90 1C 01 34 */	stw r0, 0x134(r28)
/* 80BCC124  38 7E 09 28 */	addi r3, r30, 0x928
/* 80BCC128  4B 4A B4 55 */	bl __ct__11dBgS_GndChkFv
/* 80BCC12C  38 7E 09 CC */	addi r3, r30, 0x9cc
/* 80BCC130  4B 6F 42 99 */	bl __ct__10Z2CreatureFv
lbl_80BCC134:
/* 80BCC134  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 80BCC138  60 00 00 08 */	ori r0, r0, 8
/* 80BCC13C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80BCC140:
/* 80BCC140  38 7D 0A 64 */	addi r3, r29, 0xa64
/* 80BCC144  3C 80 80 BD */	lis r4, d_a_obj_cho__stringBase0@ha /* 0x80BCC678@ha */
/* 80BCC148  38 84 C6 78 */	addi r4, r4, d_a_obj_cho__stringBase0@l /* 0x80BCC678@l */
/* 80BCC14C  4B 46 0D 71 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BCC150  7C 7E 1B 78 */	mr r30, r3
/* 80BCC154  2C 1E 00 04 */	cmpwi r30, 4
/* 80BCC158  40 82 02 54 */	bne lbl_80BCC3AC
/* 80BCC15C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BCC160  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BCC164  98 1D 09 C8 */	stb r0, 0x9c8(r29)
/* 80BCC168  88 1D 09 C8 */	lbz r0, 0x9c8(r29)
/* 80BCC16C  28 00 00 02 */	cmplwi r0, 2
/* 80BCC170  40 82 00 50 */	bne lbl_80BCC1C0
/* 80BCC174  38 00 00 00 */	li r0, 0
/* 80BCC178  98 1D 05 6C */	stb r0, 0x56c(r29)
/* 80BCC17C  A8 7D 04 E4 */	lha r3, 0x4e4(r29)
/* 80BCC180  38 03 E0 00 */	addi r0, r3, -8192
/* 80BCC184  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80BCC188  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80BCC18C  60 00 40 00 */	ori r0, r0, 0x4000
/* 80BCC190  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80BCC194  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80BCC198  D0 1D 09 8C */	stfs f0, 0x98c(r29)
/* 80BCC19C  38 00 00 14 */	li r0, 0x14
/* 80BCC1A0  B0 1D 09 84 */	sth r0, 0x984(r29)
/* 80BCC1A4  38 00 00 64 */	li r0, 0x64
/* 80BCC1A8  B0 1D 09 86 */	sth r0, 0x986(r29)
/* 80BCC1AC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCC1B0  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80BCC1B4  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80BCC1B8  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80BCC1BC  48 00 00 10 */	b lbl_80BCC1CC
lbl_80BCC1C0:
/* 80BCC1C0  38 00 00 01 */	li r0, 1
/* 80BCC1C4  98 1D 05 6D */	stb r0, 0x56d(r29)
/* 80BCC1C8  98 1D 09 80 */	stb r0, 0x980(r29)
lbl_80BCC1CC:
/* 80BCC1CC  38 00 00 5D */	li r0, 0x5d
/* 80BCC1D0  98 1D 05 48 */	stb r0, 0x548(r29)
/* 80BCC1D4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BCC1D8  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80BCC1DC  98 1D 05 81 */	stb r0, 0x581(r29)
/* 80BCC1E0  88 1D 05 81 */	lbz r0, 0x581(r29)
/* 80BCC1E4  38 7F 00 B8 */	addi r3, r31, 0xb8
/* 80BCC1E8  7C 03 00 AE */	lbzx r0, r3, r0
/* 80BCC1EC  98 1D 05 80 */	stb r0, 0x580(r29)
/* 80BCC1F0  88 1D 05 81 */	lbz r0, 0x581(r29)
/* 80BCC1F4  54 00 08 3C */	slwi r0, r0, 1
/* 80BCC1F8  38 7F 00 F8 */	addi r3, r31, 0xf8
/* 80BCC1FC  7C 03 02 2E */	lhzx r0, r3, r0
/* 80BCC200  B0 1D 05 82 */	sth r0, 0x582(r29)
/* 80BCC204  88 1D 05 81 */	lbz r0, 0x581(r29)
/* 80BCC208  28 00 00 01 */	cmplwi r0, 1
/* 80BCC20C  40 82 00 20 */	bne lbl_80BCC22C
/* 80BCC210  3C 60 80 BD */	lis r3, l_HIO@ha /* 0x80BCC760@ha */
/* 80BCC214  38 63 C7 60 */	addi r3, r3, l_HIO@l /* 0x80BCC760@l */
/* 80BCC218  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BCC21C  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80BCC220  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80BCC224  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 80BCC228  48 00 00 24 */	b lbl_80BCC24C
lbl_80BCC22C:
/* 80BCC22C  28 00 00 00 */	cmplwi r0, 0
/* 80BCC230  40 82 00 1C */	bne lbl_80BCC24C
/* 80BCC234  3C 60 80 BD */	lis r3, l_HIO@ha /* 0x80BCC760@ha */
/* 80BCC238  38 63 C7 60 */	addi r3, r3, l_HIO@l /* 0x80BCC760@l */
/* 80BCC23C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BCC240  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 80BCC244  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 80BCC248  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
lbl_80BCC24C:
/* 80BCC24C  7F A3 EB 78 */	mr r3, r29
/* 80BCC250  4B FF FC 21 */	bl CreateChk__10daObjCHO_cFv
/* 80BCC254  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCC258  40 82 00 0C */	bne lbl_80BCC264
/* 80BCC25C  38 60 00 05 */	li r3, 5
/* 80BCC260  48 00 01 50 */	b lbl_80BCC3B0
lbl_80BCC264:
/* 80BCC264  7F A3 EB 78 */	mr r3, r29
/* 80BCC268  3C 80 80 BD */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80BCA3F8@ha */
/* 80BCC26C  38 84 A3 F8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80BCA3F8@l */
/* 80BCC270  38 A0 0A A0 */	li r5, 0xaa0
/* 80BCC274  4B 44 E2 3D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BCC278  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCC27C  40 82 00 0C */	bne lbl_80BCC288
/* 80BCC280  38 60 00 05 */	li r3, 5
/* 80BCC284  48 00 01 2C */	b lbl_80BCC3B0
lbl_80BCC288:
/* 80BCC288  3C 60 80 BD */	lis r3, data_80BCC750@ha /* 0x80BCC750@ha */
/* 80BCC28C  8C 03 C7 50 */	lbzu r0, data_80BCC750@l(r3)  /* 0x80BCC750@l */
/* 80BCC290  28 00 00 00 */	cmplwi r0, 0
/* 80BCC294  40 82 00 20 */	bne lbl_80BCC2B4
/* 80BCC298  38 00 00 01 */	li r0, 1
/* 80BCC29C  98 03 00 00 */	stb r0, 0(r3)
/* 80BCC2A0  98 1D 0A 6C */	stb r0, 0xa6c(r29)
/* 80BCC2A4  38 00 FF FF */	li r0, -1
/* 80BCC2A8  3C 60 80 BD */	lis r3, l_HIO@ha /* 0x80BCC760@ha */
/* 80BCC2AC  38 63 C7 60 */	addi r3, r3, l_HIO@l /* 0x80BCC760@l */
/* 80BCC2B0  98 03 00 04 */	stb r0, 4(r3)
lbl_80BCC2B4:
/* 80BCC2B4  38 00 00 00 */	li r0, 0
/* 80BCC2B8  90 01 00 08 */	stw r0, 8(r1)
/* 80BCC2BC  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80BCC2C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BCC2C4  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80BCC2C8  7F A6 EB 78 */	mr r6, r29
/* 80BCC2CC  38 E0 00 01 */	li r7, 1
/* 80BCC2D0  39 1D 05 90 */	addi r8, r29, 0x590
/* 80BCC2D4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80BCC2D8  39 40 00 00 */	li r10, 0
/* 80BCC2DC  4B 4A 9F 6D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BCC2E0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCC2E4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80BCC2E8  88 1D 09 C8 */	lbz r0, 0x9c8(r29)
/* 80BCC2EC  28 00 00 00 */	cmplwi r0, 0
/* 80BCC2F0  40 82 00 0C */	bne lbl_80BCC2FC
/* 80BCC2F4  7F A3 EB 78 */	mr r3, r29
/* 80BCC2F8  4B FF E0 3D */	bl InitCcSph__10daObjCHO_cFv
lbl_80BCC2FC:
/* 80BCC2FC  88 1D 09 C8 */	lbz r0, 0x9c8(r29)
/* 80BCC300  28 00 00 02 */	cmplwi r0, 2
/* 80BCC304  40 82 00 50 */	bne lbl_80BCC354
/* 80BCC308  3C 60 80 BD */	lis r3, d_a_obj_cho__stringBase0@ha /* 0x80BCC678@ha */
/* 80BCC30C  38 63 C6 78 */	addi r3, r3, d_a_obj_cho__stringBase0@l /* 0x80BCC678@l */
/* 80BCC310  38 63 00 06 */	addi r3, r3, 6
/* 80BCC314  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCC318  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCC31C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80BCC320  4B 79 C6 75 */	bl strcmp
/* 80BCC324  2C 03 00 00 */	cmpwi r3, 0
/* 80BCC328  40 82 00 2C */	bne lbl_80BCC354
/* 80BCC32C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCC330  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCC334  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80BCC338  2C 00 00 03 */	cmpwi r0, 3
/* 80BCC33C  40 82 00 18 */	bne lbl_80BCC354
/* 80BCC340  88 1D 09 C8 */	lbz r0, 0x9c8(r29)
/* 80BCC344  60 00 00 03 */	ori r0, r0, 3
/* 80BCC348  98 1D 09 C8 */	stb r0, 0x9c8(r29)
/* 80BCC34C  38 00 00 00 */	li r0, 0
/* 80BCC350  98 1D 09 80 */	stb r0, 0x980(r29)
lbl_80BCC354:
/* 80BCC354  80 7D 0A 60 */	lwz r3, 0xa60(r29)
/* 80BCC358  80 63 00 04 */	lwz r3, 4(r3)
/* 80BCC35C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BCC360  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BCC364  7F A3 EB 78 */	mr r3, r29
/* 80BCC368  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80BCC36C  FC 40 08 90 */	fmr f2, f1
/* 80BCC370  FC 60 08 90 */	fmr f3, f1
/* 80BCC374  4B 44 E1 B5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80BCC378  7F A3 EB 78 */	mr r3, r29
/* 80BCC37C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80BCC380  FC 40 08 90 */	fmr f2, f1
/* 80BCC384  FC 60 08 90 */	fmr f3, f1
/* 80BCC388  4B 44 E1 B1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80BCC38C  38 7D 09 CC */	addi r3, r29, 0x9cc
/* 80BCC390  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BCC394  38 BD 05 38 */	addi r5, r29, 0x538
/* 80BCC398  38 C0 00 03 */	li r6, 3
/* 80BCC39C  38 E0 00 01 */	li r7, 1
/* 80BCC3A0  4B 6F 41 91 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80BCC3A4  7F A3 EB 78 */	mr r3, r29
/* 80BCC3A8  4B FF FA A9 */	bl daObjCHO_Execute__FP10daObjCHO_c
lbl_80BCC3AC:
/* 80BCC3AC  7F C3 F3 78 */	mr r3, r30
lbl_80BCC3B0:
/* 80BCC3B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BCC3B4  4B 79 5E 71 */	bl _restgpr_28
/* 80BCC3B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BCC3BC  7C 08 03 A6 */	mtlr r0
/* 80BCC3C0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BCC3C4  4E 80 00 20 */	blr 
