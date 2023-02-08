lbl_80813EA4:
/* 80813EA4  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80813EA8  7C 08 02 A6 */	mflr r0
/* 80813EAC  90 01 01 14 */	stw r0, 0x114(r1)
/* 80813EB0  39 61 01 10 */	addi r11, r1, 0x110
/* 80813EB4  4B B4 E3 25 */	bl _savegpr_28
/* 80813EB8  7C 7C 1B 78 */	mr r28, r3
/* 80813EBC  7C 9D 23 78 */	mr r29, r4
/* 80813EC0  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 80813EC4  3B E3 59 94 */	addi r31, r3, lit_3925@l /* 0x80815994@l */
/* 80813EC8  38 61 00 8C */	addi r3, r1, 0x8c
/* 80813ECC  4B 86 3D 9D */	bl __ct__11dBgS_LinChkFv
/* 80813ED0  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80813ED4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80813ED8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80813EDC  40 82 00 18 */	bne lbl_80813EF4
/* 80813EE0  38 61 00 8C */	addi r3, r1, 0x8c
/* 80813EE4  38 80 FF FF */	li r4, -1
/* 80813EE8  4B 86 3D F5 */	bl __dt__11dBgS_LinChkFv
/* 80813EEC  38 60 00 00 */	li r3, 0
/* 80813EF0  48 00 04 98 */	b lbl_80814388
lbl_80813EF4:
/* 80813EF4  88 1C 06 A0 */	lbz r0, 0x6a0(r28)
/* 80813EF8  28 00 00 01 */	cmplwi r0, 1
/* 80813EFC  41 82 00 24 */	beq lbl_80813F20
/* 80813F00  80 1C 07 8C */	lwz r0, 0x78c(r28)
/* 80813F04  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80813F08  41 82 04 70 */	beq lbl_80814378
/* 80813F0C  38 61 00 8C */	addi r3, r1, 0x8c
/* 80813F10  38 80 FF FF */	li r4, -1
/* 80813F14  4B 86 3D C9 */	bl __dt__11dBgS_LinChkFv
/* 80813F18  38 60 00 01 */	li r3, 1
/* 80813F1C  48 00 04 6C */	b lbl_80814388
lbl_80813F20:
/* 80813F20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80813F24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80813F28  A8 9C 06 68 */	lha r4, 0x668(r28)
/* 80813F2C  4B 7F 84 19 */	bl mDoMtx_XrotS__FPA4_fs
/* 80813F30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80813F34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80813F38  A8 9C 06 6C */	lha r4, 0x66c(r28)
/* 80813F3C  4B 7F 85 91 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80813F40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80813F44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80813F48  7F A4 EB 78 */	mr r4, r29
/* 80813F4C  4B 7F 84 E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80813F50  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80813F54  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80813F58  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80813F5C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80813F60  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80813F64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80813F68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80813F6C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80813F70  38 A1 00 48 */	addi r5, r1, 0x48
/* 80813F74  4B B3 2D F9 */	bl PSMTXMultVec
/* 80813F78  38 61 00 48 */	addi r3, r1, 0x48
/* 80813F7C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80813F80  7C 65 1B 78 */	mr r5, r3
/* 80813F84  4B B3 31 0D */	bl PSVECAdd
/* 80813F88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80813F8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80813F90  A8 9C 06 68 */	lha r4, 0x668(r28)
/* 80813F94  4B 7F 83 B1 */	bl mDoMtx_XrotS__FPA4_fs
/* 80813F98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80813F9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80813FA0  A8 9C 06 6C */	lha r4, 0x66c(r28)
/* 80813FA4  4B 7F 85 29 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80813FA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80813FAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80813FB0  7F A4 EB 78 */	mr r4, r29
/* 80813FB4  4B 7F 84 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 80813FB8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80813FBC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80813FC0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80813FC4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80813FC8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80813FCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80813FD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80813FD4  38 81 00 6C */	addi r4, r1, 0x6c
/* 80813FD8  38 A1 00 60 */	addi r5, r1, 0x60
/* 80813FDC  4B B3 2D 91 */	bl PSMTXMultVec
/* 80813FE0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80813FE4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80813FE8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80813FEC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80813FF0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80813FF4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80813FF8  38 61 00 30 */	addi r3, r1, 0x30
/* 80813FFC  38 81 00 48 */	addi r4, r1, 0x48
/* 80814000  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80814004  4B A5 2A E1 */	bl __pl__4cXyzCFRC3Vec
/* 80814008  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8081400C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80814010  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80814014  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80814018  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8081401C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80814020  38 61 00 8C */	addi r3, r1, 0x8c
/* 80814024  38 81 00 48 */	addi r4, r1, 0x48
/* 80814028  38 A1 00 54 */	addi r5, r1, 0x54
/* 8081402C  38 C0 00 00 */	li r6, 0
/* 80814030  4B 86 3D 35 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80814034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80814038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081403C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80814040  7F C3 F3 78 */	mr r3, r30
/* 80814044  38 81 00 8C */	addi r4, r1, 0x8c
/* 80814048  4B 86 03 6D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8081404C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80814050  41 82 00 18 */	beq lbl_80814068
/* 80814054  38 61 00 8C */	addi r3, r1, 0x8c
/* 80814058  38 80 FF FF */	li r4, -1
/* 8081405C  4B 86 3C 81 */	bl __dt__11dBgS_LinChkFv
/* 80814060  38 60 00 01 */	li r3, 1
/* 80814064  48 00 03 24 */	b lbl_80814388
lbl_80814068:
/* 80814068  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8081406C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80814070  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80814074  40 81 00 18 */	ble lbl_8081408C
/* 80814078  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8081407C  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80814080  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80814084  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80814088  48 00 00 14 */	b lbl_8081409C
lbl_8081408C:
/* 8081408C  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80814090  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80814094  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80814098  D0 21 00 74 */	stfs f1, 0x74(r1)
lbl_8081409C:
/* 8081409C  38 61 00 24 */	addi r3, r1, 0x24
/* 808140A0  38 81 00 48 */	addi r4, r1, 0x48
/* 808140A4  38 A1 00 6C */	addi r5, r1, 0x6c
/* 808140A8  4B A5 2A 3D */	bl __pl__4cXyzCFRC3Vec
/* 808140AC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 808140B0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 808140B4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 808140B8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 808140BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 808140C0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 808140C4  38 61 00 8C */	addi r3, r1, 0x8c
/* 808140C8  38 81 00 48 */	addi r4, r1, 0x48
/* 808140CC  38 A1 00 54 */	addi r5, r1, 0x54
/* 808140D0  38 C0 00 00 */	li r6, 0
/* 808140D4  4B 86 3C 91 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 808140D8  7F C3 F3 78 */	mr r3, r30
/* 808140DC  38 81 00 8C */	addi r4, r1, 0x8c
/* 808140E0  4B 86 02 D5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 808140E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 808140E8  41 82 00 18 */	beq lbl_80814100
/* 808140EC  38 61 00 8C */	addi r3, r1, 0x8c
/* 808140F0  38 80 FF FF */	li r4, -1
/* 808140F4  4B 86 3B E9 */	bl __dt__11dBgS_LinChkFv
/* 808140F8  38 60 00 01 */	li r3, 1
/* 808140FC  48 00 02 8C */	b lbl_80814388
lbl_80814100:
/* 80814100  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80814104  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80814108  A8 9C 06 68 */	lha r4, 0x668(r28)
/* 8081410C  4B 7F 82 39 */	bl mDoMtx_XrotS__FPA4_fs
/* 80814110  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80814114  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80814118  A8 9C 06 6C */	lha r4, 0x66c(r28)
/* 8081411C  4B 7F 83 B1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80814120  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80814124  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80814128  7F A4 EB 78 */	mr r4, r29
/* 8081412C  4B 7F 83 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 80814130  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80814134  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80814138  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8081413C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80814140  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80814144  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80814148  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8081414C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80814150  38 81 00 6C */	addi r4, r1, 0x6c
/* 80814154  38 A1 00 60 */	addi r5, r1, 0x60
/* 80814158  4B B3 2C 15 */	bl PSMTXMultVec
/* 8081415C  38 61 00 18 */	addi r3, r1, 0x18
/* 80814160  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80814164  38 A1 00 60 */	addi r5, r1, 0x60
/* 80814168  4B A5 29 7D */	bl __pl__4cXyzCFRC3Vec
/* 8081416C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80814170  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80814174  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80814178  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8081417C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80814180  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80814184  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80814188  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8081418C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80814190  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80814194  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80814198  38 61 00 54 */	addi r3, r1, 0x54
/* 8081419C  38 81 00 48 */	addi r4, r1, 0x48
/* 808141A0  A8 BC 06 6C */	lha r5, 0x66c(r28)
/* 808141A4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 808141A8  4B A5 CC 19 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 808141AC  38 61 00 8C */	addi r3, r1, 0x8c
/* 808141B0  38 81 00 48 */	addi r4, r1, 0x48
/* 808141B4  38 A1 00 54 */	addi r5, r1, 0x54
/* 808141B8  38 C0 00 00 */	li r6, 0
/* 808141BC  4B 86 3B A9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 808141C0  7F C3 F3 78 */	mr r3, r30
/* 808141C4  38 81 00 8C */	addi r4, r1, 0x8c
/* 808141C8  4B 86 01 ED */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 808141CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 808141D0  40 82 00 18 */	bne lbl_808141E8
/* 808141D4  38 61 00 8C */	addi r3, r1, 0x8c
/* 808141D8  38 80 FF FF */	li r4, -1
/* 808141DC  4B 86 3B 01 */	bl __dt__11dBgS_LinChkFv
/* 808141E0  38 60 00 01 */	li r3, 1
/* 808141E4  48 00 01 A4 */	b lbl_80814388
lbl_808141E8:
/* 808141E8  3C 60 80 81 */	lis r3, __vt__8cM3dGPla@ha /* 0x80815D04@ha */
/* 808141EC  38 03 5D 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80815D04@l */
/* 808141F0  90 01 00 88 */	stw r0, 0x88(r1)
/* 808141F4  7F C3 F3 78 */	mr r3, r30
/* 808141F8  38 81 00 A0 */	addi r4, r1, 0xa0
/* 808141FC  38 A1 00 78 */	addi r5, r1, 0x78
/* 80814200  4B 86 05 45 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80814204  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80814208  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8081420C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80814210  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80814214  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80814218  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8081421C  38 61 00 0C */	addi r3, r1, 0xc
/* 80814220  4B B3 2F 19 */	bl PSVECSquareMag
/* 80814224  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80814228  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081422C  40 81 00 58 */	ble lbl_80814284
/* 80814230  FC 00 08 34 */	frsqrte f0, f1
/* 80814234  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80814238  FC 44 00 32 */	fmul f2, f4, f0
/* 8081423C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80814240  FC 00 00 32 */	fmul f0, f0, f0
/* 80814244  FC 01 00 32 */	fmul f0, f1, f0
/* 80814248  FC 03 00 28 */	fsub f0, f3, f0
/* 8081424C  FC 02 00 32 */	fmul f0, f2, f0
/* 80814250  FC 44 00 32 */	fmul f2, f4, f0
/* 80814254  FC 00 00 32 */	fmul f0, f0, f0
/* 80814258  FC 01 00 32 */	fmul f0, f1, f0
/* 8081425C  FC 03 00 28 */	fsub f0, f3, f0
/* 80814260  FC 02 00 32 */	fmul f0, f2, f0
/* 80814264  FC 44 00 32 */	fmul f2, f4, f0
/* 80814268  FC 00 00 32 */	fmul f0, f0, f0
/* 8081426C  FC 01 00 32 */	fmul f0, f1, f0
/* 80814270  FC 03 00 28 */	fsub f0, f3, f0
/* 80814274  FC 02 00 32 */	fmul f0, f2, f0
/* 80814278  FC 21 00 32 */	fmul f1, f1, f0
/* 8081427C  FC 20 08 18 */	frsp f1, f1
/* 80814280  48 00 00 88 */	b lbl_80814308
lbl_80814284:
/* 80814284  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80814288  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081428C  40 80 00 10 */	bge lbl_8081429C
/* 80814290  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80814294  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80814298  48 00 00 70 */	b lbl_80814308
lbl_8081429C:
/* 8081429C  D0 21 00 08 */	stfs f1, 8(r1)
/* 808142A0  80 81 00 08 */	lwz r4, 8(r1)
/* 808142A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 808142A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 808142AC  7C 03 00 00 */	cmpw r3, r0
/* 808142B0  41 82 00 14 */	beq lbl_808142C4
/* 808142B4  40 80 00 40 */	bge lbl_808142F4
/* 808142B8  2C 03 00 00 */	cmpwi r3, 0
/* 808142BC  41 82 00 20 */	beq lbl_808142DC
/* 808142C0  48 00 00 34 */	b lbl_808142F4
lbl_808142C4:
/* 808142C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 808142C8  41 82 00 0C */	beq lbl_808142D4
/* 808142CC  38 00 00 01 */	li r0, 1
/* 808142D0  48 00 00 28 */	b lbl_808142F8
lbl_808142D4:
/* 808142D4  38 00 00 02 */	li r0, 2
/* 808142D8  48 00 00 20 */	b lbl_808142F8
lbl_808142DC:
/* 808142DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 808142E0  41 82 00 0C */	beq lbl_808142EC
/* 808142E4  38 00 00 05 */	li r0, 5
/* 808142E8  48 00 00 10 */	b lbl_808142F8
lbl_808142EC:
/* 808142EC  38 00 00 03 */	li r0, 3
/* 808142F0  48 00 00 08 */	b lbl_808142F8
lbl_808142F4:
/* 808142F4  38 00 00 04 */	li r0, 4
lbl_808142F8:
/* 808142F8  2C 00 00 01 */	cmpwi r0, 1
/* 808142FC  40 82 00 0C */	bne lbl_80814308
/* 80814300  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80814304  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80814308:
/* 80814308  C0 41 00 7C */	lfs f2, 0x7c(r1)
/* 8081430C  4B A5 33 69 */	bl cM_atan2s__Fff
/* 80814310  38 03 80 00 */	addi r0, r3, -32768
/* 80814314  7C 03 07 34 */	extsh r3, r0
/* 80814318  38 63 40 00 */	addi r3, r3, 0x4000
/* 8081431C  4B B5 0D B5 */	bl abs
/* 80814320  2C 03 15 55 */	cmpwi r3, 0x1555
/* 80814324  41 81 00 48 */	bgt lbl_8081436C
/* 80814328  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 8081432C  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 80814330  4B A5 33 45 */	bl cM_atan2s__Fff
/* 80814334  3C 63 00 01 */	addis r3, r3, 1
/* 80814338  38 03 80 00 */	addi r0, r3, -32768
/* 8081433C  7C 03 07 34 */	extsh r3, r0
/* 80814340  A8 1C 06 6C */	lha r0, 0x66c(r28)
/* 80814344  7C 00 18 00 */	cmpw r0, r3
/* 80814348  41 82 00 24 */	beq lbl_8081436C
/* 8081434C  3C 60 80 81 */	lis r3, __vt__8cM3dGPla@ha /* 0x80815D04@ha */
/* 80814350  38 03 5D 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80815D04@l */
/* 80814354  90 01 00 88 */	stw r0, 0x88(r1)
/* 80814358  38 61 00 8C */	addi r3, r1, 0x8c
/* 8081435C  38 80 FF FF */	li r4, -1
/* 80814360  4B 86 39 7D */	bl __dt__11dBgS_LinChkFv
/* 80814364  38 60 00 01 */	li r3, 1
/* 80814368  48 00 00 20 */	b lbl_80814388
lbl_8081436C:
/* 8081436C  3C 60 80 81 */	lis r3, __vt__8cM3dGPla@ha /* 0x80815D04@ha */
/* 80814370  38 03 5D 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80815D04@l */
/* 80814374  90 01 00 88 */	stw r0, 0x88(r1)
lbl_80814378:
/* 80814378  38 61 00 8C */	addi r3, r1, 0x8c
/* 8081437C  38 80 FF FF */	li r4, -1
/* 80814380  4B 86 39 5D */	bl __dt__11dBgS_LinChkFv
/* 80814384  38 60 00 00 */	li r3, 0
lbl_80814388:
/* 80814388  39 61 01 10 */	addi r11, r1, 0x110
/* 8081438C  4B B4 DE 99 */	bl _restgpr_28
/* 80814390  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80814394  7C 08 03 A6 */	mtlr r0
/* 80814398  38 21 01 10 */	addi r1, r1, 0x110
/* 8081439C  4E 80 00 20 */	blr 
