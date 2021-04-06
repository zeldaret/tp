lbl_80D15AAC:
/* 80D15AAC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D15AB0  7C 08 02 A6 */	mflr r0
/* 80D15AB4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D15AB8  39 61 00 50 */	addi r11, r1, 0x50
/* 80D15ABC  4B 64 C7 21 */	bl _savegpr_29
/* 80D15AC0  7C 7E 1B 78 */	mr r30, r3
/* 80D15AC4  7C 9D 23 78 */	mr r29, r4
/* 80D15AC8  3C 80 80 D1 */	lis r4, l_bmd@ha /* 0x80D1774C@ha */
/* 80D15ACC  3B E4 77 4C */	addi r31, r4, l_bmd@l /* 0x80D1774C@l */
/* 80D15AD0  4B 30 32 11 */	bl fopAc_IsActor__FPv
/* 80D15AD4  2C 03 00 00 */	cmpwi r3, 0
/* 80D15AD8  41 82 02 B4 */	beq lbl_80D15D8C
/* 80D15ADC  A8 1E 00 08 */	lha r0, 8(r30)
/* 80D15AE0  2C 00 02 21 */	cmpwi r0, 0x221
/* 80D15AE4  40 82 01 54 */	bne lbl_80D15C38
/* 80D15AE8  28 1E 00 00 */	cmplwi r30, 0
/* 80D15AEC  41 82 02 A0 */	beq lbl_80D15D8C
/* 80D15AF0  28 1D 00 00 */	cmplwi r29, 0
/* 80D15AF4  41 82 02 98 */	beq lbl_80D15D8C
/* 80D15AF8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80D15AFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D15B00  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D15B04  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80D15B08  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80D15B0C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80D15B10  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80D15B14  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D15B18  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D15B1C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80D15B20  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 80D15B24  38 61 00 28 */	addi r3, r1, 0x28
/* 80D15B28  38 81 00 34 */	addi r4, r1, 0x34
/* 80D15B2C  4B 63 18 71 */	bl PSVECSquareDistance
/* 80D15B30  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80D15B34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D15B38  40 81 00 58 */	ble lbl_80D15B90
/* 80D15B3C  FC 00 08 34 */	frsqrte f0, f1
/* 80D15B40  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80D15B44  FC 44 00 32 */	fmul f2, f4, f0
/* 80D15B48  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80D15B4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D15B50  FC 01 00 32 */	fmul f0, f1, f0
/* 80D15B54  FC 03 00 28 */	fsub f0, f3, f0
/* 80D15B58  FC 02 00 32 */	fmul f0, f2, f0
/* 80D15B5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D15B60  FC 00 00 32 */	fmul f0, f0, f0
/* 80D15B64  FC 01 00 32 */	fmul f0, f1, f0
/* 80D15B68  FC 03 00 28 */	fsub f0, f3, f0
/* 80D15B6C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D15B70  FC 44 00 32 */	fmul f2, f4, f0
/* 80D15B74  FC 00 00 32 */	fmul f0, f0, f0
/* 80D15B78  FC 01 00 32 */	fmul f0, f1, f0
/* 80D15B7C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D15B80  FC 02 00 32 */	fmul f0, f2, f0
/* 80D15B84  FC 21 00 32 */	fmul f1, f1, f0
/* 80D15B88  FC 20 08 18 */	frsp f1, f1
/* 80D15B8C  48 00 00 88 */	b lbl_80D15C14
lbl_80D15B90:
/* 80D15B90  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80D15B94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D15B98  40 80 00 10 */	bge lbl_80D15BA8
/* 80D15B9C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D15BA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D15BA4  48 00 00 70 */	b lbl_80D15C14
lbl_80D15BA8:
/* 80D15BA8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D15BAC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80D15BB0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D15BB4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D15BB8  7C 03 00 00 */	cmpw r3, r0
/* 80D15BBC  41 82 00 14 */	beq lbl_80D15BD0
/* 80D15BC0  40 80 00 40 */	bge lbl_80D15C00
/* 80D15BC4  2C 03 00 00 */	cmpwi r3, 0
/* 80D15BC8  41 82 00 20 */	beq lbl_80D15BE8
/* 80D15BCC  48 00 00 34 */	b lbl_80D15C00
lbl_80D15BD0:
/* 80D15BD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D15BD4  41 82 00 0C */	beq lbl_80D15BE0
/* 80D15BD8  38 00 00 01 */	li r0, 1
/* 80D15BDC  48 00 00 28 */	b lbl_80D15C04
lbl_80D15BE0:
/* 80D15BE0  38 00 00 02 */	li r0, 2
/* 80D15BE4  48 00 00 20 */	b lbl_80D15C04
lbl_80D15BE8:
/* 80D15BE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D15BEC  41 82 00 0C */	beq lbl_80D15BF8
/* 80D15BF0  38 00 00 05 */	li r0, 5
/* 80D15BF4  48 00 00 10 */	b lbl_80D15C04
lbl_80D15BF8:
/* 80D15BF8  38 00 00 03 */	li r0, 3
/* 80D15BFC  48 00 00 08 */	b lbl_80D15C04
lbl_80D15C00:
/* 80D15C00  38 00 00 04 */	li r0, 4
lbl_80D15C04:
/* 80D15C04  2C 00 00 01 */	cmpwi r0, 1
/* 80D15C08  40 82 00 0C */	bne lbl_80D15C14
/* 80D15C0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D15C10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D15C14:
/* 80D15C14  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D15C18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D15C1C  40 80 01 70 */	bge lbl_80D15D8C
/* 80D15C20  7F C3 F3 78 */	mr r3, r30
/* 80D15C24  81 9E 05 68 */	lwz r12, 0x568(r30)
/* 80D15C28  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80D15C2C  7D 89 03 A6 */	mtctr r12
/* 80D15C30  4E 80 04 21 */	bctrl 
/* 80D15C34  48 00 01 58 */	b lbl_80D15D8C
lbl_80D15C38:
/* 80D15C38  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80D15C3C  40 82 01 50 */	bne lbl_80D15D8C
/* 80D15C40  28 1E 00 00 */	cmplwi r30, 0
/* 80D15C44  41 82 01 48 */	beq lbl_80D15D8C
/* 80D15C48  28 1D 00 00 */	cmplwi r29, 0
/* 80D15C4C  41 82 01 40 */	beq lbl_80D15D8C
/* 80D15C50  88 1E 0C F0 */	lbz r0, 0xcf0(r30)
/* 80D15C54  2C 00 00 02 */	cmpwi r0, 2
/* 80D15C58  40 82 01 34 */	bne lbl_80D15D8C
/* 80D15C5C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80D15C60  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D15C64  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D15C68  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80D15C6C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D15C70  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80D15C74  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80D15C78  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80D15C7C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D15C80  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80D15C84  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80D15C88  38 61 00 10 */	addi r3, r1, 0x10
/* 80D15C8C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80D15C90  4B 63 17 0D */	bl PSVECSquareDistance
/* 80D15C94  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80D15C98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D15C9C  40 81 00 58 */	ble lbl_80D15CF4
/* 80D15CA0  FC 00 08 34 */	frsqrte f0, f1
/* 80D15CA4  C8 9F 00 28 */	lfd f4, 0x28(r31)
/* 80D15CA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80D15CAC  C8 7F 00 30 */	lfd f3, 0x30(r31)
/* 80D15CB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D15CB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D15CB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D15CBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D15CC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80D15CC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80D15CC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80D15CCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80D15CD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D15CD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80D15CD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80D15CDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80D15CE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80D15CE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80D15CE8  FC 21 00 32 */	fmul f1, f1, f0
/* 80D15CEC  FC 20 08 18 */	frsp f1, f1
/* 80D15CF0  48 00 00 88 */	b lbl_80D15D78
lbl_80D15CF4:
/* 80D15CF4  C8 1F 00 38 */	lfd f0, 0x38(r31)
/* 80D15CF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D15CFC  40 80 00 10 */	bge lbl_80D15D0C
/* 80D15D00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D15D04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D15D08  48 00 00 70 */	b lbl_80D15D78
lbl_80D15D0C:
/* 80D15D0C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D15D10  80 81 00 08 */	lwz r4, 8(r1)
/* 80D15D14  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D15D18  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D15D1C  7C 03 00 00 */	cmpw r3, r0
/* 80D15D20  41 82 00 14 */	beq lbl_80D15D34
/* 80D15D24  40 80 00 40 */	bge lbl_80D15D64
/* 80D15D28  2C 03 00 00 */	cmpwi r3, 0
/* 80D15D2C  41 82 00 20 */	beq lbl_80D15D4C
/* 80D15D30  48 00 00 34 */	b lbl_80D15D64
lbl_80D15D34:
/* 80D15D34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D15D38  41 82 00 0C */	beq lbl_80D15D44
/* 80D15D3C  38 00 00 01 */	li r0, 1
/* 80D15D40  48 00 00 28 */	b lbl_80D15D68
lbl_80D15D44:
/* 80D15D44  38 00 00 02 */	li r0, 2
/* 80D15D48  48 00 00 20 */	b lbl_80D15D68
lbl_80D15D4C:
/* 80D15D4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D15D50  41 82 00 0C */	beq lbl_80D15D5C
/* 80D15D54  38 00 00 05 */	li r0, 5
/* 80D15D58  48 00 00 10 */	b lbl_80D15D68
lbl_80D15D5C:
/* 80D15D5C  38 00 00 03 */	li r0, 3
/* 80D15D60  48 00 00 08 */	b lbl_80D15D68
lbl_80D15D64:
/* 80D15D64  38 00 00 04 */	li r0, 4
lbl_80D15D68:
/* 80D15D68  2C 00 00 01 */	cmpwi r0, 1
/* 80D15D6C  40 82 00 0C */	bne lbl_80D15D78
/* 80D15D70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D15D74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D15D78:
/* 80D15D78  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D15D7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D15D80  40 80 00 0C */	bge lbl_80D15D8C
/* 80D15D84  7F C3 F3 78 */	mr r3, r30
/* 80D15D88  4B 30 3E F5 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80D15D8C:
/* 80D15D8C  38 60 00 00 */	li r3, 0
/* 80D15D90  39 61 00 50 */	addi r11, r1, 0x50
/* 80D15D94  4B 64 C4 95 */	bl _restgpr_29
/* 80D15D98  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D15D9C  7C 08 03 A6 */	mtlr r0
/* 80D15DA0  38 21 00 50 */	addi r1, r1, 0x50
/* 80D15DA4  4E 80 00 20 */	blr 
