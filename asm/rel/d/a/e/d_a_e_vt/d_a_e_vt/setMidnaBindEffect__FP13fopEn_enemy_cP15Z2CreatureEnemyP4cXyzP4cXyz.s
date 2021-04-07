lbl_807CE7F0:
/* 807CE7F0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807CE7F4  7C 08 02 A6 */	mflr r0
/* 807CE7F8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807CE7FC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807CE800  4B B9 39 B5 */	bl _savegpr_19
/* 807CE804  7C 7E 1B 78 */	mr r30, r3
/* 807CE808  7C 9A 23 78 */	mr r26, r4
/* 807CE80C  7C BB 2B 78 */	mr r27, r5
/* 807CE810  7C DC 33 78 */	mr r28, r6
/* 807CE814  3C 60 80 7D */	lis r3, cNullVec__6Z2Calc@ha /* 0x807CEF08@ha */
/* 807CE818  3A E3 EF 08 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x807CEF08@l */
/* 807CE81C  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807CE820  3B E3 EC A8 */	addi r31, r3, lit_3907@l /* 0x807CECA8@l */
/* 807CE824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CE828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CE82C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807CE830  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807CE834  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 807CE838  28 00 00 00 */	cmplwi r0, 0
/* 807CE83C  41 82 03 A4 */	beq lbl_807CEBE0
/* 807CE840  7F C4 F3 78 */	mr r4, r30
/* 807CE844  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807CE848  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807CE84C  7D 89 03 A6 */	mtctr r12
/* 807CE850  4E 80 04 21 */	bctrl 
/* 807CE854  2C 03 00 00 */	cmpwi r3, 0
/* 807CE858  41 82 03 88 */	beq lbl_807CEBE0
/* 807CE85C  4B 9D DD 21 */	bl dKy_darkworld_check__Fv
/* 807CE860  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807CE864  30 03 FF FF */	addic r0, r3, -1
/* 807CE868  7F A0 19 10 */	subfe r29, r0, r3
/* 807CE86C  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807CE870  28 00 00 00 */	cmplwi r0, 0
/* 807CE874  40 82 02 A0 */	bne lbl_807CEB14
/* 807CE878  38 00 00 01 */	li r0, 1
/* 807CE87C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807CE880  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807CE884  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 807CE888  80 63 00 00 */	lwz r3, 0(r3)
/* 807CE88C  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807CE890  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807CE894  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807CE898  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807CE89C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CE8A0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CE8A4  4B B7 7C 0D */	bl PSMTXCopy
/* 807CE8A8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807CE8AC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807CE8B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CE8B4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807CE8B8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807CE8BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807CE8C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807CE8C4  38 81 00 4C */	addi r4, r1, 0x4c
/* 807CE8C8  38 A1 00 58 */	addi r5, r1, 0x58
/* 807CE8CC  4B B7 84 A1 */	bl PSMTXMultVec
/* 807CE8D0  38 61 00 34 */	addi r3, r1, 0x34
/* 807CE8D4  38 81 00 58 */	addi r4, r1, 0x58
/* 807CE8D8  7F 65 DB 78 */	mr r5, r27
/* 807CE8DC  4B A9 82 59 */	bl __mi__4cXyzCFRC3Vec
/* 807CE8E0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807CE8E4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807CE8E8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807CE8EC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807CE8F0  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807CE8F4  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807CE8F8  4B A9 8D 7D */	bl cM_atan2s__Fff
/* 807CE8FC  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807CE900  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807CE904  EC 20 00 32 */	fmuls f1, f0, f0
/* 807CE908  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807CE90C  EC 00 00 32 */	fmuls f0, f0, f0
/* 807CE910  EC 41 00 2A */	fadds f2, f1, f0
/* 807CE914  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CE918  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807CE91C  40 81 00 0C */	ble lbl_807CE928
/* 807CE920  FC 00 10 34 */	frsqrte f0, f2
/* 807CE924  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807CE928:
/* 807CE928  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807CE92C  4B A9 8D 49 */	bl cM_atan2s__Fff
/* 807CE930  7C 03 00 D0 */	neg r0, r3
/* 807CE934  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807CE938  38 80 00 00 */	li r4, 0
/* 807CE93C  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807CE940  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807CE944  7C 00 07 74 */	extsb r0, r0
/* 807CE948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CE94C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CE950  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807CE954  57 A5 10 3A */	slwi r5, r29, 2
/* 807CE958  90 81 00 08 */	stw r4, 8(r1)
/* 807CE95C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CE960  3A B7 00 20 */	addi r21, r23, 0x20
/* 807CE964  7E B5 2A 14 */	add r21, r21, r5
/* 807CE968  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807CE96C  3A D7 00 28 */	addi r22, r23, 0x28
/* 807CE970  7E D6 2A 14 */	add r22, r22, r5
/* 807CE974  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807CE978  90 81 00 18 */	stw r4, 0x18(r1)
/* 807CE97C  38 80 00 00 */	li r4, 0
/* 807CE980  38 A0 02 9B */	li r5, 0x29b
/* 807CE984  7F 66 DB 78 */	mr r6, r27
/* 807CE988  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807CE98C  39 01 00 2C */	addi r8, r1, 0x2c
/* 807CE990  7F 89 E3 78 */	mr r9, r28
/* 807CE994  39 40 00 FF */	li r10, 0xff
/* 807CE998  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807CE99C  4B 87 E0 F5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807CE9A0  7C 79 1B 79 */	or. r25, r3, r3
/* 807CE9A4  41 82 00 FC */	beq lbl_807CEAA0
/* 807CE9A8  38 61 00 40 */	addi r3, r1, 0x40
/* 807CE9AC  4B B7 87 8D */	bl PSVECSquareMag
/* 807CE9B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CE9B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CE9B8  40 81 00 58 */	ble lbl_807CEA10
/* 807CE9BC  FC 00 08 34 */	frsqrte f0, f1
/* 807CE9C0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807CE9C4  FC 44 00 32 */	fmul f2, f4, f0
/* 807CE9C8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807CE9CC  FC 00 00 32 */	fmul f0, f0, f0
/* 807CE9D0  FC 01 00 32 */	fmul f0, f1, f0
/* 807CE9D4  FC 03 00 28 */	fsub f0, f3, f0
/* 807CE9D8  FC 02 00 32 */	fmul f0, f2, f0
/* 807CE9DC  FC 44 00 32 */	fmul f2, f4, f0
/* 807CE9E0  FC 00 00 32 */	fmul f0, f0, f0
/* 807CE9E4  FC 01 00 32 */	fmul f0, f1, f0
/* 807CE9E8  FC 03 00 28 */	fsub f0, f3, f0
/* 807CE9EC  FC 02 00 32 */	fmul f0, f2, f0
/* 807CE9F0  FC 44 00 32 */	fmul f2, f4, f0
/* 807CE9F4  FC 00 00 32 */	fmul f0, f0, f0
/* 807CE9F8  FC 01 00 32 */	fmul f0, f1, f0
/* 807CE9FC  FC 03 00 28 */	fsub f0, f3, f0
/* 807CEA00  FC 02 00 32 */	fmul f0, f2, f0
/* 807CEA04  FC 21 00 32 */	fmul f1, f1, f0
/* 807CEA08  FC 20 08 18 */	frsp f1, f1
/* 807CEA0C  48 00 00 88 */	b lbl_807CEA94
lbl_807CEA10:
/* 807CEA10  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807CEA14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807CEA18  40 80 00 10 */	bge lbl_807CEA28
/* 807CEA1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807CEA20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807CEA24  48 00 00 70 */	b lbl_807CEA94
lbl_807CEA28:
/* 807CEA28  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807CEA2C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807CEA30  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807CEA34  3C 00 7F 80 */	lis r0, 0x7f80
/* 807CEA38  7C 03 00 00 */	cmpw r3, r0
/* 807CEA3C  41 82 00 14 */	beq lbl_807CEA50
/* 807CEA40  40 80 00 40 */	bge lbl_807CEA80
/* 807CEA44  2C 03 00 00 */	cmpwi r3, 0
/* 807CEA48  41 82 00 20 */	beq lbl_807CEA68
/* 807CEA4C  48 00 00 34 */	b lbl_807CEA80
lbl_807CEA50:
/* 807CEA50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807CEA54  41 82 00 0C */	beq lbl_807CEA60
/* 807CEA58  38 00 00 01 */	li r0, 1
/* 807CEA5C  48 00 00 28 */	b lbl_807CEA84
lbl_807CEA60:
/* 807CEA60  38 00 00 02 */	li r0, 2
/* 807CEA64  48 00 00 20 */	b lbl_807CEA84
lbl_807CEA68:
/* 807CEA68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807CEA6C  41 82 00 0C */	beq lbl_807CEA78
/* 807CEA70  38 00 00 05 */	li r0, 5
/* 807CEA74  48 00 00 10 */	b lbl_807CEA84
lbl_807CEA78:
/* 807CEA78  38 00 00 03 */	li r0, 3
/* 807CEA7C  48 00 00 08 */	b lbl_807CEA84
lbl_807CEA80:
/* 807CEA80  38 00 00 04 */	li r0, 4
lbl_807CEA84:
/* 807CEA84  2C 00 00 01 */	cmpwi r0, 1
/* 807CEA88  40 82 00 0C */	bne lbl_807CEA94
/* 807CEA8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807CEA90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807CEA94:
/* 807CEA94  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807CEA98  EC 00 00 72 */	fmuls f0, f0, f1
/* 807CEA9C  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_807CEAA0:
/* 807CEAA0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807CEAA4  7C 04 07 74 */	extsb r4, r0
/* 807CEAA8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807CEAAC  38 00 00 00 */	li r0, 0
/* 807CEAB0  90 01 00 08 */	stw r0, 8(r1)
/* 807CEAB4  90 81 00 0C */	stw r4, 0xc(r1)
/* 807CEAB8  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807CEABC  92 C1 00 14 */	stw r22, 0x14(r1)
/* 807CEAC0  90 01 00 18 */	stw r0, 0x18(r1)
/* 807CEAC4  38 80 00 00 */	li r4, 0
/* 807CEAC8  38 A0 02 9C */	li r5, 0x29c
/* 807CEACC  7F 66 DB 78 */	mr r6, r27
/* 807CEAD0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807CEAD4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807CEAD8  7F 89 E3 78 */	mr r9, r28
/* 807CEADC  39 40 00 FF */	li r10, 0xff
/* 807CEAE0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807CEAE4  4B 87 DF AD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807CEAE8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 807CEAEC  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 807CEAF0  90 01 00 28 */	stw r0, 0x28(r1)
/* 807CEAF4  7F 43 D3 78 */	mr r3, r26
/* 807CEAF8  38 81 00 28 */	addi r4, r1, 0x28
/* 807CEAFC  38 A0 00 00 */	li r5, 0
/* 807CEB00  38 C0 FF FF */	li r6, -1
/* 807CEB04  81 9A 00 00 */	lwz r12, 0(r26)
/* 807CEB08  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807CEB0C  7D 89 03 A6 */	mtctr r12
/* 807CEB10  4E 80 04 21 */	bctrl 
lbl_807CEB14:
/* 807CEB14  3A A0 00 00 */	li r21, 0
/* 807CEB18  3A C0 00 00 */	li r22, 0
/* 807CEB1C  3A 80 00 00 */	li r20, 0
/* 807CEB20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CEB24  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CEB28  57 A0 10 3A */	slwi r0, r29, 2
/* 807CEB2C  3B 17 00 28 */	addi r24, r23, 0x28
/* 807CEB30  7F 18 02 14 */	add r24, r24, r0
/* 807CEB34  3B B7 00 20 */	addi r29, r23, 0x20
/* 807CEB38  7F BD 02 14 */	add r29, r29, r0
/* 807CEB3C  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807CEB40:
/* 807CEB40  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807CEB44  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807CEB48  7C 05 07 74 */	extsb r5, r0
/* 807CEB4C  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807CEB50  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807CEB54  38 00 00 FF */	li r0, 0xff
/* 807CEB58  90 01 00 08 */	stw r0, 8(r1)
/* 807CEB5C  38 00 00 00 */	li r0, 0
/* 807CEB60  90 01 00 0C */	stw r0, 0xc(r1)
/* 807CEB64  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807CEB68  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807CEB6C  93 01 00 18 */	stw r24, 0x18(r1)
/* 807CEB70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807CEB74  38 A0 00 00 */	li r5, 0
/* 807CEB78  7C D3 B2 2E */	lhzx r6, r19, r22
/* 807CEB7C  7F 67 DB 78 */	mr r7, r27
/* 807CEB80  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807CEB84  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807CEB88  7F 8A E3 78 */	mr r10, r28
/* 807CEB8C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807CEB90  4B 87 E9 3D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807CEB94  7C 7E B9 2E */	stwx r3, r30, r23
/* 807CEB98  3A B5 00 01 */	addi r21, r21, 1
/* 807CEB9C  2C 15 00 03 */	cmpwi r21, 3
/* 807CEBA0  3A D6 00 02 */	addi r22, r22, 2
/* 807CEBA4  3A 94 00 04 */	addi r20, r20, 4
/* 807CEBA8  41 80 FF 98 */	blt lbl_807CEB40
/* 807CEBAC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 807CEBB0  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 807CEBB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807CEBB8  7F 43 D3 78 */	mr r3, r26
/* 807CEBBC  38 81 00 24 */	addi r4, r1, 0x24
/* 807CEBC0  38 A0 00 00 */	li r5, 0
/* 807CEBC4  38 C0 FF FF */	li r6, -1
/* 807CEBC8  81 9A 00 00 */	lwz r12, 0(r26)
/* 807CEBCC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807CEBD0  7D 89 03 A6 */	mtctr r12
/* 807CEBD4  4E 80 04 21 */	bctrl 
/* 807CEBD8  38 60 00 01 */	li r3, 1
/* 807CEBDC  48 00 00 10 */	b lbl_807CEBEC
lbl_807CEBE0:
/* 807CEBE0  38 00 00 00 */	li r0, 0
/* 807CEBE4  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807CEBE8  38 60 00 00 */	li r3, 0
lbl_807CEBEC:
/* 807CEBEC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807CEBF0  4B B9 36 11 */	bl _restgpr_19
/* 807CEBF4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807CEBF8  7C 08 03 A6 */	mtlr r0
/* 807CEBFC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807CEC00  4E 80 00 20 */	blr 
