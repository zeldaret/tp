lbl_8060ACB8:
/* 8060ACB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060ACBC  7C 08 02 A6 */	mflr r0
/* 8060ACC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060ACC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060ACC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8060ACCC  7C 7E 1B 78 */	mr r30, r3
/* 8060ACD0  3C 80 80 61 */	lis r4, lit_3928@ha /* 0x8060FDE0@ha */
/* 8060ACD4  3B E4 FD E0 */	addi r31, r4, lit_3928@l /* 0x8060FDE0@l */
/* 8060ACD8  88 03 0A FA */	lbz r0, 0xafa(r3)
/* 8060ACDC  2C 00 00 01 */	cmpwi r0, 1
/* 8060ACE0  41 82 01 D8 */	beq lbl_8060AEB8
/* 8060ACE4  40 80 00 10 */	bge lbl_8060ACF4
/* 8060ACE8  2C 00 00 00 */	cmpwi r0, 0
/* 8060ACEC  40 80 00 14 */	bge lbl_8060AD00
/* 8060ACF0  48 00 03 20 */	b lbl_8060B010
lbl_8060ACF4:
/* 8060ACF4  2C 00 00 03 */	cmpwi r0, 3
/* 8060ACF8  40 80 03 18 */	bge lbl_8060B010
/* 8060ACFC  48 00 02 18 */	b lbl_8060AF14
lbl_8060AD00:
/* 8060AD00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8060AD04  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8060AD08  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8060AD0C  2C 00 00 00 */	cmpwi r0, 0
/* 8060AD10  40 80 00 14 */	bge lbl_8060AD24
/* 8060AD14  38 80 00 09 */	li r4, 9
/* 8060AD18  38 A0 00 00 */	li r5, 0
/* 8060AD1C  4B FF CD 11 */	bl setActionMode__9daB_MGN_cFii
/* 8060AD20  48 00 02 F0 */	b lbl_8060B010
lbl_8060AD24:
/* 8060AD24  88 1E 0B 06 */	lbz r0, 0xb06(r30)
/* 8060AD28  28 00 00 00 */	cmplwi r0, 0
/* 8060AD2C  41 82 00 F0 */	beq lbl_8060AE1C
/* 8060AD30  38 00 00 00 */	li r0, 0
/* 8060AD34  98 1E 0B 07 */	stb r0, 0xb07(r30)
/* 8060AD38  88 1E 0A FC */	lbz r0, 0xafc(r30)
/* 8060AD3C  28 00 00 00 */	cmplwi r0, 0
/* 8060AD40  40 82 00 28 */	bne lbl_8060AD68
/* 8060AD44  38 80 00 15 */	li r4, 0x15
/* 8060AD48  38 A0 00 00 */	li r5, 0
/* 8060AD4C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060AD50  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060AD54  4B FF CB D1 */	bl setBck__9daB_MGN_cFiUcff
/* 8060AD58  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8060AD5C  38 03 C0 00 */	addi r0, r3, -16384
/* 8060AD60  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8060AD64  48 00 00 24 */	b lbl_8060AD88
lbl_8060AD68:
/* 8060AD68  38 80 00 0F */	li r4, 0xf
/* 8060AD6C  38 A0 00 00 */	li r5, 0
/* 8060AD70  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060AD74  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060AD78  4B FF CB AD */	bl setBck__9daB_MGN_cFiUcff
/* 8060AD7C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8060AD80  38 03 40 00 */	addi r0, r3, 0x4000
/* 8060AD84  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8060AD88:
/* 8060AD88  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FC@ha */
/* 8060AD8C  38 03 04 FC */	addi r0, r3, 0x04FC /* 0x000704FC@l */
/* 8060AD90  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060AD94  38 7E 09 E0 */	addi r3, r30, 0x9e0
/* 8060AD98  38 81 00 0C */	addi r4, r1, 0xc
/* 8060AD9C  38 A0 FF FF */	li r5, -1
/* 8060ADA0  81 9E 09 E0 */	lwz r12, 0x9e0(r30)
/* 8060ADA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060ADA8  7D 89 03 A6 */	mtctr r12
/* 8060ADAC  4E 80 04 21 */	bctrl 
/* 8060ADB0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8060ADB4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8060ADB8  7F C3 F3 78 */	mr r3, r30
/* 8060ADBC  4B FF C9 D1 */	bl checkDownBeforeBG__9daB_MGN_cFv
/* 8060ADC0  38 00 00 02 */	li r0, 2
/* 8060ADC4  98 1E 0A FA */	stb r0, 0xafa(r30)
/* 8060ADC8  80 1E 21 0C */	lwz r0, 0x210c(r30)
/* 8060ADCC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060ADD0  90 1E 21 0C */	stw r0, 0x210c(r30)
/* 8060ADD4  80 1E 22 44 */	lwz r0, 0x2244(r30)
/* 8060ADD8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060ADDC  90 1E 22 44 */	stw r0, 0x2244(r30)
/* 8060ADE0  38 00 00 00 */	li r0, 0
/* 8060ADE4  98 1E 0B 01 */	stb r0, 0xb01(r30)
/* 8060ADE8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8060ADEC  88 7E 0A FF */	lbz r3, 0xaff(r30)
/* 8060ADF0  88 1E 0B 06 */	lbz r0, 0xb06(r30)
/* 8060ADF4  7C 03 02 14 */	add r0, r3, r0
/* 8060ADF8  98 1E 0A FF */	stb r0, 0xaff(r30)
/* 8060ADFC  88 1E 0A FF */	lbz r0, 0xaff(r30)
/* 8060AE00  28 00 00 06 */	cmplwi r0, 6
/* 8060AE04  41 80 00 88 */	blt lbl_8060AE8C
/* 8060AE08  7F C3 F3 78 */	mr r3, r30
/* 8060AE0C  38 80 00 09 */	li r4, 9
/* 8060AE10  38 A0 00 00 */	li r5, 0
/* 8060AE14  4B FF CC 19 */	bl setActionMode__9daB_MGN_cFii
/* 8060AE18  48 00 01 F8 */	b lbl_8060B010
lbl_8060AE1C:
/* 8060AE1C  88 1E 0A FC */	lbz r0, 0xafc(r30)
/* 8060AE20  28 00 00 00 */	cmplwi r0, 0
/* 8060AE24  40 82 00 1C */	bne lbl_8060AE40
/* 8060AE28  38 80 00 13 */	li r4, 0x13
/* 8060AE2C  38 A0 00 00 */	li r5, 0
/* 8060AE30  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060AE34  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060AE38  4B FF CA ED */	bl setBck__9daB_MGN_cFiUcff
/* 8060AE3C  48 00 00 18 */	b lbl_8060AE54
lbl_8060AE40:
/* 8060AE40  38 80 00 0C */	li r4, 0xc
/* 8060AE44  38 A0 00 00 */	li r5, 0
/* 8060AE48  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8060AE4C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8060AE50  4B FF CA D5 */	bl setBck__9daB_MGN_cFiUcff
lbl_8060AE54:
/* 8060AE54  38 00 00 01 */	li r0, 1
/* 8060AE58  98 1E 0A FA */	stb r0, 0xafa(r30)
/* 8060AE5C  80 1E 0A A0 */	lwz r0, 0xaa0(r30)
/* 8060AE60  2C 00 00 00 */	cmpwi r0, 0
/* 8060AE64  40 82 00 28 */	bne lbl_8060AE8C
/* 8060AE68  80 1E 21 0C */	lwz r0, 0x210c(r30)
/* 8060AE6C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060AE70  90 1E 21 0C */	stw r0, 0x210c(r30)
/* 8060AE74  80 1E 22 44 */	lwz r0, 0x2244(r30)
/* 8060AE78  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060AE7C  90 1E 22 44 */	stw r0, 0x2244(r30)
/* 8060AE80  38 00 00 00 */	li r0, 0
/* 8060AE84  98 1E 0B 01 */	stb r0, 0xb01(r30)
/* 8060AE88  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8060AE8C:
/* 8060AE8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FB@ha */
/* 8060AE90  38 03 04 FB */	addi r0, r3, 0x04FB /* 0x000704FB@l */
/* 8060AE94  90 01 00 08 */	stw r0, 8(r1)
/* 8060AE98  38 7E 09 E0 */	addi r3, r30, 0x9e0
/* 8060AE9C  38 81 00 08 */	addi r4, r1, 8
/* 8060AEA0  38 A0 FF FF */	li r5, -1
/* 8060AEA4  81 9E 09 E0 */	lwz r12, 0x9e0(r30)
/* 8060AEA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060AEAC  7D 89 03 A6 */	mtctr r12
/* 8060AEB0  4E 80 04 21 */	bctrl 
/* 8060AEB4  48 00 01 5C */	b lbl_8060B010
lbl_8060AEB8:
/* 8060AEB8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060AEBC  38 80 00 01 */	li r4, 1
/* 8060AEC0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060AEC4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060AEC8  40 82 00 18 */	bne lbl_8060AEE0
/* 8060AECC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060AED0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060AED4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060AED8  41 82 00 08 */	beq lbl_8060AEE0
/* 8060AEDC  38 80 00 00 */	li r4, 0
lbl_8060AEE0:
/* 8060AEE0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060AEE4  41 82 01 2C */	beq lbl_8060B010
/* 8060AEE8  80 1E 0A A0 */	lwz r0, 0xaa0(r30)
/* 8060AEEC  2C 00 00 00 */	cmpwi r0, 0
/* 8060AEF0  40 82 00 10 */	bne lbl_8060AF00
/* 8060AEF4  7F C3 F3 78 */	mr r3, r30
/* 8060AEF8  4B FF F7 79 */	bl setDownEnd__9daB_MGN_cFv
/* 8060AEFC  48 00 01 14 */	b lbl_8060B010
lbl_8060AF00:
/* 8060AF00  7F C3 F3 78 */	mr r3, r30
/* 8060AF04  38 80 00 04 */	li r4, 4
/* 8060AF08  38 A0 00 05 */	li r5, 5
/* 8060AF0C  4B FF CB 21 */	bl setActionMode__9daB_MGN_cFii
/* 8060AF10  48 00 01 00 */	b lbl_8060B010
lbl_8060AF14:
/* 8060AF14  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060AF18  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060AF1C  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 8060AF20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060AF24  4C 41 13 82 */	cror 2, 1, 2
/* 8060AF28  40 82 00 38 */	bne lbl_8060AF60
/* 8060AF2C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8060AF30  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8060AF34  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 8060AF38  4B C6 58 09 */	bl cLib_chaseF__FPfff
/* 8060AF3C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8060AF40  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8060AF44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060AF48  40 81 00 0C */	ble lbl_8060AF54
/* 8060AF4C  7F C3 F3 78 */	mr r3, r30
/* 8060AF50  4B FF B4 D5 */	bl setBodySlideEffect__9daB_MGN_cFv
lbl_8060AF54:
/* 8060AF54  7F C3 F3 78 */	mr r3, r30
/* 8060AF58  4B FF C3 45 */	bl setBloodEffect__9daB_MGN_cFv
/* 8060AF5C  48 00 00 24 */	b lbl_8060AF80
lbl_8060AF60:
/* 8060AF60  38 7E 0A 92 */	addi r3, r30, 0xa92
/* 8060AF64  38 80 00 00 */	li r4, 0
/* 8060AF68  38 A0 00 20 */	li r5, 0x20
/* 8060AF6C  4B C6 5C 25 */	bl cLib_chaseAngleS__FPsss
/* 8060AF70  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8060AF74  A8 1E 0A 92 */	lha r0, 0xa92(r30)
/* 8060AF78  7C 03 02 14 */	add r0, r3, r0
/* 8060AF7C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_8060AF80:
/* 8060AF80  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8060AF84  38 63 00 0C */	addi r3, r3, 0xc
/* 8060AF88  C0 3F 01 44 */	lfs f1, 0x144(r31)
/* 8060AF8C  4B D1 D4 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 8060AF90  2C 03 00 00 */	cmpwi r3, 0
/* 8060AF94  41 82 00 7C */	beq lbl_8060B010
/* 8060AF98  88 1E 0A FF */	lbz r0, 0xaff(r30)
/* 8060AF9C  2C 00 00 04 */	cmpwi r0, 4
/* 8060AFA0  41 82 00 4C */	beq lbl_8060AFEC
/* 8060AFA4  40 80 00 5C */	bge lbl_8060B000
/* 8060AFA8  2C 00 00 02 */	cmpwi r0, 2
/* 8060AFAC  40 80 00 28 */	bge lbl_8060AFD4
/* 8060AFB0  2C 00 00 00 */	cmpwi r0, 0
/* 8060AFB4  40 80 00 08 */	bge lbl_8060AFBC
/* 8060AFB8  48 00 00 48 */	b lbl_8060B000
lbl_8060AFBC:
/* 8060AFBC  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8060AFC0  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 8060AFC4  40 80 00 3C */	bge lbl_8060B000
/* 8060AFC8  38 00 00 02 */	li r0, 2
/* 8060AFCC  98 1E 0A FF */	stb r0, 0xaff(r30)
/* 8060AFD0  48 00 00 30 */	b lbl_8060B000
lbl_8060AFD4:
/* 8060AFD4  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8060AFD8  2C 00 01 2C */	cmpwi r0, 0x12c
/* 8060AFDC  40 80 00 24 */	bge lbl_8060B000
/* 8060AFE0  38 00 00 04 */	li r0, 4
/* 8060AFE4  98 1E 0A FF */	stb r0, 0xaff(r30)
/* 8060AFE8  48 00 00 18 */	b lbl_8060B000
lbl_8060AFEC:
/* 8060AFEC  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 8060AFF0  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 8060AFF4  40 80 00 0C */	bge lbl_8060B000
/* 8060AFF8  38 00 00 05 */	li r0, 5
/* 8060AFFC  98 1E 0A FF */	stb r0, 0xaff(r30)
lbl_8060B000:
/* 8060B000  7F C3 F3 78 */	mr r3, r30
/* 8060B004  38 80 00 01 */	li r4, 1
/* 8060B008  38 A0 00 01 */	li r5, 1
/* 8060B00C  4B FF CA 21 */	bl setActionMode__9daB_MGN_cFii
lbl_8060B010:
/* 8060B010  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8060B014  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8060B018  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060B01C  7C 08 03 A6 */	mtlr r0
/* 8060B020  38 21 00 20 */	addi r1, r1, 0x20
/* 8060B024  4E 80 00 20 */	blr 
