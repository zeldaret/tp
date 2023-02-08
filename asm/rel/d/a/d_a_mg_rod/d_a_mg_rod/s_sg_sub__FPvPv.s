lbl_804B4A94:
/* 804B4A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804B4A98  7C 08 02 A6 */	mflr r0
/* 804B4A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B4AA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804B4AA4  93 C1 00 08 */	stw r30, 8(r1)
/* 804B4AA8  7C 7E 1B 78 */	mr r30, r3
/* 804B4AAC  7C 9F 23 78 */	mr r31, r4
/* 804B4AB0  4B B6 42 31 */	bl fopAc_IsActor__FPv
/* 804B4AB4  2C 03 00 00 */	cmpwi r3, 0
/* 804B4AB8  41 82 00 34 */	beq lbl_804B4AEC
/* 804B4ABC  A8 1E 00 08 */	lha r0, 8(r30)
/* 804B4AC0  2C 00 01 B6 */	cmpwi r0, 0x1b6
/* 804B4AC4  40 82 00 28 */	bne lbl_804B4AEC
/* 804B4AC8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 804B4ACC  C0 3F 05 90 */	lfs f1, 0x590(r31)
/* 804B4AD0  3C 60 80 4C */	lis r3, lit_5035@ha /* 0x804BB5E8@ha */
/* 804B4AD4  C0 03 B5 E8 */	lfs f0, lit_5035@l(r3)  /* 0x804BB5E8@l */
/* 804B4AD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B4ADC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B4AE0  40 80 00 0C */	bge lbl_804B4AEC
/* 804B4AE4  7F C3 F3 78 */	mr r3, r30
/* 804B4AE8  48 00 00 08 */	b lbl_804B4AF0
lbl_804B4AEC:
/* 804B4AEC  38 60 00 00 */	li r3, 0
lbl_804B4AF0:
/* 804B4AF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804B4AF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804B4AF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804B4AFC  7C 08 03 A6 */	mtlr r0
/* 804B4B00  38 21 00 10 */	addi r1, r1, 0x10
/* 804B4B04  4E 80 00 20 */	blr 
