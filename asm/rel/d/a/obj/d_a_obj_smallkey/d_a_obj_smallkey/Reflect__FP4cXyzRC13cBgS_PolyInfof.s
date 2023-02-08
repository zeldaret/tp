lbl_80CD9B40:
/* 80CD9B40  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CD9B44  7C 08 02 A6 */	mflr r0
/* 80CD9B48  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CD9B4C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80CD9B50  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80CD9B54  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80CD9B58  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80CD9B5C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80CD9B60  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80CD9B64  7C 7F 1B 78 */	mr r31, r3
/* 80CD9B68  FF E0 08 90 */	fmr f31, f1
/* 80CD9B6C  3C 60 80 CE */	lis r3, l_cyl_src@ha /* 0x80CDB7F4@ha */
/* 80CD9B70  3B C3 B7 F4 */	addi r30, r3, l_cyl_src@l /* 0x80CDB7F4@l */
/* 80CD9B74  3C 60 80 CE */	lis r3, __vt__8cM3dGPla@ha /* 0x80CDBAA0@ha */
/* 80CD9B78  38 03 BA A0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CDBAA0@l */
/* 80CD9B7C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80CD9B80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD9B84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD9B88  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CD9B8C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80CD9B90  4B 39 AB B5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80CD9B94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CD9B98  41 82 02 6C */	beq lbl_80CD9E04
/* 80CD9B9C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CD9BA0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CD9BA4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CD9BA8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CD9BAC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CD9BB0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CD9BB4  38 61 00 1C */	addi r3, r1, 0x1c
/* 80CD9BB8  4B 66 D5 81 */	bl PSVECSquareMag
/* 80CD9BBC  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CD9BC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD9BC4  40 81 00 58 */	ble lbl_80CD9C1C
/* 80CD9BC8  FC 00 08 34 */	frsqrte f0, f1
/* 80CD9BCC  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80CD9BD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9BD4  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80CD9BD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9BDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9BE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9BE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9BE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9BEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9BF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9BF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9BF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9BFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9C00  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9C04  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9C08  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9C0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9C10  FF C1 00 32 */	fmul f30, f1, f0
/* 80CD9C14  FF C0 F0 18 */	frsp f30, f30
/* 80CD9C18  48 00 00 90 */	b lbl_80CD9CA8
lbl_80CD9C1C:
/* 80CD9C1C  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80CD9C20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD9C24  40 80 00 10 */	bge lbl_80CD9C34
/* 80CD9C28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD9C2C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CD9C30  48 00 00 78 */	b lbl_80CD9CA8
lbl_80CD9C34:
/* 80CD9C34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CD9C38  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80CD9C3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD9C40  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD9C44  7C 03 00 00 */	cmpw r3, r0
/* 80CD9C48  41 82 00 14 */	beq lbl_80CD9C5C
/* 80CD9C4C  40 80 00 40 */	bge lbl_80CD9C8C
/* 80CD9C50  2C 03 00 00 */	cmpwi r3, 0
/* 80CD9C54  41 82 00 20 */	beq lbl_80CD9C74
/* 80CD9C58  48 00 00 34 */	b lbl_80CD9C8C
lbl_80CD9C5C:
/* 80CD9C5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD9C60  41 82 00 0C */	beq lbl_80CD9C6C
/* 80CD9C64  38 00 00 01 */	li r0, 1
/* 80CD9C68  48 00 00 28 */	b lbl_80CD9C90
lbl_80CD9C6C:
/* 80CD9C6C  38 00 00 02 */	li r0, 2
/* 80CD9C70  48 00 00 20 */	b lbl_80CD9C90
lbl_80CD9C74:
/* 80CD9C74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD9C78  41 82 00 0C */	beq lbl_80CD9C84
/* 80CD9C7C  38 00 00 05 */	li r0, 5
/* 80CD9C80  48 00 00 10 */	b lbl_80CD9C90
lbl_80CD9C84:
/* 80CD9C84  38 00 00 03 */	li r0, 3
/* 80CD9C88  48 00 00 08 */	b lbl_80CD9C90
lbl_80CD9C8C:
/* 80CD9C8C  38 00 00 04 */	li r0, 4
lbl_80CD9C90:
/* 80CD9C90  2C 00 00 01 */	cmpwi r0, 1
/* 80CD9C94  40 82 00 10 */	bne lbl_80CD9CA4
/* 80CD9C98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD9C9C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CD9CA0  48 00 00 08 */	b lbl_80CD9CA8
lbl_80CD9CA4:
/* 80CD9CA4  FF C0 08 90 */	fmr f30, f1
lbl_80CD9CA8:
/* 80CD9CA8  7F E3 FB 78 */	mr r3, r31
/* 80CD9CAC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80CD9CB0  38 A1 00 40 */	addi r5, r1, 0x40
/* 80CD9CB4  4B 66 D6 15 */	bl C_VECReflect
/* 80CD9CB8  38 61 00 34 */	addi r3, r1, 0x34
/* 80CD9CBC  38 81 00 40 */	addi r4, r1, 0x40
/* 80CD9CC0  FC 20 F0 90 */	fmr f1, f30
/* 80CD9CC4  4B 58 CE C1 */	bl __ml__4cXyzCFf
/* 80CD9CC8  38 61 00 28 */	addi r3, r1, 0x28
/* 80CD9CCC  38 81 00 34 */	addi r4, r1, 0x34
/* 80CD9CD0  FC 20 F8 90 */	fmr f1, f31
/* 80CD9CD4  4B 58 CE B1 */	bl __ml__4cXyzCFf
/* 80CD9CD8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CD9CDC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80CD9CE0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CD9CE4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80CD9CE8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CD9CEC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80CD9CF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CD9CF4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CD9CF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CD9CFC  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CD9D00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD9D04  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80CD9D08  38 61 00 10 */	addi r3, r1, 0x10
/* 80CD9D0C  4B 66 D4 2D */	bl PSVECSquareMag
/* 80CD9D10  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80CD9D14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD9D18  40 81 00 58 */	ble lbl_80CD9D70
/* 80CD9D1C  FC 00 08 34 */	frsqrte f0, f1
/* 80CD9D20  C8 9E 00 48 */	lfd f4, 0x48(r30)
/* 80CD9D24  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9D28  C8 7E 00 50 */	lfd f3, 0x50(r30)
/* 80CD9D2C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9D30  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9D34  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9D38  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9D3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9D40  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9D44  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9D48  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9D4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9D50  FC 44 00 32 */	fmul f2, f4, f0
/* 80CD9D54  FC 00 00 32 */	fmul f0, f0, f0
/* 80CD9D58  FC 01 00 32 */	fmul f0, f1, f0
/* 80CD9D5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80CD9D60  FC 02 00 32 */	fmul f0, f2, f0
/* 80CD9D64  FC 21 00 32 */	fmul f1, f1, f0
/* 80CD9D68  FC 20 08 18 */	frsp f1, f1
/* 80CD9D6C  48 00 00 88 */	b lbl_80CD9DF4
lbl_80CD9D70:
/* 80CD9D70  C8 1E 00 58 */	lfd f0, 0x58(r30)
/* 80CD9D74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CD9D78  40 80 00 10 */	bge lbl_80CD9D88
/* 80CD9D7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD9D80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80CD9D84  48 00 00 70 */	b lbl_80CD9DF4
lbl_80CD9D88:
/* 80CD9D88  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CD9D8C  80 81 00 08 */	lwz r4, 8(r1)
/* 80CD9D90  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CD9D94  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CD9D98  7C 03 00 00 */	cmpw r3, r0
/* 80CD9D9C  41 82 00 14 */	beq lbl_80CD9DB0
/* 80CD9DA0  40 80 00 40 */	bge lbl_80CD9DE0
/* 80CD9DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80CD9DA8  41 82 00 20 */	beq lbl_80CD9DC8
/* 80CD9DAC  48 00 00 34 */	b lbl_80CD9DE0
lbl_80CD9DB0:
/* 80CD9DB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD9DB4  41 82 00 0C */	beq lbl_80CD9DC0
/* 80CD9DB8  38 00 00 01 */	li r0, 1
/* 80CD9DBC  48 00 00 28 */	b lbl_80CD9DE4
lbl_80CD9DC0:
/* 80CD9DC0  38 00 00 02 */	li r0, 2
/* 80CD9DC4  48 00 00 20 */	b lbl_80CD9DE4
lbl_80CD9DC8:
/* 80CD9DC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CD9DCC  41 82 00 0C */	beq lbl_80CD9DD8
/* 80CD9DD0  38 00 00 05 */	li r0, 5
/* 80CD9DD4  48 00 00 10 */	b lbl_80CD9DE4
lbl_80CD9DD8:
/* 80CD9DD8  38 00 00 03 */	li r0, 3
/* 80CD9DDC  48 00 00 08 */	b lbl_80CD9DE4
lbl_80CD9DE0:
/* 80CD9DE0  38 00 00 04 */	li r0, 4
lbl_80CD9DE4:
/* 80CD9DE4  2C 00 00 01 */	cmpwi r0, 1
/* 80CD9DE8  40 82 00 0C */	bne lbl_80CD9DF4
/* 80CD9DEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80CD9DF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80CD9DF4:
/* 80CD9DF4  3C 60 80 CE */	lis r3, __vt__8cM3dGPla@ha /* 0x80CDBAA0@ha */
/* 80CD9DF8  38 03 BA A0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CDBAA0@l */
/* 80CD9DFC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80CD9E00  48 00 00 14 */	b lbl_80CD9E14
lbl_80CD9E04:
/* 80CD9E04  3C 60 80 CE */	lis r3, __vt__8cM3dGPla@ha /* 0x80CDBAA0@ha */
/* 80CD9E08  38 03 BA A0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80CDBAA0@l */
/* 80CD9E0C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80CD9E10  C0 3E 00 44 */	lfs f1, 0x44(r30)
lbl_80CD9E14:
/* 80CD9E14  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80CD9E18  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80CD9E1C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80CD9E20  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80CD9E24  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80CD9E28  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80CD9E2C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CD9E30  7C 08 03 A6 */	mtlr r0
/* 80CD9E34  38 21 00 90 */	addi r1, r1, 0x90
/* 80CD9E38  4E 80 00 20 */	blr 
