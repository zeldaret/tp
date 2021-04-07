lbl_8082DF44:
/* 8082DF44  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8082DF48  7C 08 02 A6 */	mflr r0
/* 8082DF4C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8082DF50  39 61 00 50 */	addi r11, r1, 0x50
/* 8082DF54  4B B3 42 89 */	bl _savegpr_29
/* 8082DF58  7C 7E 1B 78 */	mr r30, r3
/* 8082DF5C  3C 60 80 83 */	lis r3, lit_3778@ha /* 0x8082F208@ha */
/* 8082DF60  3B E3 F2 08 */	addi r31, r3, lit_3778@l /* 0x8082F208@l */
/* 8082DF64  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082DF68  83 A3 00 04 */	lwz r29, 4(r3)
/* 8082DF6C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8082DF70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8082DF74  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8082DF78  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8082DF7C  4B B1 85 35 */	bl PSMTXCopy
/* 8082DF80  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 8082DF84  2C 00 00 01 */	cmpwi r0, 1
/* 8082DF88  40 82 00 20 */	bne lbl_8082DFA8
/* 8082DF8C  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 8082DF90  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082DF94  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 8082DF98  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082DF9C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082DFA0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082DFA4  48 00 00 50 */	b lbl_8082DFF4
lbl_8082DFA8:
/* 8082DFA8  2C 00 00 03 */	cmpwi r0, 3
/* 8082DFAC  41 82 00 18 */	beq lbl_8082DFC4
/* 8082DFB0  80 1E 07 90 */	lwz r0, 0x790(r30)
/* 8082DFB4  2C 00 00 0B */	cmpwi r0, 0xb
/* 8082DFB8  41 82 00 0C */	beq lbl_8082DFC4
/* 8082DFBC  2C 00 00 0E */	cmpwi r0, 0xe
/* 8082DFC0  40 82 00 1C */	bne lbl_8082DFDC
lbl_8082DFC4:
/* 8082DFC4  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 8082DFC8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082DFCC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082DFD0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082DFD4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082DFD8  48 00 00 1C */	b lbl_8082DFF4
lbl_8082DFDC:
/* 8082DFDC  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 8082DFE0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082DFE4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8082DFE8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082DFEC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082DFF0  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_8082DFF4:
/* 8082DFF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8082DFF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8082DFFC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8082E000  38 BE 05 38 */	addi r5, r30, 0x538
/* 8082E004  4B B1 8D 69 */	bl PSMTXMultVec
/* 8082E008  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8082E00C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8082E010  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8082E014  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8082E018  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8082E01C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8082E020  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 8082E024  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 8082E028  EC 01 00 2A */	fadds f0, f1, f0
/* 8082E02C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8082E030  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 8082E034  2C 00 00 07 */	cmpwi r0, 7
/* 8082E038  40 82 00 98 */	bne lbl_8082E0D0
/* 8082E03C  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 8082E040  28 00 00 00 */	cmplwi r0, 0
/* 8082E044  41 82 00 8C */	beq lbl_8082E0D0
/* 8082E048  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8082E04C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082E050  80 63 00 00 */	lwz r3, 0(r3)
/* 8082E054  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8082E058  4B 7D E3 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 8082E05C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082E060  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8082E064  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8082E068  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 8082E06C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8082E070  38 61 00 14 */	addi r3, r1, 0x14
/* 8082E074  38 81 00 08 */	addi r4, r1, 8
/* 8082E078  4B A4 2E 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8082E07C  38 61 00 08 */	addi r3, r1, 8
/* 8082E080  80 9E 06 64 */	lwz r4, 0x664(r30)
/* 8082E084  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8082E088  7C 65 1B 78 */	mr r5, r3
/* 8082E08C  4B B1 90 05 */	bl PSVECAdd
/* 8082E090  C0 01 00 08 */	lfs f0, 8(r1)
/* 8082E094  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8082E098  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8082E09C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8082E0A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8082E0A4  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8082E0A8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8082E0AC  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8082E0B0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8082E0B4  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8082E0B8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8082E0BC  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8082E0C0  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 8082E0C4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8082E0C8  EC 01 00 2A */	fadds f0, f1, f0
/* 8082E0CC  D0 1E 05 54 */	stfs f0, 0x554(r30)
lbl_8082E0D0:
/* 8082E0D0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8082E0D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8082E0D8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8082E0DC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8082E0E0  4B B1 83 D1 */	bl PSMTXCopy
/* 8082E0E4  80 7E 07 80 */	lwz r3, 0x780(r30)
/* 8082E0E8  2C 03 00 01 */	cmpwi r3, 1
/* 8082E0EC  41 82 00 18 */	beq lbl_8082E104
/* 8082E0F0  2C 03 00 0B */	cmpwi r3, 0xb
/* 8082E0F4  41 82 00 10 */	beq lbl_8082E104
/* 8082E0F8  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8082E0FC  2C 00 00 03 */	cmpwi r0, 3
/* 8082E100  41 80 00 60 */	blt lbl_8082E160
lbl_8082E104:
/* 8082E104  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 8082E108  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082E10C  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 8082E110  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082E114  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082E118  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082E11C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8082E120  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8082E124  38 81 00 2C */	addi r4, r1, 0x2c
/* 8082E128  38 A1 00 20 */	addi r5, r1, 0x20
/* 8082E12C  4B B1 8C 41 */	bl PSMTXMultVec
/* 8082E130  38 7E 0B 2C */	addi r3, r30, 0xb2c
/* 8082E134  38 81 00 20 */	addi r4, r1, 0x20
/* 8082E138  4B A4 15 11 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8082E13C  38 7E 0B 2C */	addi r3, r30, 0xb2c
/* 8082E140  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 8082E144  4B A4 15 C5 */	bl SetR__8cM3dGSphFf
/* 8082E148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082E14C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082E150  38 63 23 3C */	addi r3, r3, 0x233c
/* 8082E154  38 9E 0A 08 */	addi r4, r30, 0xa08
/* 8082E158  4B A3 6A 51 */	bl Set__4cCcSFP8cCcD_Obj
/* 8082E15C  48 00 00 E0 */	b lbl_8082E23C
lbl_8082E160:
/* 8082E160  2C 03 00 03 */	cmpwi r3, 3
/* 8082E164  41 82 00 18 */	beq lbl_8082E17C
/* 8082E168  80 1E 07 90 */	lwz r0, 0x790(r30)
/* 8082E16C  2C 00 00 0B */	cmpwi r0, 0xb
/* 8082E170  41 82 00 0C */	beq lbl_8082E17C
/* 8082E174  2C 00 00 0E */	cmpwi r0, 0xe
/* 8082E178  40 82 00 60 */	bne lbl_8082E1D8
lbl_8082E17C:
/* 8082E17C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8082E180  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8082E184  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8082E188  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8082E18C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8082E190  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8082E194  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8082E198  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8082E19C  38 7E 0C 64 */	addi r3, r30, 0xc64
/* 8082E1A0  38 81 00 20 */	addi r4, r1, 0x20
/* 8082E1A4  4B A4 10 39 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8082E1A8  38 7E 0C 64 */	addi r3, r30, 0xc64
/* 8082E1AC  C0 3F 01 CC */	lfs f1, 0x1cc(r31)
/* 8082E1B0  4B A4 10 49 */	bl SetH__8cM3dGCylFf
/* 8082E1B4  38 7E 0C 64 */	addi r3, r30, 0xc64
/* 8082E1B8  C0 3F 01 E0 */	lfs f1, 0x1e0(r31)
/* 8082E1BC  4B A4 10 45 */	bl SetR__8cM3dGCylFf
/* 8082E1C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082E1C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082E1C8  38 63 23 3C */	addi r3, r3, 0x233c
/* 8082E1CC  38 9E 0B 40 */	addi r4, r30, 0xb40
/* 8082E1D0  4B A3 69 D9 */	bl Set__4cCcSFP8cCcD_Obj
/* 8082E1D4  48 00 00 68 */	b lbl_8082E23C
lbl_8082E1D8:
/* 8082E1D8  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8082E1DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082E1E0  C0 1F 01 E4 */	lfs f0, 0x1e4(r31)
/* 8082E1E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082E1E8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082E1EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082E1F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8082E1F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8082E1F8  38 81 00 2C */	addi r4, r1, 0x2c
/* 8082E1FC  38 A1 00 20 */	addi r5, r1, 0x20
/* 8082E200  4B B1 8B 6D */	bl PSMTXMultVec
/* 8082E204  38 7E 0C 64 */	addi r3, r30, 0xc64
/* 8082E208  38 81 00 20 */	addi r4, r1, 0x20
/* 8082E20C  4B A4 0F D1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8082E210  38 7E 0C 64 */	addi r3, r30, 0xc64
/* 8082E214  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8082E218  4B A4 0F E1 */	bl SetH__8cM3dGCylFf
/* 8082E21C  38 7E 0C 64 */	addi r3, r30, 0xc64
/* 8082E220  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8082E224  4B A4 0F DD */	bl SetR__8cM3dGCylFf
/* 8082E228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082E22C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082E230  38 63 23 3C */	addi r3, r3, 0x233c
/* 8082E234  38 9E 0B 40 */	addi r4, r30, 0xb40
/* 8082E238  4B A3 69 71 */	bl Set__4cCcSFP8cCcD_Obj
lbl_8082E23C:
/* 8082E23C  80 1E 07 80 */	lwz r0, 0x780(r30)
/* 8082E240  2C 00 00 01 */	cmpwi r0, 1
/* 8082E244  41 82 00 A0 */	beq lbl_8082E2E4
/* 8082E248  2C 00 00 03 */	cmpwi r0, 3
/* 8082E24C  40 82 00 08 */	bne lbl_8082E254
/* 8082E250  48 00 00 94 */	b lbl_8082E2E4
lbl_8082E254:
/* 8082E254  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8082E258  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082E25C  C0 1F 01 E4 */	lfs f0, 0x1e4(r31)
/* 8082E260  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082E264  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082E268  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082E26C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8082E270  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8082E274  38 81 00 2C */	addi r4, r1, 0x2c
/* 8082E278  38 A1 00 20 */	addi r5, r1, 0x20
/* 8082E27C  4B B1 8A F1 */	bl PSMTXMultVec
/* 8082E280  38 7E 0D A0 */	addi r3, r30, 0xda0
/* 8082E284  38 81 00 20 */	addi r4, r1, 0x20
/* 8082E288  4B A4 0F 55 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8082E28C  38 7E 0D A0 */	addi r3, r30, 0xda0
/* 8082E290  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8082E294  4B A4 0F 65 */	bl SetH__8cM3dGCylFf
/* 8082E298  88 1E 07 AF */	lbz r0, 0x7af(r30)
/* 8082E29C  28 00 00 00 */	cmplwi r0, 0
/* 8082E2A0  41 82 00 14 */	beq lbl_8082E2B4
/* 8082E2A4  38 7E 0D A0 */	addi r3, r30, 0xda0
/* 8082E2A8  C0 3F 01 80 */	lfs f1, 0x180(r31)
/* 8082E2AC  4B A4 0F 55 */	bl SetR__8cM3dGCylFf
/* 8082E2B0  48 00 00 10 */	b lbl_8082E2C0
lbl_8082E2B4:
/* 8082E2B4  38 7E 0D A0 */	addi r3, r30, 0xda0
/* 8082E2B8  C0 3F 01 E8 */	lfs f1, 0x1e8(r31)
/* 8082E2BC  4B A4 0F 45 */	bl SetR__8cM3dGCylFf
lbl_8082E2C0:
/* 8082E2C0  C0 3E 05 30 */	lfs f1, 0x530(r30)
/* 8082E2C4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082E2C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8082E2CC  41 82 00 18 */	beq lbl_8082E2E4
/* 8082E2D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082E2D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082E2D8  38 63 23 3C */	addi r3, r3, 0x233c
/* 8082E2DC  38 9E 0C 7C */	addi r4, r30, 0xc7c
/* 8082E2E0  4B A3 68 C9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_8082E2E4:
/* 8082E2E4  39 61 00 50 */	addi r11, r1, 0x50
/* 8082E2E8  4B B3 3F 41 */	bl _restgpr_29
/* 8082E2EC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8082E2F0  7C 08 03 A6 */	mtlr r0
/* 8082E2F4  38 21 00 50 */	addi r1, r1, 0x50
/* 8082E2F8  4E 80 00 20 */	blr 
