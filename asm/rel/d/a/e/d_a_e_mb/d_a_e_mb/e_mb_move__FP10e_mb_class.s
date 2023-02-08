lbl_807068D4:
/* 807068D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807068D8  7C 08 02 A6 */	mflr r0
/* 807068DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 807068E0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 807068E4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 807068E8  39 61 00 60 */	addi r11, r1, 0x60
/* 807068EC  4B C5 B8 ED */	bl _savegpr_28
/* 807068F0  7C 7C 1B 78 */	mr r28, r3
/* 807068F4  3C 60 80 71 */	lis r3, lit_1109@ha /* 0x80708BF0@ha */
/* 807068F8  3B C3 8B F0 */	addi r30, r3, lit_1109@l /* 0x80708BF0@l */
/* 807068FC  3C 60 80 71 */	lis r3, lit_3764@ha /* 0x80708A10@ha */
/* 80706900  3B E3 8A 10 */	addi r31, r3, lit_3764@l /* 0x80708A10@l */
/* 80706904  38 61 00 20 */	addi r3, r1, 0x20
/* 80706908  38 9C 05 B8 */	addi r4, r28, 0x5b8
/* 8070690C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80706910  4B B6 02 25 */	bl __mi__4cXyzCFRC3Vec
/* 80706914  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80706918  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8070691C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80706920  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80706924  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80706928  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8070692C  80 9C 05 C8 */	lwz r4, 0x5c8(r28)
/* 80706930  C3 E4 00 1C */	lfs f31, 0x1c(r4)
/* 80706934  3B A0 00 00 */	li r29, 0
/* 80706938  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 8070693C  2C 00 00 01 */	cmpwi r0, 1
/* 80706940  41 82 00 68 */	beq lbl_807069A8
/* 80706944  40 80 00 10 */	bge lbl_80706954
/* 80706948  2C 00 00 00 */	cmpwi r0, 0
/* 8070694C  40 80 00 14 */	bge lbl_80706960
/* 80706950  48 00 06 08 */	b lbl_80706F58
lbl_80706954:
/* 80706954  2C 00 00 03 */	cmpwi r0, 3
/* 80706958  40 80 06 00 */	bge lbl_80706F58
/* 8070695C  48 00 00 D8 */	b lbl_80706A34
lbl_80706960:
/* 80706960  7F 83 E3 78 */	mr r3, r28
/* 80706964  38 80 00 06 */	li r4, 6
/* 80706968  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8070696C  38 A0 00 00 */	li r5, 0
/* 80706970  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80706974  4B FF F8 41 */	bl anm_init__FP10e_mb_classifUcf
/* 80706978  A8 7C 05 B4 */	lha r3, 0x5b4(r28)
/* 8070697C  38 03 00 01 */	addi r0, r3, 1
/* 80706980  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80706984  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80706988  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8070698C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80706990  D0 1C 06 A4 */	stfs f0, 0x6a4(r28)
/* 80706994  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80706998  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 8070699C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807069A0  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
/* 807069A4  48 00 05 B4 */	b lbl_80706F58
lbl_807069A8:
/* 807069A8  38 60 00 01 */	li r3, 1
/* 807069AC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 807069B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807069B4  40 82 00 18 */	bne lbl_807069CC
/* 807069B8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 807069BC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 807069C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807069C4  41 82 00 08 */	beq lbl_807069CC
/* 807069C8  38 60 00 00 */	li r3, 0
lbl_807069CC:
/* 807069CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807069D0  41 82 05 88 */	beq lbl_80706F58
/* 807069D4  7F 83 E3 78 */	mr r3, r28
/* 807069D8  38 80 00 0D */	li r4, 0xd
/* 807069DC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807069E0  38 A0 00 00 */	li r5, 0
/* 807069E4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807069E8  4B FF F7 CD */	bl anm_init__FP10e_mb_classifUcf
/* 807069EC  38 00 00 02 */	li r0, 2
/* 807069F0  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 807069F4  88 1C 06 B0 */	lbz r0, 0x6b0(r28)
/* 807069F8  7C 00 07 74 */	extsb r0, r0
/* 807069FC  7C 00 00 34 */	cntlzw r0, r0
/* 80706A00  54 00 D9 7E */	srwi r0, r0, 5
/* 80706A04  98 1C 06 B0 */	stb r0, 0x6b0(r28)
/* 80706A08  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050029@ha */
/* 80706A0C  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00050029@l */
/* 80706A10  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80706A14  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 80706A18  38 81 00 1C */	addi r4, r1, 0x1c
/* 80706A1C  38 A0 FF FF */	li r5, -1
/* 80706A20  81 9C 05 E8 */	lwz r12, 0x5e8(r28)
/* 80706A24  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80706A28  7D 89 03 A6 */	mtctr r12
/* 80706A2C  4E 80 04 21 */	bctrl 
/* 80706A30  48 00 05 28 */	b lbl_80706F58
lbl_80706A34:
/* 80706A34  80 1C 05 CC */	lwz r0, 0x5cc(r28)
/* 80706A38  2C 00 00 11 */	cmpwi r0, 0x11
/* 80706A3C  40 82 00 48 */	bne lbl_80706A84
/* 80706A40  38 60 00 01 */	li r3, 1
/* 80706A44  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80706A48  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80706A4C  40 82 00 18 */	bne lbl_80706A64
/* 80706A50  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80706A54  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80706A58  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80706A5C  41 82 00 08 */	beq lbl_80706A64
/* 80706A60  38 60 00 00 */	li r3, 0
lbl_80706A64:
/* 80706A64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80706A68  41 82 00 1C */	beq lbl_80706A84
/* 80706A6C  7F 83 E3 78 */	mr r3, r28
/* 80706A70  38 80 00 0D */	li r4, 0xd
/* 80706A74  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80706A78  38 A0 00 00 */	li r5, 0
/* 80706A7C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80706A80  4B FF F7 35 */	bl anm_init__FP10e_mb_classifUcf
lbl_80706A84:
/* 80706A84  88 1C 06 8C */	lbz r0, 0x68c(r28)
/* 80706A88  7C 00 07 75 */	extsb. r0, r0
/* 80706A8C  40 82 00 B8 */	bne lbl_80706B44
/* 80706A90  80 1C 05 CC */	lwz r0, 0x5cc(r28)
/* 80706A94  2C 00 00 0D */	cmpwi r0, 0xd
/* 80706A98  40 82 00 54 */	bne lbl_80706AEC
/* 80706A9C  7F 83 E3 78 */	mr r3, r28
/* 80706AA0  38 80 00 10 */	li r4, 0x10
/* 80706AA4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80706AA8  38 A0 00 00 */	li r5, 0
/* 80706AAC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80706AB0  4B FF F7 05 */	bl anm_init__FP10e_mb_classifUcf
/* 80706AB4  FC 00 F8 1E */	fctiwz f0, f31
/* 80706AB8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80706ABC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80706AC0  7C 00 07 34 */	extsh r0, r0
/* 80706AC4  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 80706AC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80706ACC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80706AD0  3C 00 43 30 */	lis r0, 0x4330
/* 80706AD4  90 01 00 40 */	stw r0, 0x40(r1)
/* 80706AD8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80706ADC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80706AE0  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 80706AE4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80706AE8  48 00 00 84 */	b lbl_80706B6C
lbl_80706AEC:
/* 80706AEC  2C 00 00 0C */	cmpwi r0, 0xc
/* 80706AF0  40 82 00 7C */	bne lbl_80706B6C
/* 80706AF4  7F 83 E3 78 */	mr r3, r28
/* 80706AF8  38 80 00 0F */	li r4, 0xf
/* 80706AFC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80706B00  38 A0 00 00 */	li r5, 0
/* 80706B04  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80706B08  4B FF F6 AD */	bl anm_init__FP10e_mb_classifUcf
/* 80706B0C  FC 00 F8 1E */	fctiwz f0, f31
/* 80706B10  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80706B14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80706B18  7C 00 07 34 */	extsh r0, r0
/* 80706B1C  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 80706B20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80706B24  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80706B28  3C 00 43 30 */	lis r0, 0x4330
/* 80706B2C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80706B30  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80706B34  EC 00 08 28 */	fsubs f0, f0, f1
/* 80706B38  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 80706B3C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80706B40  48 00 00 2C */	b lbl_80706B6C
lbl_80706B44:
/* 80706B44  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005002A@ha */
/* 80706B48  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0005002A@l */
/* 80706B4C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80706B50  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 80706B54  38 81 00 18 */	addi r4, r1, 0x18
/* 80706B58  38 A0 FF FF */	li r5, -1
/* 80706B5C  81 9C 05 E8 */	lwz r12, 0x5e8(r28)
/* 80706B60  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80706B64  7D 89 03 A6 */	mtctr r12
/* 80706B68  4E 80 04 21 */	bctrl 
lbl_80706B6C:
/* 80706B6C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006003D@ha */
/* 80706B70  38 03 00 3D */	addi r0, r3, 0x003D /* 0x0006003D@l */
/* 80706B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80706B78  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 80706B7C  38 81 00 14 */	addi r4, r1, 0x14
/* 80706B80  38 A0 00 00 */	li r5, 0
/* 80706B84  38 C0 FF FF */	li r6, -1
/* 80706B88  81 9C 05 E8 */	lwz r12, 0x5e8(r28)
/* 80706B8C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80706B90  7D 89 03 A6 */	mtctr r12
/* 80706B94  4E 80 04 21 */	bctrl 
/* 80706B98  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80706B9C  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 80706BA0  4B B6 0A D5 */	bl cM_atan2s__Fff
/* 80706BA4  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80706BA8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80706BAC  EC 20 00 32 */	fmuls f1, f0, f0
/* 80706BB0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80706BB4  EC 00 00 32 */	fmuls f0, f0, f0
/* 80706BB8  EC 41 00 2A */	fadds f2, f1, f0
/* 80706BBC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80706BC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80706BC4  40 81 00 0C */	ble lbl_80706BD0
/* 80706BC8  FC 00 10 34 */	frsqrte f0, f2
/* 80706BCC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80706BD0:
/* 80706BD0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80706BD4  4B B6 0A A1 */	bl cM_atan2s__Fff
/* 80706BD8  7C 03 00 D0 */	neg r0, r3
/* 80706BDC  B0 1C 04 DC */	sth r0, 0x4dc(r28)
/* 80706BE0  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80706BE4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80706BE8  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80706BEC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80706BF0  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80706BF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80706BF8  EC 62 00 2A */	fadds f3, f2, f0
/* 80706BFC  4B B6 8E 41 */	bl cLib_addCalc2__FPffff
/* 80706C00  88 1C 06 8C */	lbz r0, 0x68c(r28)
/* 80706C04  7C 00 07 75 */	extsb. r0, r0
/* 80706C08  40 82 01 24 */	bne lbl_80706D2C
/* 80706C0C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80706C10  4B C4 05 29 */	bl PSVECSquareMag
/* 80706C14  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80706C18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80706C1C  40 81 00 58 */	ble lbl_80706C74
/* 80706C20  FC 00 08 34 */	frsqrte f0, f1
/* 80706C24  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80706C28  FC 44 00 32 */	fmul f2, f4, f0
/* 80706C2C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80706C30  FC 00 00 32 */	fmul f0, f0, f0
/* 80706C34  FC 01 00 32 */	fmul f0, f1, f0
/* 80706C38  FC 03 00 28 */	fsub f0, f3, f0
/* 80706C3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80706C40  FC 44 00 32 */	fmul f2, f4, f0
/* 80706C44  FC 00 00 32 */	fmul f0, f0, f0
/* 80706C48  FC 01 00 32 */	fmul f0, f1, f0
/* 80706C4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80706C50  FC 02 00 32 */	fmul f0, f2, f0
/* 80706C54  FC 44 00 32 */	fmul f2, f4, f0
/* 80706C58  FC 00 00 32 */	fmul f0, f0, f0
/* 80706C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80706C60  FC 03 00 28 */	fsub f0, f3, f0
/* 80706C64  FC 02 00 32 */	fmul f0, f2, f0
/* 80706C68  FC 21 00 32 */	fmul f1, f1, f0
/* 80706C6C  FC 20 08 18 */	frsp f1, f1
/* 80706C70  48 00 00 88 */	b lbl_80706CF8
lbl_80706C74:
/* 80706C74  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80706C78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80706C7C  40 80 00 10 */	bge lbl_80706C8C
/* 80706C80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80706C84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80706C88  48 00 00 70 */	b lbl_80706CF8
lbl_80706C8C:
/* 80706C8C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80706C90  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80706C94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80706C98  3C 00 7F 80 */	lis r0, 0x7f80
/* 80706C9C  7C 03 00 00 */	cmpw r3, r0
/* 80706CA0  41 82 00 14 */	beq lbl_80706CB4
/* 80706CA4  40 80 00 40 */	bge lbl_80706CE4
/* 80706CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80706CAC  41 82 00 20 */	beq lbl_80706CCC
/* 80706CB0  48 00 00 34 */	b lbl_80706CE4
lbl_80706CB4:
/* 80706CB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80706CB8  41 82 00 0C */	beq lbl_80706CC4
/* 80706CBC  38 00 00 01 */	li r0, 1
/* 80706CC0  48 00 00 28 */	b lbl_80706CE8
lbl_80706CC4:
/* 80706CC4  38 00 00 02 */	li r0, 2
/* 80706CC8  48 00 00 20 */	b lbl_80706CE8
lbl_80706CCC:
/* 80706CCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80706CD0  41 82 00 0C */	beq lbl_80706CDC
/* 80706CD4  38 00 00 05 */	li r0, 5
/* 80706CD8  48 00 00 10 */	b lbl_80706CE8
lbl_80706CDC:
/* 80706CDC  38 00 00 03 */	li r0, 3
/* 80706CE0  48 00 00 08 */	b lbl_80706CE8
lbl_80706CE4:
/* 80706CE4  38 00 00 04 */	li r0, 4
lbl_80706CE8:
/* 80706CE8  2C 00 00 01 */	cmpwi r0, 1
/* 80706CEC  40 82 00 0C */	bne lbl_80706CF8
/* 80706CF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80706CF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80706CF8:
/* 80706CF8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80706CFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80706D00  4C 40 13 82 */	cror 2, 0, 2
/* 80706D04  40 82 00 28 */	bne lbl_80706D2C
/* 80706D08  80 1C 05 CC */	lwz r0, 0x5cc(r28)
/* 80706D0C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80706D10  41 82 00 1C */	beq lbl_80706D2C
/* 80706D14  7F 83 E3 78 */	mr r3, r28
/* 80706D18  38 80 00 0A */	li r4, 0xa
/* 80706D1C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80706D20  38 A0 00 00 */	li r5, 0
/* 80706D24  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80706D28  4B FF F4 8D */	bl anm_init__FP10e_mb_classifUcf
lbl_80706D2C:
/* 80706D2C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80706D30  4B C4 04 09 */	bl PSVECSquareMag
/* 80706D34  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80706D38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80706D3C  40 81 00 58 */	ble lbl_80706D94
/* 80706D40  FC 00 08 34 */	frsqrte f0, f1
/* 80706D44  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80706D48  FC 44 00 32 */	fmul f2, f4, f0
/* 80706D4C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80706D50  FC 00 00 32 */	fmul f0, f0, f0
/* 80706D54  FC 01 00 32 */	fmul f0, f1, f0
/* 80706D58  FC 03 00 28 */	fsub f0, f3, f0
/* 80706D5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80706D60  FC 44 00 32 */	fmul f2, f4, f0
/* 80706D64  FC 00 00 32 */	fmul f0, f0, f0
/* 80706D68  FC 01 00 32 */	fmul f0, f1, f0
/* 80706D6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80706D70  FC 02 00 32 */	fmul f0, f2, f0
/* 80706D74  FC 44 00 32 */	fmul f2, f4, f0
/* 80706D78  FC 00 00 32 */	fmul f0, f0, f0
/* 80706D7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80706D80  FC 03 00 28 */	fsub f0, f3, f0
/* 80706D84  FC 02 00 32 */	fmul f0, f2, f0
/* 80706D88  FC 21 00 32 */	fmul f1, f1, f0
/* 80706D8C  FC 20 08 18 */	frsp f1, f1
/* 80706D90  48 00 00 88 */	b lbl_80706E18
lbl_80706D94:
/* 80706D94  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80706D98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80706D9C  40 80 00 10 */	bge lbl_80706DAC
/* 80706DA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80706DA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80706DA8  48 00 00 70 */	b lbl_80706E18
lbl_80706DAC:
/* 80706DAC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80706DB0  80 81 00 08 */	lwz r4, 8(r1)
/* 80706DB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80706DB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80706DBC  7C 03 00 00 */	cmpw r3, r0
/* 80706DC0  41 82 00 14 */	beq lbl_80706DD4
/* 80706DC4  40 80 00 40 */	bge lbl_80706E04
/* 80706DC8  2C 03 00 00 */	cmpwi r3, 0
/* 80706DCC  41 82 00 20 */	beq lbl_80706DEC
/* 80706DD0  48 00 00 34 */	b lbl_80706E04
lbl_80706DD4:
/* 80706DD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80706DD8  41 82 00 0C */	beq lbl_80706DE4
/* 80706DDC  38 00 00 01 */	li r0, 1
/* 80706DE0  48 00 00 28 */	b lbl_80706E08
lbl_80706DE4:
/* 80706DE4  38 00 00 02 */	li r0, 2
/* 80706DE8  48 00 00 20 */	b lbl_80706E08
lbl_80706DEC:
/* 80706DEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80706DF0  41 82 00 0C */	beq lbl_80706DFC
/* 80706DF4  38 00 00 05 */	li r0, 5
/* 80706DF8  48 00 00 10 */	b lbl_80706E08
lbl_80706DFC:
/* 80706DFC  38 00 00 03 */	li r0, 3
/* 80706E00  48 00 00 08 */	b lbl_80706E08
lbl_80706E04:
/* 80706E04  38 00 00 04 */	li r0, 4
lbl_80706E08:
/* 80706E08  2C 00 00 01 */	cmpwi r0, 1
/* 80706E0C  40 82 00 0C */	bne lbl_80706E18
/* 80706E10  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80706E14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80706E18:
/* 80706E18  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80706E1C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80706E20  EC 02 00 32 */	fmuls f0, f2, f0
/* 80706E24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80706E28  4C 40 13 82 */	cror 2, 0, 2
/* 80706E2C  40 82 01 2C */	bne lbl_80706F58
/* 80706E30  C0 1C 05 B8 */	lfs f0, 0x5b8(r28)
/* 80706E34  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80706E38  C0 1C 05 BC */	lfs f0, 0x5bc(r28)
/* 80706E3C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80706E40  C0 1C 05 C0 */	lfs f0, 0x5c0(r28)
/* 80706E44  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80706E48  88 1C 06 8C */	lbz r0, 0x68c(r28)
/* 80706E4C  2C 00 00 01 */	cmpwi r0, 1
/* 80706E50  40 82 00 7C */	bne lbl_80706ECC
/* 80706E54  88 1C 06 B0 */	lbz r0, 0x6b0(r28)
/* 80706E58  7C 00 07 74 */	extsb r0, r0
/* 80706E5C  7C 00 00 34 */	cntlzw r0, r0
/* 80706E60  54 00 D9 7E */	srwi r0, r0, 5
/* 80706E64  98 1C 06 B0 */	stb r0, 0x6b0(r28)
/* 80706E68  88 1C 06 B0 */	lbz r0, 0x6b0(r28)
/* 80706E6C  7C 00 07 75 */	extsb. r0, r0
/* 80706E70  40 82 00 24 */	bne lbl_80706E94
/* 80706E74  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80706E78  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 80706E7C  38 7E 00 8C */	addi r3, r30, 0x8c
/* 80706E80  C0 03 00 04 */	lfs f0, 4(r3)
/* 80706E84  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 80706E88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80706E8C  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
/* 80706E90  48 00 00 20 */	b lbl_80706EB0
lbl_80706E94:
/* 80706E94  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80706E98  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 80706E9C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80706EA0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80706EA4  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 80706EA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80706EAC  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
lbl_80706EB0:
/* 80706EB0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80706EB4  D0 1C 06 A4 */	stfs f0, 0x6a4(r28)
/* 80706EB8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80706EBC  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 80706EC0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80706EC4  D0 1C 06 AC */	stfs f0, 0x6ac(r28)
/* 80706EC8  48 00 00 88 */	b lbl_80706F50
lbl_80706ECC:
/* 80706ECC  88 1C 06 B0 */	lbz r0, 0x6b0(r28)
/* 80706ED0  7C 00 07 75 */	extsb. r0, r0
/* 80706ED4  40 82 00 24 */	bne lbl_80706EF8
/* 80706ED8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80706EDC  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 80706EE0  38 7E 00 74 */	addi r3, r30, 0x74
/* 80706EE4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80706EE8  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 80706EEC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80706EF0  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
/* 80706EF4  48 00 00 20 */	b lbl_80706F14
lbl_80706EF8:
/* 80706EF8  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80706EFC  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 80706F00  38 7E 00 BC */	addi r3, r30, 0xbc
/* 80706F04  C0 03 00 04 */	lfs f0, 4(r3)
/* 80706F08  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 80706F0C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80706F10  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
lbl_80706F14:
/* 80706F14  38 00 00 03 */	li r0, 3
/* 80706F18  B0 1C 06 9A */	sth r0, 0x69a(r28)
/* 80706F1C  38 00 00 00 */	li r0, 0
/* 80706F20  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80706F24  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070077@ha */
/* 80706F28  38 03 00 77 */	addi r0, r3, 0x0077 /* 0x00070077@l */
/* 80706F2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80706F30  38 7C 05 E8 */	addi r3, r28, 0x5e8
/* 80706F34  38 81 00 10 */	addi r4, r1, 0x10
/* 80706F38  38 A0 00 00 */	li r5, 0
/* 80706F3C  38 C0 FF FF */	li r6, -1
/* 80706F40  81 9C 05 E8 */	lwz r12, 0x5e8(r28)
/* 80706F44  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80706F48  7D 89 03 A6 */	mtctr r12
/* 80706F4C  4E 80 04 21 */	bctrl 
lbl_80706F50:
/* 80706F50  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80706F54  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80706F58:
/* 80706F58  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80706F5C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80706F60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80706F64  40 81 00 08 */	ble lbl_80706F6C
/* 80706F68  3B A0 00 01 */	li r29, 1
lbl_80706F6C:
/* 80706F6C  7F A3 EB 78 */	mr r3, r29
/* 80706F70  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80706F74  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80706F78  39 61 00 60 */	addi r11, r1, 0x60
/* 80706F7C  4B C5 B2 A9 */	bl _restgpr_28
/* 80706F80  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80706F84  7C 08 03 A6 */	mtlr r0
/* 80706F88  38 21 00 70 */	addi r1, r1, 0x70
/* 80706F8C  4E 80 00 20 */	blr 
