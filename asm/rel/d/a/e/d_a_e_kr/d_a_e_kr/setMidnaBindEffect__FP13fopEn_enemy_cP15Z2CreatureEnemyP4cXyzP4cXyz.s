lbl_80705694:
/* 80705694  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80705698  7C 08 02 A6 */	mflr r0
/* 8070569C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807056A0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807056A4  4B C5 CB 11 */	bl _savegpr_19
/* 807056A8  7C 7E 1B 78 */	mr r30, r3
/* 807056AC  7C 9A 23 78 */	mr r26, r4
/* 807056B0  7C BB 2B 78 */	mr r27, r5
/* 807056B4  7C DC 33 78 */	mr r28, r6
/* 807056B8  3C 60 80 70 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80705C54@ha */
/* 807056BC  3A E3 5C 54 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x80705C54@l */
/* 807056C0  3C 60 80 70 */	lis r3, lit_3903@ha /* 0x80705AF8@ha */
/* 807056C4  3B E3 5A F8 */	addi r31, r3, lit_3903@l /* 0x80705AF8@l */
/* 807056C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807056CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807056D0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807056D4  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807056D8  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 807056DC  28 00 00 00 */	cmplwi r0, 0
/* 807056E0  41 82 03 A4 */	beq lbl_80705A84
/* 807056E4  7F C4 F3 78 */	mr r4, r30
/* 807056E8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807056EC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807056F0  7D 89 03 A6 */	mtctr r12
/* 807056F4  4E 80 04 21 */	bctrl 
/* 807056F8  2C 03 00 00 */	cmpwi r3, 0
/* 807056FC  41 82 03 88 */	beq lbl_80705A84
/* 80705700  4B AA 6E 7D */	bl dKy_darkworld_check__Fv
/* 80705704  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80705708  30 03 FF FF */	addic r0, r3, -1
/* 8070570C  7F A0 19 10 */	subfe r29, r0, r3
/* 80705710  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80705714  28 00 00 00 */	cmplwi r0, 0
/* 80705718  40 82 02 A0 */	bne lbl_807059B8
/* 8070571C  38 00 00 01 */	li r0, 1
/* 80705720  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80705724  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80705728  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 8070572C  80 63 00 00 */	lwz r3, 0(r3)
/* 80705730  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80705734  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80705738  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8070573C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80705740  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80705744  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80705748  4B C4 0D 69 */	bl PSMTXCopy
/* 8070574C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80705750  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80705754  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80705758  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8070575C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80705760  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80705764  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80705768  38 81 00 4C */	addi r4, r1, 0x4c
/* 8070576C  38 A1 00 58 */	addi r5, r1, 0x58
/* 80705770  4B C4 15 FD */	bl PSMTXMultVec
/* 80705774  38 61 00 34 */	addi r3, r1, 0x34
/* 80705778  38 81 00 58 */	addi r4, r1, 0x58
/* 8070577C  7F 65 DB 78 */	mr r5, r27
/* 80705780  4B B6 13 B5 */	bl __mi__4cXyzCFRC3Vec
/* 80705784  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80705788  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8070578C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80705790  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80705794  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80705798  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8070579C  4B B6 1E D9 */	bl cM_atan2s__Fff
/* 807057A0  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807057A4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807057A8  EC 20 00 32 */	fmuls f1, f0, f0
/* 807057AC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807057B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 807057B4  EC 41 00 2A */	fadds f2, f1, f0
/* 807057B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807057BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807057C0  40 81 00 0C */	ble lbl_807057CC
/* 807057C4  FC 00 10 34 */	frsqrte f0, f2
/* 807057C8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807057CC:
/* 807057CC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807057D0  4B B6 1E A5 */	bl cM_atan2s__Fff
/* 807057D4  7C 03 00 D0 */	neg r0, r3
/* 807057D8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807057DC  38 80 00 00 */	li r4, 0
/* 807057E0  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807057E4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807057E8  7C 00 07 74 */	extsb r0, r0
/* 807057EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807057F0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807057F4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807057F8  57 A5 10 3A */	slwi r5, r29, 2
/* 807057FC  90 81 00 08 */	stw r4, 8(r1)
/* 80705800  90 01 00 0C */	stw r0, 0xc(r1)
/* 80705804  3A B7 00 20 */	addi r21, r23, 0x20
/* 80705808  7E B5 2A 14 */	add r21, r21, r5
/* 8070580C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80705810  3A D7 00 28 */	addi r22, r23, 0x28
/* 80705814  7E D6 2A 14 */	add r22, r22, r5
/* 80705818  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8070581C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80705820  38 80 00 00 */	li r4, 0
/* 80705824  38 A0 02 9B */	li r5, 0x29b
/* 80705828  7F 66 DB 78 */	mr r6, r27
/* 8070582C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80705830  39 01 00 2C */	addi r8, r1, 0x2c
/* 80705834  7F 89 E3 78 */	mr r9, r28
/* 80705838  39 40 00 FF */	li r10, 0xff
/* 8070583C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80705840  4B 94 72 51 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80705844  7C 79 1B 79 */	or. r25, r3, r3
/* 80705848  41 82 00 FC */	beq lbl_80705944
/* 8070584C  38 61 00 40 */	addi r3, r1, 0x40
/* 80705850  4B C4 18 E9 */	bl PSVECSquareMag
/* 80705854  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80705858  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070585C  40 81 00 58 */	ble lbl_807058B4
/* 80705860  FC 00 08 34 */	frsqrte f0, f1
/* 80705864  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80705868  FC 44 00 32 */	fmul f2, f4, f0
/* 8070586C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80705870  FC 00 00 32 */	fmul f0, f0, f0
/* 80705874  FC 01 00 32 */	fmul f0, f1, f0
/* 80705878  FC 03 00 28 */	fsub f0, f3, f0
/* 8070587C  FC 02 00 32 */	fmul f0, f2, f0
/* 80705880  FC 44 00 32 */	fmul f2, f4, f0
/* 80705884  FC 00 00 32 */	fmul f0, f0, f0
/* 80705888  FC 01 00 32 */	fmul f0, f1, f0
/* 8070588C  FC 03 00 28 */	fsub f0, f3, f0
/* 80705890  FC 02 00 32 */	fmul f0, f2, f0
/* 80705894  FC 44 00 32 */	fmul f2, f4, f0
/* 80705898  FC 00 00 32 */	fmul f0, f0, f0
/* 8070589C  FC 01 00 32 */	fmul f0, f1, f0
/* 807058A0  FC 03 00 28 */	fsub f0, f3, f0
/* 807058A4  FC 02 00 32 */	fmul f0, f2, f0
/* 807058A8  FC 21 00 32 */	fmul f1, f1, f0
/* 807058AC  FC 20 08 18 */	frsp f1, f1
/* 807058B0  48 00 00 88 */	b lbl_80705938
lbl_807058B4:
/* 807058B4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807058B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807058BC  40 80 00 10 */	bge lbl_807058CC
/* 807058C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807058C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807058C8  48 00 00 70 */	b lbl_80705938
lbl_807058CC:
/* 807058CC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807058D0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807058D4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807058D8  3C 00 7F 80 */	lis r0, 0x7f80
/* 807058DC  7C 03 00 00 */	cmpw r3, r0
/* 807058E0  41 82 00 14 */	beq lbl_807058F4
/* 807058E4  40 80 00 40 */	bge lbl_80705924
/* 807058E8  2C 03 00 00 */	cmpwi r3, 0
/* 807058EC  41 82 00 20 */	beq lbl_8070590C
/* 807058F0  48 00 00 34 */	b lbl_80705924
lbl_807058F4:
/* 807058F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807058F8  41 82 00 0C */	beq lbl_80705904
/* 807058FC  38 00 00 01 */	li r0, 1
/* 80705900  48 00 00 28 */	b lbl_80705928
lbl_80705904:
/* 80705904  38 00 00 02 */	li r0, 2
/* 80705908  48 00 00 20 */	b lbl_80705928
lbl_8070590C:
/* 8070590C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80705910  41 82 00 0C */	beq lbl_8070591C
/* 80705914  38 00 00 05 */	li r0, 5
/* 80705918  48 00 00 10 */	b lbl_80705928
lbl_8070591C:
/* 8070591C  38 00 00 03 */	li r0, 3
/* 80705920  48 00 00 08 */	b lbl_80705928
lbl_80705924:
/* 80705924  38 00 00 04 */	li r0, 4
lbl_80705928:
/* 80705928  2C 00 00 01 */	cmpwi r0, 1
/* 8070592C  40 82 00 0C */	bne lbl_80705938
/* 80705930  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80705934  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80705938:
/* 80705938  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8070593C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80705940  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80705944:
/* 80705944  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80705948  7C 04 07 74 */	extsb r4, r0
/* 8070594C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80705950  38 00 00 00 */	li r0, 0
/* 80705954  90 01 00 08 */	stw r0, 8(r1)
/* 80705958  90 81 00 0C */	stw r4, 0xc(r1)
/* 8070595C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80705960  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80705964  90 01 00 18 */	stw r0, 0x18(r1)
/* 80705968  38 80 00 00 */	li r4, 0
/* 8070596C  38 A0 02 9C */	li r5, 0x29c
/* 80705970  7F 66 DB 78 */	mr r6, r27
/* 80705974  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80705978  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8070597C  7F 89 E3 78 */	mr r9, r28
/* 80705980  39 40 00 FF */	li r10, 0xff
/* 80705984  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80705988  4B 94 71 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8070598C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80705990  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80705994  90 01 00 28 */	stw r0, 0x28(r1)
/* 80705998  7F 43 D3 78 */	mr r3, r26
/* 8070599C  38 81 00 28 */	addi r4, r1, 0x28
/* 807059A0  38 A0 00 00 */	li r5, 0
/* 807059A4  38 C0 FF FF */	li r6, -1
/* 807059A8  81 9A 00 00 */	lwz r12, 0(r26)
/* 807059AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807059B0  7D 89 03 A6 */	mtctr r12
/* 807059B4  4E 80 04 21 */	bctrl 
lbl_807059B8:
/* 807059B8  3A A0 00 00 */	li r21, 0
/* 807059BC  3A C0 00 00 */	li r22, 0
/* 807059C0  3A 80 00 00 */	li r20, 0
/* 807059C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807059C8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807059CC  57 A0 10 3A */	slwi r0, r29, 2
/* 807059D0  3B 17 00 28 */	addi r24, r23, 0x28
/* 807059D4  7F 18 02 14 */	add r24, r24, r0
/* 807059D8  3B B7 00 20 */	addi r29, r23, 0x20
/* 807059DC  7F BD 02 14 */	add r29, r29, r0
/* 807059E0  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807059E4:
/* 807059E4  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807059E8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807059EC  7C 05 07 74 */	extsb r5, r0
/* 807059F0  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807059F4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807059F8  38 00 00 FF */	li r0, 0xff
/* 807059FC  90 01 00 08 */	stw r0, 8(r1)
/* 80705A00  38 00 00 00 */	li r0, 0
/* 80705A04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80705A08  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80705A0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80705A10  93 01 00 18 */	stw r24, 0x18(r1)
/* 80705A14  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80705A18  38 A0 00 00 */	li r5, 0
/* 80705A1C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80705A20  7F 67 DB 78 */	mr r7, r27
/* 80705A24  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80705A28  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80705A2C  7F 8A E3 78 */	mr r10, r28
/* 80705A30  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80705A34  4B 94 7A 99 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80705A38  7C 7E B9 2E */	stwx r3, r30, r23
/* 80705A3C  3A B5 00 01 */	addi r21, r21, 1
/* 80705A40  2C 15 00 03 */	cmpwi r21, 3
/* 80705A44  3A D6 00 02 */	addi r22, r22, 2
/* 80705A48  3A 94 00 04 */	addi r20, r20, 4
/* 80705A4C  41 80 FF 98 */	blt lbl_807059E4
/* 80705A50  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80705A54  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80705A58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80705A5C  7F 43 D3 78 */	mr r3, r26
/* 80705A60  38 81 00 24 */	addi r4, r1, 0x24
/* 80705A64  38 A0 00 00 */	li r5, 0
/* 80705A68  38 C0 FF FF */	li r6, -1
/* 80705A6C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80705A70  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80705A74  7D 89 03 A6 */	mtctr r12
/* 80705A78  4E 80 04 21 */	bctrl 
/* 80705A7C  38 60 00 01 */	li r3, 1
/* 80705A80  48 00 00 10 */	b lbl_80705A90
lbl_80705A84:
/* 80705A84  38 00 00 00 */	li r0, 0
/* 80705A88  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80705A8C  38 60 00 00 */	li r3, 0
lbl_80705A90:
/* 80705A90  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80705A94  4B C5 C7 6D */	bl _restgpr_19
/* 80705A98  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80705A9C  7C 08 03 A6 */	mtlr r0
/* 80705AA0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80705AA4  4E 80 00 20 */	blr 
