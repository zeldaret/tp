lbl_8079817C:
/* 8079817C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80798180  7C 08 02 A6 */	mflr r0
/* 80798184  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80798188  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8079818C  4B BC A0 28 */	b _savegpr_19
/* 80798190  7C 7E 1B 78 */	mr r30, r3
/* 80798194  7C 9A 23 78 */	mr r26, r4
/* 80798198  7C BB 2B 78 */	mr r27, r5
/* 8079819C  7C DC 33 78 */	mr r28, r6
/* 807981A0  3C 60 80 7A */	lis r3, cNullVec__6Z2Calc@ha
/* 807981A4  3A E3 87 8C */	addi r23, r3, cNullVec__6Z2Calc@l
/* 807981A8  3C 60 80 7A */	lis r3, lit_3920@ha
/* 807981AC  3B E3 85 E0 */	addi r31, r3, lit_3920@l
/* 807981B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807981B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807981B8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807981BC  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 807981C0  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 807981C4  28 00 00 00 */	cmplwi r0, 0
/* 807981C8  41 82 03 A4 */	beq lbl_8079856C
/* 807981CC  7F C4 F3 78 */	mr r4, r30
/* 807981D0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807981D4  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807981D8  7D 89 03 A6 */	mtctr r12
/* 807981DC  4E 80 04 21 */	bctrl 
/* 807981E0  2C 03 00 00 */	cmpwi r3, 0
/* 807981E4  41 82 03 88 */	beq lbl_8079856C
/* 807981E8  4B A1 43 94 */	b dKy_darkworld_check__Fv
/* 807981EC  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807981F0  30 03 FF FF */	addic r0, r3, -1
/* 807981F4  7F A0 19 10 */	subfe r29, r0, r3
/* 807981F8  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807981FC  28 00 00 00 */	cmplwi r0, 0
/* 80798200  40 82 02 A0 */	bne lbl_807984A0
/* 80798204  38 00 00 01 */	li r0, 1
/* 80798208  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8079820C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80798210  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 80798214  80 63 00 00 */	lwz r3, 0(r3)
/* 80798218  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8079821C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80798220  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80798224  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80798228  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8079822C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80798230  4B BA E2 80 */	b PSMTXCopy
/* 80798234  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80798238  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8079823C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80798240  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80798244  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80798248  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8079824C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80798250  38 81 00 4C */	addi r4, r1, 0x4c
/* 80798254  38 A1 00 58 */	addi r5, r1, 0x58
/* 80798258  4B BA EB 14 */	b PSMTXMultVec
/* 8079825C  38 61 00 34 */	addi r3, r1, 0x34
/* 80798260  38 81 00 58 */	addi r4, r1, 0x58
/* 80798264  7F 65 DB 78 */	mr r5, r27
/* 80798268  4B AC E8 CC */	b __mi__4cXyzCFRC3Vec
/* 8079826C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80798270  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80798274  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80798278  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8079827C  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80798280  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80798284  4B AC F3 F0 */	b cM_atan2s__Fff
/* 80798288  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 8079828C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80798290  EC 20 00 32 */	fmuls f1, f0, f0
/* 80798294  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80798298  EC 00 00 32 */	fmuls f0, f0, f0
/* 8079829C  EC 41 00 2A */	fadds f2, f1, f0
/* 807982A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807982A4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807982A8  40 81 00 0C */	ble lbl_807982B4
/* 807982AC  FC 00 10 34 */	frsqrte f0, f2
/* 807982B0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807982B4:
/* 807982B4  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 807982B8  4B AC F3 BC */	b cM_atan2s__Fff
/* 807982BC  7C 03 00 D0 */	neg r0, r3
/* 807982C0  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807982C4  38 80 00 00 */	li r4, 0
/* 807982C8  B0 81 00 30 */	sth r4, 0x30(r1)
/* 807982CC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807982D0  7C 00 07 74 */	extsb r0, r0
/* 807982D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807982D8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 807982DC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 807982E0  57 A5 10 3A */	slwi r5, r29, 2
/* 807982E4  90 81 00 08 */	stw r4, 8(r1)
/* 807982E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807982EC  3A B7 00 20 */	addi r21, r23, 0x20
/* 807982F0  7E B5 2A 14 */	add r21, r21, r5
/* 807982F4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 807982F8  3A D7 00 28 */	addi r22, r23, 0x28
/* 807982FC  7E D6 2A 14 */	add r22, r22, r5
/* 80798300  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80798304  90 81 00 18 */	stw r4, 0x18(r1)
/* 80798308  38 80 00 00 */	li r4, 0
/* 8079830C  38 A0 02 9B */	li r5, 0x29b
/* 80798310  7F 66 DB 78 */	mr r6, r27
/* 80798314  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80798318  39 01 00 2C */	addi r8, r1, 0x2c
/* 8079831C  7F 89 E3 78 */	mr r9, r28
/* 80798320  39 40 00 FF */	li r10, 0xff
/* 80798324  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80798328  4B 8B 47 68 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8079832C  7C 79 1B 79 */	or. r25, r3, r3
/* 80798330  41 82 00 FC */	beq lbl_8079842C
/* 80798334  38 61 00 40 */	addi r3, r1, 0x40
/* 80798338  4B BA EE 00 */	b PSVECSquareMag
/* 8079833C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80798340  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80798344  40 81 00 58 */	ble lbl_8079839C
/* 80798348  FC 00 08 34 */	frsqrte f0, f1
/* 8079834C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80798350  FC 44 00 32 */	fmul f2, f4, f0
/* 80798354  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80798358  FC 00 00 32 */	fmul f0, f0, f0
/* 8079835C  FC 01 00 32 */	fmul f0, f1, f0
/* 80798360  FC 03 00 28 */	fsub f0, f3, f0
/* 80798364  FC 02 00 32 */	fmul f0, f2, f0
/* 80798368  FC 44 00 32 */	fmul f2, f4, f0
/* 8079836C  FC 00 00 32 */	fmul f0, f0, f0
/* 80798370  FC 01 00 32 */	fmul f0, f1, f0
/* 80798374  FC 03 00 28 */	fsub f0, f3, f0
/* 80798378  FC 02 00 32 */	fmul f0, f2, f0
/* 8079837C  FC 44 00 32 */	fmul f2, f4, f0
/* 80798380  FC 00 00 32 */	fmul f0, f0, f0
/* 80798384  FC 01 00 32 */	fmul f0, f1, f0
/* 80798388  FC 03 00 28 */	fsub f0, f3, f0
/* 8079838C  FC 02 00 32 */	fmul f0, f2, f0
/* 80798390  FC 21 00 32 */	fmul f1, f1, f0
/* 80798394  FC 20 08 18 */	frsp f1, f1
/* 80798398  48 00 00 88 */	b lbl_80798420
lbl_8079839C:
/* 8079839C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807983A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807983A4  40 80 00 10 */	bge lbl_807983B4
/* 807983A8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807983AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807983B0  48 00 00 70 */	b lbl_80798420
lbl_807983B4:
/* 807983B4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807983B8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 807983BC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807983C0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807983C4  7C 03 00 00 */	cmpw r3, r0
/* 807983C8  41 82 00 14 */	beq lbl_807983DC
/* 807983CC  40 80 00 40 */	bge lbl_8079840C
/* 807983D0  2C 03 00 00 */	cmpwi r3, 0
/* 807983D4  41 82 00 20 */	beq lbl_807983F4
/* 807983D8  48 00 00 34 */	b lbl_8079840C
lbl_807983DC:
/* 807983DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807983E0  41 82 00 0C */	beq lbl_807983EC
/* 807983E4  38 00 00 01 */	li r0, 1
/* 807983E8  48 00 00 28 */	b lbl_80798410
lbl_807983EC:
/* 807983EC  38 00 00 02 */	li r0, 2
/* 807983F0  48 00 00 20 */	b lbl_80798410
lbl_807983F4:
/* 807983F4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807983F8  41 82 00 0C */	beq lbl_80798404
/* 807983FC  38 00 00 05 */	li r0, 5
/* 80798400  48 00 00 10 */	b lbl_80798410
lbl_80798404:
/* 80798404  38 00 00 03 */	li r0, 3
/* 80798408  48 00 00 08 */	b lbl_80798410
lbl_8079840C:
/* 8079840C  38 00 00 04 */	li r0, 4
lbl_80798410:
/* 80798410  2C 00 00 01 */	cmpwi r0, 1
/* 80798414  40 82 00 0C */	bne lbl_80798420
/* 80798418  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8079841C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80798420:
/* 80798420  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80798424  EC 00 00 72 */	fmuls f0, f0, f1
/* 80798428  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8079842C:
/* 8079842C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80798430  7C 04 07 74 */	extsb r4, r0
/* 80798434  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80798438  38 00 00 00 */	li r0, 0
/* 8079843C  90 01 00 08 */	stw r0, 8(r1)
/* 80798440  90 81 00 0C */	stw r4, 0xc(r1)
/* 80798444  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80798448  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8079844C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80798450  38 80 00 00 */	li r4, 0
/* 80798454  38 A0 02 9C */	li r5, 0x29c
/* 80798458  7F 66 DB 78 */	mr r6, r27
/* 8079845C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80798460  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80798464  7F 89 E3 78 */	mr r9, r28
/* 80798468  39 40 00 FF */	li r10, 0xff
/* 8079846C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80798470  4B 8B 46 20 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80798474  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80798478  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8079847C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80798480  7F 43 D3 78 */	mr r3, r26
/* 80798484  38 81 00 28 */	addi r4, r1, 0x28
/* 80798488  38 A0 00 00 */	li r5, 0
/* 8079848C  38 C0 FF FF */	li r6, -1
/* 80798490  81 9A 00 00 */	lwz r12, 0(r26)
/* 80798494  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80798498  7D 89 03 A6 */	mtctr r12
/* 8079849C  4E 80 04 21 */	bctrl 
lbl_807984A0:
/* 807984A0  3A A0 00 00 */	li r21, 0
/* 807984A4  3A C0 00 00 */	li r22, 0
/* 807984A8  3A 80 00 00 */	li r20, 0
/* 807984AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807984B0  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 807984B4  57 A0 10 3A */	slwi r0, r29, 2
/* 807984B8  3B 17 00 28 */	addi r24, r23, 0x28
/* 807984BC  7F 18 02 14 */	add r24, r24, r0
/* 807984C0  3B B7 00 20 */	addi r29, r23, 0x20
/* 807984C4  7F BD 02 14 */	add r29, r29, r0
/* 807984C8  3A 77 00 30 */	addi r19, r23, 0x30
lbl_807984CC:
/* 807984CC  3A F4 05 9C */	addi r23, r20, 0x59c
/* 807984D0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 807984D4  7C 05 07 74 */	extsb r5, r0
/* 807984D8  7C 9E B8 2E */	lwzx r4, r30, r23
/* 807984DC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 807984E0  38 00 00 FF */	li r0, 0xff
/* 807984E4  90 01 00 08 */	stw r0, 8(r1)
/* 807984E8  38 00 00 00 */	li r0, 0
/* 807984EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807984F0  90 A1 00 10 */	stw r5, 0x10(r1)
/* 807984F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 807984F8  93 01 00 18 */	stw r24, 0x18(r1)
/* 807984FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80798500  38 A0 00 00 */	li r5, 0
/* 80798504  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80798508  7F 67 DB 78 */	mr r7, r27
/* 8079850C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80798510  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80798514  7F 8A E3 78 */	mr r10, r28
/* 80798518  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8079851C  4B 8B 4F B0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80798520  7C 7E B9 2E */	stwx r3, r30, r23
/* 80798524  3A B5 00 01 */	addi r21, r21, 1
/* 80798528  2C 15 00 03 */	cmpwi r21, 3
/* 8079852C  3A D6 00 02 */	addi r22, r22, 2
/* 80798530  3A 94 00 04 */	addi r20, r20, 4
/* 80798534  41 80 FF 98 */	blt lbl_807984CC
/* 80798538  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8079853C  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80798540  90 01 00 24 */	stw r0, 0x24(r1)
/* 80798544  7F 43 D3 78 */	mr r3, r26
/* 80798548  38 81 00 24 */	addi r4, r1, 0x24
/* 8079854C  38 A0 00 00 */	li r5, 0
/* 80798550  38 C0 FF FF */	li r6, -1
/* 80798554  81 9A 00 00 */	lwz r12, 0(r26)
/* 80798558  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8079855C  7D 89 03 A6 */	mtctr r12
/* 80798560  4E 80 04 21 */	bctrl 
/* 80798564  38 60 00 01 */	li r3, 1
/* 80798568  48 00 00 10 */	b lbl_80798578
lbl_8079856C:
/* 8079856C  38 00 00 00 */	li r0, 0
/* 80798570  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80798574  38 60 00 00 */	li r3, 0
lbl_80798578:
/* 80798578  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8079857C  4B BC 9C 84 */	b _restgpr_19
/* 80798580  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80798584  7C 08 03 A6 */	mtlr r0
/* 80798588  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8079858C  4E 80 00 20 */	blr 
