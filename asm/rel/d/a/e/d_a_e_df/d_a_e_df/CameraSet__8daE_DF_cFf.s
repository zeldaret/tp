lbl_806A7980:
/* 806A7980  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 806A7984  7C 08 02 A6 */	mflr r0
/* 806A7988  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 806A798C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806A7990  4B CB A8 3D */	bl _savegpr_25
/* 806A7994  7C 79 1B 78 */	mr r25, r3
/* 806A7998  3C 60 80 6B */	lis r3, lit_3916@ha /* 0x806A9F30@ha */
/* 806A799C  3B E3 9F 30 */	addi r31, r3, lit_3916@l /* 0x806A9F30@l */
/* 806A79A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A79A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A79A8  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 806A79AC  7C 00 07 74 */	extsb r0, r0
/* 806A79B0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806A79B4  7C 63 02 14 */	add r3, r3, r0
/* 806A79B8  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 806A79BC  C0 99 04 D0 */	lfs f4, 0x4d0(r25)
/* 806A79C0  D0 81 00 44 */	stfs f4, 0x44(r1)
/* 806A79C4  C0 79 04 D4 */	lfs f3, 0x4d4(r25)
/* 806A79C8  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 806A79CC  C0 59 04 D8 */	lfs f2, 0x4d8(r25)
/* 806A79D0  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 806A79D4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806A79D8  EC 03 00 2A */	fadds f0, f3, f0
/* 806A79DC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806A79E0  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 806A79E4  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 806A79E8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 806A79EC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 806A79F0  EC 03 00 2A */	fadds f0, f3, f0
/* 806A79F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806A79F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A79FC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806A7A00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806A7A04  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806A7A08  38 61 00 50 */	addi r3, r1, 0x50
/* 806A7A0C  4B 9D 02 5D */	bl __ct__11dBgS_LinChkFv
/* 806A7A10  3B 60 00 00 */	li r27, 0
/* 806A7A14  3B 40 00 00 */	li r26, 0
/* 806A7A18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A7A1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A7A20  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 806A7A24  48 00 00 EC */	b lbl_806A7B10
lbl_806A7A28:
/* 806A7A28  38 61 00 38 */	addi r3, r1, 0x38
/* 806A7A2C  38 81 00 2C */	addi r4, r1, 0x2c
/* 806A7A30  7F 7C 07 34 */	extsh r28, r27
/* 806A7A34  7F 85 E3 78 */	mr r5, r28
/* 806A7A38  38 C1 00 20 */	addi r6, r1, 0x20
/* 806A7A3C  4B BC 93 85 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806A7A40  38 61 00 50 */	addi r3, r1, 0x50
/* 806A7A44  38 81 00 2C */	addi r4, r1, 0x2c
/* 806A7A48  38 A1 00 38 */	addi r5, r1, 0x38
/* 806A7A4C  38 C0 00 00 */	li r6, 0
/* 806A7A50  4B 9D 03 15 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806A7A54  7F A3 EB 78 */	mr r3, r29
/* 806A7A58  38 81 00 50 */	addi r4, r1, 0x50
/* 806A7A5C  4B 9C C9 59 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806A7A60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A7A64  40 82 00 A0 */	bne lbl_806A7B04
/* 806A7A68  38 61 00 38 */	addi r3, r1, 0x38
/* 806A7A6C  38 81 00 44 */	addi r4, r1, 0x44
/* 806A7A70  7F 85 E3 78 */	mr r5, r28
/* 806A7A74  38 C1 00 20 */	addi r6, r1, 0x20
/* 806A7A78  4B BC 93 49 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806A7A7C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 806A7A80  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806A7A84  EC 21 00 2A */	fadds f1, f1, f0
/* 806A7A88  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 806A7A8C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806A7A90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A7A94  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806A7A98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A7A9C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806A7AA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A7AA4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806A7AA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 806A7AAC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806A7AB0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806A7AB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806A7AB8  38 7E 02 48 */	addi r3, r30, 0x248
/* 806A7ABC  38 81 00 14 */	addi r4, r1, 0x14
/* 806A7AC0  38 A1 00 08 */	addi r5, r1, 8
/* 806A7AC4  C0 39 08 34 */	lfs f1, 0x834(r25)
/* 806A7AC8  38 C0 00 00 */	li r6, 0
/* 806A7ACC  4B AD 90 15 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 806A7AD0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806A7AD4  D0 19 08 28 */	stfs f0, 0x828(r25)
/* 806A7AD8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806A7ADC  D0 19 08 2C */	stfs f0, 0x82c(r25)
/* 806A7AE0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806A7AE4  D0 19 08 30 */	stfs f0, 0x830(r25)
/* 806A7AE8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806A7AEC  D0 19 08 1C */	stfs f0, 0x81c(r25)
/* 806A7AF0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806A7AF4  D0 19 08 20 */	stfs f0, 0x820(r25)
/* 806A7AF8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806A7AFC  D0 19 08 24 */	stfs f0, 0x824(r25)
/* 806A7B00  48 00 00 1C */	b lbl_806A7B1C
lbl_806A7B04:
/* 806A7B04  3F 7B 00 01 */	addis r27, r27, 1
/* 806A7B08  3B 7B 80 00 */	addi r27, r27, -32768
/* 806A7B0C  3B 5A 00 01 */	addi r26, r26, 1
lbl_806A7B10:
/* 806A7B10  7F 40 07 34 */	extsh r0, r26
/* 806A7B14  2C 00 00 04 */	cmpwi r0, 4
/* 806A7B18  41 80 FF 10 */	blt lbl_806A7A28
lbl_806A7B1C:
/* 806A7B1C  38 61 00 50 */	addi r3, r1, 0x50
/* 806A7B20  38 80 FF FF */	li r4, -1
/* 806A7B24  4B 9D 01 B9 */	bl __dt__11dBgS_LinChkFv
/* 806A7B28  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806A7B2C  4B CB A6 ED */	bl _restgpr_25
/* 806A7B30  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 806A7B34  7C 08 03 A6 */	mtlr r0
/* 806A7B38  38 21 00 E0 */	addi r1, r1, 0xe0
/* 806A7B3C  4E 80 00 20 */	blr 
