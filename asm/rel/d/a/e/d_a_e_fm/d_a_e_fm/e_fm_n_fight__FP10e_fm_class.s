lbl_804F0A78:
/* 804F0A78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804F0A7C  7C 08 02 A6 */	mflr r0
/* 804F0A80  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F0A84  39 61 00 40 */	addi r11, r1, 0x40
/* 804F0A88  4B E7 17 54 */	b _savegpr_29
/* 804F0A8C  7C 7E 1B 78 */	mr r30, r3
/* 804F0A90  3C 80 80 50 */	lis r4, lit_3777@ha
/* 804F0A94  3B E4 A6 BC */	addi r31, r4, lit_3777@l
/* 804F0A98  80 83 05 D0 */	lwz r4, 0x5d0(r3)
/* 804F0A9C  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 804F0AA0  FC 00 00 1E */	fctiwz f0, f0
/* 804F0AA4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804F0AA8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 804F0AAC  38 80 00 01 */	li r4, 1
/* 804F0AB0  98 83 07 C0 */	stb r4, 0x7c0(r3)
/* 804F0AB4  A8 03 07 A4 */	lha r0, 0x7a4(r3)
/* 804F0AB8  2C 00 00 01 */	cmpwi r0, 1
/* 804F0ABC  41 82 00 60 */	beq lbl_804F0B1C
/* 804F0AC0  40 80 02 34 */	bge lbl_804F0CF4
/* 804F0AC4  2C 00 00 00 */	cmpwi r0, 0
/* 804F0AC8  40 80 00 08 */	bge lbl_804F0AD0
/* 804F0ACC  48 00 02 28 */	b lbl_804F0CF4
lbl_804F0AD0:
/* 804F0AD0  38 80 00 0C */	li r4, 0xc
/* 804F0AD4  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804F0AD8  38 A0 00 00 */	li r5, 0
/* 804F0ADC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F0AE0  4B FF ED 29 */	bl anm_init__FP10e_fm_classifUcf
/* 804F0AE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070295@ha */
/* 804F0AE8  38 03 02 95 */	addi r0, r3, 0x0295 /* 0x00070295@l */
/* 804F0AEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F0AF0  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F0AF4  38 81 00 18 */	addi r4, r1, 0x18
/* 804F0AF8  38 A0 00 00 */	li r5, 0
/* 804F0AFC  38 C0 FF FF */	li r6, -1
/* 804F0B00  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F0B04  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F0B08  7D 89 03 A6 */	mtctr r12
/* 804F0B0C  4E 80 04 21 */	bctrl 
/* 804F0B10  38 00 00 01 */	li r0, 1
/* 804F0B14  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
/* 804F0B18  48 00 01 DC */	b lbl_804F0CF4
lbl_804F0B1C:
/* 804F0B1C  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 804F0B20  41 80 00 9C */	blt lbl_804F0BBC
/* 804F0B24  2C 1D 00 28 */	cmpwi r29, 0x28
/* 804F0B28  41 81 00 94 */	bgt lbl_804F0BBC
/* 804F0B2C  98 9E 18 29 */	stb r4, 0x1829(r30)
/* 804F0B30  98 9E 18 28 */	stb r4, 0x1828(r30)
/* 804F0B34  2C 1D 00 23 */	cmpwi r29, 0x23
/* 804F0B38  40 82 00 0C */	bne lbl_804F0B44
/* 804F0B3C  38 00 00 02 */	li r0, 2
/* 804F0B40  98 1E 23 99 */	stb r0, 0x2399(r30)
lbl_804F0B44:
/* 804F0B44  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 804F0B48  40 82 00 58 */	bne lbl_804F0BA0
/* 804F0B4C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070003@ha */
/* 804F0B50  38 03 00 03 */	addi r0, r3, 0x0003 /* 0x00070003@l */
/* 804F0B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0B58  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F0B5C  38 81 00 14 */	addi r4, r1, 0x14
/* 804F0B60  38 A0 00 00 */	li r5, 0
/* 804F0B64  38 C0 FF FF */	li r6, -1
/* 804F0B68  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F0B6C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F0B70  7D 89 03 A6 */	mtctr r12
/* 804F0B74  4E 80 04 21 */	bctrl 
/* 804F0B78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070009@ha */
/* 804F0B7C  38 03 00 09 */	addi r0, r3, 0x0009 /* 0x00070009@l */
/* 804F0B80  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F0B84  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F0B88  38 81 00 10 */	addi r4, r1, 0x10
/* 804F0B8C  38 A0 FF FF */	li r5, -1
/* 804F0B90  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F0B94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F0B98  7D 89 03 A6 */	mtctr r12
/* 804F0B9C  4E 80 04 21 */	bctrl 
lbl_804F0BA0:
/* 804F0BA0  2C 1D 00 23 */	cmpwi r29, 0x23
/* 804F0BA4  40 82 00 B8 */	bne lbl_804F0C5C
/* 804F0BA8  7F C3 F3 78 */	mr r3, r30
/* 804F0BAC  88 9E 18 28 */	lbz r4, 0x1828(r30)
/* 804F0BB0  7C 84 07 74 */	extsb r4, r4
/* 804F0BB4  4B FF EB 5D */	bl carry_off__FP10e_fm_classi
/* 804F0BB8  48 00 00 A4 */	b lbl_804F0C5C
lbl_804F0BBC:
/* 804F0BBC  2C 1D 00 32 */	cmpwi r29, 0x32
/* 804F0BC0  41 80 00 9C */	blt lbl_804F0C5C
/* 804F0BC4  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 804F0BC8  41 81 00 94 */	bgt lbl_804F0C5C
/* 804F0BCC  38 60 00 01 */	li r3, 1
/* 804F0BD0  98 7E 18 29 */	stb r3, 0x1829(r30)
/* 804F0BD4  38 00 00 00 */	li r0, 0
/* 804F0BD8  98 1E 18 28 */	stb r0, 0x1828(r30)
/* 804F0BDC  2C 1D 00 39 */	cmpwi r29, 0x39
/* 804F0BE0  40 82 00 08 */	bne lbl_804F0BE8
/* 804F0BE4  98 7E 23 99 */	stb r3, 0x2399(r30)
lbl_804F0BE8:
/* 804F0BE8  2C 1D 00 34 */	cmpwi r29, 0x34
/* 804F0BEC  40 82 00 58 */	bne lbl_804F0C44
/* 804F0BF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070003@ha */
/* 804F0BF4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0x00070003@l */
/* 804F0BF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F0BFC  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F0C00  38 81 00 0C */	addi r4, r1, 0xc
/* 804F0C04  38 A0 00 00 */	li r5, 0
/* 804F0C08  38 C0 FF FF */	li r6, -1
/* 804F0C0C  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F0C10  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F0C14  7D 89 03 A6 */	mtctr r12
/* 804F0C18  4E 80 04 21 */	bctrl 
/* 804F0C1C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070009@ha */
/* 804F0C20  38 03 00 09 */	addi r0, r3, 0x0009 /* 0x00070009@l */
/* 804F0C24  90 01 00 08 */	stw r0, 8(r1)
/* 804F0C28  38 7E 06 3C */	addi r3, r30, 0x63c
/* 804F0C2C  38 81 00 08 */	addi r4, r1, 8
/* 804F0C30  38 A0 FF FF */	li r5, -1
/* 804F0C34  81 9E 06 3C */	lwz r12, 0x63c(r30)
/* 804F0C38  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F0C3C  7D 89 03 A6 */	mtctr r12
/* 804F0C40  4E 80 04 21 */	bctrl 
lbl_804F0C44:
/* 804F0C44  2C 1D 00 35 */	cmpwi r29, 0x35
/* 804F0C48  40 82 00 14 */	bne lbl_804F0C5C
/* 804F0C4C  7F C3 F3 78 */	mr r3, r30
/* 804F0C50  88 9E 18 28 */	lbz r4, 0x1828(r30)
/* 804F0C54  7C 84 07 74 */	extsb r4, r4
/* 804F0C58  4B FF EA B9 */	bl carry_off__FP10e_fm_classi
lbl_804F0C5C:
/* 804F0C5C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 804F0C60  38 80 00 01 */	li r4, 1
/* 804F0C64  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804F0C68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804F0C6C  40 82 00 18 */	bne lbl_804F0C84
/* 804F0C70  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F0C74  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804F0C78  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804F0C7C  41 82 00 08 */	beq lbl_804F0C84
/* 804F0C80  38 80 00 00 */	li r4, 0
lbl_804F0C84:
/* 804F0C84  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804F0C88  41 82 00 6C */	beq lbl_804F0CF4
/* 804F0C8C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F0C90  4B D7 6C C4 */	b cM_rndF__Ff
/* 804F0C94  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 804F0C98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F0C9C  40 80 00 48 */	bge lbl_804F0CE4
/* 804F0CA0  7F C3 F3 78 */	mr r3, r30
/* 804F0CA4  3C 80 80 50 */	lis r4, l_HIO@ha
/* 804F0CA8  38 84 AE A4 */	addi r4, r4, l_HIO@l
/* 804F0CAC  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 804F0CB0  38 80 30 00 */	li r4, 0x3000
/* 804F0CB4  4B FF F3 A9 */	bl pl_check__FP10e_fm_classfs
/* 804F0CB8  2C 03 00 00 */	cmpwi r3, 0
/* 804F0CBC  41 82 00 28 */	beq lbl_804F0CE4
/* 804F0CC0  38 00 00 06 */	li r0, 6
/* 804F0CC4  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
/* 804F0CC8  7F C3 F3 78 */	mr r3, r30
/* 804F0CCC  38 80 00 22 */	li r4, 0x22
/* 804F0CD0  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804F0CD4  38 A0 00 02 */	li r5, 2
/* 804F0CD8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 804F0CDC  4B FF EB 2D */	bl anm_init__FP10e_fm_classifUcf
/* 804F0CE0  48 00 00 0C */	b lbl_804F0CEC
lbl_804F0CE4:
/* 804F0CE4  38 00 00 00 */	li r0, 0
/* 804F0CE8  B0 1E 07 A2 */	sth r0, 0x7a2(r30)
lbl_804F0CEC:
/* 804F0CEC  38 00 00 00 */	li r0, 0
/* 804F0CF0  B0 1E 07 A4 */	sth r0, 0x7a4(r30)
lbl_804F0CF4:
/* 804F0CF4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804F0CF8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 804F0CFC  FC 40 08 90 */	fmr f2, f1
/* 804F0D00  4B D7 ED 80 */	b cLib_addCalc0__FPfff
/* 804F0D04  88 1E 18 29 */	lbz r0, 0x1829(r30)
/* 804F0D08  7C 00 07 75 */	extsb. r0, r0
/* 804F0D0C  41 82 00 18 */	beq lbl_804F0D24
/* 804F0D10  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804F0D14  A8 9E 05 C6 */	lha r4, 0x5c6(r30)
/* 804F0D18  38 A0 00 02 */	li r5, 2
/* 804F0D1C  38 C0 05 00 */	li r6, 0x500
/* 804F0D20  4B D7 F8 E8 */	b cLib_addCalcAngleS2__FPssss
lbl_804F0D24:
/* 804F0D24  39 61 00 40 */	addi r11, r1, 0x40
/* 804F0D28  4B E7 15 00 */	b _restgpr_29
/* 804F0D2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F0D30  7C 08 03 A6 */	mtlr r0
/* 804F0D34  38 21 00 40 */	addi r1, r1, 0x40
/* 804F0D38  4E 80 00 20 */	blr 
