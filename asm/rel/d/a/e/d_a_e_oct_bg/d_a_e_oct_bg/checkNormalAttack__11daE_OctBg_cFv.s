lbl_80736BB4:
/* 80736BB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80736BB8  7C 08 02 A6 */	mflr r0
/* 80736BBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80736BC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80736BC4  4B C2 B6 19 */	bl _savegpr_29
/* 80736BC8  7C 7E 1B 78 */	mr r30, r3
/* 80736BCC  3C 60 80 74 */	lis r3, lit_3768@ha /* 0x80739D60@ha */
/* 80736BD0  3B A3 9D 60 */	addi r29, r3, lit_3768@l /* 0x80739D60@l */
/* 80736BD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80736BD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80736BDC  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80736BE0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80736BE4  28 00 00 00 */	cmplwi r0, 0
/* 80736BE8  41 82 00 0C */	beq lbl_80736BF4
/* 80736BEC  38 60 00 00 */	li r3, 0
/* 80736BF0  48 00 01 A4 */	b lbl_80736D94
lbl_80736BF4:
/* 80736BF4  3C 60 80 74 */	lis r3, struct_8073A14C+0x26@ha /* 0x8073A172@ha */
/* 80736BF8  88 83 A1 72 */	lbz r4, struct_8073A14C+0x26@l(r3)  /* 0x8073A172@l */
/* 80736BFC  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha /* 0x8073A14C@ha */
/* 80736C00  38 63 A1 4C */	addi r3, r3, struct_8073A14C+0x0@l /* 0x8073A14C@l */
/* 80736C04  88 03 00 20 */	lbz r0, 0x20(r3)
/* 80736C08  7C 04 00 40 */	cmplw r4, r0
/* 80736C0C  40 80 01 84 */	bge lbl_80736D90
/* 80736C10  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 80736C14  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 80736C18  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80736C1C  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 80736C20  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80736C24  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80736C28  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80736C2C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80736C30  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80736C34  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80736C38  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80736C3C  38 61 00 0C */	addi r3, r1, 0xc
/* 80736C40  38 81 00 18 */	addi r4, r1, 0x18
/* 80736C44  4B C1 07 59 */	bl PSVECSquareDistance
/* 80736C48  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 80736C4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80736C50  40 81 00 58 */	ble lbl_80736CA8
/* 80736C54  FC 00 08 34 */	frsqrte f0, f1
/* 80736C58  C8 9D 00 48 */	lfd f4, 0x48(r29)
/* 80736C5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80736C60  C8 7D 00 50 */	lfd f3, 0x50(r29)
/* 80736C64  FC 00 00 32 */	fmul f0, f0, f0
/* 80736C68  FC 01 00 32 */	fmul f0, f1, f0
/* 80736C6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80736C70  FC 02 00 32 */	fmul f0, f2, f0
/* 80736C74  FC 44 00 32 */	fmul f2, f4, f0
/* 80736C78  FC 00 00 32 */	fmul f0, f0, f0
/* 80736C7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80736C80  FC 03 00 28 */	fsub f0, f3, f0
/* 80736C84  FC 02 00 32 */	fmul f0, f2, f0
/* 80736C88  FC 44 00 32 */	fmul f2, f4, f0
/* 80736C8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80736C90  FC 01 00 32 */	fmul f0, f1, f0
/* 80736C94  FC 03 00 28 */	fsub f0, f3, f0
/* 80736C98  FC 02 00 32 */	fmul f0, f2, f0
/* 80736C9C  FC 21 00 32 */	fmul f1, f1, f0
/* 80736CA0  FC 20 08 18 */	frsp f1, f1
/* 80736CA4  48 00 00 88 */	b lbl_80736D2C
lbl_80736CA8:
/* 80736CA8  C8 1D 00 58 */	lfd f0, 0x58(r29)
/* 80736CAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80736CB0  40 80 00 10 */	bge lbl_80736CC0
/* 80736CB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80736CB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80736CBC  48 00 00 70 */	b lbl_80736D2C
lbl_80736CC0:
/* 80736CC0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80736CC4  80 81 00 08 */	lwz r4, 8(r1)
/* 80736CC8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80736CCC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80736CD0  7C 03 00 00 */	cmpw r3, r0
/* 80736CD4  41 82 00 14 */	beq lbl_80736CE8
/* 80736CD8  40 80 00 40 */	bge lbl_80736D18
/* 80736CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80736CE0  41 82 00 20 */	beq lbl_80736D00
/* 80736CE4  48 00 00 34 */	b lbl_80736D18
lbl_80736CE8:
/* 80736CE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80736CEC  41 82 00 0C */	beq lbl_80736CF8
/* 80736CF0  38 00 00 01 */	li r0, 1
/* 80736CF4  48 00 00 28 */	b lbl_80736D1C
lbl_80736CF8:
/* 80736CF8  38 00 00 02 */	li r0, 2
/* 80736CFC  48 00 00 20 */	b lbl_80736D1C
lbl_80736D00:
/* 80736D00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80736D04  41 82 00 0C */	beq lbl_80736D10
/* 80736D08  38 00 00 05 */	li r0, 5
/* 80736D0C  48 00 00 10 */	b lbl_80736D1C
lbl_80736D10:
/* 80736D10  38 00 00 03 */	li r0, 3
/* 80736D14  48 00 00 08 */	b lbl_80736D1C
lbl_80736D18:
/* 80736D18  38 00 00 04 */	li r0, 4
lbl_80736D1C:
/* 80736D1C  2C 00 00 01 */	cmpwi r0, 1
/* 80736D20  40 82 00 0C */	bne lbl_80736D2C
/* 80736D24  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80736D28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80736D2C:
/* 80736D2C  3C 60 80 74 */	lis r3, struct_8073A14C+0x0@ha /* 0x8073A14C@ha */
/* 80736D30  38 63 A1 4C */	addi r3, r3, struct_8073A14C+0x0@l /* 0x8073A14C@l */
/* 80736D34  C0 03 00 08 */	lfs f0, 8(r3)
/* 80736D38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80736D3C  40 80 00 54 */	bge lbl_80736D90
/* 80736D40  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80736D44  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80736D48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80736D4C  40 80 00 44 */	bge lbl_80736D90
/* 80736D50  7F C3 F3 78 */	mr r3, r30
/* 80736D54  7F E4 FB 78 */	mr r4, r31
/* 80736D58  4B 8E 60 A5 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80736D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80736D60  40 82 00 30 */	bne lbl_80736D90
/* 80736D64  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80736D68  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80736D6C  4B B3 9E 99 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80736D70  7C 63 07 34 */	extsh r3, r3
/* 80736D74  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80736D78  7C 63 00 50 */	subf r3, r3, r0
/* 80736D7C  4B C2 E3 55 */	bl abs
/* 80736D80  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80736D84  40 80 00 0C */	bge lbl_80736D90
/* 80736D88  38 60 00 01 */	li r3, 1
/* 80736D8C  48 00 00 08 */	b lbl_80736D94
lbl_80736D90:
/* 80736D90  38 60 00 00 */	li r3, 0
lbl_80736D94:
/* 80736D94  39 61 00 40 */	addi r11, r1, 0x40
/* 80736D98  4B C2 B4 91 */	bl _restgpr_29
/* 80736D9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80736DA0  7C 08 03 A6 */	mtlr r0
/* 80736DA4  38 21 00 40 */	addi r1, r1, 0x40
/* 80736DA8  4E 80 00 20 */	blr 
