lbl_804E8848:
/* 804E8848  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E884C  7C 08 02 A6 */	mflr r0
/* 804E8850  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E8854  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804E8858  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804E885C  7C 7E 1B 78 */	mr r30, r3
/* 804E8860  3C 80 80 4F */	lis r4, lit_3789@ha
/* 804E8864  3B E4 E8 AC */	addi r31, r4, lit_3789@l
/* 804E8868  38 80 00 01 */	li r4, 1
/* 804E886C  98 83 06 F4 */	stb r4, 0x6f4(r3)
/* 804E8870  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 804E8874  2C 00 00 02 */	cmpwi r0, 2
/* 804E8878  41 82 01 38 */	beq lbl_804E89B0
/* 804E887C  40 80 00 14 */	bge lbl_804E8890
/* 804E8880  2C 00 00 00 */	cmpwi r0, 0
/* 804E8884  41 82 00 1C */	beq lbl_804E88A0
/* 804E8888  40 80 00 C4 */	bge lbl_804E894C
/* 804E888C  48 00 04 D4 */	b lbl_804E8D60
lbl_804E8890:
/* 804E8890  2C 00 00 04 */	cmpwi r0, 4
/* 804E8894  41 82 04 54 */	beq lbl_804E8CE8
/* 804E8898  40 80 04 C8 */	bge lbl_804E8D60
/* 804E889C  48 00 02 04 */	b lbl_804E8AA0
lbl_804E88A0:
/* 804E88A0  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 804E88A4  4B FF DB A5 */	bl jump_pos_check__FP10e_dn_classP4cXyz
/* 804E88A8  2C 03 00 00 */	cmpwi r3, 0
/* 804E88AC  41 82 00 30 */	beq lbl_804E88DC
/* 804E88B0  7F C3 F3 78 */	mr r3, r30
/* 804E88B4  38 80 00 1B */	li r4, 0x1b
/* 804E88B8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E88BC  38 A0 00 00 */	li r5, 0
/* 804E88C0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E88C4  4B FF CA 0D */	bl anm_init__FP10e_dn_classifUcf
/* 804E88C8  38 00 00 02 */	li r0, 2
/* 804E88CC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E88D0  A8 1E 06 D4 */	lha r0, 0x6d4(r30)
/* 804E88D4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 804E88D8  48 00 04 88 */	b lbl_804E8D60
lbl_804E88DC:
/* 804E88DC  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 804E88E0  2C 00 00 1F */	cmpwi r0, 0x1f
/* 804E88E4  41 82 00 50 */	beq lbl_804E8934
/* 804E88E8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804E88EC  4B D7 F0 68 */	b cM_rndF__Ff
/* 804E88F0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804E88F4  EC 40 08 2A */	fadds f2, f0, f1
/* 804E88F8  7F C3 F3 78 */	mr r3, r30
/* 804E88FC  38 80 00 1F */	li r4, 0x1f
/* 804E8900  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E8904  38 A0 00 02 */	li r5, 2
/* 804E8908  4B FF C9 C9 */	bl anm_init__FP10e_dn_classifUcf
/* 804E890C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 804E8910  4B D7 F0 44 */	b cM_rndF__Ff
/* 804E8914  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804E8918  EC 00 08 2A */	fadds f0, f0, f1
/* 804E891C  FC 00 00 1E */	fctiwz f0, f0
/* 804E8920  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804E8924  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E8928  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E892C  38 00 00 01 */	li r0, 1
/* 804E8930  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E8934:
/* 804E8934  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804E8938  A8 9E 06 D4 */	lha r4, 0x6d4(r30)
/* 804E893C  38 A0 00 04 */	li r5, 4
/* 804E8940  38 C0 08 00 */	li r6, 0x800
/* 804E8944  4B D8 7C C4 */	b cLib_addCalcAngleS2__FPssss
/* 804E8948  48 00 04 18 */	b lbl_804E8D60
lbl_804E894C:
/* 804E894C  38 00 00 02 */	li r0, 2
/* 804E8950  98 1E 06 F4 */	stb r0, 0x6f4(r30)
/* 804E8954  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804E8958  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804E895C  80 63 00 00 */	lwz r3, 0(r3)
/* 804E8960  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804E8964  4B B2 3A 78 */	b mDoMtx_YrotS__FPA4_fs
/* 804E8968  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E896C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E8970  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E8974  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804E8978  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804E897C  38 61 00 24 */	addi r3, r1, 0x24
/* 804E8980  38 9E 07 38 */	addi r4, r30, 0x738
/* 804E8984  4B D8 85 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 804E8988  38 7E 07 38 */	addi r3, r30, 0x738
/* 804E898C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804E8990  7C 65 1B 78 */	mr r5, r3
/* 804E8994  4B E5 E6 FC */	b PSVECAdd
/* 804E8998  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E899C  2C 00 00 00 */	cmpwi r0, 0
/* 804E89A0  40 82 03 C0 */	bne lbl_804E8D60
/* 804E89A4  38 00 00 00 */	li r0, 0
/* 804E89A8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E89AC  48 00 03 B4 */	b lbl_804E8D60
lbl_804E89B0:
/* 804E89B0  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E89B4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E89B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E89BC  40 82 00 18 */	bne lbl_804E89D4
/* 804E89C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E89C4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E89C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E89CC  41 82 00 08 */	beq lbl_804E89D4
/* 804E89D0  38 80 00 00 */	li r4, 0
lbl_804E89D4:
/* 804E89D4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E89D8  41 82 03 88 */	beq lbl_804E8D60
/* 804E89DC  7F C3 F3 78 */	mr r3, r30
/* 804E89E0  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 804E89E4  4B FF DA 65 */	bl jump_pos_check__FP10e_dn_classP4cXyz
/* 804E89E8  2C 03 00 00 */	cmpwi r3, 0
/* 804E89EC  41 82 00 64 */	beq lbl_804E8A50
/* 804E89F0  38 00 00 03 */	li r0, 3
/* 804E89F4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E89F8  98 1E 10 E4 */	stb r0, 0x10e4(r30)
/* 804E89FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070047@ha */
/* 804E8A00  38 03 00 47 */	addi r0, r3, 0x0047 /* 0x00070047@l */
/* 804E8A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8A08  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E8A0C  38 81 00 14 */	addi r4, r1, 0x14
/* 804E8A10  38 A0 FF FF */	li r5, -1
/* 804E8A14  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E8A18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E8A1C  7D 89 03 A6 */	mtctr r12
/* 804E8A20  4E 80 04 21 */	bctrl 
/* 804E8A24  38 00 00 14 */	li r0, 0x14
/* 804E8A28  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E8A2C  38 00 00 3C */	li r0, 0x3c
/* 804E8A30  B0 1E 06 E2 */	sth r0, 0x6e2(r30)
/* 804E8A34  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804E8A38  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 804E8A3C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804E8A40  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 804E8A44  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804E8A48  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 804E8A4C  48 00 00 54 */	b lbl_804E8AA0
lbl_804E8A50:
/* 804E8A50  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804E8A54  4B D7 EF 00 */	b cM_rndF__Ff
/* 804E8A58  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804E8A5C  EC 40 08 2A */	fadds f2, f0, f1
/* 804E8A60  7F C3 F3 78 */	mr r3, r30
/* 804E8A64  38 80 00 1F */	li r4, 0x1f
/* 804E8A68  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E8A6C  38 A0 00 02 */	li r5, 2
/* 804E8A70  4B FF C8 61 */	bl anm_init__FP10e_dn_classifUcf
/* 804E8A74  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 804E8A78  4B D7 EE DC */	b cM_rndF__Ff
/* 804E8A7C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 804E8A80  EC 00 08 2A */	fadds f0, f0, f1
/* 804E8A84  FC 00 00 1E */	fctiwz f0, f0
/* 804E8A88  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804E8A8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E8A90  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E8A94  38 00 00 01 */	li r0, 1
/* 804E8A98  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E8A9C  48 00 02 C4 */	b lbl_804E8D60
lbl_804E8AA0:
/* 804E8AA0  38 00 00 01 */	li r0, 1
/* 804E8AA4  98 1E 05 D8 */	stb r0, 0x5d8(r30)
/* 804E8AA8  38 61 00 18 */	addi r3, r1, 0x18
/* 804E8AAC  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 804E8AB0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804E8AB4  4B D7 E0 80 */	b __mi__4cXyzCFRC3Vec
/* 804E8AB8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804E8ABC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804E8AC0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804E8AC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E8AC8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 804E8ACC  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 804E8AD0  4B D7 EB A4 */	b cM_atan2s__Fff
/* 804E8AD4  B0 7E 05 D4 */	sth r3, 0x5d4(r30)
/* 804E8AD8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804E8ADC  EC 20 00 32 */	fmuls f1, f0, f0
/* 804E8AE0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804E8AE4  EC 00 00 32 */	fmuls f0, f0, f0
/* 804E8AE8  EC 41 00 2A */	fadds f2, f1, f0
/* 804E8AEC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E8AF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804E8AF4  40 81 00 0C */	ble lbl_804E8B00
/* 804E8AF8  FC 00 10 34 */	frsqrte f0, f2
/* 804E8AFC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804E8B00:
/* 804E8B00  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 804E8B04  4B D7 EB 70 */	b cM_atan2s__Fff
/* 804E8B08  7C 03 00 D0 */	neg r0, r3
/* 804E8B0C  B0 1E 05 D6 */	sth r0, 0x5d6(r30)
/* 804E8B10  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804E8B14  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804E8B18  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E8B1C  2C 00 00 01 */	cmpwi r0, 1
/* 804E8B20  40 82 00 1C */	bne lbl_804E8B3C
/* 804E8B24  7F C3 F3 78 */	mr r3, r30
/* 804E8B28  38 80 00 1C */	li r4, 0x1c
/* 804E8B2C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804E8B30  38 A0 00 00 */	li r5, 0
/* 804E8B34  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E8B38  4B FF C7 99 */	bl anm_init__FP10e_dn_classifUcf
lbl_804E8B3C:
/* 804E8B3C  38 61 00 24 */	addi r3, r1, 0x24
/* 804E8B40  4B E5 E5 F8 */	b PSVECSquareMag
/* 804E8B44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E8B48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E8B4C  40 81 00 58 */	ble lbl_804E8BA4
/* 804E8B50  FC 00 08 34 */	frsqrte f0, f1
/* 804E8B54  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 804E8B58  FC 44 00 32 */	fmul f2, f4, f0
/* 804E8B5C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 804E8B60  FC 00 00 32 */	fmul f0, f0, f0
/* 804E8B64  FC 01 00 32 */	fmul f0, f1, f0
/* 804E8B68  FC 03 00 28 */	fsub f0, f3, f0
/* 804E8B6C  FC 02 00 32 */	fmul f0, f2, f0
/* 804E8B70  FC 44 00 32 */	fmul f2, f4, f0
/* 804E8B74  FC 00 00 32 */	fmul f0, f0, f0
/* 804E8B78  FC 01 00 32 */	fmul f0, f1, f0
/* 804E8B7C  FC 03 00 28 */	fsub f0, f3, f0
/* 804E8B80  FC 02 00 32 */	fmul f0, f2, f0
/* 804E8B84  FC 44 00 32 */	fmul f2, f4, f0
/* 804E8B88  FC 00 00 32 */	fmul f0, f0, f0
/* 804E8B8C  FC 01 00 32 */	fmul f0, f1, f0
/* 804E8B90  FC 03 00 28 */	fsub f0, f3, f0
/* 804E8B94  FC 02 00 32 */	fmul f0, f2, f0
/* 804E8B98  FC 21 00 32 */	fmul f1, f1, f0
/* 804E8B9C  FC 20 08 18 */	frsp f1, f1
/* 804E8BA0  48 00 00 88 */	b lbl_804E8C28
lbl_804E8BA4:
/* 804E8BA4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 804E8BA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E8BAC  40 80 00 10 */	bge lbl_804E8BBC
/* 804E8BB0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804E8BB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804E8BB8  48 00 00 70 */	b lbl_804E8C28
lbl_804E8BBC:
/* 804E8BBC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804E8BC0  80 81 00 08 */	lwz r4, 8(r1)
/* 804E8BC4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804E8BC8  3C 00 7F 80 */	lis r0, 0x7f80
/* 804E8BCC  7C 03 00 00 */	cmpw r3, r0
/* 804E8BD0  41 82 00 14 */	beq lbl_804E8BE4
/* 804E8BD4  40 80 00 40 */	bge lbl_804E8C14
/* 804E8BD8  2C 03 00 00 */	cmpwi r3, 0
/* 804E8BDC  41 82 00 20 */	beq lbl_804E8BFC
/* 804E8BE0  48 00 00 34 */	b lbl_804E8C14
lbl_804E8BE4:
/* 804E8BE4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804E8BE8  41 82 00 0C */	beq lbl_804E8BF4
/* 804E8BEC  38 00 00 01 */	li r0, 1
/* 804E8BF0  48 00 00 28 */	b lbl_804E8C18
lbl_804E8BF4:
/* 804E8BF4  38 00 00 02 */	li r0, 2
/* 804E8BF8  48 00 00 20 */	b lbl_804E8C18
lbl_804E8BFC:
/* 804E8BFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804E8C00  41 82 00 0C */	beq lbl_804E8C0C
/* 804E8C04  38 00 00 05 */	li r0, 5
/* 804E8C08  48 00 00 10 */	b lbl_804E8C18
lbl_804E8C0C:
/* 804E8C0C  38 00 00 03 */	li r0, 3
/* 804E8C10  48 00 00 08 */	b lbl_804E8C18
lbl_804E8C14:
/* 804E8C14  38 00 00 04 */	li r0, 4
lbl_804E8C18:
/* 804E8C18  2C 00 00 01 */	cmpwi r0, 1
/* 804E8C1C  40 82 00 0C */	bne lbl_804E8C28
/* 804E8C20  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804E8C24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804E8C28:
/* 804E8C28  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 804E8C2C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804E8C30  EC 02 00 32 */	fmuls f0, f2, f0
/* 804E8C34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E8C38  40 80 00 84 */	bge lbl_804E8CBC
/* 804E8C3C  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 804E8C40  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804E8C44  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 804E8C48  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804E8C4C  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 804E8C50  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804E8C54  7F C3 F3 78 */	mr r3, r30
/* 804E8C58  38 80 00 1D */	li r4, 0x1d
/* 804E8C5C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E8C60  38 A0 00 00 */	li r5, 0
/* 804E8C64  FC 40 08 90 */	fmr f2, f1
/* 804E8C68  4B FF C6 69 */	bl anm_init__FP10e_dn_classifUcf
/* 804E8C6C  38 00 00 04 */	li r0, 4
/* 804E8C70  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E8C74  38 00 00 03 */	li r0, 3
/* 804E8C78  98 1E 10 E4 */	stb r0, 0x10e4(r30)
/* 804E8C7C  B0 1E 06 E0 */	sth r0, 0x6e0(r30)
/* 804E8C80  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007003A@ha */
/* 804E8C84  38 03 00 3A */	addi r0, r3, 0x003A /* 0x0007003A@l */
/* 804E8C88  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E8C8C  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E8C90  38 81 00 10 */	addi r4, r1, 0x10
/* 804E8C94  38 A0 00 00 */	li r5, 0
/* 804E8C98  38 C0 FF FF */	li r6, -1
/* 804E8C9C  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E8CA0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804E8CA4  7D 89 03 A6 */	mtctr r12
/* 804E8CA8  4E 80 04 21 */	bctrl 
/* 804E8CAC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E8CB0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804E8CB4  38 00 00 00 */	li r0, 0
/* 804E8CB8  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
lbl_804E8CBC:
/* 804E8CBC  A8 1E 06 E2 */	lha r0, 0x6e2(r30)
/* 804E8CC0  2C 00 00 00 */	cmpwi r0, 0
/* 804E8CC4  41 82 00 10 */	beq lbl_804E8CD4
/* 804E8CC8  80 1E 08 B0 */	lwz r0, 0x8b0(r30)
/* 804E8CCC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804E8CD0  41 82 00 90 */	beq lbl_804E8D60
lbl_804E8CD4:
/* 804E8CD4  38 00 00 03 */	li r0, 3
/* 804E8CD8  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E8CDC  38 00 00 00 */	li r0, 0
/* 804E8CE0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E8CE4  48 00 00 7C */	b lbl_804E8D60
lbl_804E8CE8:
/* 804E8CE8  A8 1E 06 E0 */	lha r0, 0x6e0(r30)
/* 804E8CEC  2C 00 00 01 */	cmpwi r0, 1
/* 804E8CF0  40 82 00 30 */	bne lbl_804E8D20
/* 804E8CF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070039@ha */
/* 804E8CF8  38 03 00 39 */	addi r0, r3, 0x0039 /* 0x00070039@l */
/* 804E8CFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E8D00  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E8D04  38 81 00 0C */	addi r4, r1, 0xc
/* 804E8D08  38 A0 00 00 */	li r5, 0
/* 804E8D0C  38 C0 FF FF */	li r6, -1
/* 804E8D10  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E8D14  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804E8D18  7D 89 03 A6 */	mtctr r12
/* 804E8D1C  4E 80 04 21 */	bctrl 
lbl_804E8D20:
/* 804E8D20  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E8D24  38 80 00 01 */	li r4, 1
/* 804E8D28  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E8D2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E8D30  40 82 00 18 */	bne lbl_804E8D48
/* 804E8D34  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E8D38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E8D3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E8D40  41 82 00 08 */	beq lbl_804E8D48
/* 804E8D44  38 80 00 00 */	li r4, 0
lbl_804E8D48:
/* 804E8D48  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E8D4C  41 82 00 14 */	beq lbl_804E8D60
/* 804E8D50  38 00 00 03 */	li r0, 3
/* 804E8D54  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E8D58  38 00 00 00 */	li r0, 0
/* 804E8D5C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_804E8D60:
/* 804E8D60  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804E8D64  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804E8D68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E8D6C  7C 08 03 A6 */	mtlr r0
/* 804E8D70  38 21 00 40 */	addi r1, r1, 0x40
/* 804E8D74  4E 80 00 20 */	blr 
