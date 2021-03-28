lbl_802C3780:
/* 802C3780  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C3784  7C 08 02 A6 */	mflr r0
/* 802C3788  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C378C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802C3790  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802C3794  39 61 00 30 */	addi r11, r1, 0x30
/* 802C3798  48 09 EA 45 */	bl _savegpr_29
/* 802C379C  7C 7F 1B 78 */	mr r31, r3
/* 802C37A0  7C 9D 23 78 */	mr r29, r4
/* 802C37A4  7C BE 2B 78 */	mr r30, r5
/* 802C37A8  4B FF CE A5 */	bl framework__10Z2CreatureFUlSc
/* 802C37AC  88 1F 00 B3 */	lbz r0, 0xb3(r31)
/* 802C37B0  28 00 00 00 */	cmplwi r0, 0
/* 802C37B4  41 82 00 20 */	beq lbl_802C37D4
/* 802C37B8  38 7F 00 94 */	addi r3, r31, 0x94
/* 802C37BC  7F A4 EB 78 */	mr r4, r29
/* 802C37C0  7F C5 F3 78 */	mr r5, r30
/* 802C37C4  81 9F 00 A4 */	lwz r12, 0xa4(r31)
/* 802C37C8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802C37CC  7D 89 03 A6 */	mtctr r12
/* 802C37D0  4E 80 04 21 */	bctrl 
lbl_802C37D4:
/* 802C37D4  88 7F 00 C1 */	lbz r3, 0xc1(r31)
/* 802C37D8  28 03 00 FF */	cmplwi r3, 0xff
/* 802C37DC  41 82 00 0C */	beq lbl_802C37E8
/* 802C37E0  38 03 00 01 */	addi r0, r3, 1
/* 802C37E4  98 1F 00 C1 */	stb r0, 0xc1(r31)
lbl_802C37E8:
/* 802C37E8  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C37EC  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802C37F0  41 82 00 3C */	beq lbl_802C382C
/* 802C37F4  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020051@ha */
/* 802C37F8  38 03 00 51 */	addi r0, r3, 0x0051 /* 0x00020051@l */
/* 802C37FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3800  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802C3804  38 81 00 14 */	addi r4, r1, 0x14
/* 802C3808  38 A0 00 00 */	li r5, 0
/* 802C380C  38 C0 00 00 */	li r6, 0
/* 802C3810  38 E0 00 00 */	li r7, 0
/* 802C3814  C0 22 C2 98 */	lfs f1, lit_3721(r2)
/* 802C3818  FC 40 08 90 */	fmr f2, f1
/* 802C381C  C0 62 C2 9C */	lfs f3, lit_3722(r2)
/* 802C3820  FC 80 18 90 */	fmr f4, f3
/* 802C3824  39 00 00 00 */	li r8, 0
/* 802C3828  4B FE 8C E5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_802C382C:
/* 802C382C  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C3830  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802C3834  41 82 00 5C */	beq lbl_802C3890
/* 802C3838  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802C383C  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 802C3840  C0 02 C2 A0 */	lfs f0, lit_3723(r2)
/* 802C3844  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802C3848  40 81 00 48 */	ble lbl_802C3890
/* 802C384C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020062@ha */
/* 802C3850  38 03 00 62 */	addi r0, r3, 0x0062 /* 0x00020062@l */
/* 802C3854  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C3858  7F E3 FB 78 */	mr r3, r31
/* 802C385C  38 81 00 10 */	addi r4, r1, 0x10
/* 802C3860  38 A0 00 00 */	li r5, 0
/* 802C3864  38 C0 FF FF */	li r6, -1
/* 802C3868  48 00 06 01 */	bl startLinkSoundLevel__14Z2CreatureLinkF10JAISoundIDUlSc
/* 802C386C  28 03 00 00 */	cmplwi r3, 0
/* 802C3870  41 82 00 20 */	beq lbl_802C3890
/* 802C3874  80 63 00 00 */	lwz r3, 0(r3)
/* 802C3878  28 03 00 00 */	cmplwi r3, 0
/* 802C387C  41 82 00 14 */	beq lbl_802C3890
/* 802C3880  38 63 00 48 */	addi r3, r3, 0x48
/* 802C3884  FC 20 F8 90 */	fmr f1, f31
/* 802C3888  38 80 00 00 */	li r4, 0
/* 802C388C  4B FD F5 29 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802C3890:
/* 802C3890  88 1F 00 CB */	lbz r0, 0xcb(r31)
/* 802C3894  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802C3898  41 82 00 24 */	beq lbl_802C38BC
/* 802C389C  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002002A@ha */
/* 802C38A0  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0002002A@l */
/* 802C38A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C38A8  7F E3 FB 78 */	mr r3, r31
/* 802C38AC  38 81 00 0C */	addi r4, r1, 0xc
/* 802C38B0  38 A0 00 00 */	li r5, 0
/* 802C38B4  38 C0 FF FF */	li r6, -1
/* 802C38B8  48 00 05 B1 */	bl startLinkSoundLevel__14Z2CreatureLinkF10JAISoundIDUlSc
lbl_802C38BC:
/* 802C38BC  38 00 00 00 */	li r0, 0
/* 802C38C0  98 1F 00 C8 */	stb r0, 0xc8(r31)
/* 802C38C4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C38C8  28 03 00 00 */	cmplwi r3, 0
/* 802C38CC  41 82 01 24 */	beq lbl_802C39F0
/* 802C38D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 802C38D4  D0 1F 00 B8 */	stfs f0, 0xb8(r31)
/* 802C38D8  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C38DC  38 9F 00 B4 */	addi r4, r31, 0xb4
/* 802C38E0  48 08 3A BD */	bl PSVECSquareDistance
/* 802C38E4  C0 02 C2 A0 */	lfs f0, lit_3723(r2)
/* 802C38E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C38EC  40 81 00 58 */	ble lbl_802C3944
/* 802C38F0  FC 00 08 34 */	frsqrte f0, f1
/* 802C38F4  C8 82 C2 A8 */	lfd f4, lit_3724(r2)
/* 802C38F8  FC 44 00 32 */	fmul f2, f4, f0
/* 802C38FC  C8 62 C2 B0 */	lfd f3, lit_3725(r2)
/* 802C3900  FC 00 00 32 */	fmul f0, f0, f0
/* 802C3904  FC 01 00 32 */	fmul f0, f1, f0
/* 802C3908  FC 03 00 28 */	fsub f0, f3, f0
/* 802C390C  FC 02 00 32 */	fmul f0, f2, f0
/* 802C3910  FC 44 00 32 */	fmul f2, f4, f0
/* 802C3914  FC 00 00 32 */	fmul f0, f0, f0
/* 802C3918  FC 01 00 32 */	fmul f0, f1, f0
/* 802C391C  FC 03 00 28 */	fsub f0, f3, f0
/* 802C3920  FC 02 00 32 */	fmul f0, f2, f0
/* 802C3924  FC 44 00 32 */	fmul f2, f4, f0
/* 802C3928  FC 00 00 32 */	fmul f0, f0, f0
/* 802C392C  FC 01 00 32 */	fmul f0, f1, f0
/* 802C3930  FC 03 00 28 */	fsub f0, f3, f0
/* 802C3934  FC 02 00 32 */	fmul f0, f2, f0
/* 802C3938  FC 21 00 32 */	fmul f1, f1, f0
/* 802C393C  FC 20 08 18 */	frsp f1, f1
/* 802C3940  48 00 00 88 */	b lbl_802C39C8
lbl_802C3944:
/* 802C3944  C8 02 C2 B8 */	lfd f0, lit_3726(r2)
/* 802C3948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C394C  40 80 00 10 */	bge lbl_802C395C
/* 802C3950  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802C3954  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 802C3958  48 00 00 70 */	b lbl_802C39C8
lbl_802C395C:
/* 802C395C  D0 21 00 08 */	stfs f1, 8(r1)
/* 802C3960  80 81 00 08 */	lwz r4, 8(r1)
/* 802C3964  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 802C3968  3C 00 7F 80 */	lis r0, 0x7f80
/* 802C396C  7C 03 00 00 */	cmpw r3, r0
/* 802C3970  41 82 00 14 */	beq lbl_802C3984
/* 802C3974  40 80 00 40 */	bge lbl_802C39B4
/* 802C3978  2C 03 00 00 */	cmpwi r3, 0
/* 802C397C  41 82 00 20 */	beq lbl_802C399C
/* 802C3980  48 00 00 34 */	b lbl_802C39B4
lbl_802C3984:
/* 802C3984  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802C3988  41 82 00 0C */	beq lbl_802C3994
/* 802C398C  38 00 00 01 */	li r0, 1
/* 802C3990  48 00 00 28 */	b lbl_802C39B8
lbl_802C3994:
/* 802C3994  38 00 00 02 */	li r0, 2
/* 802C3998  48 00 00 20 */	b lbl_802C39B8
lbl_802C399C:
/* 802C399C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802C39A0  41 82 00 0C */	beq lbl_802C39AC
/* 802C39A4  38 00 00 05 */	li r0, 5
/* 802C39A8  48 00 00 10 */	b lbl_802C39B8
lbl_802C39AC:
/* 802C39AC  38 00 00 03 */	li r0, 3
/* 802C39B0  48 00 00 08 */	b lbl_802C39B8
lbl_802C39B4:
/* 802C39B4  38 00 00 04 */	li r0, 4
lbl_802C39B8:
/* 802C39B8  2C 00 00 01 */	cmpwi r0, 1
/* 802C39BC  40 82 00 0C */	bne lbl_802C39C8
/* 802C39C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 802C39C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_802C39C8:
/* 802C39C8  FC 00 08 1E */	fctiwz f0, f1
/* 802C39CC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 802C39D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802C39D4  98 1F 00 C8 */	stb r0, 0xc8(r31)
/* 802C39D8  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C39DC  C0 03 00 00 */	lfs f0, 0(r3)
/* 802C39E0  D0 1F 00 B4 */	stfs f0, 0xb4(r31)
/* 802C39E4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802C39E8  C0 03 00 08 */	lfs f0, 8(r3)
/* 802C39EC  D0 1F 00 BC */	stfs f0, 0xbc(r31)
lbl_802C39F0:
/* 802C39F0  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802C39F4  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802C39F8  28 00 00 0A */	cmplwi r0, 0xa
/* 802C39FC  40 82 00 10 */	bne lbl_802C3A0C
/* 802C3A00  38 00 00 B4 */	li r0, 0xb4
/* 802C3A04  98 1F 00 C9 */	stb r0, 0xc9(r31)
/* 802C3A08  48 00 00 3C */	b lbl_802C3A44
lbl_802C3A0C:
/* 802C3A0C  88 1F 00 C8 */	lbz r0, 0xc8(r31)
/* 802C3A10  28 00 00 05 */	cmplwi r0, 5
/* 802C3A14  40 80 00 1C */	bge lbl_802C3A30
/* 802C3A18  88 7F 00 C9 */	lbz r3, 0xc9(r31)
/* 802C3A1C  28 03 00 B4 */	cmplwi r3, 0xb4
/* 802C3A20  40 80 00 24 */	bge lbl_802C3A44
/* 802C3A24  38 03 00 01 */	addi r0, r3, 1
/* 802C3A28  98 1F 00 C9 */	stb r0, 0xc9(r31)
/* 802C3A2C  48 00 00 18 */	b lbl_802C3A44
lbl_802C3A30:
/* 802C3A30  88 7F 00 C9 */	lbz r3, 0xc9(r31)
/* 802C3A34  28 03 00 00 */	cmplwi r3, 0
/* 802C3A38  41 82 00 0C */	beq lbl_802C3A44
/* 802C3A3C  38 03 FF FF */	addi r0, r3, -1
/* 802C3A40  98 1F 00 C9 */	stb r0, 0xc9(r31)
lbl_802C3A44:
/* 802C3A44  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802C3A48  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802C3A4C  39 61 00 30 */	addi r11, r1, 0x30
/* 802C3A50  48 09 E7 D9 */	bl _restgpr_29
/* 802C3A54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C3A58  7C 08 03 A6 */	mtlr r0
/* 802C3A5C  38 21 00 40 */	addi r1, r1, 0x40
/* 802C3A60  4E 80 00 20 */	blr 
