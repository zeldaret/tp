lbl_80095010:
/* 80095010  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80095014  7C 08 02 A6 */	mflr r0
/* 80095018  90 01 00 84 */	stw r0, 0x84(r1)
/* 8009501C  39 61 00 80 */	addi r11, r1, 0x80
/* 80095020  48 2C D1 B9 */	bl _savegpr_28
/* 80095024  7C 7D 1B 78 */	mr r29, r3
/* 80095028  80 03 01 74 */	lwz r0, 0x174(r3)
/* 8009502C  28 00 00 00 */	cmplwi r0, 0
/* 80095030  40 82 03 88 */	bne lbl_800953B8
/* 80095034  38 00 27 0F */	li r0, 0x270f
/* 80095038  90 1D 04 20 */	stw r0, 0x420(r29)
/* 8009503C  3C 60 80 38 */	lis r3, d_d_ev_camera__stringBase0@ha
/* 80095040  38 63 AA F4 */	addi r3, r3, d_d_ev_camera__stringBase0@l
/* 80095044  3B 83 01 9B */	addi r28, r3, 0x19b
/* 80095048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009504C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80095050  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80095054  7F E3 FB 78 */	mr r3, r31
/* 80095058  80 9D 04 EC */	lwz r4, 0x4ec(r29)
/* 8009505C  7F 85 E3 78 */	mr r5, r28
/* 80095060  4B FB 30 E5 */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 80095064  7C 7E 1B 79 */	or. r30, r3, r3
/* 80095068  41 82 00 30 */	beq lbl_80095098
/* 8009506C  7F E3 FB 78 */	mr r3, r31
/* 80095070  80 9D 04 EC */	lwz r4, 0x4ec(r29)
/* 80095074  7F 85 E3 78 */	mr r5, r28
/* 80095078  38 C0 00 01 */	li r6, 1
/* 8009507C  4B FB 30 71 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80095080  90 7D 04 08 */	stw r3, 0x408(r29)
/* 80095084  80 1D 04 20 */	lwz r0, 0x420(r29)
/* 80095088  7C 00 F0 00 */	cmpw r0, r30
/* 8009508C  40 81 00 14 */	ble lbl_800950A0
/* 80095090  93 DD 04 20 */	stw r30, 0x420(r29)
/* 80095094  48 00 00 0C */	b lbl_800950A0
lbl_80095098:
/* 80095098  38 60 00 01 */	li r3, 1
/* 8009509C  48 00 03 98 */	b lbl_80095434
lbl_800950A0:
/* 800950A0  3C 60 80 38 */	lis r3, d_d_ev_camera__stringBase0@ha
/* 800950A4  38 63 AA F4 */	addi r3, r3, d_d_ev_camera__stringBase0@l
/* 800950A8  3B 83 01 A3 */	addi r28, r3, 0x1a3
/* 800950AC  7F E3 FB 78 */	mr r3, r31
/* 800950B0  80 9D 04 EC */	lwz r4, 0x4ec(r29)
/* 800950B4  7F 85 E3 78 */	mr r5, r28
/* 800950B8  4B FB 30 8D */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 800950BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 800950C0  41 82 00 30 */	beq lbl_800950F0
/* 800950C4  7F E3 FB 78 */	mr r3, r31
/* 800950C8  80 9D 04 EC */	lwz r4, 0x4ec(r29)
/* 800950CC  7F 85 E3 78 */	mr r5, r28
/* 800950D0  38 C0 00 01 */	li r6, 1
/* 800950D4  4B FB 30 19 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 800950D8  90 7D 04 04 */	stw r3, 0x404(r29)
/* 800950DC  80 1D 04 20 */	lwz r0, 0x420(r29)
/* 800950E0  7C 00 F0 00 */	cmpw r0, r30
/* 800950E4  40 81 00 14 */	ble lbl_800950F8
/* 800950E8  93 DD 04 20 */	stw r30, 0x420(r29)
/* 800950EC  48 00 00 0C */	b lbl_800950F8
lbl_800950F0:
/* 800950F0  38 60 00 01 */	li r3, 1
/* 800950F4  48 00 03 40 */	b lbl_80095434
lbl_800950F8:
/* 800950F8  3C 60 80 38 */	lis r3, d_d_ev_camera__stringBase0@ha
/* 800950FC  38 63 AA F4 */	addi r3, r3, d_d_ev_camera__stringBase0@l
/* 80095100  3B 83 01 A8 */	addi r28, r3, 0x1a8
/* 80095104  7F E3 FB 78 */	mr r3, r31
/* 80095108  80 9D 04 EC */	lwz r4, 0x4ec(r29)
/* 8009510C  7F 85 E3 78 */	mr r5, r28
/* 80095110  4B FB 30 35 */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 80095114  7C 7E 1B 79 */	or. r30, r3, r3
/* 80095118  41 82 00 30 */	beq lbl_80095148
/* 8009511C  7F E3 FB 78 */	mr r3, r31
/* 80095120  80 9D 04 EC */	lwz r4, 0x4ec(r29)
/* 80095124  7F 85 E3 78 */	mr r5, r28
/* 80095128  38 C0 00 00 */	li r6, 0
/* 8009512C  4B FB 2F C1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80095130  90 7D 04 0C */	stw r3, 0x40c(r29)
/* 80095134  80 1D 04 20 */	lwz r0, 0x420(r29)
/* 80095138  7C 00 F0 00 */	cmpw r0, r30
/* 8009513C  40 81 00 14 */	ble lbl_80095150
/* 80095140  93 DD 04 20 */	stw r30, 0x420(r29)
/* 80095144  48 00 00 0C */	b lbl_80095150
lbl_80095148:
/* 80095148  38 60 00 01 */	li r3, 1
/* 8009514C  48 00 02 E8 */	b lbl_80095434
lbl_80095150:
/* 80095150  7F A3 EB 78 */	mr r3, r29
/* 80095154  38 9D 04 1C */	addi r4, r29, 0x41c
/* 80095158  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 8009515C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 80095160  38 C0 00 01 */	li r6, 1
/* 80095164  4B FF 3F 29 */	bl getEvIntData__9dCamera_cFPiPci
/* 80095168  98 7D 03 E8 */	stb r3, 0x3e8(r29)
/* 8009516C  7F A3 EB 78 */	mr r3, r29
/* 80095170  38 9D 04 18 */	addi r4, r29, 0x418
/* 80095174  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 80095178  38 C5 AA F4 */	addi r6, r5, d_d_ev_camera__stringBase0@l
/* 8009517C  38 A6 00 28 */	addi r5, r6, 0x28
/* 80095180  38 C6 00 33 */	addi r6, r6, 0x33
/* 80095184  4B FF 41 B9 */	bl getEvStringData__9dCamera_cFPcPcPc
/* 80095188  7F A3 EB 78 */	mr r3, r29
/* 8009518C  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha
/* 80095190  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l
/* 80095194  38 84 00 36 */	addi r4, r4, 0x36
/* 80095198  4B FF 43 2D */	bl getEvActor__9dCamera_cFPc
/* 8009519C  90 7D 04 14 */	stw r3, 0x414(r29)
/* 800951A0  3B E0 00 00 */	li r31, 0
/* 800951A4  7F A3 EB 78 */	mr r3, r29
/* 800951A8  38 9D 04 24 */	addi r4, r29, 0x424
/* 800951AC  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha
/* 800951B0  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l
/* 800951B4  38 A5 01 AE */	addi r5, r5, 0x1ae
/* 800951B8  38 C0 00 00 */	li r6, 0
/* 800951BC  4B FF 3E D1 */	bl getEvIntData__9dCamera_cFPiPci
/* 800951C0  80 1D 04 24 */	lwz r0, 0x424(r29)
/* 800951C4  2C 00 00 01 */	cmpwi r0, 1
/* 800951C8  40 82 00 44 */	bne lbl_8009520C
/* 800951CC  80 1D 04 20 */	lwz r0, 0x420(r29)
/* 800951D0  C8 22 8E F8 */	lfd f1, lit_5962(r2)
/* 800951D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800951D8  90 01 00 64 */	stw r0, 0x64(r1)
/* 800951DC  3C 00 43 30 */	lis r0, 0x4330
/* 800951E0  90 01 00 60 */	stw r0, 0x60(r1)
/* 800951E4  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 800951E8  EC 20 08 28 */	fsubs f1, f0, f1
/* 800951EC  C0 02 91 94 */	lfs f0, lit_10437(r2)
/* 800951F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 800951F4  48 1D 27 99 */	bl cM_rndFX__Ff
/* 800951F8  FC 00 0A 10 */	fabs f0, f1
/* 800951FC  FC 00 00 18 */	frsp f0, f0
/* 80095200  FC 00 00 1E */	fctiwz f0, f0
/* 80095204  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80095208  83 E1 00 6C */	lwz r31, 0x6c(r1)
lbl_8009520C:
/* 8009520C  3B C0 00 00 */	li r30, 0
/* 80095210  48 00 01 94 */	b lbl_800953A4
lbl_80095214:
/* 80095214  80 1D 04 08 */	lwz r0, 0x408(r29)
/* 80095218  1C 9F 00 0C */	mulli r4, r31, 0xc
/* 8009521C  7C 60 22 14 */	add r3, r0, r4
/* 80095220  C0 03 00 00 */	lfs f0, 0(r3)
/* 80095224  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80095228  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009522C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80095230  C0 03 00 08 */	lfs f0, 8(r3)
/* 80095234  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80095238  80 1D 04 04 */	lwz r0, 0x404(r29)
/* 8009523C  7C 60 22 14 */	add r3, r0, r4
/* 80095240  C0 03 00 00 */	lfs f0, 0(r3)
/* 80095244  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80095248  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009524C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80095250  C0 03 00 08 */	lfs f0, 8(r3)
/* 80095254  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80095258  80 BD 04 14 */	lwz r5, 0x414(r29)
/* 8009525C  28 05 00 00 */	cmplwi r5, 0
/* 80095260  41 82 00 3C */	beq lbl_8009529C
/* 80095264  88 1D 04 18 */	lbz r0, 0x418(r29)
/* 80095268  2C 00 00 6F */	cmpwi r0, 0x6f
/* 8009526C  40 82 00 30 */	bne lbl_8009529C
/* 80095270  38 61 00 38 */	addi r3, r1, 0x38
/* 80095274  7F A4 EB 78 */	mr r4, r29
/* 80095278  38 C1 00 50 */	addi r6, r1, 0x50
/* 8009527C  48 0C FA F1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80095280  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80095284  D0 1D 03 EC */	stfs f0, 0x3ec(r29)
/* 80095288  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8009528C  D0 1D 03 F0 */	stfs f0, 0x3f0(r29)
/* 80095290  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80095294  D0 1D 03 F4 */	stfs f0, 0x3f4(r29)
/* 80095298  48 00 00 1C */	b lbl_800952B4
lbl_8009529C:
/* 8009529C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800952A0  D0 1D 03 EC */	stfs f0, 0x3ec(r29)
/* 800952A4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800952A8  D0 1D 03 F0 */	stfs f0, 0x3f0(r29)
/* 800952AC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800952B0  D0 1D 03 F4 */	stfs f0, 0x3f4(r29)
lbl_800952B4:
/* 800952B4  80 BD 04 14 */	lwz r5, 0x414(r29)
/* 800952B8  28 05 00 00 */	cmplwi r5, 0
/* 800952BC  41 82 00 3C */	beq lbl_800952F8
/* 800952C0  88 1D 04 19 */	lbz r0, 0x419(r29)
/* 800952C4  2C 00 00 6F */	cmpwi r0, 0x6f
/* 800952C8  40 82 00 30 */	bne lbl_800952F8
/* 800952CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 800952D0  7F A4 EB 78 */	mr r4, r29
/* 800952D4  38 C1 00 44 */	addi r6, r1, 0x44
/* 800952D8  48 0C FA 95 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 800952DC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800952E0  D0 1D 03 F8 */	stfs f0, 0x3f8(r29)
/* 800952E4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800952E8  D0 1D 03 FC */	stfs f0, 0x3fc(r29)
/* 800952EC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800952F0  D0 1D 04 00 */	stfs f0, 0x400(r29)
/* 800952F4  48 00 00 1C */	b lbl_80095310
lbl_800952F8:
/* 800952F8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 800952FC  D0 1D 03 F8 */	stfs f0, 0x3f8(r29)
/* 80095300  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80095304  D0 1D 03 FC */	stfs f0, 0x3fc(r29)
/* 80095308  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8009530C  D0 1D 04 00 */	stfs f0, 0x400(r29)
lbl_80095310:
/* 80095310  80 7D 04 0C */	lwz r3, 0x40c(r29)
/* 80095314  57 E0 10 3A */	slwi r0, r31, 2
/* 80095318  7C 03 04 2E */	lfsx f0, r3, r0
/* 8009531C  D0 1D 04 10 */	stfs f0, 0x410(r29)
/* 80095320  7F A3 EB 78 */	mr r3, r29
/* 80095324  38 9D 03 EC */	addi r4, r29, 0x3ec
/* 80095328  38 BD 03 F8 */	addi r5, r29, 0x3f8
/* 8009532C  38 C0 40 07 */	li r6, 0x4007
/* 80095330  48 0D 07 C1 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 80095334  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80095338  40 82 00 54 */	bne lbl_8009538C
/* 8009533C  C0 1D 03 EC */	lfs f0, 0x3ec(r29)
/* 80095340  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80095344  C0 1D 03 F0 */	lfs f0, 0x3f0(r29)
/* 80095348  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8009534C  C0 1D 03 F4 */	lfs f0, 0x3f4(r29)
/* 80095350  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80095354  C0 1D 03 F8 */	lfs f0, 0x3f8(r29)
/* 80095358  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8009535C  C0 1D 03 FC */	lfs f0, 0x3fc(r29)
/* 80095360  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80095364  C0 1D 04 00 */	lfs f0, 0x400(r29)
/* 80095368  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8009536C  38 61 00 20 */	addi r3, r1, 0x20
/* 80095370  38 81 00 14 */	addi r4, r1, 0x14
/* 80095374  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 80095378  80 DD 04 14 */	lwz r6, 0x414(r29)
/* 8009537C  38 E0 00 00 */	li r7, 0
/* 80095380  4B FF A7 15 */	bl func_8008FA94
/* 80095384  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80095388  41 82 00 28 */	beq lbl_800953B0
lbl_8009538C:
/* 8009538C  80 1D 04 20 */	lwz r0, 0x420(r29)
/* 80095390  3B FF 00 01 */	addi r31, r31, 1
/* 80095394  7C 1F 00 00 */	cmpw r31, r0
/* 80095398  41 80 00 08 */	blt lbl_800953A0
/* 8009539C  3B E0 00 00 */	li r31, 0
lbl_800953A0:
/* 800953A0  3B DE 00 01 */	addi r30, r30, 1
lbl_800953A4:
/* 800953A4  80 1D 04 20 */	lwz r0, 0x420(r29)
/* 800953A8  7C 1E 00 00 */	cmpw r30, r0
/* 800953AC  41 80 FE 68 */	blt lbl_80095214
lbl_800953B0:
/* 800953B0  38 00 00 01 */	li r0, 1
/* 800953B4  98 1D 01 58 */	stb r0, 0x158(r29)
lbl_800953B8:
/* 800953B8  C0 1D 03 EC */	lfs f0, 0x3ec(r29)
/* 800953BC  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 800953C0  C0 1D 03 F0 */	lfs f0, 0x3f0(r29)
/* 800953C4  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 800953C8  C0 1D 03 F4 */	lfs f0, 0x3f4(r29)
/* 800953CC  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 800953D0  C0 1D 03 F8 */	lfs f0, 0x3f8(r29)
/* 800953D4  D0 1D 00 70 */	stfs f0, 0x70(r29)
/* 800953D8  C0 1D 03 FC */	lfs f0, 0x3fc(r29)
/* 800953DC  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 800953E0  C0 1D 04 00 */	lfs f0, 0x400(r29)
/* 800953E4  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 800953E8  C0 1D 04 10 */	lfs f0, 0x410(r29)
/* 800953EC  D0 1D 00 80 */	stfs f0, 0x80(r29)
/* 800953F0  38 61 00 08 */	addi r3, r1, 8
/* 800953F4  38 9D 00 70 */	addi r4, r29, 0x70
/* 800953F8  38 BD 00 64 */	addi r5, r29, 0x64
/* 800953FC  48 1D 17 39 */	bl __mi__4cXyzCFRC3Vec
/* 80095400  38 7D 00 5C */	addi r3, r29, 0x5c
/* 80095404  38 81 00 08 */	addi r4, r1, 8
/* 80095408  48 1D C6 69 */	bl Val__7cSGlobeFRC4cXyz
/* 8009540C  88 1D 03 E8 */	lbz r0, 0x3e8(r29)
/* 80095410  28 00 00 00 */	cmplwi r0, 0
/* 80095414  41 82 00 1C */	beq lbl_80095430
/* 80095418  80 7D 01 74 */	lwz r3, 0x174(r29)
/* 8009541C  80 1D 04 1C */	lwz r0, 0x41c(r29)
/* 80095420  7C 03 00 40 */	cmplw r3, r0
/* 80095424  40 80 00 0C */	bge lbl_80095430
/* 80095428  38 60 00 00 */	li r3, 0
/* 8009542C  48 00 00 08 */	b lbl_80095434
lbl_80095430:
/* 80095430  38 60 00 01 */	li r3, 1
lbl_80095434:
/* 80095434  39 61 00 80 */	addi r11, r1, 0x80
/* 80095438  48 2C CD ED */	bl _restgpr_28
/* 8009543C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80095440  7C 08 03 A6 */	mtlr r0
/* 80095444  38 21 00 80 */	addi r1, r1, 0x80
/* 80095448  4E 80 00 20 */	blr 
