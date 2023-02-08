lbl_806A3AE8:
/* 806A3AE8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A3AEC  7C 08 02 A6 */	mflr r0
/* 806A3AF0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A3AF4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 806A3AF8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 806A3AFC  39 61 00 30 */	addi r11, r1, 0x30
/* 806A3B00  4B CB E6 DD */	bl _savegpr_29
/* 806A3B04  7C 7E 1B 78 */	mr r30, r3
/* 806A3B08  3C 80 80 6A */	lis r4, lit_3903@ha /* 0x806A71C4@ha */
/* 806A3B0C  3B E4 71 C4 */	addi r31, r4, lit_3903@l /* 0x806A71C4@l */
/* 806A3B10  88 03 06 D4 */	lbz r0, 0x6d4(r3)
/* 806A3B14  7C 00 07 75 */	extsb. r0, r0
/* 806A3B18  41 82 00 20 */	beq lbl_806A3B38
/* 806A3B1C  38 00 00 00 */	li r0, 0
/* 806A3B20  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 806A3B24  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A3B28  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A3B2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A3B30  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806A3B34  48 00 02 10 */	b lbl_806A3D44
lbl_806A3B38:
/* 806A3B38  80 9E 05 C0 */	lwz r4, 0x5c0(r30)
/* 806A3B3C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 806A3B40  FC 00 00 1E */	fctiwz f0, f0
/* 806A3B44  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806A3B48  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 806A3B4C  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806A3B50  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 806A3B54  2C 00 00 01 */	cmpwi r0, 1
/* 806A3B58  41 82 00 88 */	beq lbl_806A3BE0
/* 806A3B5C  40 80 00 B8 */	bge lbl_806A3C14
/* 806A3B60  2C 00 00 00 */	cmpwi r0, 0
/* 806A3B64  40 80 00 08 */	bge lbl_806A3B6C
/* 806A3B68  48 00 00 AC */	b lbl_806A3C14
lbl_806A3B6C:
/* 806A3B6C  38 80 00 12 */	li r4, 0x12
/* 806A3B70  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806A3B74  38 A0 00 02 */	li r5, 2
/* 806A3B78  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A3B7C  4B FF E7 51 */	bl anm_init__FP10e_dd_classifUcf
/* 806A3B80  38 00 00 01 */	li r0, 1
/* 806A3B84  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A3B88  7F C3 F3 78 */	mr r3, r30
/* 806A3B8C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806A3B90  38 80 20 00 */	li r4, 0x2000
/* 806A3B94  4B FF EB 99 */	bl pl_check__FP10e_dd_classfs
/* 806A3B98  2C 03 00 00 */	cmpwi r3, 0
/* 806A3B9C  40 82 00 18 */	bne lbl_806A3BB4
/* 806A3BA0  38 00 00 19 */	li r0, 0x19
/* 806A3BA4  B0 1E 06 AC */	sth r0, 0x6ac(r30)
/* 806A3BA8  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 806A3BAC  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806A3BB0  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_806A3BB4:
/* 806A3BB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702AB@ha */
/* 806A3BB8  38 03 02 AB */	addi r0, r3, 0x02AB /* 0x000702AB@l */
/* 806A3BBC  90 01 00 08 */	stw r0, 8(r1)
/* 806A3BC0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806A3BC4  38 81 00 08 */	addi r4, r1, 8
/* 806A3BC8  38 A0 FF FF */	li r5, -1
/* 806A3BCC  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 806A3BD0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806A3BD4  7D 89 03 A6 */	mtctr r12
/* 806A3BD8  4E 80 04 21 */	bctrl 
/* 806A3BDC  48 00 00 38 */	b lbl_806A3C14
lbl_806A3BE0:
/* 806A3BE0  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A74C8@ha */
/* 806A3BE4  38 63 74 C8 */	addi r3, r3, l_HIO@l /* 0x806A74C8@l */
/* 806A3BE8  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 806A3BEC  C0 3E 06 A4 */	lfs f1, 0x6a4(r30)
/* 806A3BF0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806A3BF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3BF8  40 80 00 1C */	bge lbl_806A3C14
/* 806A3BFC  38 00 00 04 */	li r0, 4
/* 806A3C00  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 806A3C04  38 00 00 00 */	li r0, 0
/* 806A3C08  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A3C0C  38 00 00 28 */	li r0, 0x28
/* 806A3C10  B0 1E 06 AA */	sth r0, 0x6aa(r30)
lbl_806A3C14:
/* 806A3C14  A8 7E 06 AC */	lha r3, 0x6ac(r30)
/* 806A3C18  7C 60 07 35 */	extsh. r0, r3
/* 806A3C1C  41 82 00 24 */	beq lbl_806A3C40
/* 806A3C20  2C 03 00 14 */	cmpwi r3, 0x14
/* 806A3C24  40 80 00 1C */	bge lbl_806A3C40
/* 806A3C28  C3 FF 00 04 */	lfs f31, 4(r31)
/* 806A3C2C  2C 1D 00 03 */	cmpwi r29, 3
/* 806A3C30  40 82 00 10 */	bne lbl_806A3C40
/* 806A3C34  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806A3C38  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806A3C3C  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_806A3C40:
/* 806A3C40  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806A3C44  FC 20 F8 90 */	fmr f1, f31
/* 806A3C48  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806A3C4C  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 806A3C50  3C 80 80 6A */	lis r4, l_HIO@ha /* 0x806A74C8@ha */
/* 806A3C54  38 84 74 C8 */	addi r4, r4, l_HIO@l /* 0x806A74C8@l */
/* 806A3C58  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 806A3C5C  EC 63 00 32 */	fmuls f3, f3, f0
/* 806A3C60  4B BC BD DD */	bl cLib_addCalc2__FPffff
/* 806A3C64  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806A3C68  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806A3C6C  EC 01 00 32 */	fmuls f0, f1, f0
/* 806A3C70  FC 00 00 1E */	fctiwz f0, f0
/* 806A3C74  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806A3C78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A3C7C  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 806A3C80  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806A3C84  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806A3C88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806A3C8C  4C 41 13 82 */	cror 2, 1, 2
/* 806A3C90  40 82 00 18 */	bne lbl_806A3CA8
/* 806A3C94  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806A3C98  A8 9E 06 A0 */	lha r4, 0x6a0(r30)
/* 806A3C9C  38 A0 00 01 */	li r5, 1
/* 806A3CA0  A8 DE 06 A8 */	lha r6, 0x6a8(r30)
/* 806A3CA4  4B BC C9 65 */	bl cLib_addCalcAngleS2__FPssss
lbl_806A3CA8:
/* 806A3CA8  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 806A3CAC  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 806A3CB0  7C 03 00 50 */	subf r0, r3, r0
/* 806A3CB4  7C 00 07 34 */	extsh r0, r0
/* 806A3CB8  2C 00 18 00 */	cmpwi r0, 0x1800
/* 806A3CBC  41 81 00 0C */	bgt lbl_806A3CC8
/* 806A3CC0  2C 00 E8 00 */	cmpwi r0, -6144
/* 806A3CC4  40 80 00 2C */	bge lbl_806A3CF0
lbl_806A3CC8:
/* 806A3CC8  7C 00 07 35 */	extsh. r0, r0
/* 806A3CCC  40 81 00 10 */	ble lbl_806A3CDC
/* 806A3CD0  38 00 0D 00 */	li r0, 0xd00
/* 806A3CD4  B0 1E 06 BE */	sth r0, 0x6be(r30)
/* 806A3CD8  48 00 00 0C */	b lbl_806A3CE4
lbl_806A3CDC:
/* 806A3CDC  38 00 F3 00 */	li r0, -3328
/* 806A3CE0  B0 1E 06 BE */	sth r0, 0x6be(r30)
lbl_806A3CE4:
/* 806A3CE4  38 00 02 00 */	li r0, 0x200
/* 806A3CE8  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 806A3CEC  48 00 00 0C */	b lbl_806A3CF8
lbl_806A3CF0:
/* 806A3CF0  38 00 01 80 */	li r0, 0x180
/* 806A3CF4  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
lbl_806A3CF8:
/* 806A3CF8  88 1E 06 D0 */	lbz r0, 0x6d0(r30)
/* 806A3CFC  7C 00 07 75 */	extsb. r0, r0
/* 806A3D00  40 82 00 2C */	bne lbl_806A3D2C
/* 806A3D04  7F C3 F3 78 */	mr r3, r30
/* 806A3D08  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806A3D0C  3C 80 80 6A */	lis r4, l_HIO@ha /* 0x806A74C8@ha */
/* 806A3D10  38 84 74 C8 */	addi r4, r4, l_HIO@l /* 0x806A74C8@l */
/* 806A3D14  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 806A3D18  EC 21 00 2A */	fadds f1, f1, f0
/* 806A3D1C  38 80 7F FF */	li r4, 0x7fff
/* 806A3D20  4B FF EA 0D */	bl pl_check__FP10e_dd_classfs
/* 806A3D24  2C 03 00 00 */	cmpwi r3, 0
/* 806A3D28  40 82 00 1C */	bne lbl_806A3D44
lbl_806A3D2C:
/* 806A3D2C  38 00 00 00 */	li r0, 0
/* 806A3D30  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 806A3D34  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 806A3D38  B0 1E 06 AA */	sth r0, 0x6aa(r30)
/* 806A3D3C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806A3D40  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_806A3D44:
/* 806A3D44  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 806A3D48  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 806A3D4C  39 61 00 30 */	addi r11, r1, 0x30
/* 806A3D50  4B CB E4 D9 */	bl _restgpr_29
/* 806A3D54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A3D58  7C 08 03 A6 */	mtlr r0
/* 806A3D5C  38 21 00 40 */	addi r1, r1, 0x40
/* 806A3D60  4E 80 00 20 */	blr 
