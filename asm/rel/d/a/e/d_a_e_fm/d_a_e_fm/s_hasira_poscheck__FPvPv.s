lbl_804EF308:
/* 804EF308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF30C  7C 08 02 A6 */	mflr r0
/* 804EF310  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF318  93 C1 00 08 */	stw r30, 8(r1)
/* 804EF31C  7C 7E 1B 78 */	mr r30, r3
/* 804EF320  7C 9F 23 78 */	mr r31, r4
/* 804EF324  4B B2 99 BC */	b fopAc_IsActor__FPv
/* 804EF328  2C 03 00 00 */	cmpwi r3, 0
/* 804EF32C  41 82 00 84 */	beq lbl_804EF3B0
/* 804EF330  A8 1E 00 08 */	lha r0, 8(r30)
/* 804EF334  2C 00 00 6B */	cmpwi r0, 0x6b
/* 804EF338  40 82 00 78 */	bne lbl_804EF3B0
/* 804EF33C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804EF340  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804EF344  EC 21 00 28 */	fsubs f1, f1, f0
/* 804EF348  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 804EF34C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804EF350  EC 42 00 28 */	fsubs f2, f2, f0
/* 804EF354  EC 61 00 72 */	fmuls f3, f1, f1
/* 804EF358  EC 02 00 B2 */	fmuls f0, f2, f2
/* 804EF35C  EC 63 00 2A */	fadds f3, f3, f0
/* 804EF360  3C 60 80 50 */	lis r3, lit_3792@ha
/* 804EF364  C0 03 A6 F8 */	lfs f0, lit_3792@l(r3)
/* 804EF368  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804EF36C  40 81 00 0C */	ble lbl_804EF378
/* 804EF370  FC 00 18 34 */	frsqrte f0, f3
/* 804EF374  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_804EF378:
/* 804EF378  3C 60 80 50 */	lis r3, lit_3846@ha
/* 804EF37C  C0 03 A7 24 */	lfs f0, lit_3846@l(r3)
/* 804EF380  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804EF384  40 80 00 2C */	bge lbl_804EF3B0
/* 804EF388  4B D7 82 EC */	b cM_atan2s__Fff
/* 804EF38C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804EF390  7C 03 00 50 */	subf r0, r3, r0
/* 804EF394  7C 00 07 34 */	extsh r0, r0
/* 804EF398  2C 00 30 00 */	cmpwi r0, 0x3000
/* 804EF39C  40 80 00 14 */	bge lbl_804EF3B0
/* 804EF3A0  2C 00 D0 00 */	cmpwi r0, -12288
/* 804EF3A4  40 81 00 0C */	ble lbl_804EF3B0
/* 804EF3A8  7F C3 F3 78 */	mr r3, r30
/* 804EF3AC  48 00 00 08 */	b lbl_804EF3B4
lbl_804EF3B0:
/* 804EF3B0  38 60 00 00 */	li r3, 0
lbl_804EF3B4:
/* 804EF3B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF3B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EF3BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF3C0  7C 08 03 A6 */	mtlr r0
/* 804EF3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF3C8  4E 80 00 20 */	blr 
