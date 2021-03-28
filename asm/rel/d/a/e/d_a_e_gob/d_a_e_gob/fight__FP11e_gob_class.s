lbl_806D886C:
/* 806D886C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806D8870  7C 08 02 A6 */	mflr r0
/* 806D8874  90 01 00 74 */	stw r0, 0x74(r1)
/* 806D8878  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806D887C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806D8880  39 61 00 60 */	addi r11, r1, 0x60
/* 806D8884  4B C8 99 50 */	b _savegpr_27
/* 806D8888  7C 7B 1B 78 */	mr r27, r3
/* 806D888C  3C 80 80 6E */	lis r4, lit_3763@ha
/* 806D8890  3B E4 EE 38 */	addi r31, r4, lit_3763@l
/* 806D8894  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 806D8898  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 806D889C  FC 00 00 1E */	fctiwz f0, f0
/* 806D88A0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D88A4  83 C1 00 3C */	lwz r30, 0x3c(r1)
/* 806D88A8  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 806D88AC  3B A0 02 00 */	li r29, 0x200
/* 806D88B0  AB 83 06 6A */	lha r28, 0x66a(r3)
/* 806D88B4  A8 83 06 58 */	lha r4, 0x658(r3)
/* 806D88B8  38 04 00 01 */	addi r0, r4, 1
/* 806D88BC  28 00 00 0C */	cmplwi r0, 0xc
/* 806D88C0  41 81 04 48 */	bgt lbl_806D8D08
/* 806D88C4  3C 80 80 6E */	lis r4, lit_4087@ha
/* 806D88C8  38 84 F0 5C */	addi r4, r4, lit_4087@l
/* 806D88CC  54 00 10 3A */	slwi r0, r0, 2
/* 806D88D0  7C 04 00 2E */	lwzx r0, r4, r0
/* 806D88D4  7C 09 03 A6 */	mtctr r0
/* 806D88D8  4E 80 04 20 */	bctr 
lbl_806D88DC:
/* 806D88DC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 806D88E0  D0 1B 04 AC */	stfs f0, 0x4ac(r27)
lbl_806D88E4:
/* 806D88E4  7F 63 DB 78 */	mr r3, r27
/* 806D88E8  38 80 00 26 */	li r4, 0x26
/* 806D88EC  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 806D88F0  38 A0 00 02 */	li r5, 2
/* 806D88F4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D88F8  4B FF FC 81 */	bl anm_init__FP11e_gob_classifUcf
/* 806D88FC  38 00 00 01 */	li r0, 1
/* 806D8900  B0 1B 06 58 */	sth r0, 0x658(r27)
/* 806D8904  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806D8908  4B B8 F0 4C */	b cM_rndF__Ff
/* 806D890C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806D8910  EC 00 08 2A */	fadds f0, f0, f1
/* 806D8914  FC 00 00 1E */	fctiwz f0, f0
/* 806D8918  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D891C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D8920  B0 1B 06 74 */	sth r0, 0x674(r27)
/* 806D8924  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 806D8928  D0 1B 04 AC */	stfs f0, 0x4ac(r27)
/* 806D892C  48 00 03 DC */	b lbl_806D8D08
lbl_806D8930:
/* 806D8930  3C 80 80 6E */	lis r4, l_HIO@ha
/* 806D8934  38 84 F2 D4 */	addi r4, r4, l_HIO@l
/* 806D8938  C3 E4 00 0C */	lfs f31, 0xc(r4)
/* 806D893C  C0 3B 06 6C */	lfs f1, 0x66c(r27)
/* 806D8940  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806D8944  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D8948  40 81 00 58 */	ble lbl_806D89A0
/* 806D894C  A8 1B 06 78 */	lha r0, 0x678(r27)
/* 806D8950  2C 00 00 00 */	cmpwi r0, 0
/* 806D8954  40 82 03 B4 */	bne lbl_806D8D08
/* 806D8958  38 80 00 1A */	li r4, 0x1a
/* 806D895C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 806D8960  38 A0 00 00 */	li r5, 0
/* 806D8964  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D8968  4B FF FC 11 */	bl anm_init__FP11e_gob_classifUcf
/* 806D896C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F4@ha */
/* 806D8970  38 03 01 F4 */	addi r0, r3, 0x01F4 /* 0x000701F4@l */
/* 806D8974  90 01 00 28 */	stw r0, 0x28(r1)
/* 806D8978  38 7B 05 B8 */	addi r3, r27, 0x5b8
/* 806D897C  38 81 00 28 */	addi r4, r1, 0x28
/* 806D8980  38 A0 FF FF */	li r5, -1
/* 806D8984  81 9B 05 B8 */	lwz r12, 0x5b8(r27)
/* 806D8988  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D898C  7D 89 03 A6 */	mtctr r12
/* 806D8990  4E 80 04 21 */	bctrl 
/* 806D8994  38 00 00 05 */	li r0, 5
/* 806D8998  B0 1B 06 58 */	sth r0, 0x658(r27)
/* 806D899C  48 00 03 6C */	b lbl_806D8D08
lbl_806D89A0:
/* 806D89A0  38 00 00 02 */	li r0, 2
/* 806D89A4  B0 1B 06 58 */	sth r0, 0x658(r27)
/* 806D89A8  48 00 03 60 */	b lbl_806D8D08
lbl_806D89AC:
/* 806D89AC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806D89B0  4B B8 EF A4 */	b cM_rndF__Ff
/* 806D89B4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806D89B8  EC 00 08 2A */	fadds f0, f0, f1
/* 806D89BC  FC 00 00 1E */	fctiwz f0, f0
/* 806D89C0  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D89C4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D89C8  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 806D89CC  C0 3B 06 6C */	lfs f1, 0x66c(r27)
/* 806D89D0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 806D89D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D89D8  40 81 00 10 */	ble lbl_806D89E8
/* 806D89DC  38 00 00 00 */	li r0, 0
/* 806D89E0  B0 1B 06 58 */	sth r0, 0x658(r27)
/* 806D89E4  48 00 00 3C */	b lbl_806D8A20
lbl_806D89E8:
/* 806D89E8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806D89EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D89F0  40 80 00 18 */	bge lbl_806D8A08
/* 806D89F4  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806D89F8  38 63 F2 D4 */	addi r3, r3, l_HIO@l
/* 806D89FC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806D8A00  FF E0 00 50 */	fneg f31, f0
/* 806D8A04  48 00 00 1C */	b lbl_806D8A20
lbl_806D8A08:
/* 806D8A08  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806D8A0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D8A10  40 81 00 10 */	ble lbl_806D8A20
/* 806D8A14  3C 60 80 6E */	lis r3, l_HIO@ha
/* 806D8A18  38 63 F2 D4 */	addi r3, r3, l_HIO@l
/* 806D8A1C  C3 E3 00 10 */	lfs f31, 0x10(r3)
lbl_806D8A20:
/* 806D8A20  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806D8A24  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 806D8A28  41 82 00 2C */	beq lbl_806D8A54
/* 806D8A2C  80 1B 06 48 */	lwz r0, 0x648(r27)
/* 806D8A30  2C 00 00 24 */	cmpwi r0, 0x24
/* 806D8A34  41 82 00 4C */	beq lbl_806D8A80
/* 806D8A38  7F 63 DB 78 */	mr r3, r27
/* 806D8A3C  38 80 00 24 */	li r4, 0x24
/* 806D8A40  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 806D8A44  38 A0 00 02 */	li r5, 2
/* 806D8A48  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D8A4C  4B FF FB 2D */	bl anm_init__FP11e_gob_classifUcf
/* 806D8A50  48 00 00 30 */	b lbl_806D8A80
lbl_806D8A54:
/* 806D8A54  80 1B 06 48 */	lwz r0, 0x648(r27)
/* 806D8A58  2C 00 00 23 */	cmpwi r0, 0x23
/* 806D8A5C  41 82 00 24 */	beq lbl_806D8A80
/* 806D8A60  2C 1E 00 00 */	cmpwi r30, 0
/* 806D8A64  40 82 00 1C */	bne lbl_806D8A80
/* 806D8A68  7F 63 DB 78 */	mr r3, r27
/* 806D8A6C  38 80 00 23 */	li r4, 0x23
/* 806D8A70  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 806D8A74  38 A0 00 02 */	li r5, 2
/* 806D8A78  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D8A7C  4B FF FA FD */	bl anm_init__FP11e_gob_classifUcf
lbl_806D8A80:
/* 806D8A80  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806D8A84  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 806D8A88  4C 40 13 82 */	cror 2, 0, 2
/* 806D8A8C  40 82 00 4C */	bne lbl_806D8AD8
/* 806D8A90  A8 1B 06 74 */	lha r0, 0x674(r27)
/* 806D8A94  2C 00 00 00 */	cmpwi r0, 0
/* 806D8A98  40 82 02 70 */	bne lbl_806D8D08
/* 806D8A9C  38 00 00 03 */	li r0, 3
/* 806D8AA0  B0 1B 06 56 */	sth r0, 0x656(r27)
/* 806D8AA4  38 00 00 00 */	li r0, 0
/* 806D8AA8  B0 1B 06 58 */	sth r0, 0x658(r27)
/* 806D8AAC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806D8AB0  4B B8 EE A4 */	b cM_rndF__Ff
/* 806D8AB4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806D8AB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D8ABC  40 80 00 10 */	bge lbl_806D8ACC
/* 806D8AC0  38 00 00 00 */	li r0, 0
/* 806D8AC4  98 1B 0D 1F */	stb r0, 0xd1f(r27)
/* 806D8AC8  48 00 02 C4 */	b lbl_806D8D8C
lbl_806D8ACC:
/* 806D8ACC  38 00 00 01 */	li r0, 1
/* 806D8AD0  98 1B 0D 1F */	stb r0, 0xd1f(r27)
/* 806D8AD4  48 00 02 B8 */	b lbl_806D8D8C
lbl_806D8AD8:
/* 806D8AD8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806D8ADC  4B B8 EE 78 */	b cM_rndF__Ff
/* 806D8AE0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806D8AE4  EC 00 08 2A */	fadds f0, f0, f1
/* 806D8AE8  FC 00 00 1E */	fctiwz f0, f0
/* 806D8AEC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D8AF0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D8AF4  B0 1B 06 74 */	sth r0, 0x674(r27)
/* 806D8AF8  48 00 02 10 */	b lbl_806D8D08
lbl_806D8AFC:
/* 806D8AFC  2C 1E 00 66 */	cmpwi r30, 0x66
/* 806D8B00  40 82 00 2C */	bne lbl_806D8B2C
/* 806D8B04  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701F5@ha */
/* 806D8B08  38 03 01 F5 */	addi r0, r3, 0x01F5 /* 0x000701F5@l */
/* 806D8B0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D8B10  38 7B 05 B8 */	addi r3, r27, 0x5b8
/* 806D8B14  38 81 00 24 */	addi r4, r1, 0x24
/* 806D8B18  38 A0 FF FF */	li r5, -1
/* 806D8B1C  81 9B 05 B8 */	lwz r12, 0x5b8(r27)
/* 806D8B20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D8B24  7D 89 03 A6 */	mtctr r12
/* 806D8B28  4E 80 04 21 */	bctrl 
lbl_806D8B2C:
/* 806D8B2C  2C 1E 00 20 */	cmpwi r30, 0x20
/* 806D8B30  41 82 00 0C */	beq lbl_806D8B3C
/* 806D8B34  2C 1E 00 31 */	cmpwi r30, 0x31
/* 806D8B38  40 82 00 84 */	bne lbl_806D8BBC
lbl_806D8B3C:
/* 806D8B3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D8B40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D8B44  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806D8B48  38 80 00 00 */	li r4, 0
/* 806D8B4C  90 81 00 08 */	stw r4, 8(r1)
/* 806D8B50  38 00 FF FF */	li r0, -1
/* 806D8B54  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D8B58  90 81 00 10 */	stw r4, 0x10(r1)
/* 806D8B5C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806D8B60  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D8B64  38 80 00 00 */	li r4, 0
/* 806D8B68  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008428@ha */
/* 806D8B6C  38 A5 84 28 */	addi r5, r5, 0x8428 /* 0x00008428@l */
/* 806D8B70  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 806D8B74  38 E0 00 00 */	li r7, 0
/* 806D8B78  39 1B 04 E4 */	addi r8, r27, 0x4e4
/* 806D8B7C  3D 20 80 6E */	lis r9, base_sc@ha
/* 806D8B80  39 29 F3 08 */	addi r9, r9, base_sc@l
/* 806D8B84  39 40 00 FF */	li r10, 0xff
/* 806D8B88  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806D8B8C  4B 97 3F 04 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D8B90  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701E1@ha */
/* 806D8B94  38 03 01 E1 */	addi r0, r3, 0x01E1 /* 0x000701E1@l */
/* 806D8B98  90 01 00 20 */	stw r0, 0x20(r1)
/* 806D8B9C  38 7B 05 B8 */	addi r3, r27, 0x5b8
/* 806D8BA0  38 81 00 20 */	addi r4, r1, 0x20
/* 806D8BA4  38 A0 00 00 */	li r5, 0
/* 806D8BA8  38 C0 FF FF */	li r6, -1
/* 806D8BAC  81 9B 05 B8 */	lwz r12, 0x5b8(r27)
/* 806D8BB0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806D8BB4  7D 89 03 A6 */	mtctr r12
/* 806D8BB8  4E 80 04 21 */	bctrl 
lbl_806D8BBC:
/* 806D8BBC  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 806D8BC0  38 80 00 01 */	li r4, 1
/* 806D8BC4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D8BC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D8BCC  40 82 00 18 */	bne lbl_806D8BE4
/* 806D8BD0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 806D8BD4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D8BD8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D8BDC  41 82 00 08 */	beq lbl_806D8BE4
/* 806D8BE0  38 80 00 00 */	li r4, 0
lbl_806D8BE4:
/* 806D8BE4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D8BE8  41 82 01 20 */	beq lbl_806D8D08
/* 806D8BEC  38 00 00 00 */	li r0, 0
/* 806D8BF0  B0 1B 06 58 */	sth r0, 0x658(r27)
/* 806D8BF4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806D8BF8  4B B8 ED 5C */	b cM_rndF__Ff
/* 806D8BFC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806D8C00  EC 00 08 2A */	fadds f0, f0, f1
/* 806D8C04  FC 00 00 1E */	fctiwz f0, f0
/* 806D8C08  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D8C0C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D8C10  B0 1B 06 78 */	sth r0, 0x678(r27)
/* 806D8C14  48 00 00 F4 */	b lbl_806D8D08
lbl_806D8C18:
/* 806D8C18  3C 80 80 6E */	lis r4, l_HIO@ha
/* 806D8C1C  38 84 F2 D4 */	addi r4, r4, l_HIO@l
/* 806D8C20  C3 E4 00 0C */	lfs f31, 0xc(r4)
/* 806D8C24  AB 9B 06 68 */	lha r28, 0x668(r27)
/* 806D8C28  A8 1B 06 74 */	lha r0, 0x674(r27)
/* 806D8C2C  2C 00 00 00 */	cmpwi r0, 0
/* 806D8C30  40 82 00 D8 */	bne lbl_806D8D08
/* 806D8C34  38 80 00 25 */	li r4, 0x25
/* 806D8C38  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806D8C3C  38 A0 00 02 */	li r5, 2
/* 806D8C40  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D8C44  4B FF F9 35 */	bl anm_init__FP11e_gob_classifUcf
/* 806D8C48  38 00 00 0B */	li r0, 0xb
/* 806D8C4C  B0 1B 06 58 */	sth r0, 0x658(r27)
/* 806D8C50  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 806D8C54  4B B8 ED 00 */	b cM_rndF__Ff
/* 806D8C58  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806D8C5C  EC 00 08 2A */	fadds f0, f0, f1
/* 806D8C60  FC 00 00 1E */	fctiwz f0, f0
/* 806D8C64  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D8C68  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D8C6C  B0 1B 06 74 */	sth r0, 0x674(r27)
/* 806D8C70  48 00 00 98 */	b lbl_806D8D08
lbl_806D8C74:
/* 806D8C74  AB 9B 06 68 */	lha r28, 0x668(r27)
/* 806D8C78  3B A0 00 00 */	li r29, 0
/* 806D8C7C  A8 1B 06 74 */	lha r0, 0x674(r27)
/* 806D8C80  2C 00 00 00 */	cmpwi r0, 0
/* 806D8C84  40 82 00 84 */	bne lbl_806D8D08
/* 806D8C88  38 80 00 26 */	li r4, 0x26
/* 806D8C8C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806D8C90  38 A0 00 02 */	li r5, 2
/* 806D8C94  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D8C98  4B FF F8 E1 */	bl anm_init__FP11e_gob_classifUcf
/* 806D8C9C  38 00 00 0A */	li r0, 0xa
/* 806D8CA0  B0 1B 06 58 */	sth r0, 0x658(r27)
/* 806D8CA4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 806D8CA8  4B B8 EC AC */	b cM_rndF__Ff
/* 806D8CAC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806D8CB0  EC 00 08 2A */	fadds f0, f0, f1
/* 806D8CB4  FC 00 00 1E */	fctiwz f0, f0
/* 806D8CB8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 806D8CBC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 806D8CC0  B0 1B 06 74 */	sth r0, 0x674(r27)
/* 806D8CC4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806D8CC8  4B B8 EC C4 */	b cM_rndFX__Ff
/* 806D8CCC  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 806D8CD0  EC 20 08 2A */	fadds f1, f0, f1
/* 806D8CD4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 806D8CD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806D8CDC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806D8CE0  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806D8CE4  4B B8 EC A8 */	b cM_rndFX__Ff
/* 806D8CE8  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 806D8CEC  EC 20 08 2A */	fadds f1, f0, f1
/* 806D8CF0  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 806D8CF4  EC 41 00 28 */	fsubs f2, f1, f0
/* 806D8CF8  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 806D8CFC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 806D8D00  4B B8 E9 74 */	b cM_atan2s__Fff
/* 806D8D04  B0 7B 06 68 */	sth r3, 0x668(r27)
lbl_806D8D08:
/* 806D8D08  38 7B 05 2C */	addi r3, r27, 0x52c
/* 806D8D0C  FC 20 F8 90 */	fmr f1, f31
/* 806D8D10  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806D8D14  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 806D8D18  4B B9 6D 24 */	b cLib_addCalc2__FPffff
/* 806D8D1C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 806D8D20  7F 84 E3 78 */	mr r4, r28
/* 806D8D24  38 A0 00 01 */	li r5, 1
/* 806D8D28  7F A6 EB 78 */	mr r6, r29
/* 806D8D2C  4B B9 78 DC */	b cLib_addCalcAngleS2__FPssss
/* 806D8D30  38 7B 06 B2 */	addi r3, r27, 0x6b2
/* 806D8D34  38 80 00 00 */	li r4, 0
/* 806D8D38  38 A0 00 01 */	li r5, 1
/* 806D8D3C  38 C0 08 00 */	li r6, 0x800
/* 806D8D40  4B B9 78 C8 */	b cLib_addCalcAngleS2__FPssss
/* 806D8D44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D8D48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D8D4C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806D8D50  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 806D8D54  41 82 00 24 */	beq lbl_806D8D78
/* 806D8D58  A8 1B 06 58 */	lha r0, 0x658(r27)
/* 806D8D5C  2C 00 00 0A */	cmpwi r0, 0xa
/* 806D8D60  40 80 00 2C */	bge lbl_806D8D8C
/* 806D8D64  38 00 00 0B */	li r0, 0xb
/* 806D8D68  B0 1B 06 58 */	sth r0, 0x658(r27)
/* 806D8D6C  38 00 00 00 */	li r0, 0
/* 806D8D70  B0 1B 06 74 */	sth r0, 0x674(r27)
/* 806D8D74  48 00 00 18 */	b lbl_806D8D8C
lbl_806D8D78:
/* 806D8D78  A8 1B 06 58 */	lha r0, 0x658(r27)
/* 806D8D7C  2C 00 00 0A */	cmpwi r0, 0xa
/* 806D8D80  41 80 00 0C */	blt lbl_806D8D8C
/* 806D8D84  38 00 00 00 */	li r0, 0
/* 806D8D88  B0 1B 06 58 */	sth r0, 0x658(r27)
lbl_806D8D8C:
/* 806D8D8C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806D8D90  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806D8D94  39 61 00 60 */	addi r11, r1, 0x60
/* 806D8D98  4B C8 94 88 */	b _restgpr_27
/* 806D8D9C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806D8DA0  7C 08 03 A6 */	mtlr r0
/* 806D8DA4  38 21 00 70 */	addi r1, r1, 0x70
/* 806D8DA8  4E 80 00 20 */	blr 
