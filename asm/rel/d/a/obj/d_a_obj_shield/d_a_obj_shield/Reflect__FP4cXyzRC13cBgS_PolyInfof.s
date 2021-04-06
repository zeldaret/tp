lbl_80CD6A58:
/* 80CD6A58  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CD6A5C  7C 08 02 A6 */	mflr r0
/* 80CD6A60  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CD6A64  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80CD6A68  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80CD6A6C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80CD6A70  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80CD6A74  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80CD6A78  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80CD6A7C  7C 7F 1B 78 */	mr r31, r3
/* 80CD6A80  FF E0 08 90 */	fmr f31, f1
/* 80CD6A84  3C 60 80 CE */	lis r3, l_cyl_src@ha /* 0x80CD8274@ha */
/* 80CD6A88  3B C3 82 74 */	addi r30, r3, l_cyl_src@l /* 0x80CD8274@l */
/* 80CD6A8C  3C 60 80 CE */	lis r3, __vt__8cM3dGPla@ha /* 0x80CD8510@ha */
/* 80CD6A90  38 03 85 10 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CD8510@l */
/* 80CD6A94  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80CD6A98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD6A9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD6AA0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CD6AA4  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80CD6AA8  4B 39 DC 9D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CD6AAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CD6AB0  41 82 02 6C */	beq lbl_80CD6D1C
/* 80CD6AB4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CD6AB8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CD6ABC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CD6AC0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CD6AC4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CD6AC8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CD6ACC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80CD6AD0  4B 67 06 69 */	bl PSVECSquareMag
/* 80CD6AD4  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CD6AD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD6ADC  40 81 00 58 */	ble lbl_80CD6B34
/* 80CD6AE0  FC 00 08 34 */	frsqrte f0, f1
/* 80CD6AE4  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80CD6AE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD6AEC  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80CD6AF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD6AF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD6AF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD6AFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD6B00  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD6B04  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD6B08  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD6B0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD6B10  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD6B14  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD6B18  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD6B1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD6B20  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD6B24  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD6B28  FF C1 00 32 */	fmul f30, f1, f0
/* 80CD6B2C  FF C0 F0 18 */	frsp f30, f30
/* 80CD6B30  48 00 00 90 */	b lbl_80CD6BC0
lbl_80CD6B34:
/* 80CD6B34  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80CD6B38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD6B3C  40 80 00 10 */	bge lbl_80CD6B4C
/* 80CD6B40  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD6B44  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CD6B48  48 00 00 78 */	b lbl_80CD6BC0
lbl_80CD6B4C:
/* 80CD6B4C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CD6B50  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80CD6B54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD6B58  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD6B5C  7C 03 00 00 */	cmpw r3, r0
/* 80CD6B60  41 82 00 14 */	beq lbl_80CD6B74
/* 80CD6B64  40 80 00 40 */	bge lbl_80CD6BA4
/* 80CD6B68  2C 03 00 00 */	cmpwi r3, 0
/* 80CD6B6C  41 82 00 20 */	beq lbl_80CD6B8C
/* 80CD6B70  48 00 00 34 */	b lbl_80CD6BA4
lbl_80CD6B74:
/* 80CD6B74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD6B78  41 82 00 0C */	beq lbl_80CD6B84
/* 80CD6B7C  38 00 00 01 */	li r0, 1
/* 80CD6B80  48 00 00 28 */	b lbl_80CD6BA8
lbl_80CD6B84:
/* 80CD6B84  38 00 00 02 */	li r0, 2
/* 80CD6B88  48 00 00 20 */	b lbl_80CD6BA8
lbl_80CD6B8C:
/* 80CD6B8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD6B90  41 82 00 0C */	beq lbl_80CD6B9C
/* 80CD6B94  38 00 00 05 */	li r0, 5
/* 80CD6B98  48 00 00 10 */	b lbl_80CD6BA8
lbl_80CD6B9C:
/* 80CD6B9C  38 00 00 03 */	li r0, 3
/* 80CD6BA0  48 00 00 08 */	b lbl_80CD6BA8
lbl_80CD6BA4:
/* 80CD6BA4  38 00 00 04 */	li r0, 4
lbl_80CD6BA8:
/* 80CD6BA8  2C 00 00 01 */	cmpwi r0, 1
/* 80CD6BAC  40 82 00 10 */	bne lbl_80CD6BBC
/* 80CD6BB0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD6BB4  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CD6BB8  48 00 00 08 */	b lbl_80CD6BC0
lbl_80CD6BBC:
/* 80CD6BBC  FF C0 08 90 */	fmr f30, f1
lbl_80CD6BC0:
/* 80CD6BC0  7F E3 FB 78 */	mr r3, r31
/* 80CD6BC4  38 81 00 4C */	addi r4, r1, 0x4c
/* 80CD6BC8  38 A1 00 40 */	addi r5, r1, 0x40
/* 80CD6BCC  4B 67 06 FD */	bl C_VECReflect
/* 80CD6BD0  38 61 00 34 */	addi r3, r1, 0x34
/* 80CD6BD4  38 81 00 40 */	addi r4, r1, 0x40
/* 80CD6BD8  FC 20 F0 90 */	fmr f1, f30
/* 80CD6BDC  4B 58 FF A9 */	bl __ml__4cXyzCFf
/* 80CD6BE0  38 61 00 28 */	addi r3, r1, 0x28
/* 80CD6BE4  38 81 00 34 */	addi r4, r1, 0x34
/* 80CD6BE8  FC 20 F8 90 */	fmr f1, f31
/* 80CD6BEC  4B 58 FF 99 */	bl __ml__4cXyzCFf
/* 80CD6BF0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CD6BF4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80CD6BF8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CD6BFC  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80CD6C00  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CD6C04  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80CD6C08  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CD6C0C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CD6C10  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CD6C14  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CD6C18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD6C1C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CD6C20  38 61 00 10 */	addi r3, r1, 0x10
/* 80CD6C24  4B 67 05 15 */	bl PSVECSquareMag
/* 80CD6C28  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CD6C2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD6C30  40 81 00 58 */	ble lbl_80CD6C88
/* 80CD6C34  FC 00 08 34 */	frsqrte f0, f1
/* 80CD6C38  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80CD6C3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD6C40  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80CD6C44  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD6C48  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD6C4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD6C50  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD6C54  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD6C58  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD6C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD6C60  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD6C64  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD6C68  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD6C6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD6C70  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD6C74  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD6C78  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD6C7C  FC 21 00 32 */	fmul f1, f1, f0
/* 80CD6C80  FC 20 08 18 */	frsp f1, f1
/* 80CD6C84  48 00 00 88 */	b lbl_80CD6D0C
lbl_80CD6C88:
/* 80CD6C88  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80CD6C8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD6C90  40 80 00 10 */	bge lbl_80CD6CA0
/* 80CD6C94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD6C98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CD6C9C  48 00 00 70 */	b lbl_80CD6D0C
lbl_80CD6CA0:
/* 80CD6CA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CD6CA4  80 81 00 08 */	lwz r4, 8(r1)
/* 80CD6CA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD6CAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD6CB0  7C 03 00 00 */	cmpw r3, r0
/* 80CD6CB4  41 82 00 14 */	beq lbl_80CD6CC8
/* 80CD6CB8  40 80 00 40 */	bge lbl_80CD6CF8
/* 80CD6CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80CD6CC0  41 82 00 20 */	beq lbl_80CD6CE0
/* 80CD6CC4  48 00 00 34 */	b lbl_80CD6CF8
lbl_80CD6CC8:
/* 80CD6CC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD6CCC  41 82 00 0C */	beq lbl_80CD6CD8
/* 80CD6CD0  38 00 00 01 */	li r0, 1
/* 80CD6CD4  48 00 00 28 */	b lbl_80CD6CFC
lbl_80CD6CD8:
/* 80CD6CD8  38 00 00 02 */	li r0, 2
/* 80CD6CDC  48 00 00 20 */	b lbl_80CD6CFC
lbl_80CD6CE0:
/* 80CD6CE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD6CE4  41 82 00 0C */	beq lbl_80CD6CF0
/* 80CD6CE8  38 00 00 05 */	li r0, 5
/* 80CD6CEC  48 00 00 10 */	b lbl_80CD6CFC
lbl_80CD6CF0:
/* 80CD6CF0  38 00 00 03 */	li r0, 3
/* 80CD6CF4  48 00 00 08 */	b lbl_80CD6CFC
lbl_80CD6CF8:
/* 80CD6CF8  38 00 00 04 */	li r0, 4
lbl_80CD6CFC:
/* 80CD6CFC  2C 00 00 01 */	cmpwi r0, 1
/* 80CD6D00  40 82 00 0C */	bne lbl_80CD6D0C
/* 80CD6D04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD6D08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CD6D0C:
/* 80CD6D0C  3C 60 80 CE */	lis r3, __vt__8cM3dGPla@ha /* 0x80CD8510@ha */
/* 80CD6D10  38 03 85 10 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CD8510@l */
/* 80CD6D14  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80CD6D18  48 00 00 14 */	b lbl_80CD6D2C
lbl_80CD6D1C:
/* 80CD6D1C  3C 60 80 CE */	lis r3, __vt__8cM3dGPla@ha /* 0x80CD8510@ha */
/* 80CD6D20  38 03 85 10 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CD8510@l */
/* 80CD6D24  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80CD6D28  C0 3E 00 44 */	lfs f1, 0x44(r30)
lbl_80CD6D2C:
/* 80CD6D2C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80CD6D30  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80CD6D34  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80CD6D38  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80CD6D3C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80CD6D40  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80CD6D44  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CD6D48  7C 08 03 A6 */	mtlr r0
/* 80CD6D4C  38 21 00 90 */	addi r1, r1, 0x90
/* 80CD6D50  4E 80 00 20 */	blr 
