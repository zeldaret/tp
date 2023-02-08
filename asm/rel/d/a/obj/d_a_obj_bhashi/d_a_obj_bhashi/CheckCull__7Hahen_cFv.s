lbl_80577C1C:
/* 80577C1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80577C20  7C 08 02 A6 */	mflr r0
/* 80577C24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80577C28  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80577C2C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80577C30  7C 7E 1B 78 */	mr r30, r3
/* 80577C34  3C 60 80 58 */	lis r3, ccCylSrc@ha /* 0x80578A88@ha */
/* 80577C38  3B E3 8A 88 */	addi r31, r3, ccCylSrc@l /* 0x80578A88@l */
/* 80577C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80577C40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80577C44  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80577C48  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80577C4C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80577C50  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80577C54  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80577C58  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80577C5C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80577C60  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 80577C64  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80577C68  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80577C6C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80577C70  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80577C74  38 61 00 0C */	addi r3, r1, 0xc
/* 80577C78  38 81 00 18 */	addi r4, r1, 0x18
/* 80577C7C  4B DC F7 21 */	bl PSVECSquareDistance
/* 80577C80  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80577C84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80577C88  40 81 00 58 */	ble lbl_80577CE0
/* 80577C8C  FC 00 08 34 */	frsqrte f0, f1
/* 80577C90  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80577C94  FC 44 00 32 */	fmul f2, f4, f0
/* 80577C98  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80577C9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80577CA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80577CA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80577CA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80577CAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80577CB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80577CB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80577CB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80577CBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80577CC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80577CC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80577CC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80577CCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80577CD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80577CD4  FC 21 00 32 */	fmul f1, f1, f0
/* 80577CD8  FC 20 08 18 */	frsp f1, f1
/* 80577CDC  48 00 00 88 */	b lbl_80577D64
lbl_80577CE0:
/* 80577CE0  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80577CE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80577CE8  40 80 00 10 */	bge lbl_80577CF8
/* 80577CEC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80577CF0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80577CF4  48 00 00 70 */	b lbl_80577D64
lbl_80577CF8:
/* 80577CF8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80577CFC  80 81 00 08 */	lwz r4, 8(r1)
/* 80577D00  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80577D04  3C 00 7F 80 */	lis r0, 0x7f80
/* 80577D08  7C 03 00 00 */	cmpw r3, r0
/* 80577D0C  41 82 00 14 */	beq lbl_80577D20
/* 80577D10  40 80 00 40 */	bge lbl_80577D50
/* 80577D14  2C 03 00 00 */	cmpwi r3, 0
/* 80577D18  41 82 00 20 */	beq lbl_80577D38
/* 80577D1C  48 00 00 34 */	b lbl_80577D50
lbl_80577D20:
/* 80577D20  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80577D24  41 82 00 0C */	beq lbl_80577D30
/* 80577D28  38 00 00 01 */	li r0, 1
/* 80577D2C  48 00 00 28 */	b lbl_80577D54
lbl_80577D30:
/* 80577D30  38 00 00 02 */	li r0, 2
/* 80577D34  48 00 00 20 */	b lbl_80577D54
lbl_80577D38:
/* 80577D38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80577D3C  41 82 00 0C */	beq lbl_80577D48
/* 80577D40  38 00 00 05 */	li r0, 5
/* 80577D44  48 00 00 10 */	b lbl_80577D54
lbl_80577D48:
/* 80577D48  38 00 00 03 */	li r0, 3
/* 80577D4C  48 00 00 08 */	b lbl_80577D54
lbl_80577D50:
/* 80577D50  38 00 00 04 */	li r0, 4
lbl_80577D54:
/* 80577D54  2C 00 00 01 */	cmpwi r0, 1
/* 80577D58  40 82 00 0C */	bne lbl_80577D64
/* 80577D5C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80577D60  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80577D64:
/* 80577D64  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80577D68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80577D6C  40 81 00 1C */	ble lbl_80577D88
/* 80577D70  7F C3 F3 78 */	mr r3, r30
/* 80577D74  48 00 00 31 */	bl checkViewArea__7Hahen_cFv
/* 80577D78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80577D7C  40 82 00 0C */	bne lbl_80577D88
/* 80577D80  38 60 00 00 */	li r3, 0
/* 80577D84  48 00 00 08 */	b lbl_80577D8C
lbl_80577D88:
/* 80577D88  38 60 00 01 */	li r3, 1
lbl_80577D8C:
/* 80577D8C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80577D90  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80577D94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80577D98  7C 08 03 A6 */	mtlr r0
/* 80577D9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80577DA0  4E 80 00 20 */	blr 
