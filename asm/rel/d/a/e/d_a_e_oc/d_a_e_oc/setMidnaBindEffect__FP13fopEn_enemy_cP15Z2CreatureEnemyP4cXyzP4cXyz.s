lbl_807356C4:
/* 807356C4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807356C8  7C 08 02 A6 */	mflr r0
/* 807356CC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807356D0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807356D4  4B C2 CA E0 */	b _savegpr_19
/* 807356D8  7C 7E 1B 78 */	mr r30, r3
/* 807356DC  7C 9A 23 78 */	mr r26, r4
/* 807356E0  7C BB 2B 78 */	mr r27, r5
/* 807356E4  7C DC 33 78 */	mr r28, r6
/* 807356E8  3C 60 80 73 */	lis r3, cNullVec__6Z2Calc@ha
/* 807356EC  3A E3 5D 2C */	addi r23, r3, cNullVec__6Z2Calc@l
/* 807356F0  3C 60 80 73 */	lis r3, lit_3911@ha
/* 807356F4  3B E3 5B 28 */	addi r31, r3, lit_3911@l
/* 807356F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807356FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80735700  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80735704  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 80735708  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 8073570C  28 00 00 00 */	cmplwi r0, 0
/* 80735710  41 82 03 A4 */	beq lbl_80735AB4
/* 80735714  7F C4 F3 78 */	mr r4, r30
/* 80735718  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8073571C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80735720  7D 89 03 A6 */	mtctr r12
/* 80735724  4E 80 04 21 */	bctrl 
/* 80735728  2C 03 00 00 */	cmpwi r3, 0
/* 8073572C  41 82 03 88 */	beq lbl_80735AB4
/* 80735730  4B A7 6E 4C */	b dKy_darkworld_check__Fv
/* 80735734  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80735738  30 03 FF FF */	addic r0, r3, -1
/* 8073573C  7F A0 19 10 */	subfe r29, r0, r3
/* 80735740  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80735744  28 00 00 00 */	cmplwi r0, 0
/* 80735748  40 82 02 A0 */	bne lbl_807359E8
/* 8073574C  38 00 00 01 */	li r0, 1
/* 80735750  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80735754  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80735758  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 8073575C  80 63 00 00 */	lwz r3, 0(r3)
/* 80735760  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80735764  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80735768  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8073576C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80735770  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80735774  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80735778  4B C1 0D 38 */	b PSMTXCopy
/* 8073577C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80735780  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80735784  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80735788  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8073578C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80735790  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80735794  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80735798  38 81 00 4C */	addi r4, r1, 0x4c
/* 8073579C  38 A1 00 58 */	addi r5, r1, 0x58
/* 807357A0  4B C1 15 CC */	b PSMTXMultVec
/* 807357A4  38 61 00 34 */	addi r3, r1, 0x34
/* 807357A8  38 81 00 58 */	addi r4, r1, 0x58
/* 807357AC  7F 65 DB 78 */	mr r5, r27
/* 807357B0  4B B3 13 84 */	b __mi__4cXyzCFRC3Vec
/* 807357B4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807357B8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807357BC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807357C0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807357C4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807357C8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807357CC  4B B3 1E A8 */	b cM_atan2s__Fff
/* 807357D0  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807357D4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807357D8  EC 20 00 32 */	fmuls f1, f0, f0
/* 807357DC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807357E0  EC 00 00 32 */	fmuls f0, f0, f0
/* 807357E4  EC 41 00 2A */	fadds f2, f1, f0
/* 807357E8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807357EC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807357F0  40 81 00 0C */	ble lbl_807357FC
/* 807357F4  FC 00 10 34 */	frsqrte f0, f2
/* 807357F8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807357FC:
/* 807357FC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80735800  4B B3 1E 74 */	b cM_atan2s__Fff
/* 80735804  7C 03 00 D0 */	neg r0, r3
/* 80735808  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8073580C  38 80 00 00 */	li r4, 0
/* 80735810  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80735814  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80735818  7C 00 07 74 */	extsb r0, r0
/* 8073581C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80735820  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80735824  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80735828  57 A5 10 3A */	slwi r5, r29, 2
/* 8073582C  90 81 00 08 */	stw r4, 8(r1)
/* 80735830  90 01 00 0C */	stw r0, 0xc(r1)
/* 80735834  3A B7 00 20 */	addi r21, r23, 0x20
/* 80735838  7E B5 2A 14 */	add r21, r21, r5
/* 8073583C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80735840  3A D7 00 28 */	addi r22, r23, 0x28
/* 80735844  7E D6 2A 14 */	add r22, r22, r5
/* 80735848  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8073584C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80735850  38 80 00 00 */	li r4, 0
/* 80735854  38 A0 02 9B */	li r5, 0x29b
/* 80735858  7F 66 DB 78 */	mr r6, r27
/* 8073585C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80735860  39 01 00 2C */	addi r8, r1, 0x2c
/* 80735864  7F 89 E3 78 */	mr r9, r28
/* 80735868  39 40 00 FF */	li r10, 0xff
/* 8073586C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80735870  4B 91 72 20 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80735874  7C 79 1B 79 */	or. r25, r3, r3
/* 80735878  41 82 00 FC */	beq lbl_80735974
/* 8073587C  38 61 00 40 */	addi r3, r1, 0x40
/* 80735880  4B C1 18 B8 */	b PSVECSquareMag
/* 80735884  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80735888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073588C  40 81 00 58 */	ble lbl_807358E4
/* 80735890  FC 00 08 34 */	frsqrte f0, f1
/* 80735894  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80735898  FC 44 00 32 */	fmul f2, f4, f0
/* 8073589C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807358A0  FC 00 00 32 */	fmul f0, f0, f0
/* 807358A4  FC 01 00 32 */	fmul f0, f1, f0
/* 807358A8  FC 03 00 28 */	fsub f0, f3, f0
/* 807358AC  FC 02 00 32 */	fmul f0, f2, f0
/* 807358B0  FC 44 00 32 */	fmul f2, f4, f0
/* 807358B4  FC 00 00 32 */	fmul f0, f0, f0
/* 807358B8  FC 01 00 32 */	fmul f0, f1, f0
/* 807358BC  FC 03 00 28 */	fsub f0, f3, f0
/* 807358C0  FC 02 00 32 */	fmul f0, f2, f0
/* 807358C4  FC 44 00 32 */	fmul f2, f4, f0
/* 807358C8  FC 00 00 32 */	fmul f0, f0, f0
/* 807358CC  FC 01 00 32 */	fmul f0, f1, f0
/* 807358D0  FC 03 00 28 */	fsub f0, f3, f0
/* 807358D4  FC 02 00 32 */	fmul f0, f2, f0
/* 807358D8  FC 21 00 32 */	fmul f1, f1, f0
/* 807358DC  FC 20 08 18 */	frsp f1, f1
/* 807358E0  48 00 00 88 */	b lbl_80735968
lbl_807358E4:
/* 807358E4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807358E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807358EC  40 80 00 10 */	bge lbl_807358FC
/* 807358F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807358F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807358F8  48 00 00 70 */	b lbl_80735968
lbl_807358FC:
/* 807358FC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80735900  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80735904  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80735908  3C 00 7F 80 */	lis r0, 0x7f80
/* 8073590C  7C 03 00 00 */	cmpw r3, r0
/* 80735910  41 82 00 14 */	beq lbl_80735924
/* 80735914  40 80 00 40 */	bge lbl_80735954
/* 80735918  2C 03 00 00 */	cmpwi r3, 0
/* 8073591C  41 82 00 20 */	beq lbl_8073593C
/* 80735920  48 00 00 34 */	b lbl_80735954
lbl_80735924:
/* 80735924  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80735928  41 82 00 0C */	beq lbl_80735934
/* 8073592C  38 00 00 01 */	li r0, 1
/* 80735930  48 00 00 28 */	b lbl_80735958
lbl_80735934:
/* 80735934  38 00 00 02 */	li r0, 2
/* 80735938  48 00 00 20 */	b lbl_80735958
lbl_8073593C:
/* 8073593C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80735940  41 82 00 0C */	beq lbl_8073594C
/* 80735944  38 00 00 05 */	li r0, 5
/* 80735948  48 00 00 10 */	b lbl_80735958
lbl_8073594C:
/* 8073594C  38 00 00 03 */	li r0, 3
/* 80735950  48 00 00 08 */	b lbl_80735958
lbl_80735954:
/* 80735954  38 00 00 04 */	li r0, 4
lbl_80735958:
/* 80735958  2C 00 00 01 */	cmpwi r0, 1
/* 8073595C  40 82 00 0C */	bne lbl_80735968
/* 80735960  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80735964  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80735968:
/* 80735968  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8073596C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80735970  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80735974:
/* 80735974  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80735978  7C 04 07 74 */	extsb r4, r0
/* 8073597C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80735980  38 00 00 00 */	li r0, 0
/* 80735984  90 01 00 08 */	stw r0, 8(r1)
/* 80735988  90 81 00 0C */	stw r4, 0xc(r1)
/* 8073598C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80735990  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80735994  90 01 00 18 */	stw r0, 0x18(r1)
/* 80735998  38 80 00 00 */	li r4, 0
/* 8073599C  38 A0 02 9C */	li r5, 0x29c
/* 807359A0  7F 66 DB 78 */	mr r6, r27
/* 807359A4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807359A8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 807359AC  7F 89 E3 78 */	mr r9, r28
/* 807359B0  39 40 00 FF */	li r10, 0xff
/* 807359B4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807359B8  4B 91 70 D8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807359BC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 807359C0  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 807359C4  90 01 00 28 */	stw r0, 0x28(r1)
/* 807359C8  7F 43 D3 78 */	mr r3, r26
/* 807359CC  38 81 00 28 */	addi r4, r1, 0x28
/* 807359D0  38 A0 00 00 */	li r5, 0
/* 807359D4  38 C0 FF FF */	li r6, -1
/* 807359D8  81 9A 00 00 */	lwz r12, 0(r26)
/* 807359DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807359E0  7D 89 03 A6 */	mtctr r12
/* 807359E4  4E 80 04 21 */	bctrl 
lbl_807359E8:
/* 807359E8  3A A0 00 00 */	li r21, 0
/* 807359EC  3A C0 00 00 */	li r22, 0
/* 807359F0  3A 80 00 00 */	li r20, 0
/* 807359F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807359F8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 807359FC  57 A0 10 3A */	slwi r0, r29, 2
/* 80735A00  3B 17 00 28 */	addi r24, r23, 0x28
/* 80735A04  7F 18 02 14 */	add r24, r24, r0
/* 80735A08  3B B7 00 20 */	addi r29, r23, 0x20
/* 80735A0C  7F BD 02 14 */	add r29, r29, r0
/* 80735A10  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80735A14:
/* 80735A14  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80735A18  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80735A1C  7C 05 07 74 */	extsb r5, r0
/* 80735A20  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80735A24  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80735A28  38 00 00 FF */	li r0, 0xff
/* 80735A2C  90 01 00 08 */	stw r0, 8(r1)
/* 80735A30  38 00 00 00 */	li r0, 0
/* 80735A34  90 01 00 0C */	stw r0, 0xc(r1)
/* 80735A38  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80735A3C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80735A40  93 01 00 18 */	stw r24, 0x18(r1)
/* 80735A44  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80735A48  38 A0 00 00 */	li r5, 0
/* 80735A4C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80735A50  7F 67 DB 78 */	mr r7, r27
/* 80735A54  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80735A58  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80735A5C  7F 8A E3 78 */	mr r10, r28
/* 80735A60  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80735A64  4B 91 7A 68 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80735A68  7C 7E B9 2E */	stwx r3, r30, r23
/* 80735A6C  3A B5 00 01 */	addi r21, r21, 1
/* 80735A70  2C 15 00 03 */	cmpwi r21, 3
/* 80735A74  3A D6 00 02 */	addi r22, r22, 2
/* 80735A78  3A 94 00 04 */	addi r20, r20, 4
/* 80735A7C  41 80 FF 98 */	blt lbl_80735A14
/* 80735A80  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80735A84  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80735A88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80735A8C  7F 43 D3 78 */	mr r3, r26
/* 80735A90  38 81 00 24 */	addi r4, r1, 0x24
/* 80735A94  38 A0 00 00 */	li r5, 0
/* 80735A98  38 C0 FF FF */	li r6, -1
/* 80735A9C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80735AA0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80735AA4  7D 89 03 A6 */	mtctr r12
/* 80735AA8  4E 80 04 21 */	bctrl 
/* 80735AAC  38 60 00 01 */	li r3, 1
/* 80735AB0  48 00 00 10 */	b lbl_80735AC0
lbl_80735AB4:
/* 80735AB4  38 00 00 00 */	li r0, 0
/* 80735AB8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80735ABC  38 60 00 00 */	li r3, 0
lbl_80735AC0:
/* 80735AC0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80735AC4  4B C2 C7 3C */	b _restgpr_19
/* 80735AC8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80735ACC  7C 08 03 A6 */	mtlr r0
/* 80735AD0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80735AD4  4E 80 00 20 */	blr 
