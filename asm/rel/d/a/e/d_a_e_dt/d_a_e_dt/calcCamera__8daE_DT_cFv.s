lbl_806B3B08:
/* 806B3B08  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 806B3B0C  7C 08 02 A6 */	mflr r0
/* 806B3B10  90 01 01 44 */	stw r0, 0x144(r1)
/* 806B3B14  39 61 01 40 */	addi r11, r1, 0x140
/* 806B3B18  4B CA E6 C1 */	bl _savegpr_28
/* 806B3B1C  7C 7F 1B 78 */	mr r31, r3
/* 806B3B20  3C 60 80 6B */	lis r3, lit_3792@ha /* 0x806B5CD4@ha */
/* 806B3B24  3B C3 5C D4 */	addi r30, r3, lit_3792@l /* 0x806B5CD4@l */
/* 806B3B28  38 61 00 B4 */	addi r3, r1, 0xb4
/* 806B3B2C  4B 9C 41 3D */	bl __ct__11dBgS_LinChkFv
/* 806B3B30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B3B34  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B3B38  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806B3B3C  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 806B3B40  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806B3B44  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 806B3B48  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806B3B4C  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 806B3B50  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B3B54  88 1C 5D B0 */	lbz r0, 0x5db0(r28)
/* 806B3B58  7C 00 07 74 */	extsb r0, r0
/* 806B3B5C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806B3B60  7C 7C 02 14 */	add r3, r28, r0
/* 806B3B64  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 806B3B68  88 1F 07 72 */	lbz r0, 0x772(r31)
/* 806B3B6C  2C 00 00 04 */	cmpwi r0, 4
/* 806B3B70  41 82 03 00 */	beq lbl_806B3E70
/* 806B3B74  40 80 00 1C */	bge lbl_806B3B90
/* 806B3B78  2C 00 00 00 */	cmpwi r0, 0
/* 806B3B7C  41 82 05 38 */	beq lbl_806B40B4
/* 806B3B80  41 80 05 34 */	blt lbl_806B40B4
/* 806B3B84  2C 00 00 03 */	cmpwi r0, 3
/* 806B3B88  40 80 02 D4 */	bge lbl_806B3E5C
/* 806B3B8C  48 00 00 14 */	b lbl_806B3BA0
lbl_806B3B90:
/* 806B3B90  2C 00 00 06 */	cmpwi r0, 6
/* 806B3B94  41 82 05 10 */	beq lbl_806B40A4
/* 806B3B98  40 80 05 1C */	bge lbl_806B40B4
/* 806B3B9C  48 00 03 E8 */	b lbl_806B3F84
lbl_806B3BA0:
/* 806B3BA0  7F E3 FB 78 */	mr r3, r31
/* 806B3BA4  4B 96 6B 6D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B3BA8  7C 64 1B 78 */	mr r4, r3
/* 806B3BAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3BB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3BB4  4B 95 88 29 */	bl mDoMtx_YrotS__FPA4_fs
/* 806B3BB8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B3BBC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806B3BC0  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 806B3BC4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806B3BC8  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 806B3BCC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806B3BD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3BD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3BD8  38 81 00 60 */	addi r4, r1, 0x60
/* 806B3BDC  38 A1 00 54 */	addi r5, r1, 0x54
/* 806B3BE0  4B C9 31 8D */	bl PSMTXMultVec
/* 806B3BE4  38 61 00 54 */	addi r3, r1, 0x54
/* 806B3BE8  38 81 00 78 */	addi r4, r1, 0x78
/* 806B3BEC  7C 65 1B 78 */	mr r5, r3
/* 806B3BF0  4B C9 34 A1 */	bl PSVECAdd
/* 806B3BF4  38 61 00 B4 */	addi r3, r1, 0xb4
/* 806B3BF8  38 9F 05 38 */	addi r4, r31, 0x538
/* 806B3BFC  38 A1 00 54 */	addi r5, r1, 0x54
/* 806B3C00  7F E6 FB 78 */	mr r6, r31
/* 806B3C04  4B 9C 41 61 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806B3C08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B3C0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B3C10  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806B3C14  38 81 00 B4 */	addi r4, r1, 0xb4
/* 806B3C18  4B 9C 07 9D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806B3C1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B3C20  41 82 00 78 */	beq lbl_806B3C98
/* 806B3C24  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806B3C28  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 806B3C2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 806B3C30  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806B3C34  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806B3C38  EC 00 00 72 */	fmuls f0, f0, f1
/* 806B3C3C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806B3C40  7F E3 FB 78 */	mr r3, r31
/* 806B3C44  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806B3C48  4B 96 6A C9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B3C4C  7C 64 1B 78 */	mr r4, r3
/* 806B3C50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3C54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3C58  4B 95 87 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 806B3C5C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B3C60  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806B3C64  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 806B3C68  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806B3C6C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 806B3C70  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806B3C74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3C78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3C7C  38 81 00 60 */	addi r4, r1, 0x60
/* 806B3C80  38 A1 00 54 */	addi r5, r1, 0x54
/* 806B3C84  4B C9 30 E9 */	bl PSMTXMultVec
/* 806B3C88  38 61 00 54 */	addi r3, r1, 0x54
/* 806B3C8C  38 81 00 78 */	addi r4, r1, 0x78
/* 806B3C90  7C 65 1B 78 */	mr r5, r3
/* 806B3C94  4B C9 33 FD */	bl PSVECAdd
lbl_806B3C98:
/* 806B3C98  88 1F 07 72 */	lbz r0, 0x772(r31)
/* 806B3C9C  28 00 00 01 */	cmplwi r0, 1
/* 806B3CA0  40 82 00 80 */	bne lbl_806B3D20
/* 806B3CA4  38 7D 02 48 */	addi r3, r29, 0x248
/* 806B3CA8  4B AA D8 29 */	bl Stop__9dCamera_cFv
/* 806B3CAC  3C 60 80 6B */	lis r3, l_HIO@ha /* 0x806B62AC@ha */
/* 806B3CB0  38 63 62 AC */	addi r3, r3, l_HIO@l /* 0x806B62AC@l */
/* 806B3CB4  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806B3CB8  FC 00 00 1E */	fctiwz f0, f0
/* 806B3CBC  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 806B3CC0  80 01 01 2C */	lwz r0, 0x12c(r1)
/* 806B3CC4  90 1F 07 64 */	stw r0, 0x764(r31)
/* 806B3CC8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 806B3CCC  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 806B3CD0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806B3CD4  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 806B3CD8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 806B3CDC  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 806B3CE0  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806B3CE4  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 806B3CE8  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806B3CEC  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 806B3CF0  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806B3CF4  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 806B3CF8  38 00 00 02 */	li r0, 2
/* 806B3CFC  98 1F 07 72 */	stb r0, 0x772(r31)
/* 806B3D00  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 806B3D04  80 03 05 88 */	lwz r0, 0x588(r3)
/* 806B3D08  64 00 80 00 */	oris r0, r0, 0x8000
/* 806B3D0C  90 03 05 88 */	stw r0, 0x588(r3)
/* 806B3D10  38 61 00 B4 */	addi r3, r1, 0xb4
/* 806B3D14  38 80 FF FF */	li r4, -1
/* 806B3D18  4B 9C 3F C5 */	bl __dt__11dBgS_LinChkFv
/* 806B3D1C  48 00 03 A4 */	b lbl_806B40C0
lbl_806B3D20:
/* 806B3D20  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 806B3D24  38 81 00 54 */	addi r4, r1, 0x54
/* 806B3D28  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 806B3D2C  4B BB CA 81 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B3D30  38 7F 06 94 */	addi r3, r31, 0x694
/* 806B3D34  38 9F 05 38 */	addi r4, r31, 0x538
/* 806B3D38  C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 806B3D3C  4B BB CA 71 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B3D40  80 1F 07 64 */	lwz r0, 0x764(r31)
/* 806B3D44  2C 00 00 00 */	cmpwi r0, 0
/* 806B3D48  41 82 00 68 */	beq lbl_806B3DB0
/* 806B3D4C  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 806B3D50  38 9F 06 94 */	addi r4, r31, 0x694
/* 806B3D54  4B BB CE B1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806B3D58  7C 64 07 34 */	extsh r4, r3
/* 806B3D5C  38 61 00 08 */	addi r3, r1, 8
/* 806B3D60  4B BB D2 39 */	bl __ct__7cSAngleFs
/* 806B3D64  A8 01 00 08 */	lha r0, 8(r1)
/* 806B3D68  B0 1D 02 D4 */	sth r0, 0x2d4(r29)
/* 806B3D6C  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 806B3D70  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806B3D74  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 806B3D78  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806B3D7C  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 806B3D80  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806B3D84  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 806B3D88  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806B3D8C  C0 1F 06 A4 */	lfs f0, 0x6a4(r31)
/* 806B3D90  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806B3D94  C0 1F 06 A8 */	lfs f0, 0x6a8(r31)
/* 806B3D98  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806B3D9C  38 7D 02 48 */	addi r3, r29, 0x248
/* 806B3DA0  38 81 00 48 */	addi r4, r1, 0x48
/* 806B3DA4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 806B3DA8  4B AC CD 01 */	bl Set__9dCamera_cF4cXyz4cXyz
/* 806B3DAC  48 00 03 08 */	b lbl_806B40B4
lbl_806B3DB0:
/* 806B3DB0  7F E3 FB 78 */	mr r3, r31
/* 806B3DB4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 806B3DB8  4B 96 69 59 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B3DBC  7C 64 1B 78 */	mr r4, r3
/* 806B3DC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3DC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3DC8  4B 95 86 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 806B3DCC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B3DD0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806B3DD4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 806B3DD8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806B3DDC  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 806B3DE0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806B3DE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3DE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3DEC  38 81 00 60 */	addi r4, r1, 0x60
/* 806B3DF0  38 BF 06 94 */	addi r5, r31, 0x694
/* 806B3DF4  4B C9 2F 79 */	bl PSMTXMultVec
/* 806B3DF8  38 7F 06 94 */	addi r3, r31, 0x694
/* 806B3DFC  38 81 00 78 */	addi r4, r1, 0x78
/* 806B3E00  7C 65 1B 78 */	mr r5, r3
/* 806B3E04  4B C9 32 8D */	bl PSVECAdd
/* 806B3E08  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 806B3E0C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806B3E10  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 806B3E14  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806B3E18  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 806B3E1C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806B3E20  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 806B3E24  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806B3E28  C0 1F 06 A4 */	lfs f0, 0x6a4(r31)
/* 806B3E2C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806B3E30  C0 1F 06 A8 */	lfs f0, 0x6a8(r31)
/* 806B3E34  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806B3E38  38 7D 02 48 */	addi r3, r29, 0x248
/* 806B3E3C  38 81 00 30 */	addi r4, r1, 0x30
/* 806B3E40  38 A1 00 24 */	addi r5, r1, 0x24
/* 806B3E44  4B AC CD D5 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 806B3E48  38 7D 02 48 */	addi r3, r29, 0x248
/* 806B3E4C  4B AA D6 61 */	bl Start__9dCamera_cFv
/* 806B3E50  38 00 00 00 */	li r0, 0
/* 806B3E54  98 1F 07 72 */	stb r0, 0x772(r31)
/* 806B3E58  48 00 02 5C */	b lbl_806B40B4
lbl_806B3E5C:
/* 806B3E5C  38 7D 02 48 */	addi r3, r29, 0x248
/* 806B3E60  4B AA D6 71 */	bl Stop__9dCamera_cFv
/* 806B3E64  38 00 00 04 */	li r0, 4
/* 806B3E68  98 1F 07 72 */	stb r0, 0x772(r31)
/* 806B3E6C  48 00 02 48 */	b lbl_806B40B4
lbl_806B3E70:
/* 806B3E70  38 00 00 00 */	li r0, 0
/* 806B3E74  B0 1F 07 3A */	sth r0, 0x73a(r31)
/* 806B3E78  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B3E7C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B3E80  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 806B3E84  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 806B3E88  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806B3E8C  38 61 00 90 */	addi r3, r1, 0x90
/* 806B3E90  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806B3E94  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 806B3E98  38 C1 00 84 */	addi r6, r1, 0x84
/* 806B3E9C  4B BB CF 25 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806B3EA0  38 61 00 90 */	addi r3, r1, 0x90
/* 806B3EA4  38 81 00 78 */	addi r4, r1, 0x78
/* 806B3EA8  4B BB CD 5D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806B3EAC  7C 7C 07 34 */	extsh r28, r3
/* 806B3EB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3EB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3EB8  7F 84 E3 78 */	mr r4, r28
/* 806B3EBC  4B 95 85 21 */	bl mDoMtx_YrotS__FPA4_fs
/* 806B3EC0  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 806B3EC4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806B3EC8  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 806B3ECC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806B3ED0  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 806B3ED4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806B3ED8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3EDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3EE0  38 81 00 60 */	addi r4, r1, 0x60
/* 806B3EE4  38 A1 00 9C */	addi r5, r1, 0x9c
/* 806B3EE8  4B C9 2E 85 */	bl PSMTXMultVec
/* 806B3EEC  38 61 00 9C */	addi r3, r1, 0x9c
/* 806B3EF0  38 81 00 78 */	addi r4, r1, 0x78
/* 806B3EF4  7C 65 1B 78 */	mr r5, r3
/* 806B3EF8  4B C9 31 99 */	bl PSVECAdd
/* 806B3EFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3F00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3F04  7F 84 E3 78 */	mr r4, r28
/* 806B3F08  4B 95 84 D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 806B3F0C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B3F10  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806B3F14  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806B3F18  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 806B3F1C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806B3F20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3F24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3F28  38 81 00 60 */	addi r4, r1, 0x60
/* 806B3F2C  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 806B3F30  4B C9 2E 3D */	bl PSMTXMultVec
/* 806B3F34  38 61 00 A8 */	addi r3, r1, 0xa8
/* 806B3F38  38 81 00 90 */	addi r4, r1, 0x90
/* 806B3F3C  7C 65 1B 78 */	mr r5, r3
/* 806B3F40  4B C9 31 51 */	bl PSVECAdd
/* 806B3F44  38 61 00 B4 */	addi r3, r1, 0xb4
/* 806B3F48  38 81 00 A8 */	addi r4, r1, 0xa8
/* 806B3F4C  38 A1 00 9C */	addi r5, r1, 0x9c
/* 806B3F50  7F E6 FB 78 */	mr r6, r31
/* 806B3F54  4B 9C 3E 11 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806B3F58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B3F5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B3F60  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806B3F64  38 81 00 B4 */	addi r4, r1, 0xb4
/* 806B3F68  4B 9C 04 4D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806B3F6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B3F70  41 82 00 0C */	beq lbl_806B3F7C
/* 806B3F74  38 00 80 00 */	li r0, -32768
/* 806B3F78  B0 1F 07 3A */	sth r0, 0x73a(r31)
lbl_806B3F7C:
/* 806B3F7C  38 00 00 05 */	li r0, 5
/* 806B3F80  98 1F 07 72 */	stb r0, 0x772(r31)
lbl_806B3F84:
/* 806B3F84  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B3F88  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B3F8C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 806B3F90  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 806B3F94  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806B3F98  38 61 00 90 */	addi r3, r1, 0x90
/* 806B3F9C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806B3FA0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 806B3FA4  38 C1 00 84 */	addi r6, r1, 0x84
/* 806B3FA8  4B BB CE 19 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806B3FAC  38 61 00 90 */	addi r3, r1, 0x90
/* 806B3FB0  38 81 00 78 */	addi r4, r1, 0x78
/* 806B3FB4  4B BB CC 51 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806B3FB8  A8 1F 07 3A */	lha r0, 0x73a(r31)
/* 806B3FBC  7C 00 1A 14 */	add r0, r0, r3
/* 806B3FC0  7C 1C 07 34 */	extsh r28, r0
/* 806B3FC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3FC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3FCC  7F 84 E3 78 */	mr r4, r28
/* 806B3FD0  4B 95 84 0D */	bl mDoMtx_YrotS__FPA4_fs
/* 806B3FD4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 806B3FD8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806B3FDC  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 806B3FE0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806B3FE4  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 806B3FE8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806B3FEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B3FF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B3FF4  38 81 00 60 */	addi r4, r1, 0x60
/* 806B3FF8  38 A1 00 54 */	addi r5, r1, 0x54
/* 806B3FFC  4B C9 2D 71 */	bl PSMTXMultVec
/* 806B4000  38 61 00 54 */	addi r3, r1, 0x54
/* 806B4004  38 81 00 78 */	addi r4, r1, 0x78
/* 806B4008  7C 65 1B 78 */	mr r5, r3
/* 806B400C  4B C9 30 85 */	bl PSVECAdd
/* 806B4010  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B4014  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B4018  7F 84 E3 78 */	mr r4, r28
/* 806B401C  4B 95 83 C1 */	bl mDoMtx_YrotS__FPA4_fs
/* 806B4020  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B4024  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806B4028  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806B402C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 806B4030  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806B4034  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B4038  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B403C  38 81 00 60 */	addi r4, r1, 0x60
/* 806B4040  38 A1 00 6C */	addi r5, r1, 0x6c
/* 806B4044  4B C9 2D 29 */	bl PSMTXMultVec
/* 806B4048  38 61 00 6C */	addi r3, r1, 0x6c
/* 806B404C  38 81 00 90 */	addi r4, r1, 0x90
/* 806B4050  7C 65 1B 78 */	mr r5, r3
/* 806B4054  4B C9 30 3D */	bl PSVECAdd
/* 806B4058  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 806B405C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806B4060  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 806B4064  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806B4068  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 806B406C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806B4070  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 806B4074  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B4078  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806B407C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B4080  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 806B4084  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806B4088  38 7D 02 48 */	addi r3, r29, 0x248
/* 806B408C  38 81 00 18 */	addi r4, r1, 0x18
/* 806B4090  38 A1 00 0C */	addi r5, r1, 0xc
/* 806B4094  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 806B4098  38 C0 00 00 */	li r6, 0
/* 806B409C  4B AC CA 45 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 806B40A0  48 00 00 14 */	b lbl_806B40B4
lbl_806B40A4:
/* 806B40A4  38 7D 02 48 */	addi r3, r29, 0x248
/* 806B40A8  4B AA D4 05 */	bl Start__9dCamera_cFv
/* 806B40AC  38 00 00 00 */	li r0, 0
/* 806B40B0  98 1F 07 72 */	stb r0, 0x772(r31)
lbl_806B40B4:
/* 806B40B4  38 61 00 B4 */	addi r3, r1, 0xb4
/* 806B40B8  38 80 FF FF */	li r4, -1
/* 806B40BC  4B 9C 3C 21 */	bl __dt__11dBgS_LinChkFv
lbl_806B40C0:
/* 806B40C0  39 61 01 40 */	addi r11, r1, 0x140
/* 806B40C4  4B CA E1 61 */	bl _restgpr_28
/* 806B40C8  80 01 01 44 */	lwz r0, 0x144(r1)
/* 806B40CC  7C 08 03 A6 */	mtlr r0
/* 806B40D0  38 21 01 40 */	addi r1, r1, 0x140
/* 806B40D4  4E 80 00 20 */	blr 
