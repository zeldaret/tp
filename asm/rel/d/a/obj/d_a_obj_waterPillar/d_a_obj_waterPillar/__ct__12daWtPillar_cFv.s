lbl_80D2E054:
/* 80D2E054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2E058  7C 08 02 A6 */	mflr r0
/* 80D2E05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2E060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2E064  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2E068  7C 7F 1B 78 */	mr r31, r3
/* 80D2E06C  4B 2E AA F8 */	b __ct__10fopAc_ac_cFv
/* 80D2E070  3C 60 80 D3 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80D2E074  38 03 EA F8 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80D2E078  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80D2E07C  93 FF 05 74 */	stw r31, 0x574(r31)
/* 80D2E080  38 00 00 00 */	li r0, 0
/* 80D2E084  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80D2E088  3C 60 80 D3 */	lis r3, __vt__12daWtPillar_c@ha
/* 80D2E08C  38 63 EA 64 */	addi r3, r3, __vt__12daWtPillar_c@l
/* 80D2E090  90 7F 05 80 */	stw r3, 0x580(r31)
/* 80D2E094  38 03 00 08 */	addi r0, r3, 8
/* 80D2E098  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80D2E09C  3B DF 05 90 */	addi r30, r31, 0x590
/* 80D2E0A0  3C 60 80 D3 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D2E0A4  38 03 EA EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D2E0A8  90 1F 05 90 */	stw r0, 0x590(r31)
/* 80D2E0AC  7F C3 F3 78 */	mr r3, r30
/* 80D2E0B0  38 80 00 00 */	li r4, 0
/* 80D2E0B4  4B 5F A3 48 */	b init__12J3DFrameCtrlFs
/* 80D2E0B8  38 00 00 00 */	li r0, 0
/* 80D2E0BC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D2E0C0  3B DF 05 A8 */	addi r30, r31, 0x5a8
/* 80D2E0C4  3C 60 80 D3 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80D2E0C8  38 03 EA EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80D2E0CC  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80D2E0D0  7F C3 F3 78 */	mr r3, r30
/* 80D2E0D4  38 80 00 00 */	li r4, 0
/* 80D2E0D8  4B 5F A3 24 */	b init__12J3DFrameCtrlFs
/* 80D2E0DC  38 00 00 00 */	li r0, 0
/* 80D2E0E0  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80D2E0E4  3B DF 05 C4 */	addi r30, r31, 0x5c4
/* 80D2E0E8  7F C3 F3 78 */	mr r3, r30
/* 80D2E0EC  4B 34 7F B4 */	b __ct__9dBgS_AcchFv
/* 80D2E0F0  3C 60 80 D3 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80D2E0F4  38 63 EA C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80D2E0F8  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80D2E0FC  38 03 00 0C */	addi r0, r3, 0xc
/* 80D2E100  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D2E104  38 03 00 18 */	addi r0, r3, 0x18
/* 80D2E108  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D2E10C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D2E110  4B 34 AD 58 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D2E114  38 7F 07 9C */	addi r3, r31, 0x79c
/* 80D2E118  4B 34 7D 94 */	b __ct__12dBgS_AcchCirFv
/* 80D2E11C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80D2E120  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80D2E124  90 1F 07 F4 */	stw r0, 0x7f4(r31)
/* 80D2E128  38 7F 07 F8 */	addi r3, r31, 0x7f8
/* 80D2E12C  4B 35 56 34 */	b __ct__10dCcD_GSttsFv
/* 80D2E130  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80D2E134  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80D2E138  90 7F 07 F4 */	stw r3, 0x7f4(r31)
/* 80D2E13C  38 03 00 20 */	addi r0, r3, 0x20
/* 80D2E140  90 1F 07 F8 */	stw r0, 0x7f8(r31)
/* 80D2E144  3B DF 08 18 */	addi r30, r31, 0x818
/* 80D2E148  7F C3 F3 78 */	mr r3, r30
/* 80D2E14C  4B 35 58 DC */	b __ct__12dCcD_GObjInfFv
/* 80D2E150  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D2E154  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D2E158  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D2E15C  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha
/* 80D2E160  38 03 EA BC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D2E164  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80D2E168  38 7E 01 24 */	addi r3, r30, 0x124
/* 80D2E16C  4B 54 0E 1C */	b __ct__8cM3dGCpsFv
/* 80D2E170  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80D2E174  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 80D2E178  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D2E17C  38 03 00 58 */	addi r0, r3, 0x58
/* 80D2E180  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 80D2E184  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 80D2E188  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 80D2E18C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D2E190  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D2E194  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D2E198  38 03 00 84 */	addi r0, r3, 0x84
/* 80D2E19C  90 1E 01 3C */	stw r0, 0x13c(r30)
/* 80D2E1A0  3B DF 09 5C */	addi r30, r31, 0x95c
/* 80D2E1A4  7F C3 F3 78 */	mr r3, r30
/* 80D2E1A8  4B 35 58 80 */	b __ct__12dCcD_GObjInfFv
/* 80D2E1AC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80D2E1B0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80D2E1B4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D2E1B8  3C 60 80 D3 */	lis r3, __vt__8cM3dGAab@ha
/* 80D2E1BC  38 03 EA BC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80D2E1C0  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80D2E1C4  3C 60 80 D3 */	lis r3, __vt__8cM3dGCyl@ha
/* 80D2E1C8  38 03 EA B0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80D2E1CC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D2E1D0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80D2E1D4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80D2E1D8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D2E1DC  38 03 00 58 */	addi r0, r3, 0x58
/* 80D2E1E0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D2E1E4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80D2E1E8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80D2E1EC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D2E1F0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D2E1F4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D2E1F8  38 03 00 84 */	addi r0, r3, 0x84
/* 80D2E1FC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80D2E200  7F E3 FB 78 */	mr r3, r31
/* 80D2E204  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2E208  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2E20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2E210  7C 08 03 A6 */	mtlr r0
/* 80D2E214  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2E218  4E 80 00 20 */	blr 
