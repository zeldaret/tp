lbl_80C54B20:
/* 80C54B20  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C54B24  7C 08 02 A6 */	mflr r0
/* 80C54B28  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C54B2C  39 61 00 60 */	addi r11, r1, 0x60
/* 80C54B30  4B 70 D6 AC */	b _savegpr_29
/* 80C54B34  7C 7D 1B 78 */	mr r29, r3
/* 80C54B38  7C 9F 23 78 */	mr r31, r4
/* 80C54B3C  3C 60 80 C5 */	lis r3, lit_3916@ha
/* 80C54B40  3B C3 5A 10 */	addi r30, r3, lit_3916@l
/* 80C54B44  38 61 00 24 */	addi r3, r1, 0x24
/* 80C54B48  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C54B4C  4B 61 1F E8 */	b __mi__4cXyzCFRC3Vec
/* 80C54B50  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C54B54  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C54B58  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80C54B5C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C54B60  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C54B64  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C54B68  FC 00 0A 10 */	fabs f0, f1
/* 80C54B6C  FC 20 00 18 */	frsp f1, f0
/* 80C54B70  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80C54B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54B78  41 81 01 1C */	bgt lbl_80C54C94
/* 80C54B7C  38 61 00 30 */	addi r3, r1, 0x30
/* 80C54B80  4B 6F 25 B8 */	b PSVECSquareMag
/* 80C54B84  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C54B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54B8C  40 81 00 58 */	ble lbl_80C54BE4
/* 80C54B90  FC 00 08 34 */	frsqrte f0, f1
/* 80C54B94  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80C54B98  FC 44 00 32 */	fmul f2, f4, f0
/* 80C54B9C  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80C54BA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C54BA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C54BA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C54BAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C54BB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C54BB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C54BB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C54BBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C54BC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C54BC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C54BC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C54BCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C54BD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C54BD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C54BD8  FC 21 00 32 */	fmul f1, f1, f0
/* 80C54BDC  FC 20 08 18 */	frsp f1, f1
/* 80C54BE0  48 00 00 88 */	b lbl_80C54C68
lbl_80C54BE4:
/* 80C54BE4  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80C54BE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54BEC  40 80 00 10 */	bge lbl_80C54BFC
/* 80C54BF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C54BF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C54BF8  48 00 00 70 */	b lbl_80C54C68
lbl_80C54BFC:
/* 80C54BFC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C54C00  80 81 00 08 */	lwz r4, 8(r1)
/* 80C54C04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C54C08  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C54C0C  7C 03 00 00 */	cmpw r3, r0
/* 80C54C10  41 82 00 14 */	beq lbl_80C54C24
/* 80C54C14  40 80 00 40 */	bge lbl_80C54C54
/* 80C54C18  2C 03 00 00 */	cmpwi r3, 0
/* 80C54C1C  41 82 00 20 */	beq lbl_80C54C3C
/* 80C54C20  48 00 00 34 */	b lbl_80C54C54
lbl_80C54C24:
/* 80C54C24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C54C28  41 82 00 0C */	beq lbl_80C54C34
/* 80C54C2C  38 00 00 01 */	li r0, 1
/* 80C54C30  48 00 00 28 */	b lbl_80C54C58
lbl_80C54C34:
/* 80C54C34  38 00 00 02 */	li r0, 2
/* 80C54C38  48 00 00 20 */	b lbl_80C54C58
lbl_80C54C3C:
/* 80C54C3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C54C40  41 82 00 0C */	beq lbl_80C54C4C
/* 80C54C44  38 00 00 05 */	li r0, 5
/* 80C54C48  48 00 00 10 */	b lbl_80C54C58
lbl_80C54C4C:
/* 80C54C4C  38 00 00 03 */	li r0, 3
/* 80C54C50  48 00 00 08 */	b lbl_80C54C58
lbl_80C54C54:
/* 80C54C54  38 00 00 04 */	li r0, 4
lbl_80C54C58:
/* 80C54C58  2C 00 00 01 */	cmpwi r0, 1
/* 80C54C5C  40 82 00 0C */	bne lbl_80C54C68
/* 80C54C60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C54C64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C54C68:
/* 80C54C68  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80C54C6C  88 1D 05 71 */	lbz r0, 0x571(r29)
/* 80C54C70  C8 5E 00 80 */	lfd f2, 0x80(r30)
/* 80C54C74  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C54C78  3C 00 43 30 */	lis r0, 0x4330
/* 80C54C7C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C54C80  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80C54C84  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C54C88  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C54C8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C54C90  40 81 00 0C */	ble lbl_80C54C9C
lbl_80C54C94:
/* 80C54C94  38 60 00 01 */	li r3, 1
/* 80C54C98  48 00 00 90 */	b lbl_80C54D28
lbl_80C54C9C:
/* 80C54C9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C54CA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C54CA4  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 80C54CA8  38 61 00 18 */	addi r3, r1, 0x18
/* 80C54CAC  38 9D 00 E4 */	addi r4, r29, 0xe4
/* 80C54CB0  38 BD 00 D8 */	addi r5, r29, 0xd8
/* 80C54CB4  4B 61 1E 80 */	b __mi__4cXyzCFRC3Vec
/* 80C54CB8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80C54CBC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C54CC0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C54CC4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C54CC8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80C54CCC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80C54CD0  4B 61 29 A4 */	b cM_atan2s__Fff
/* 80C54CD4  7C 7E 1B 78 */	mr r30, r3
/* 80C54CD8  38 61 00 0C */	addi r3, r1, 0xc
/* 80C54CDC  7F E4 FB 78 */	mr r4, r31
/* 80C54CE0  38 BD 00 D8 */	addi r5, r29, 0xd8
/* 80C54CE4  4B 61 1E 50 */	b __mi__4cXyzCFRC3Vec
/* 80C54CE8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80C54CEC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C54CF0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C54CF4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C54CF8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80C54CFC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80C54D00  4B 61 29 74 */	b cM_atan2s__Fff
/* 80C54D04  7C 03 F0 50 */	subf r0, r3, r30
/* 80C54D08  7C 00 07 34 */	extsh r0, r0
/* 80C54D0C  2C 00 30 00 */	cmpwi r0, 0x3000
/* 80C54D10  41 81 00 0C */	bgt lbl_80C54D1C
/* 80C54D14  2C 00 D0 00 */	cmpwi r0, -12288
/* 80C54D18  40 80 00 0C */	bge lbl_80C54D24
lbl_80C54D1C:
/* 80C54D1C  38 60 00 01 */	li r3, 1
/* 80C54D20  48 00 00 08 */	b lbl_80C54D28
lbl_80C54D24:
/* 80C54D24  38 60 00 00 */	li r3, 0
lbl_80C54D28:
/* 80C54D28  39 61 00 60 */	addi r11, r1, 0x60
/* 80C54D2C  4B 70 D4 FC */	b _restgpr_29
/* 80C54D30  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C54D34  7C 08 03 A6 */	mtlr r0
/* 80C54D38  38 21 00 60 */	addi r1, r1, 0x60
/* 80C54D3C  4E 80 00 20 */	blr 
