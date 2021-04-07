lbl_806E486C:
/* 806E486C  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 806E4870  7C 08 02 A6 */	mflr r0
/* 806E4874  90 01 01 34 */	stw r0, 0x134(r1)
/* 806E4878  39 61 01 30 */	addi r11, r1, 0x130
/* 806E487C  4B C7 D9 59 */	bl _savegpr_27
/* 806E4880  7C 7F 1B 78 */	mr r31, r3
/* 806E4884  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E4888  3B A3 59 20 */	addi r29, r3, lit_3791@l /* 0x806E5920@l */
/* 806E488C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 806E4890  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 806E4894  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 806E4898  C0 1D 00 F4 */	lfs f0, 0xf4(r29)
/* 806E489C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806E48A0  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 806E48A4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806E48A8  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 806E48AC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 806E48B0  4B 99 33 B9 */	bl __ct__11dBgS_LinChkFv
/* 806E48B4  38 61 00 70 */	addi r3, r1, 0x70
/* 806E48B8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806E48BC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 806E48C0  38 C1 00 58 */	addi r6, r1, 0x58
/* 806E48C4  4B B8 C4 FD */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806E48C8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 806E48CC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806E48D0  38 A1 00 70 */	addi r5, r1, 0x70
/* 806E48D4  38 C0 00 00 */	li r6, 0
/* 806E48D8  4B 99 34 8D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806E48DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E48E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E48E4  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 806E48E8  7F 83 E3 78 */	mr r3, r28
/* 806E48EC  38 81 00 A4 */	addi r4, r1, 0xa4
/* 806E48F0  4B 98 FA C5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806E48F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E48F8  41 82 01 A8 */	beq lbl_806E4AA0
/* 806E48FC  38 00 00 01 */	li r0, 1
/* 806E4900  98 1F 05 AF */	stb r0, 0x5af(r31)
/* 806E4904  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha /* 0x806E5BAC@ha */
/* 806E4908  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x806E5BAC@l */
/* 806E490C  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 806E4910  7F 83 E3 78 */	mr r3, r28
/* 806E4914  38 81 00 B8 */	addi r4, r1, 0xb8
/* 806E4918  38 A1 00 90 */	addi r5, r1, 0x90
/* 806E491C  4B 98 FE 29 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806E4920  C0 3D 00 04 */	lfs f1, 4(r29)
/* 806E4924  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 806E4928  C0 1D 00 08 */	lfs f0, 8(r29)
/* 806E492C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806E4930  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 806E4934  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806E4938  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 806E493C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 806E4940  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 806E4944  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 806E4948  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E494C  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 806E4950  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E4954  38 61 00 40 */	addi r3, r1, 0x40
/* 806E4958  38 81 00 34 */	addi r4, r1, 0x34
/* 806E495C  4B C6 2A 41 */	bl PSVECSquareDistance
/* 806E4960  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806E4964  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E4968  40 81 00 58 */	ble lbl_806E49C0
/* 806E496C  FC 00 08 34 */	frsqrte f0, f1
/* 806E4970  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 806E4974  FC 44 00 32 */	fmul f2, f4, f0
/* 806E4978  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 806E497C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E4980  FC 01 00 32 */	fmul f0, f1, f0
/* 806E4984  FC 03 00 28 */	fsub f0, f3, f0
/* 806E4988  FC 02 00 32 */	fmul f0, f2, f0
/* 806E498C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E4990  FC 00 00 32 */	fmul f0, f0, f0
/* 806E4994  FC 01 00 32 */	fmul f0, f1, f0
/* 806E4998  FC 03 00 28 */	fsub f0, f3, f0
/* 806E499C  FC 02 00 32 */	fmul f0, f2, f0
/* 806E49A0  FC 44 00 32 */	fmul f2, f4, f0
/* 806E49A4  FC 00 00 32 */	fmul f0, f0, f0
/* 806E49A8  FC 01 00 32 */	fmul f0, f1, f0
/* 806E49AC  FC 03 00 28 */	fsub f0, f3, f0
/* 806E49B0  FC 02 00 32 */	fmul f0, f2, f0
/* 806E49B4  FC 41 00 32 */	fmul f2, f1, f0
/* 806E49B8  FC 40 10 18 */	frsp f2, f2
/* 806E49BC  48 00 00 90 */	b lbl_806E4A4C
lbl_806E49C0:
/* 806E49C0  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 806E49C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E49C8  40 80 00 10 */	bge lbl_806E49D8
/* 806E49CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E49D0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E49D4  48 00 00 78 */	b lbl_806E4A4C
lbl_806E49D8:
/* 806E49D8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806E49DC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E49E0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E49E4  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E49E8  7C 03 00 00 */	cmpw r3, r0
/* 806E49EC  41 82 00 14 */	beq lbl_806E4A00
/* 806E49F0  40 80 00 40 */	bge lbl_806E4A30
/* 806E49F4  2C 03 00 00 */	cmpwi r3, 0
/* 806E49F8  41 82 00 20 */	beq lbl_806E4A18
/* 806E49FC  48 00 00 34 */	b lbl_806E4A30
lbl_806E4A00:
/* 806E4A00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E4A04  41 82 00 0C */	beq lbl_806E4A10
/* 806E4A08  38 00 00 01 */	li r0, 1
/* 806E4A0C  48 00 00 28 */	b lbl_806E4A34
lbl_806E4A10:
/* 806E4A10  38 00 00 02 */	li r0, 2
/* 806E4A14  48 00 00 20 */	b lbl_806E4A34
lbl_806E4A18:
/* 806E4A18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E4A1C  41 82 00 0C */	beq lbl_806E4A28
/* 806E4A20  38 00 00 05 */	li r0, 5
/* 806E4A24  48 00 00 10 */	b lbl_806E4A34
lbl_806E4A28:
/* 806E4A28  38 00 00 03 */	li r0, 3
/* 806E4A2C  48 00 00 08 */	b lbl_806E4A34
lbl_806E4A30:
/* 806E4A30  38 00 00 04 */	li r0, 4
lbl_806E4A34:
/* 806E4A34  2C 00 00 01 */	cmpwi r0, 1
/* 806E4A38  40 82 00 10 */	bne lbl_806E4A48
/* 806E4A3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E4A40  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E4A44  48 00 00 08 */	b lbl_806E4A4C
lbl_806E4A48:
/* 806E4A48  FC 40 08 90 */	fmr f2, f1
lbl_806E4A4C:
/* 806E4A4C  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 806E4A50  4B B8 2C 25 */	bl cM_atan2s__Fff
/* 806E4A54  7C 03 00 D0 */	neg r0, r3
/* 806E4A58  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 806E4A5C  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 806E4A60  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 806E4A64  4B B8 2C 11 */	bl cM_atan2s__Fff
/* 806E4A68  B0 7F 05 CC */	sth r3, 0x5cc(r31)
/* 806E4A6C  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 806E4A70  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806E4A74  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 806E4A78  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806E4A7C  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 806E4A80  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806E4A84  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha /* 0x806E5BAC@ha */
/* 806E4A88  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x806E5BAC@l */
/* 806E4A8C  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 806E4A90  38 61 00 A4 */	addi r3, r1, 0xa4
/* 806E4A94  38 80 FF FF */	li r4, -1
/* 806E4A98  4B 99 32 45 */	bl __dt__11dBgS_LinChkFv
/* 806E4A9C  48 00 02 18 */	b lbl_806E4CB4
lbl_806E4AA0:
/* 806E4AA0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806E4AA4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806E4AA8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806E4AAC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806E4AB0  3B 60 00 00 */	li r27, 0
/* 806E4AB4  3B C0 00 00 */	li r30, 0
lbl_806E4AB8:
/* 806E4AB8  38 61 00 70 */	addi r3, r1, 0x70
/* 806E4ABC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806E4AC0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806E4AC4  7C 00 F2 14 */	add r0, r0, r30
/* 806E4AC8  7C 05 07 34 */	extsh r5, r0
/* 806E4ACC  38 C1 00 64 */	addi r6, r1, 0x64
/* 806E4AD0  4B B8 C2 F1 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806E4AD4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 806E4AD8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806E4ADC  38 A1 00 70 */	addi r5, r1, 0x70
/* 806E4AE0  38 C0 00 00 */	li r6, 0
/* 806E4AE4  4B 99 32 81 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806E4AE8  7F 83 E3 78 */	mr r3, r28
/* 806E4AEC  38 81 00 A4 */	addi r4, r1, 0xa4
/* 806E4AF0  4B 98 F8 C5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806E4AF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E4AF8  41 82 01 A0 */	beq lbl_806E4C98
/* 806E4AFC  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha /* 0x806E5BAC@ha */
/* 806E4B00  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x806E5BAC@l */
/* 806E4B04  90 01 00 8C */	stw r0, 0x8c(r1)
/* 806E4B08  7F 83 E3 78 */	mr r3, r28
/* 806E4B0C  38 81 00 B8 */	addi r4, r1, 0xb8
/* 806E4B10  38 A1 00 7C */	addi r5, r1, 0x7c
/* 806E4B14  4B 98 FC 31 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806E4B18  C0 3D 00 04 */	lfs f1, 4(r29)
/* 806E4B1C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 806E4B20  C0 1D 00 08 */	lfs f0, 8(r29)
/* 806E4B24  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806E4B28  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 806E4B2C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 806E4B30  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806E4B34  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806E4B38  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806E4B3C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 806E4B40  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806E4B44  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 806E4B48  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E4B4C  38 61 00 1C */	addi r3, r1, 0x1c
/* 806E4B50  38 81 00 10 */	addi r4, r1, 0x10
/* 806E4B54  4B C6 28 49 */	bl PSVECSquareDistance
/* 806E4B58  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806E4B5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E4B60  40 81 00 58 */	ble lbl_806E4BB8
/* 806E4B64  FC 00 08 34 */	frsqrte f0, f1
/* 806E4B68  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 806E4B6C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E4B70  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 806E4B74  FC 00 00 32 */	fmul f0, f0, f0
/* 806E4B78  FC 01 00 32 */	fmul f0, f1, f0
/* 806E4B7C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E4B80  FC 02 00 32 */	fmul f0, f2, f0
/* 806E4B84  FC 44 00 32 */	fmul f2, f4, f0
/* 806E4B88  FC 00 00 32 */	fmul f0, f0, f0
/* 806E4B8C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E4B90  FC 03 00 28 */	fsub f0, f3, f0
/* 806E4B94  FC 02 00 32 */	fmul f0, f2, f0
/* 806E4B98  FC 44 00 32 */	fmul f2, f4, f0
/* 806E4B9C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E4BA0  FC 01 00 32 */	fmul f0, f1, f0
/* 806E4BA4  FC 03 00 28 */	fsub f0, f3, f0
/* 806E4BA8  FC 02 00 32 */	fmul f0, f2, f0
/* 806E4BAC  FC 41 00 32 */	fmul f2, f1, f0
/* 806E4BB0  FC 40 10 18 */	frsp f2, f2
/* 806E4BB4  48 00 00 90 */	b lbl_806E4C44
lbl_806E4BB8:
/* 806E4BB8  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 806E4BBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E4BC0  40 80 00 10 */	bge lbl_806E4BD0
/* 806E4BC4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E4BC8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E4BCC  48 00 00 78 */	b lbl_806E4C44
lbl_806E4BD0:
/* 806E4BD0  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E4BD4  80 81 00 08 */	lwz r4, 8(r1)
/* 806E4BD8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E4BDC  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E4BE0  7C 03 00 00 */	cmpw r3, r0
/* 806E4BE4  41 82 00 14 */	beq lbl_806E4BF8
/* 806E4BE8  40 80 00 40 */	bge lbl_806E4C28
/* 806E4BEC  2C 03 00 00 */	cmpwi r3, 0
/* 806E4BF0  41 82 00 20 */	beq lbl_806E4C10
/* 806E4BF4  48 00 00 34 */	b lbl_806E4C28
lbl_806E4BF8:
/* 806E4BF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E4BFC  41 82 00 0C */	beq lbl_806E4C08
/* 806E4C00  38 00 00 01 */	li r0, 1
/* 806E4C04  48 00 00 28 */	b lbl_806E4C2C
lbl_806E4C08:
/* 806E4C08  38 00 00 02 */	li r0, 2
/* 806E4C0C  48 00 00 20 */	b lbl_806E4C2C
lbl_806E4C10:
/* 806E4C10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E4C14  41 82 00 0C */	beq lbl_806E4C20
/* 806E4C18  38 00 00 05 */	li r0, 5
/* 806E4C1C  48 00 00 10 */	b lbl_806E4C2C
lbl_806E4C20:
/* 806E4C20  38 00 00 03 */	li r0, 3
/* 806E4C24  48 00 00 08 */	b lbl_806E4C2C
lbl_806E4C28:
/* 806E4C28  38 00 00 04 */	li r0, 4
lbl_806E4C2C:
/* 806E4C2C  2C 00 00 01 */	cmpwi r0, 1
/* 806E4C30  40 82 00 10 */	bne lbl_806E4C40
/* 806E4C34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806E4C38  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806E4C3C  48 00 00 08 */	b lbl_806E4C44
lbl_806E4C40:
/* 806E4C40  FC 40 08 90 */	fmr f2, f1
lbl_806E4C44:
/* 806E4C44  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 806E4C48  4B B8 2A 2D */	bl cM_atan2s__Fff
/* 806E4C4C  7C 03 00 D0 */	neg r0, r3
/* 806E4C50  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 806E4C54  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 806E4C58  C0 41 00 80 */	lfs f2, 0x80(r1)
/* 806E4C5C  4B B8 2A 19 */	bl cM_atan2s__Fff
/* 806E4C60  B0 7F 05 CC */	sth r3, 0x5cc(r31)
/* 806E4C64  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 806E4C68  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806E4C6C  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 806E4C70  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806E4C74  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 806E4C78  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806E4C7C  3C 60 80 6E */	lis r3, __vt__8cM3dGPla@ha /* 0x806E5BAC@ha */
/* 806E4C80  38 03 5B AC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x806E5BAC@l */
/* 806E4C84  90 01 00 8C */	stw r0, 0x8c(r1)
/* 806E4C88  38 61 00 A4 */	addi r3, r1, 0xa4
/* 806E4C8C  38 80 FF FF */	li r4, -1
/* 806E4C90  4B 99 30 4D */	bl __dt__11dBgS_LinChkFv
/* 806E4C94  48 00 00 20 */	b lbl_806E4CB4
lbl_806E4C98:
/* 806E4C98  3B 7B 00 01 */	addi r27, r27, 1
/* 806E4C9C  2C 1B 00 04 */	cmpwi r27, 4
/* 806E4CA0  3B DE 40 00 */	addi r30, r30, 0x4000
/* 806E4CA4  41 80 FE 14 */	blt lbl_806E4AB8
/* 806E4CA8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 806E4CAC  38 80 FF FF */	li r4, -1
/* 806E4CB0  4B 99 30 2D */	bl __dt__11dBgS_LinChkFv
lbl_806E4CB4:
/* 806E4CB4  39 61 01 30 */	addi r11, r1, 0x130
/* 806E4CB8  4B C7 D5 69 */	bl _restgpr_27
/* 806E4CBC  80 01 01 34 */	lwz r0, 0x134(r1)
/* 806E4CC0  7C 08 03 A6 */	mtlr r0
/* 806E4CC4  38 21 01 30 */	addi r1, r1, 0x130
/* 806E4CC8  4E 80 00 20 */	blr 
