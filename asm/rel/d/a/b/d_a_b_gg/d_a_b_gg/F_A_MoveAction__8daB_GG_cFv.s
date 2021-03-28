lbl_805E5808:
/* 805E5808  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805E580C  7C 08 02 A6 */	mflr r0
/* 805E5810  90 01 00 74 */	stw r0, 0x74(r1)
/* 805E5814  39 61 00 70 */	addi r11, r1, 0x70
/* 805E5818  4B D7 C9 C4 */	b _savegpr_29
/* 805E581C  7C 7D 1B 78 */	mr r29, r3
/* 805E5820  3C 60 80 5F */	lis r3, lit_1109@ha
/* 805E5824  3B C3 D6 C0 */	addi r30, r3, lit_1109@l
/* 805E5828  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805E582C  3B E3 D0 60 */	addi r31, r3, lit_3911@l
/* 805E5830  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E5834  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805E5838  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805E583C  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 805E5840  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805E5844  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 805E5848  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805E584C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070507@ha */
/* 805E5850  38 03 05 07 */	addi r0, r3, 0x0507 /* 0x00070507@l */
/* 805E5854  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E5858  38 7D 0E 4C */	addi r3, r29, 0xe4c
/* 805E585C  38 81 00 0C */	addi r4, r1, 0xc
/* 805E5860  38 A0 00 00 */	li r5, 0
/* 805E5864  38 C0 FF FF */	li r6, -1
/* 805E5868  81 9D 0E 4C */	lwz r12, 0xe4c(r29)
/* 805E586C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805E5870  7D 89 03 A6 */	mtctr r12
/* 805E5874  4E 80 04 21 */	bctrl 
/* 805E5878  88 1D 05 C7 */	lbz r0, 0x5c7(r29)
/* 805E587C  2C 00 00 02 */	cmpwi r0, 2
/* 805E5880  41 82 03 14 */	beq lbl_805E5B94
/* 805E5884  40 80 00 14 */	bge lbl_805E5898
/* 805E5888  2C 00 00 00 */	cmpwi r0, 0
/* 805E588C  41 82 00 18 */	beq lbl_805E58A4
/* 805E5890  40 80 02 24 */	bge lbl_805E5AB4
/* 805E5894  48 00 04 08 */	b lbl_805E5C9C
lbl_805E5898:
/* 805E5898  2C 00 00 04 */	cmpwi r0, 4
/* 805E589C  40 80 04 00 */	bge lbl_805E5C9C
/* 805E58A0  48 00 03 58 */	b lbl_805E5BF8
lbl_805E58A4:
/* 805E58A4  A8 1D 05 D8 */	lha r0, 0x5d8(r29)
/* 805E58A8  2C 00 00 00 */	cmpwi r0, 0
/* 805E58AC  40 82 03 F0 */	bne lbl_805E5C9C
lbl_805E58B0:
/* 805E58B0  C0 3F 02 D0 */	lfs f1, 0x2d0(r31)
/* 805E58B4  4B C8 20 A0 */	b cM_rndF__Ff
/* 805E58B8  FC 00 08 1E */	fctiwz f0, f1
/* 805E58BC  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 805E58C0  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 805E58C4  A8 7D 05 B4 */	lha r3, 0x5b4(r29)
/* 805E58C8  7C 80 07 34 */	extsh r0, r4
/* 805E58CC  7C 03 00 00 */	cmpw r3, r0
/* 805E58D0  41 82 FF E0 */	beq lbl_805E58B0
/* 805E58D4  B0 9D 05 B4 */	sth r4, 0x5b4(r29)
/* 805E58D8  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 805E58DC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E58E0  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 805E58E4  7C 63 02 14 */	add r3, r3, r0
/* 805E58E8  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E58EC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 805E58F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E58F4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805E58F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E58FC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 805E5900  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805E5904  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 805E5908  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E590C  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 805E5910  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805E5914  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 805E5918  C0 1F 02 BC */	lfs f0, 0x2bc(r31)
/* 805E591C  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E5920  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 805E5924  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E5928  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 805E592C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E5930  38 7E 00 FC */	addi r3, r30, 0xfc
/* 805E5934  7C 63 02 14 */	add r3, r3, r0
/* 805E5938  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 805E593C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805E5940  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805E5944  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E5948  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805E594C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 805E5950  C0 43 00 08 */	lfs f2, 8(r3)
/* 805E5954  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E5958  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805E595C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805E5960  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 805E5964  38 61 00 10 */	addi r3, r1, 0x10
/* 805E5968  38 81 00 1C */	addi r4, r1, 0x1c
/* 805E596C  4B D6 1A 30 */	b PSVECSquareDistance
/* 805E5970  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E5974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E5978  40 81 00 58 */	ble lbl_805E59D0
/* 805E597C  FC 00 08 34 */	frsqrte f0, f1
/* 805E5980  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805E5984  FC 44 00 32 */	fmul f2, f4, f0
/* 805E5988  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805E598C  FC 00 00 32 */	fmul f0, f0, f0
/* 805E5990  FC 01 00 32 */	fmul f0, f1, f0
/* 805E5994  FC 03 00 28 */	fsub f0, f3, f0
/* 805E5998  FC 02 00 32 */	fmul f0, f2, f0
/* 805E599C  FC 44 00 32 */	fmul f2, f4, f0
/* 805E59A0  FC 00 00 32 */	fmul f0, f0, f0
/* 805E59A4  FC 01 00 32 */	fmul f0, f1, f0
/* 805E59A8  FC 03 00 28 */	fsub f0, f3, f0
/* 805E59AC  FC 02 00 32 */	fmul f0, f2, f0
/* 805E59B0  FC 44 00 32 */	fmul f2, f4, f0
/* 805E59B4  FC 00 00 32 */	fmul f0, f0, f0
/* 805E59B8  FC 01 00 32 */	fmul f0, f1, f0
/* 805E59BC  FC 03 00 28 */	fsub f0, f3, f0
/* 805E59C0  FC 02 00 32 */	fmul f0, f2, f0
/* 805E59C4  FC 21 00 32 */	fmul f1, f1, f0
/* 805E59C8  FC 20 08 18 */	frsp f1, f1
/* 805E59CC  48 00 00 88 */	b lbl_805E5A54
lbl_805E59D0:
/* 805E59D0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805E59D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E59D8  40 80 00 10 */	bge lbl_805E59E8
/* 805E59DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E59E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 805E59E4  48 00 00 70 */	b lbl_805E5A54
lbl_805E59E8:
/* 805E59E8  D0 21 00 08 */	stfs f1, 8(r1)
/* 805E59EC  80 81 00 08 */	lwz r4, 8(r1)
/* 805E59F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805E59F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 805E59F8  7C 03 00 00 */	cmpw r3, r0
/* 805E59FC  41 82 00 14 */	beq lbl_805E5A10
/* 805E5A00  40 80 00 40 */	bge lbl_805E5A40
/* 805E5A04  2C 03 00 00 */	cmpwi r3, 0
/* 805E5A08  41 82 00 20 */	beq lbl_805E5A28
/* 805E5A0C  48 00 00 34 */	b lbl_805E5A40
lbl_805E5A10:
/* 805E5A10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E5A14  41 82 00 0C */	beq lbl_805E5A20
/* 805E5A18  38 00 00 01 */	li r0, 1
/* 805E5A1C  48 00 00 28 */	b lbl_805E5A44
lbl_805E5A20:
/* 805E5A20  38 00 00 02 */	li r0, 2
/* 805E5A24  48 00 00 20 */	b lbl_805E5A44
lbl_805E5A28:
/* 805E5A28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805E5A2C  41 82 00 0C */	beq lbl_805E5A38
/* 805E5A30  38 00 00 05 */	li r0, 5
/* 805E5A34  48 00 00 10 */	b lbl_805E5A44
lbl_805E5A38:
/* 805E5A38  38 00 00 03 */	li r0, 3
/* 805E5A3C  48 00 00 08 */	b lbl_805E5A44
lbl_805E5A40:
/* 805E5A40  38 00 00 04 */	li r0, 4
lbl_805E5A44:
/* 805E5A44  2C 00 00 01 */	cmpwi r0, 1
/* 805E5A48  40 82 00 0C */	bne lbl_805E5A54
/* 805E5A4C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 805E5A50  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_805E5A54:
/* 805E5A54  38 9E 00 FC */	addi r4, r30, 0xfc
/* 805E5A58  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 805E5A5C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E5A60  7C 64 02 14 */	add r3, r4, r0
/* 805E5A64  C0 43 00 04 */	lfs f2, 4(r3)
/* 805E5A68  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E5A6C  EC 42 00 28 */	fsubs f2, f2, f0
/* 805E5A70  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 805E5A74  EC 01 00 24 */	fdivs f0, f1, f0
/* 805E5A78  EC 02 00 24 */	fdivs f0, f2, f0
/* 805E5A7C  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805E5A80  C0 1D 05 C0 */	lfs f0, 0x5c0(r29)
/* 805E5A84  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805E5A88  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 805E5A8C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E5A90  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 805E5A94  7C 63 02 14 */	add r3, r3, r0
/* 805E5A98  7C 84 02 14 */	add r4, r4, r0
/* 805E5A9C  4B C8 B1 68 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 805E5AA0  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 805E5AA4  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E5AA8  38 03 00 01 */	addi r0, r3, 1
/* 805E5AAC  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E5AB0  48 00 01 EC */	b lbl_805E5C9C
lbl_805E5AB4:
/* 805E5AB4  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 805E5AB8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E5ABC  38 7E 00 FC */	addi r3, r30, 0xfc
/* 805E5AC0  7C 63 02 14 */	add r3, r3, r0
/* 805E5AC4  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E5AC8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805E5ACC  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E5AD0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805E5AD4  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E5AD8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805E5ADC  7F A3 EB 78 */	mr r3, r29
/* 805E5AE0  38 81 00 40 */	addi r4, r1, 0x40
/* 805E5AE4  38 A0 00 01 */	li r5, 1
/* 805E5AE8  4B FF F8 F5 */	bl F_A_TargetMove__8daB_GG_cF4cXyzUc
/* 805E5AEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E5AF0  41 82 01 AC */	beq lbl_805E5C9C
/* 805E5AF4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805E5AF8  4B C8 1E 5C */	b cM_rndF__Ff
/* 805E5AFC  FC 00 08 1E */	fctiwz f0, f1
/* 805E5B00  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 805E5B04  83 C1 00 5C */	lwz r30, 0x5c(r1)
lbl_805E5B08:
/* 805E5B08  C0 3F 02 D0 */	lfs f1, 0x2d0(r31)
/* 805E5B0C  4B C8 1E 48 */	b cM_rndF__Ff
/* 805E5B10  FC 00 08 1E */	fctiwz f0, f1
/* 805E5B14  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 805E5B18  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 805E5B1C  A8 7D 05 B4 */	lha r3, 0x5b4(r29)
/* 805E5B20  7C 80 07 34 */	extsh r0, r4
/* 805E5B24  7C 03 00 00 */	cmpw r3, r0
/* 805E5B28  41 82 FF E0 */	beq lbl_805E5B08
/* 805E5B2C  B0 9D 05 B4 */	sth r4, 0x5b4(r29)
/* 805E5B30  2C 1E 00 46 */	cmpwi r30, 0x46
/* 805E5B34  40 81 00 1C */	ble lbl_805E5B50
/* 805E5B38  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E5B3C  38 03 00 01 */	addi r0, r3, 1
/* 805E5B40  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E5B44  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805E5B48  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E5B4C  48 00 01 50 */	b lbl_805E5C9C
lbl_805E5B50:
/* 805E5B50  7F A3 EB 78 */	mr r3, r29
/* 805E5B54  4B FF 9E F5 */	bl SpeedClear__8daB_GG_cFv
/* 805E5B58  7F A3 EB 78 */	mr r3, r29
/* 805E5B5C  38 80 00 00 */	li r4, 0
/* 805E5B60  38 A0 00 02 */	li r5, 2
/* 805E5B64  38 C0 00 0A */	li r6, 0xa
/* 805E5B68  4B FF 9E FD */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E5B6C  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 805E5B70  60 00 00 01 */	ori r0, r0, 1
/* 805E5B74  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 805E5B78  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E5B7C  60 00 00 01 */	ori r0, r0, 1
/* 805E5B80  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E5B84  80 1D 0B D4 */	lwz r0, 0xbd4(r29)
/* 805E5B88  60 00 00 01 */	ori r0, r0, 1
/* 805E5B8C  90 1D 0B D4 */	stw r0, 0xbd4(r29)
/* 805E5B90  48 00 01 0C */	b lbl_805E5C9C
lbl_805E5B94:
/* 805E5B94  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 805E5B98  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E5B9C  38 7E 00 FC */	addi r3, r30, 0xfc
/* 805E5BA0  7C 63 02 14 */	add r3, r3, r0
/* 805E5BA4  C0 63 00 00 */	lfs f3, 0(r3)
/* 805E5BA8  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 805E5BAC  C0 43 00 04 */	lfs f2, 4(r3)
/* 805E5BB0  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 805E5BB4  C0 23 00 08 */	lfs f1, 8(r3)
/* 805E5BB8  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805E5BBC  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 805E5BC0  EC 02 00 2A */	fadds f0, f2, f0
/* 805E5BC4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805E5BC8  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 805E5BCC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805E5BD0  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805E5BD4  7F A3 EB 78 */	mr r3, r29
/* 805E5BD8  38 81 00 34 */	addi r4, r1, 0x34
/* 805E5BDC  4B FF FA 41 */	bl F_A_TargetMove__8daB_GG_cF4cXyz
/* 805E5BE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E5BE4  41 82 00 B8 */	beq lbl_805E5C9C
/* 805E5BE8  88 7D 05 C7 */	lbz r3, 0x5c7(r29)
/* 805E5BEC  38 03 00 01 */	addi r0, r3, 1
/* 805E5BF0  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E5BF4  48 00 00 A8 */	b lbl_805E5C9C
lbl_805E5BF8:
/* 805E5BF8  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 805E5BFC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805E5C00  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 805E5C04  7C 63 02 14 */	add r3, r3, r0
/* 805E5C08  C0 03 00 00 */	lfs f0, 0(r3)
/* 805E5C0C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805E5C10  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E5C14  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805E5C18  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E5C1C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805E5C20  7F A3 EB 78 */	mr r3, r29
/* 805E5C24  38 81 00 28 */	addi r4, r1, 0x28
/* 805E5C28  38 A0 00 01 */	li r5, 1
/* 805E5C2C  4B FF F7 B1 */	bl F_A_TargetMove__8daB_GG_cF4cXyzUc
/* 805E5C30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805E5C34  41 82 00 68 */	beq lbl_805E5C9C
/* 805E5C38  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 805E5C3C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 805E5C40  38 7E 00 80 */	addi r3, r30, 0x80
/* 805E5C44  C0 03 00 04 */	lfs f0, 4(r3)
/* 805E5C48  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805E5C4C  C0 03 00 08 */	lfs f0, 8(r3)
/* 805E5C50  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 805E5C54  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E5C58  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 805E5C5C  EC 00 08 2A */	fadds f0, f0, f1
/* 805E5C60  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805E5C64  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805E5C68  EC 00 08 2A */	fadds f0, f0, f1
/* 805E5C6C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 805E5C70  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805E5C74  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 805E5C78  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805E5C7C  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 805E5C80  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805E5C84  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 805E5C88  38 60 00 00 */	li r3, 0
/* 805E5C8C  98 7D 05 C7 */	stb r3, 0x5c7(r29)
/* 805E5C90  38 00 00 32 */	li r0, 0x32
/* 805E5C94  B0 1D 05 D8 */	sth r0, 0x5d8(r29)
/* 805E5C98  90 7D 05 5C */	stw r3, 0x55c(r29)
lbl_805E5C9C:
/* 805E5C9C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805E5CA0  C0 1D 05 BC */	lfs f0, 0x5bc(r29)
/* 805E5CA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E5CA8  41 82 00 1C */	beq lbl_805E5CC4
/* 805E5CAC  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805E5CB0  A8 9D 05 BA */	lha r4, 0x5ba(r29)
/* 805E5CB4  38 A0 00 02 */	li r5, 2
/* 805E5CB8  38 C0 10 00 */	li r6, 0x1000
/* 805E5CBC  4B C8 A9 4C */	b cLib_addCalcAngleS2__FPssss
/* 805E5CC0  48 00 00 18 */	b lbl_805E5CD8
lbl_805E5CC4:
/* 805E5CC4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805E5CC8  A8 9D 05 BA */	lha r4, 0x5ba(r29)
/* 805E5CCC  38 A0 00 09 */	li r5, 9
/* 805E5CD0  38 C0 10 00 */	li r6, 0x1000
/* 805E5CD4  4B C8 A9 34 */	b cLib_addCalcAngleS2__FPssss
lbl_805E5CD8:
/* 805E5CD8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805E5CDC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 805E5CE0  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 805E5CE4  C0 1F 02 B0 */	lfs f0, 0x2b0(r31)
/* 805E5CE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E5CEC  40 81 00 08 */	ble lbl_805E5CF4
/* 805E5CF0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_805E5CF4:
/* 805E5CF4  39 61 00 70 */	addi r11, r1, 0x70
/* 805E5CF8  4B D7 C5 30 */	b _restgpr_29
/* 805E5CFC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805E5D00  7C 08 03 A6 */	mtlr r0
/* 805E5D04  38 21 00 70 */	addi r1, r1, 0x70
/* 805E5D08  4E 80 00 20 */	blr 
