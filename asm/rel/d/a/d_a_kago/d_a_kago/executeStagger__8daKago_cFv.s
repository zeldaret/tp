lbl_8084C8FC:
/* 8084C8FC  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 8084C900  7C 08 02 A6 */	mflr r0
/* 8084C904  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8084C908  93 E1 00 EC */	stw r31, 0xec(r1)
/* 8084C90C  93 C1 00 E8 */	stw r30, 0xe8(r1)
/* 8084C910  7C 7E 1B 78 */	mr r30, r3
/* 8084C914  3C 60 80 85 */	lis r3, lit_3929@ha /* 0x80854B04@ha */
/* 8084C918  3B E3 4B 04 */	addi r31, r3, lit_3929@l /* 0x80854B04@l */
/* 8084C91C  4B 93 4D 25 */	bl dCam_getBody__Fv
/* 8084C920  80 7E 07 68 */	lwz r3, 0x768(r30)
/* 8084C924  88 9E 07 70 */	lbz r4, 0x770(r30)
/* 8084C928  7C 84 07 74 */	extsb r4, r4
/* 8084C92C  4B 80 4E 85 */	bl dPath_GetPnt__FPC5dPathi
/* 8084C930  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084C934  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8084C938  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084C93C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8084C940  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084C944  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8084C948  80 7E 07 68 */	lwz r3, 0x768(r30)
/* 8084C94C  88 1E 07 72 */	lbz r0, 0x772(r30)
/* 8084C950  7C 04 07 74 */	extsb r4, r0
/* 8084C954  88 1E 07 70 */	lbz r0, 0x770(r30)
/* 8084C958  7C 00 07 74 */	extsb r0, r0
/* 8084C95C  7C 84 00 50 */	subf r4, r4, r0
/* 8084C960  4B 80 4E 51 */	bl dPath_GetPnt__FPC5dPathi
/* 8084C964  C0 03 00 04 */	lfs f0, 4(r3)
/* 8084C968  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8084C96C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8084C970  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8084C974  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084C978  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8084C97C  38 61 00 50 */	addi r3, r1, 0x50
/* 8084C980  38 81 00 5C */	addi r4, r1, 0x5c
/* 8084C984  4B A2 42 81 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8084C988  B0 7E 07 14 */	sth r3, 0x714(r30)
/* 8084C98C  88 1E 06 E7 */	lbz r0, 0x6e7(r30)
/* 8084C990  28 00 00 01 */	cmplwi r0, 1
/* 8084C994  40 82 00 20 */	bne lbl_8084C9B4
/* 8084C998  38 00 00 2A */	li r0, 0x2a
/* 8084C99C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084C9A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084C9A4  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 8084C9A8  38 00 00 00 */	li r0, 0
/* 8084C9AC  98 03 5E 50 */	stb r0, 0x5e50(r3)
/* 8084C9B0  48 00 00 1C */	b lbl_8084C9CC
lbl_8084C9B4:
/* 8084C9B4  38 00 00 27 */	li r0, 0x27
/* 8084C9B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084C9BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084C9C0  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 8084C9C4  38 00 00 00 */	li r0, 0
/* 8084C9C8  98 03 5E 50 */	stb r0, 0x5e50(r3)
lbl_8084C9CC:
/* 8084C9CC  7F C3 F3 78 */	mr r3, r30
/* 8084C9D0  4B FF E7 39 */	bl checkHeight__8daKago_cFv
/* 8084C9D4  38 00 00 01 */	li r0, 1
/* 8084C9D8  98 1E 06 E1 */	stb r0, 0x6e1(r30)
/* 8084C9DC  80 1E 07 44 */	lwz r0, 0x744(r30)
/* 8084C9E0  2C 00 00 04 */	cmpwi r0, 4
/* 8084C9E4  41 82 05 2C */	beq lbl_8084CF10
/* 8084C9E8  40 80 00 1C */	bge lbl_8084CA04
/* 8084C9EC  2C 00 00 00 */	cmpwi r0, 0
/* 8084C9F0  41 82 00 24 */	beq lbl_8084CA14
/* 8084C9F4  41 80 06 FC */	blt lbl_8084D0F0
/* 8084C9F8  2C 00 00 03 */	cmpwi r0, 3
/* 8084C9FC  40 80 02 E8 */	bge lbl_8084CCE4
/* 8084CA00  48 00 01 98 */	b lbl_8084CB98
lbl_8084CA04:
/* 8084CA04  2C 00 00 06 */	cmpwi r0, 6
/* 8084CA08  41 82 05 08 */	beq lbl_8084CF10
/* 8084CA0C  40 80 06 E4 */	bge lbl_8084D0F0
/* 8084CA10  48 00 04 20 */	b lbl_8084CE30
lbl_8084CA14:
/* 8084CA14  80 1E 09 CC */	lwz r0, 0x9cc(r30)
/* 8084CA18  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8084CA1C  90 1E 09 CC */	stw r0, 0x9cc(r30)
/* 8084CA20  38 60 00 00 */	li r3, 0
/* 8084CA24  38 80 00 01 */	li r4, 1
/* 8084CA28  4B 91 2E ED */	bl setPlayerDamage__9daPy_py_cFii
/* 8084CA2C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8084CA30  80 63 00 04 */	lwz r3, 4(r3)
/* 8084CA34  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8084CA38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8084CA3C  38 63 01 20 */	addi r3, r3, 0x120
/* 8084CA40  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084CA44  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084CA48  4B AF 9A 69 */	bl PSMTXCopy
/* 8084CA4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084CA50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084CA54  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084CA58  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8084CA5C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8084CA60  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8084CA64  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8084CA68  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8084CA6C  88 1E 06 E7 */	lbz r0, 0x6e7(r30)
/* 8084CA70  28 00 00 00 */	cmplwi r0, 0
/* 8084CA74  40 82 00 5C */	bne lbl_8084CAD0
/* 8084CA78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070236@ha */
/* 8084CA7C  38 03 02 36 */	addi r0, r3, 0x0236 /* 0x00070236@l */
/* 8084CA80  90 01 00 28 */	stw r0, 0x28(r1)
/* 8084CA84  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084CA88  38 81 00 28 */	addi r4, r1, 0x28
/* 8084CA8C  38 A0 00 00 */	li r5, 0
/* 8084CA90  38 C0 FF FF */	li r6, -1
/* 8084CA94  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084CA98  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8084CA9C  7D 89 03 A6 */	mtctr r12
/* 8084CAA0  4E 80 04 21 */	bctrl 
/* 8084CAA4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007048F@ha */
/* 8084CAA8  38 03 04 8F */	addi r0, r3, 0x048F /* 0x0007048F@l */
/* 8084CAAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8084CAB0  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084CAB4  38 81 00 24 */	addi r4, r1, 0x24
/* 8084CAB8  38 A0 FF FF */	li r5, -1
/* 8084CABC  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084CAC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084CAC4  7D 89 03 A6 */	mtctr r12
/* 8084CAC8  4E 80 04 21 */	bctrl 
/* 8084CACC  48 00 00 58 */	b lbl_8084CB24
lbl_8084CAD0:
/* 8084CAD0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070499@ha */
/* 8084CAD4  38 03 04 99 */	addi r0, r3, 0x0499 /* 0x00070499@l */
/* 8084CAD8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8084CADC  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084CAE0  38 81 00 20 */	addi r4, r1, 0x20
/* 8084CAE4  38 A0 00 00 */	li r5, 0
/* 8084CAE8  38 C0 FF FF */	li r6, -1
/* 8084CAEC  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084CAF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8084CAF4  7D 89 03 A6 */	mtctr r12
/* 8084CAF8  4E 80 04 21 */	bctrl 
/* 8084CAFC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007049A@ha */
/* 8084CB00  38 03 04 9A */	addi r0, r3, 0x049A /* 0x0007049A@l */
/* 8084CB04  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8084CB08  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084CB0C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8084CB10  38 A0 FF FF */	li r5, -1
/* 8084CB14  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084CB18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084CB1C  7D 89 03 A6 */	mtctr r12
/* 8084CB20  4E 80 04 21 */	bctrl 
lbl_8084CB24:
/* 8084CB24  7F C3 F3 78 */	mr r3, r30
/* 8084CB28  38 80 00 07 */	li r4, 7
/* 8084CB2C  38 A0 00 00 */	li r5, 0
/* 8084CB30  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8084CB34  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084CB38  4B FF CB B9 */	bl setBck__8daKago_cFiUcff
/* 8084CB3C  38 00 00 3C */	li r0, 0x3c
/* 8084CB40  90 1E 07 28 */	stw r0, 0x728(r30)
/* 8084CB44  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8084CB48  D0 5E 05 2C */	stfs f2, 0x52c(r30)
/* 8084CB4C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8084CB50  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8084CB54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084CB58  40 80 00 0C */	bge lbl_8084CB64
/* 8084CB5C  D0 5E 04 FC */	stfs f2, 0x4fc(r30)
/* 8084CB60  48 00 00 0C */	b lbl_8084CB6C
lbl_8084CB64:
/* 8084CB64  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8084CB68  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8084CB6C:
/* 8084CB6C  A8 7E 06 DA */	lha r3, 0x6da(r30)
/* 8084CB70  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8084CB74  7C 03 00 50 */	subf r0, r3, r0
/* 8084CB78  7C 00 07 34 */	extsh r0, r0
/* 8084CB7C  7C 60 18 50 */	subf r3, r0, r3
/* 8084CB80  3C 63 00 01 */	addis r3, r3, 1
/* 8084CB84  38 03 80 00 */	addi r0, r3, -32768
/* 8084CB88  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8084CB8C  38 00 00 04 */	li r0, 4
/* 8084CB90  90 1E 07 44 */	stw r0, 0x744(r30)
/* 8084CB94  48 00 05 5C */	b lbl_8084D0F0
lbl_8084CB98:
/* 8084CB98  80 1E 09 CC */	lwz r0, 0x9cc(r30)
/* 8084CB9C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8084CBA0  90 1E 09 CC */	stw r0, 0x9cc(r30)
/* 8084CBA4  38 60 00 00 */	li r3, 0
/* 8084CBA8  38 80 00 01 */	li r4, 1
/* 8084CBAC  4B 91 2D 69 */	bl setPlayerDamage__9daPy_py_cFii
/* 8084CBB0  7F C3 F3 78 */	mr r3, r30
/* 8084CBB4  38 80 00 0F */	li r4, 0xf
/* 8084CBB8  38 A0 00 02 */	li r5, 2
/* 8084CBBC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8084CBC0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084CBC4  4B FF CB 2D */	bl setBck__8daKago_cFiUcff
/* 8084CBC8  38 00 00 0A */	li r0, 0xa
/* 8084CBCC  90 1E 07 28 */	stw r0, 0x728(r30)
/* 8084CBD0  3C 60 80 85 */	lis r3, l_HIO@ha /* 0x80854F78@ha */
/* 8084CBD4  38 63 4F 78 */	addi r3, r3, l_HIO@l /* 0x80854F78@l */
/* 8084CBD8  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 8084CBDC  FC 00 00 1E */	fctiwz f0, f0
/* 8084CBE0  D8 01 00 D8 */	stfd f0, 0xd8(r1)
/* 8084CBE4  80 01 00 DC */	lwz r0, 0xdc(r1)
/* 8084CBE8  90 1E 07 20 */	stw r0, 0x720(r30)
/* 8084CBEC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8084CBF0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8084CBF4  80 1E 07 44 */	lwz r0, 0x744(r30)
/* 8084CBF8  2C 00 00 01 */	cmpwi r0, 1
/* 8084CBFC  40 82 00 44 */	bne lbl_8084CC40
/* 8084CC00  38 00 30 00 */	li r0, 0x3000
/* 8084CC04  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8084CC08  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8084CC0C  38 03 E0 00 */	addi r0, r3, -8192
/* 8084CC10  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8084CC14  A8 7E 07 14 */	lha r3, 0x714(r30)
/* 8084CC18  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8084CC1C  7C 03 00 50 */	subf r0, r3, r0
/* 8084CC20  7C 03 07 34 */	extsh r3, r0
/* 8084CC24  4B B1 84 AD */	bl abs
/* 8084CC28  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8084CC2C  40 81 00 50 */	ble lbl_8084CC7C
/* 8084CC30  A8 7E 07 14 */	lha r3, 0x714(r30)
/* 8084CC34  38 03 E0 00 */	addi r0, r3, -8192
/* 8084CC38  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8084CC3C  48 00 00 40 */	b lbl_8084CC7C
lbl_8084CC40:
/* 8084CC40  38 00 D0 00 */	li r0, -12288
/* 8084CC44  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8084CC48  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8084CC4C  38 03 20 00 */	addi r0, r3, 0x2000
/* 8084CC50  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8084CC54  A8 7E 07 14 */	lha r3, 0x714(r30)
/* 8084CC58  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8084CC5C  7C 03 00 50 */	subf r0, r3, r0
/* 8084CC60  7C 03 07 34 */	extsh r3, r0
/* 8084CC64  4B B1 84 6D */	bl abs
/* 8084CC68  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8084CC6C  40 81 00 10 */	ble lbl_8084CC7C
/* 8084CC70  A8 7E 07 14 */	lha r3, 0x714(r30)
/* 8084CC74  38 03 20 00 */	addi r0, r3, 0x2000
/* 8084CC78  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8084CC7C:
/* 8084CC7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704B3@ha */
/* 8084CC80  38 03 04 B3 */	addi r0, r3, 0x04B3 /* 0x000704B3@l */
/* 8084CC84  90 01 00 18 */	stw r0, 0x18(r1)
/* 8084CC88  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084CC8C  38 81 00 18 */	addi r4, r1, 0x18
/* 8084CC90  38 A0 00 00 */	li r5, 0
/* 8084CC94  38 C0 FF FF */	li r6, -1
/* 8084CC98  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084CC9C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8084CCA0  7D 89 03 A6 */	mtctr r12
/* 8084CCA4  4E 80 04 21 */	bctrl 
/* 8084CCA8  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084CCAC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8084CCB0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084CCB4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8084CCB8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8084CCBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084CCC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084CCC4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084CCC8  38 80 00 01 */	li r4, 1
/* 8084CCCC  38 A0 00 1F */	li r5, 0x1f
/* 8084CCD0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8084CCD4  4B 82 2E 3D */	bl StartQuake__12dVibration_cFii4cXyz
/* 8084CCD8  38 00 00 05 */	li r0, 5
/* 8084CCDC  90 1E 07 44 */	stw r0, 0x744(r30)
/* 8084CCE0  48 00 04 10 */	b lbl_8084D0F0
lbl_8084CCE4:
/* 8084CCE4  38 60 00 02 */	li r3, 2
/* 8084CCE8  38 80 00 01 */	li r4, 1
/* 8084CCEC  4B 91 2C 29 */	bl setPlayerDamage__9daPy_py_cFii
/* 8084CCF0  80 1E 09 CC */	lwz r0, 0x9cc(r30)
/* 8084CCF4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8084CCF8  90 1E 09 CC */	stw r0, 0x9cc(r30)
/* 8084CCFC  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8084CD00  80 63 00 04 */	lwz r3, 4(r3)
/* 8084CD04  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8084CD08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8084CD0C  38 63 01 20 */	addi r3, r3, 0x120
/* 8084CD10  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084CD14  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084CD18  4B AF 97 99 */	bl PSMTXCopy
/* 8084CD1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084CD20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084CD24  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084CD28  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8084CD2C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8084CD30  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8084CD34  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8084CD38  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8084CD3C  88 1E 06 E7 */	lbz r0, 0x6e7(r30)
/* 8084CD40  28 00 00 00 */	cmplwi r0, 0
/* 8084CD44  40 82 00 5C */	bne lbl_8084CDA0
/* 8084CD48  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070236@ha */
/* 8084CD4C  38 03 02 36 */	addi r0, r3, 0x0236 /* 0x00070236@l */
/* 8084CD50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084CD54  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084CD58  38 81 00 14 */	addi r4, r1, 0x14
/* 8084CD5C  38 A0 00 00 */	li r5, 0
/* 8084CD60  38 C0 FF FF */	li r6, -1
/* 8084CD64  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084CD68  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8084CD6C  7D 89 03 A6 */	mtctr r12
/* 8084CD70  4E 80 04 21 */	bctrl 
/* 8084CD74  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007048F@ha */
/* 8084CD78  38 03 04 8F */	addi r0, r3, 0x048F /* 0x0007048F@l */
/* 8084CD7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8084CD80  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084CD84  38 81 00 10 */	addi r4, r1, 0x10
/* 8084CD88  38 A0 FF FF */	li r5, -1
/* 8084CD8C  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084CD90  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084CD94  7D 89 03 A6 */	mtctr r12
/* 8084CD98  4E 80 04 21 */	bctrl 
/* 8084CD9C  48 00 00 58 */	b lbl_8084CDF4
lbl_8084CDA0:
/* 8084CDA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070499@ha */
/* 8084CDA4  38 03 04 99 */	addi r0, r3, 0x0499 /* 0x00070499@l */
/* 8084CDA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8084CDAC  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084CDB0  38 81 00 0C */	addi r4, r1, 0xc
/* 8084CDB4  38 A0 00 00 */	li r5, 0
/* 8084CDB8  38 C0 FF FF */	li r6, -1
/* 8084CDBC  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084CDC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8084CDC4  7D 89 03 A6 */	mtctr r12
/* 8084CDC8  4E 80 04 21 */	bctrl 
/* 8084CDCC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007049A@ha */
/* 8084CDD0  38 03 04 9A */	addi r0, r3, 0x049A /* 0x0007049A@l */
/* 8084CDD4  90 01 00 08 */	stw r0, 8(r1)
/* 8084CDD8  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084CDDC  38 81 00 08 */	addi r4, r1, 8
/* 8084CDE0  38 A0 FF FF */	li r5, -1
/* 8084CDE4  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084CDE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8084CDEC  7D 89 03 A6 */	mtctr r12
/* 8084CDF0  4E 80 04 21 */	bctrl 
lbl_8084CDF4:
/* 8084CDF4  7F C3 F3 78 */	mr r3, r30
/* 8084CDF8  38 80 00 07 */	li r4, 7
/* 8084CDFC  38 A0 00 00 */	li r5, 0
/* 8084CE00  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8084CE04  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084CE08  4B FF C8 E9 */	bl setBck__8daKago_cFiUcff
/* 8084CE0C  38 00 00 3C */	li r0, 0x3c
/* 8084CE10  90 1E 07 28 */	stw r0, 0x728(r30)
/* 8084CE14  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8084CE18  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8084CE1C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8084CE20  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8084CE24  38 00 00 06 */	li r0, 6
/* 8084CE28  90 1E 07 44 */	stw r0, 0x744(r30)
/* 8084CE2C  48 00 02 C4 */	b lbl_8084D0F0
lbl_8084CE30:
/* 8084CE30  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8084CE34  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8084CE38  38 A0 00 08 */	li r5, 8
/* 8084CE3C  38 C0 04 00 */	li r6, 0x400
/* 8084CE40  38 E0 00 40 */	li r7, 0x40
/* 8084CE44  4B A2 36 FD */	bl cLib_addCalcAngleS__FPsssss
/* 8084CE48  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8084CE4C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084CE50  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084CE54  4B A2 38 ED */	bl cLib_chaseF__FPfff
/* 8084CE58  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8084CE5C  38 80 00 00 */	li r4, 0
/* 8084CE60  38 A0 00 08 */	li r5, 8
/* 8084CE64  38 C0 04 00 */	li r6, 0x400
/* 8084CE68  38 E0 00 10 */	li r7, 0x10
/* 8084CE6C  4B A2 36 D5 */	bl cLib_addCalcAngleS__FPsssss
/* 8084CE70  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8084CE74  38 80 00 00 */	li r4, 0
/* 8084CE78  38 A0 00 08 */	li r5, 8
/* 8084CE7C  38 C0 04 00 */	li r6, 0x400
/* 8084CE80  38 E0 00 10 */	li r7, 0x10
/* 8084CE84  4B A2 36 BD */	bl cLib_addCalcAngleS__FPsssss
/* 8084CE88  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 8084CE8C  38 80 00 00 */	li r4, 0
/* 8084CE90  38 A0 00 08 */	li r5, 8
/* 8084CE94  38 C0 04 00 */	li r6, 0x400
/* 8084CE98  38 E0 00 40 */	li r7, 0x40
/* 8084CE9C  4B A2 36 A5 */	bl cLib_addCalcAngleS__FPsssss
/* 8084CEA0  7F C3 F3 78 */	mr r3, r30
/* 8084CEA4  38 80 00 00 */	li r4, 0
/* 8084CEA8  4B FF E3 39 */	bl checkWallHitFall__8daKago_cFi
/* 8084CEAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084CEB0  41 82 00 1C */	beq lbl_8084CECC
/* 8084CEB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084CEB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084CEBC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084CEC0  38 80 00 1F */	li r4, 0x1f
/* 8084CEC4  4B 82 2E D1 */	bl StopQuake__12dVibration_cFi
/* 8084CEC8  48 00 02 28 */	b lbl_8084D0F0
lbl_8084CECC:
/* 8084CECC  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 8084CED0  2C 00 00 00 */	cmpwi r0, 0
/* 8084CED4  40 82 02 1C */	bne lbl_8084D0F0
/* 8084CED8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8084CEDC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8084CEE0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8084CEE4  D0 1E 06 F8 */	stfs f0, 0x6f8(r30)
/* 8084CEE8  7F C3 F3 78 */	mr r3, r30
/* 8084CEEC  38 80 00 00 */	li r4, 0
/* 8084CEF0  38 A0 00 01 */	li r5, 1
/* 8084CEF4  4B FF DB A5 */	bl setActionMode__8daKago_cFii
/* 8084CEF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084CEFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084CF00  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084CF04  38 80 00 1F */	li r4, 0x1f
/* 8084CF08  4B 82 2E 8D */	bl StopQuake__12dVibration_cFi
/* 8084CF0C  48 00 01 E4 */	b lbl_8084D0F0
lbl_8084CF10:
/* 8084CF10  7F C3 F3 78 */	mr r3, r30
/* 8084CF14  38 80 00 07 */	li r4, 7
/* 8084CF18  4B FF C8 81 */	bl checkBck__8daKago_cFi
/* 8084CF1C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084CF20  41 82 01 00 */	beq lbl_8084D020
/* 8084CF24  38 7E 06 20 */	addi r3, r30, 0x620
/* 8084CF28  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084CF2C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084CF30  4B AF 95 81 */	bl PSMTXCopy
/* 8084CF34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8084CF38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8084CF3C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8084CF40  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8084CF44  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8084CF48  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8084CF4C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8084CF50  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8084CF54  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8084CF58  EC 01 00 28 */	fsubs f0, f1, f0
/* 8084CF5C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8084CF60  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8084CF64  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8084CF68  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8084CF6C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8084CF70  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8084CF74  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8084CF78  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8084CF7C  EC 01 00 2A */	fadds f0, f1, f0
/* 8084CF80  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8084CF84  38 61 00 68 */	addi r3, r1, 0x68
/* 8084CF88  4B 82 AC E1 */	bl __ct__11dBgS_LinChkFv
/* 8084CF8C  38 61 00 68 */	addi r3, r1, 0x68
/* 8084CF90  38 81 00 38 */	addi r4, r1, 0x38
/* 8084CF94  38 A1 00 44 */	addi r5, r1, 0x44
/* 8084CF98  38 C0 00 00 */	li r6, 0
/* 8084CF9C  4B 82 AD C9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8084CFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8084CFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8084CFA8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8084CFAC  38 81 00 68 */	addi r4, r1, 0x68
/* 8084CFB0  4B 82 74 05 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8084CFB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084CFB8  41 82 00 14 */	beq lbl_8084CFCC
/* 8084CFBC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8084CFC0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8084CFC4  EC 01 00 2A */	fadds f0, f1, f0
/* 8084CFC8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_8084CFCC:
/* 8084CFCC  7F C3 F3 78 */	mr r3, r30
/* 8084CFD0  48 00 60 D5 */	bl setDamageEffect__8daKago_cFv
/* 8084CFD4  38 00 00 3C */	li r0, 0x3c
/* 8084CFD8  90 1E 07 28 */	stw r0, 0x728(r30)
/* 8084CFDC  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8084CFE0  38 63 00 0C */	addi r3, r3, 0xc
/* 8084CFE4  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 8084CFE8  4B AD B4 45 */	bl checkPass__12J3DFrameCtrlFf
/* 8084CFEC  2C 03 00 00 */	cmpwi r3, 0
/* 8084CFF0  41 82 00 24 */	beq lbl_8084D014
/* 8084CFF4  7F C3 F3 78 */	mr r3, r30
/* 8084CFF8  4B FF DB D1 */	bl setRideOff__8daKago_cFv
/* 8084CFFC  7F C3 F3 78 */	mr r3, r30
/* 8084D000  38 80 00 08 */	li r4, 8
/* 8084D004  38 A0 00 02 */	li r5, 2
/* 8084D008  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8084D00C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084D010  4B FF C6 E1 */	bl setBck__8daKago_cFiUcff
lbl_8084D014:
/* 8084D014  38 61 00 68 */	addi r3, r1, 0x68
/* 8084D018  38 80 FF FF */	li r4, -1
/* 8084D01C  4B 82 AC C1 */	bl __dt__11dBgS_LinChkFv
lbl_8084D020:
/* 8084D020  80 1E 07 44 */	lwz r0, 0x744(r30)
/* 8084D024  2C 00 00 04 */	cmpwi r0, 4
/* 8084D028  40 82 00 2C */	bne lbl_8084D054
/* 8084D02C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8084D030  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8084D034  3C 84 00 01 */	addis r4, r4, 1
/* 8084D038  38 04 80 00 */	addi r0, r4, -32768
/* 8084D03C  7C 04 07 34 */	extsh r4, r0
/* 8084D040  38 A0 00 08 */	li r5, 8
/* 8084D044  38 C0 01 00 */	li r6, 0x100
/* 8084D048  38 E0 00 10 */	li r7, 0x10
/* 8084D04C  4B A2 34 F5 */	bl cLib_addCalcAngleS__FPsssss
/* 8084D050  48 00 00 1C */	b lbl_8084D06C
lbl_8084D054:
/* 8084D054  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8084D058  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8084D05C  38 A0 00 08 */	li r5, 8
/* 8084D060  38 C0 01 00 */	li r6, 0x100
/* 8084D064  38 E0 00 10 */	li r7, 0x10
/* 8084D068  4B A2 34 D9 */	bl cLib_addCalcAngleS__FPsssss
lbl_8084D06C:
/* 8084D06C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8084D070  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084D074  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 8084D078  4B A2 36 C9 */	bl cLib_chaseF__FPfff
/* 8084D07C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8084D080  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084D084  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8084D088  4B A2 36 B9 */	bl cLib_chaseF__FPfff
/* 8084D08C  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8084D090  38 80 00 00 */	li r4, 0
/* 8084D094  38 A0 00 08 */	li r5, 8
/* 8084D098  38 C0 04 00 */	li r6, 0x400
/* 8084D09C  38 E0 00 10 */	li r7, 0x10
/* 8084D0A0  4B A2 34 A1 */	bl cLib_addCalcAngleS__FPsssss
/* 8084D0A4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8084D0A8  38 80 00 00 */	li r4, 0
/* 8084D0AC  38 A0 00 08 */	li r5, 8
/* 8084D0B0  38 C0 04 00 */	li r6, 0x400
/* 8084D0B4  38 E0 00 10 */	li r7, 0x10
/* 8084D0B8  4B A2 34 89 */	bl cLib_addCalcAngleS__FPsssss
/* 8084D0BC  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 8084D0C0  38 80 00 00 */	li r4, 0
/* 8084D0C4  38 A0 00 08 */	li r5, 8
/* 8084D0C8  38 C0 04 00 */	li r6, 0x400
/* 8084D0CC  38 E0 00 40 */	li r7, 0x40
/* 8084D0D0  4B A2 34 71 */	bl cLib_addCalcAngleS__FPsssss
/* 8084D0D4  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 8084D0D8  2C 00 00 00 */	cmpwi r0, 0
/* 8084D0DC  40 82 00 14 */	bne lbl_8084D0F0
/* 8084D0E0  7F C3 F3 78 */	mr r3, r30
/* 8084D0E4  4B FF F0 95 */	bl setFlyAway__8daKago_cFv
/* 8084D0E8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8084D0EC  D0 1E 06 F8 */	stfs f0, 0x6f8(r30)
lbl_8084D0F0:
/* 8084D0F0  83 E1 00 EC */	lwz r31, 0xec(r1)
/* 8084D0F4  83 C1 00 E8 */	lwz r30, 0xe8(r1)
/* 8084D0F8  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8084D0FC  7C 08 03 A6 */	mtlr r0
/* 8084D100  38 21 00 F0 */	addi r1, r1, 0xf0
/* 8084D104  4E 80 00 20 */	blr 
