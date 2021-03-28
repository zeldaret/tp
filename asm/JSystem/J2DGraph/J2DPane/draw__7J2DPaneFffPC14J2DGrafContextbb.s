lbl_802F67E0:
/* 802F67E0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802F67E4  7C 08 02 A6 */	mflr r0
/* 802F67E8  90 01 01 14 */	stw r0, 0x114(r1)
/* 802F67EC  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 802F67F0  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 802F67F4  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 802F67F8  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 802F67FC  39 61 00 F0 */	addi r11, r1, 0xf0
/* 802F6800  48 06 B9 D5 */	bl _savegpr_27
/* 802F6804  7C 7B 1B 78 */	mr r27, r3
/* 802F6808  FF C0 08 90 */	fmr f30, f1
/* 802F680C  FF E0 10 90 */	fmr f31, f2
/* 802F6810  7C 9C 23 78 */	mr r28, r4
/* 802F6814  7C BD 2B 78 */	mr r29, r5
/* 802F6818  3B E0 00 00 */	li r31, 0
/* 802F681C  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 802F6820  41 82 00 14 */	beq lbl_802F6834
/* 802F6824  88 1B 00 B0 */	lbz r0, 0xb0(r27)
/* 802F6828  28 00 00 00 */	cmplwi r0, 0
/* 802F682C  41 82 00 08 */	beq lbl_802F6834
/* 802F6830  3B E0 00 01 */	li r31, 1
lbl_802F6834:
/* 802F6834  7F 83 E3 78 */	mr r3, r28
/* 802F6838  81 9C 00 00 */	lwz r12, 0(r28)
/* 802F683C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802F6840  7D 89 03 A6 */	mtctr r12
/* 802F6844  4E 80 04 21 */	bctrl 
/* 802F6848  2C 03 00 01 */	cmpwi r3, 1
/* 802F684C  41 82 00 08 */	beq lbl_802F6854
/* 802F6850  3B A0 00 00 */	li r29, 0
lbl_802F6854:
/* 802F6854  80 7B 00 EC */	lwz r3, 0xec(r27)
/* 802F6858  3B C0 00 00 */	li r30, 0
/* 802F685C  28 03 00 00 */	cmplwi r3, 0
/* 802F6860  41 82 00 08 */	beq lbl_802F6868
/* 802F6864  83 C3 00 0C */	lwz r30, 0xc(r3)
lbl_802F6868:
/* 802F6868  38 00 00 00 */	li r0, 0
/* 802F686C  C0 3B 00 28 */	lfs f1, 0x28(r27)
/* 802F6870  C0 1B 00 20 */	lfs f0, 0x20(r27)
/* 802F6874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802F6878  4C 41 13 82 */	cror 2, 1, 2
/* 802F687C  40 82 00 1C */	bne lbl_802F6898
/* 802F6880  C0 3B 00 2C */	lfs f1, 0x2c(r27)
/* 802F6884  C0 1B 00 24 */	lfs f0, 0x24(r27)
/* 802F6888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802F688C  4C 41 13 82 */	cror 2, 1, 2
/* 802F6890  40 82 00 08 */	bne lbl_802F6898
/* 802F6894  38 00 00 01 */	li r0, 1
lbl_802F6898:
/* 802F6898  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802F689C  41 82 04 54 */	beq lbl_802F6CF0
/* 802F68A0  80 7B 00 20 */	lwz r3, 0x20(r27)
/* 802F68A4  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 802F68A8  90 7B 00 30 */	stw r3, 0x30(r27)
/* 802F68AC  90 1B 00 34 */	stw r0, 0x34(r27)
/* 802F68B0  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 802F68B4  80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 802F68B8  90 7B 00 38 */	stw r3, 0x38(r27)
/* 802F68BC  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 802F68C0  C0 3B 00 D4 */	lfs f1, 0xd4(r27)
/* 802F68C4  C0 5B 00 D8 */	lfs f2, 0xd8(r27)
/* 802F68C8  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 802F68CC  EC 00 08 2A */	fadds f0, f0, f1
/* 802F68D0  D0 1B 00 30 */	stfs f0, 0x30(r27)
/* 802F68D4  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 802F68D8  EC 00 10 2A */	fadds f0, f0, f2
/* 802F68DC  D0 1B 00 34 */	stfs f0, 0x34(r27)
/* 802F68E0  C0 1B 00 38 */	lfs f0, 0x38(r27)
/* 802F68E4  EC 00 08 2A */	fadds f0, f0, f1
/* 802F68E8  D0 1B 00 38 */	stfs f0, 0x38(r27)
/* 802F68EC  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 802F68F0  EC 00 10 2A */	fadds f0, f0, f2
/* 802F68F4  D0 1B 00 3C */	stfs f0, 0x3c(r27)
/* 802F68F8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802F68FC  41 82 00 38 */	beq lbl_802F6934
/* 802F6900  80 7B 00 20 */	lwz r3, 0x20(r27)
/* 802F6904  80 1B 00 24 */	lwz r0, 0x24(r27)
/* 802F6908  90 7B 00 40 */	stw r3, 0x40(r27)
/* 802F690C  90 1B 00 44 */	stw r0, 0x44(r27)
/* 802F6910  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 802F6914  80 1B 00 2C */	lwz r0, 0x2c(r27)
/* 802F6918  90 7B 00 48 */	stw r3, 0x48(r27)
/* 802F691C  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 802F6920  7F 63 DB 78 */	mr r3, r27
/* 802F6924  81 9B 00 00 */	lwz r12, 0(r27)
/* 802F6928  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 802F692C  7D 89 03 A6 */	mtctr r12
/* 802F6930  4E 80 04 21 */	bctrl 
lbl_802F6934:
/* 802F6934  28 1E 00 00 */	cmplwi r30, 0
/* 802F6938  41 82 01 1C */	beq lbl_802F6A54
/* 802F693C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 802F6940  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 802F6944  EC 41 00 28 */	fsubs f2, f1, f0
/* 802F6948  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 802F694C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 802F6950  EC 21 00 28 */	fsubs f1, f1, f0
/* 802F6954  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 802F6958  EC 00 10 2A */	fadds f0, f0, f2
/* 802F695C  D0 1B 00 30 */	stfs f0, 0x30(r27)
/* 802F6960  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 802F6964  EC 00 08 2A */	fadds f0, f0, f1
/* 802F6968  D0 1B 00 34 */	stfs f0, 0x34(r27)
/* 802F696C  C0 1B 00 38 */	lfs f0, 0x38(r27)
/* 802F6970  EC 00 10 2A */	fadds f0, f0, f2
/* 802F6974  D0 1B 00 38 */	stfs f0, 0x38(r27)
/* 802F6978  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 802F697C  EC 00 08 2A */	fadds f0, f0, f1
/* 802F6980  D0 1B 00 3C */	stfs f0, 0x3c(r27)
/* 802F6984  38 7E 00 80 */	addi r3, r30, 0x80
/* 802F6988  38 9B 00 50 */	addi r4, r27, 0x50
/* 802F698C  38 BB 00 80 */	addi r5, r27, 0x80
/* 802F6990  48 04 FB 55 */	bl PSMTXConcat
/* 802F6994  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802F6998  41 82 01 44 */	beq lbl_802F6ADC
/* 802F699C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802F69A0  41 82 00 84 */	beq lbl_802F6A24
/* 802F69A4  80 7B 00 30 */	lwz r3, 0x30(r27)
/* 802F69A8  80 1B 00 34 */	lwz r0, 0x34(r27)
/* 802F69AC  90 7B 00 40 */	stw r3, 0x40(r27)
/* 802F69B0  90 1B 00 44 */	stw r0, 0x44(r27)
/* 802F69B4  80 7B 00 38 */	lwz r3, 0x38(r27)
/* 802F69B8  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 802F69BC  90 7B 00 48 */	stw r3, 0x48(r27)
/* 802F69C0  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 802F69C4  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 802F69C8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 802F69CC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802F69D0  4C 40 13 82 */	cror 2, 0, 2
/* 802F69D4  40 82 00 08 */	bne lbl_802F69DC
/* 802F69D8  D0 3B 00 40 */	stfs f1, 0x40(r27)
lbl_802F69DC:
/* 802F69DC  C0 1B 00 44 */	lfs f0, 0x44(r27)
/* 802F69E0  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 802F69E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802F69E8  4C 40 13 82 */	cror 2, 0, 2
/* 802F69EC  40 82 00 08 */	bne lbl_802F69F4
/* 802F69F0  D0 3B 00 44 */	stfs f1, 0x44(r27)
lbl_802F69F4:
/* 802F69F4  C0 1B 00 48 */	lfs f0, 0x48(r27)
/* 802F69F8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 802F69FC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802F6A00  4C 41 13 82 */	cror 2, 1, 2
/* 802F6A04  40 82 00 08 */	bne lbl_802F6A0C
/* 802F6A08  D0 3B 00 48 */	stfs f1, 0x48(r27)
lbl_802F6A0C:
/* 802F6A0C  C0 1B 00 4C */	lfs f0, 0x4c(r27)
/* 802F6A10  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 802F6A14  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802F6A18  4C 41 13 82 */	cror 2, 1, 2
/* 802F6A1C  40 82 00 08 */	bne lbl_802F6A24
/* 802F6A20  D0 3B 00 4C */	stfs f1, 0x4c(r27)
lbl_802F6A24:
/* 802F6A24  88 1B 00 B2 */	lbz r0, 0xb2(r27)
/* 802F6A28  98 1B 00 B3 */	stb r0, 0xb3(r27)
/* 802F6A2C  88 1B 00 B4 */	lbz r0, 0xb4(r27)
/* 802F6A30  28 00 00 00 */	cmplwi r0, 0
/* 802F6A34  41 82 00 A8 */	beq lbl_802F6ADC
/* 802F6A38  88 7B 00 B2 */	lbz r3, 0xb2(r27)
/* 802F6A3C  88 1E 00 B3 */	lbz r0, 0xb3(r30)
/* 802F6A40  7C 63 01 D6 */	mullw r3, r3, r0
/* 802F6A44  38 00 00 FF */	li r0, 0xff
/* 802F6A48  7C 03 03 D6 */	divw r0, r3, r0
/* 802F6A4C  98 1B 00 B3 */	stb r0, 0xb3(r27)
/* 802F6A50  48 00 00 8C */	b lbl_802F6ADC
lbl_802F6A54:
/* 802F6A54  C0 1B 00 30 */	lfs f0, 0x30(r27)
/* 802F6A58  EC 00 F0 2A */	fadds f0, f0, f30
/* 802F6A5C  D0 1B 00 30 */	stfs f0, 0x30(r27)
/* 802F6A60  C0 1B 00 34 */	lfs f0, 0x34(r27)
/* 802F6A64  EC 00 F8 2A */	fadds f0, f0, f31
/* 802F6A68  D0 1B 00 34 */	stfs f0, 0x34(r27)
/* 802F6A6C  C0 1B 00 38 */	lfs f0, 0x38(r27)
/* 802F6A70  EC 00 F0 2A */	fadds f0, f0, f30
/* 802F6A74  D0 1B 00 38 */	stfs f0, 0x38(r27)
/* 802F6A78  C0 1B 00 3C */	lfs f0, 0x3c(r27)
/* 802F6A7C  EC 00 F8 2A */	fadds f0, f0, f31
/* 802F6A80  D0 1B 00 3C */	stfs f0, 0x3c(r27)
/* 802F6A84  7F 63 DB 78 */	mr r3, r27
/* 802F6A88  C0 1B 00 D4 */	lfs f0, 0xd4(r27)
/* 802F6A8C  EC 20 F0 2A */	fadds f1, f0, f30
/* 802F6A90  C0 1B 00 D8 */	lfs f0, 0xd8(r27)
/* 802F6A94  EC 40 F8 2A */	fadds f2, f0, f31
/* 802F6A98  81 9B 00 00 */	lwz r12, 0(r27)
/* 802F6A9C  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802F6AA0  7D 89 03 A6 */	mtctr r12
/* 802F6AA4  4E 80 04 21 */	bctrl 
/* 802F6AA8  38 7B 00 50 */	addi r3, r27, 0x50
/* 802F6AAC  38 9B 00 80 */	addi r4, r27, 0x80
/* 802F6AB0  48 04 FA 01 */	bl PSMTXCopy
/* 802F6AB4  80 7B 00 30 */	lwz r3, 0x30(r27)
/* 802F6AB8  80 1B 00 34 */	lwz r0, 0x34(r27)
/* 802F6ABC  90 7B 00 40 */	stw r3, 0x40(r27)
/* 802F6AC0  90 1B 00 44 */	stw r0, 0x44(r27)
/* 802F6AC4  80 7B 00 38 */	lwz r3, 0x38(r27)
/* 802F6AC8  80 1B 00 3C */	lwz r0, 0x3c(r27)
/* 802F6ACC  90 7B 00 48 */	stw r3, 0x48(r27)
/* 802F6AD0  90 1B 00 4C */	stw r0, 0x4c(r27)
/* 802F6AD4  88 1B 00 B2 */	lbz r0, 0xb2(r27)
/* 802F6AD8  98 1B 00 B3 */	stb r0, 0xb3(r27)
lbl_802F6ADC:
/* 802F6ADC  C0 02 C7 F0 */	lfs f0, lit_1469(r2)
/* 802F6AE0  D0 01 00 08 */	stfs f0, 8(r1)
/* 802F6AE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802F6AE8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802F6AEC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802F6AF0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802F6AF4  41 82 00 1C */	beq lbl_802F6B10
/* 802F6AF8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802F6AFC  41 82 00 14 */	beq lbl_802F6B10
/* 802F6B00  7F 83 E3 78 */	mr r3, r28
/* 802F6B04  38 81 00 08 */	addi r4, r1, 8
/* 802F6B08  38 BB 00 40 */	addi r5, r27, 0x40
/* 802F6B0C  4B FF 2D 71 */	bl func_802E987C
lbl_802F6B10:
/* 802F6B10  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802F6B14  41 82 01 94 */	beq lbl_802F6CA8
/* 802F6B18  38 00 00 00 */	li r0, 0
/* 802F6B1C  C0 3B 00 48 */	lfs f1, 0x48(r27)
/* 802F6B20  C0 1B 00 40 */	lfs f0, 0x40(r27)
/* 802F6B24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802F6B28  4C 41 13 82 */	cror 2, 1, 2
/* 802F6B2C  40 82 00 1C */	bne lbl_802F6B48
/* 802F6B30  C0 3B 00 4C */	lfs f1, 0x4c(r27)
/* 802F6B34  C0 1B 00 44 */	lfs f0, 0x44(r27)
/* 802F6B38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802F6B3C  4C 41 13 82 */	cror 2, 1, 2
/* 802F6B40  40 82 00 08 */	bne lbl_802F6B48
/* 802F6B44  38 00 00 01 */	li r0, 1
lbl_802F6B48:
/* 802F6B48  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802F6B4C  40 82 00 0C */	bne lbl_802F6B58
/* 802F6B50  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802F6B54  40 82 01 54 */	bne lbl_802F6CA8
lbl_802F6B58:
/* 802F6B58  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha
/* 802F6B5C  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 802F6B60  90 01 00 18 */	stw r0, 0x18(r1)
/* 802F6B64  C0 1C 00 04 */	lfs f0, 4(r28)
/* 802F6B68  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 802F6B6C  C0 1C 00 08 */	lfs f0, 8(r28)
/* 802F6B70  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 802F6B74  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 802F6B78  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 802F6B7C  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 802F6B80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 802F6B84  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 802F6B88  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 802F6B8C  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 802F6B90  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 802F6B94  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 802F6B98  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 802F6B9C  C0 1C 00 20 */	lfs f0, 0x20(r28)
/* 802F6BA0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 802F6BA4  80 1C 00 24 */	lwz r0, 0x24(r28)
/* 802F6BA8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F6BAC  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 802F6BB0  90 01 00 40 */	stw r0, 0x40(r1)
/* 802F6BB4  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 802F6BB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802F6BBC  80 1C 00 30 */	lwz r0, 0x30(r28)
/* 802F6BC0  90 01 00 48 */	stw r0, 0x48(r1)
/* 802F6BC4  88 1C 00 34 */	lbz r0, 0x34(r28)
/* 802F6BC8  98 01 00 4C */	stb r0, 0x4c(r1)
/* 802F6BCC  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 802F6BD0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 802F6BD4  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 802F6BD8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 802F6BDC  38 A1 00 54 */	addi r5, r1, 0x54
/* 802F6BE0  38 9C 00 3C */	addi r4, r28, 0x3c
/* 802F6BE4  38 00 00 08 */	li r0, 8
/* 802F6BE8  7C 09 03 A6 */	mtctr r0
lbl_802F6BEC:
/* 802F6BEC  80 64 00 04 */	lwz r3, 4(r4)
/* 802F6BF0  84 04 00 08 */	lwzu r0, 8(r4)
/* 802F6BF4  90 65 00 04 */	stw r3, 4(r5)
/* 802F6BF8  94 05 00 08 */	stwu r0, 8(r5)
/* 802F6BFC  42 00 FF F0 */	bdnz lbl_802F6BEC
/* 802F6C00  3B C1 00 98 */	addi r30, r1, 0x98
/* 802F6C04  38 BE FF FC */	addi r5, r30, -4
/* 802F6C08  38 9C 00 7C */	addi r4, r28, 0x7c
/* 802F6C0C  38 00 00 06 */	li r0, 6
/* 802F6C10  7C 09 03 A6 */	mtctr r0
lbl_802F6C14:
/* 802F6C14  80 64 00 04 */	lwz r3, 4(r4)
/* 802F6C18  84 04 00 08 */	lwzu r0, 8(r4)
/* 802F6C1C  90 65 00 04 */	stw r3, 4(r5)
/* 802F6C20  94 05 00 08 */	stwu r0, 8(r5)
/* 802F6C24  42 00 FF F0 */	bdnz lbl_802F6C14
/* 802F6C28  A0 1C 00 B0 */	lhz r0, 0xb0(r28)
/* 802F6C2C  B0 01 00 C8 */	sth r0, 0xc8(r1)
/* 802F6C30  88 1C 00 B2 */	lbz r0, 0xb2(r28)
/* 802F6C34  98 01 00 CA */	stb r0, 0xca(r1)
/* 802F6C38  A0 1C 00 B3 */	lhz r0, 0xb3(r28)
/* 802F6C3C  B0 01 00 CB */	sth r0, 0xcb(r1)
/* 802F6C40  88 1C 00 B5 */	lbz r0, 0xb5(r28)
/* 802F6C44  98 01 00 CD */	stb r0, 0xcd(r1)
/* 802F6C48  A0 1C 00 B6 */	lhz r0, 0xb6(r28)
/* 802F6C4C  B0 01 00 CE */	sth r0, 0xce(r1)
/* 802F6C50  88 1C 00 B8 */	lbz r0, 0xb8(r28)
/* 802F6C54  98 01 00 D0 */	stb r0, 0xd0(r1)
/* 802F6C58  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802F6C5C  41 82 00 18 */	beq lbl_802F6C74
/* 802F6C60  38 61 00 18 */	addi r3, r1, 0x18
/* 802F6C64  38 81 00 08 */	addi r4, r1, 8
/* 802F6C68  4B FF 24 59 */	bl func_802E90C0
/* 802F6C6C  38 61 00 18 */	addi r3, r1, 0x18
/* 802F6C70  4B FF 21 B1 */	bl setScissor__14J2DGrafContextFv
lbl_802F6C74:
/* 802F6C74  88 7B 00 B1 */	lbz r3, 0xb1(r27)
/* 802F6C78  48 06 5D 0D */	bl GXSetCullMode
/* 802F6C7C  7F 63 DB 78 */	mr r3, r27
/* 802F6C80  FC 20 F0 90 */	fmr f1, f30
/* 802F6C84  FC 40 F8 90 */	fmr f2, f31
/* 802F6C88  7F C4 F3 78 */	mr r4, r30
/* 802F6C8C  81 9B 00 00 */	lwz r12, 0(r27)
/* 802F6C90  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802F6C94  7D 89 03 A6 */	mtctr r12
/* 802F6C98  4E 80 04 21 */	bctrl 
/* 802F6C9C  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha
/* 802F6CA0  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 802F6CA4  90 01 00 18 */	stw r0, 0x18(r1)
lbl_802F6CA8:
/* 802F6CA8  83 7B 00 DC */	lwz r27, 0xdc(r27)
/* 802F6CAC  28 1B 00 00 */	cmplwi r27, 0
/* 802F6CB0  41 82 00 38 */	beq lbl_802F6CE8
/* 802F6CB4  3B 7B FF F4 */	addi r27, r27, -12
/* 802F6CB8  48 00 00 30 */	b lbl_802F6CE8
lbl_802F6CBC:
/* 802F6CBC  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 802F6CC0  C0 22 C7 F0 */	lfs f1, lit_1469(r2)
/* 802F6CC4  FC 40 08 90 */	fmr f2, f1
/* 802F6CC8  7F 84 E3 78 */	mr r4, r28
/* 802F6CCC  7F A5 EB 78 */	mr r5, r29
/* 802F6CD0  7F E6 FB 78 */	mr r6, r31
/* 802F6CD4  4B FF FB 0D */	bl draw__7J2DPaneFffPC14J2DGrafContextbb
/* 802F6CD8  83 7B 00 18 */	lwz r27, 0x18(r27)
/* 802F6CDC  28 1B 00 00 */	cmplwi r27, 0
/* 802F6CE0  41 82 00 08 */	beq lbl_802F6CE8
/* 802F6CE4  3B 7B FF F4 */	addi r27, r27, -12
lbl_802F6CE8:
/* 802F6CE8  28 1B 00 00 */	cmplwi r27, 0
/* 802F6CEC  40 82 FF D0 */	bne lbl_802F6CBC
lbl_802F6CF0:
/* 802F6CF0  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 802F6CF4  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 802F6CF8  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 802F6CFC  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 802F6D00  39 61 00 F0 */	addi r11, r1, 0xf0
/* 802F6D04  48 06 B5 1D */	bl _restgpr_27
/* 802F6D08  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802F6D0C  7C 08 03 A6 */	mtlr r0
/* 802F6D10  38 21 01 10 */	addi r1, r1, 0x110
/* 802F6D14  4E 80 00 20 */	blr 
