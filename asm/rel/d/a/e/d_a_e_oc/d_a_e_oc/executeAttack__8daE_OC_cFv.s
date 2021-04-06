lbl_807305C0:
/* 807305C0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807305C4  7C 08 02 A6 */	mflr r0
/* 807305C8  90 01 00 94 */	stw r0, 0x94(r1)
/* 807305CC  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 807305D0  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 807305D4  39 61 00 80 */	addi r11, r1, 0x80
/* 807305D8  4B C3 1C 05 */	bl _savegpr_29
/* 807305DC  7C 7E 1B 78 */	mr r30, r3
/* 807305E0  3C 60 80 73 */	lis r3, lit_3911@ha /* 0x80735B28@ha */
/* 807305E4  3B E3 5B 28 */	addi r31, r3, lit_3911@l /* 0x80735B28@l */
/* 807305E8  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807305EC  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807305F0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 807305F4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 807305F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807305FC  FC 00 00 1E */	fctiwz f0, f0
/* 80730600  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80730604  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 80730608  2C 1D 00 00 */	cmpwi r29, 0
/* 8073060C  41 80 00 40 */	blt lbl_8073064C
/* 80730610  2C 1D 00 09 */	cmpwi r29, 9
/* 80730614  41 80 00 08 */	blt lbl_8073061C
/* 80730618  3B A0 00 09 */	li r29, 9
lbl_8073061C:
/* 8073061C  7F C3 F3 78 */	mr r3, r30
/* 80730620  38 80 00 05 */	li r4, 5
/* 80730624  4B FF DC F9 */	bl checkBck__8daE_OC_cFi
/* 80730628  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8073062C  41 82 00 14 */	beq lbl_80730640
/* 80730630  57 A0 10 3A */	slwi r0, r29, 2
/* 80730634  38 7F 00 2C */	addi r3, r31, 0x2c
/* 80730638  7F E3 04 2E */	lfsx f31, r3, r0
/* 8073063C  48 00 00 10 */	b lbl_8073064C
lbl_80730640:
/* 80730640  57 A0 10 3A */	slwi r0, r29, 2
/* 80730644  38 7F 00 54 */	addi r3, r31, 0x54
/* 80730648  7F E3 04 2E */	lfsx f31, r3, r0
lbl_8073064C:
/* 8073064C  38 80 00 01 */	li r4, 1
/* 80730650  98 9E 06 EA */	stb r4, 0x6ea(r30)
/* 80730654  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80730658  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
/* 8073065C  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80730660  2C 00 00 02 */	cmpwi r0, 2
/* 80730664  41 82 00 F0 */	beq lbl_80730754
/* 80730668  40 80 00 14 */	bge lbl_8073067C
/* 8073066C  2C 00 00 00 */	cmpwi r0, 0
/* 80730670  41 82 00 18 */	beq lbl_80730688
/* 80730674  40 80 01 B8 */	bge lbl_8073082C
/* 80730678  48 00 07 20 */	b lbl_80730D98
lbl_8073067C:
/* 8073067C  2C 00 00 04 */	cmpwi r0, 4
/* 80730680  40 80 07 18 */	bge lbl_80730D98
/* 80730684  48 00 05 C4 */	b lbl_80730C48
lbl_80730688:
/* 80730688  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8073068C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730690  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80730694  4B B4 00 AD */	bl cLib_chaseF__FPfff
/* 80730698  2C 03 00 00 */	cmpwi r3, 0
/* 8073069C  41 82 06 FC */	beq lbl_80730D98
/* 807306A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807306A4  4B B3 72 B1 */	bl cM_rndF__Ff
/* 807306A8  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807306AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807306B0  40 80 00 50 */	bge lbl_80730700
/* 807306B4  7F C3 F3 78 */	mr r3, r30
/* 807306B8  38 80 00 05 */	li r4, 5
/* 807306BC  38 A0 00 00 */	li r5, 0
/* 807306C0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 807306C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807306C8  4B FF DB AD */	bl setBck__8daE_OC_cFiUcff
/* 807306CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070184@ha */
/* 807306D0  38 03 01 84 */	addi r0, r3, 0x0184 /* 0x00070184@l */
/* 807306D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 807306D8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 807306DC  38 81 00 44 */	addi r4, r1, 0x44
/* 807306E0  38 A0 FF FF */	li r5, -1
/* 807306E4  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 807306E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807306EC  7D 89 03 A6 */	mtctr r12
/* 807306F0  4E 80 04 21 */	bctrl 
/* 807306F4  38 00 00 01 */	li r0, 1
/* 807306F8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 807306FC  48 00 00 4C */	b lbl_80730748
lbl_80730700:
/* 80730700  7F C3 F3 78 */	mr r3, r30
/* 80730704  38 80 00 06 */	li r4, 6
/* 80730708  38 A0 00 00 */	li r5, 0
/* 8073070C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80730710  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80730714  4B FF DB 61 */	bl setBck__8daE_OC_cFiUcff
/* 80730718  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070185@ha */
/* 8073071C  38 03 01 85 */	addi r0, r3, 0x0185 /* 0x00070185@l */
/* 80730720  90 01 00 40 */	stw r0, 0x40(r1)
/* 80730724  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730728  38 81 00 40 */	addi r4, r1, 0x40
/* 8073072C  38 A0 FF FF */	li r5, -1
/* 80730730  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730734  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730738  7D 89 03 A6 */	mtctr r12
/* 8073073C  4E 80 04 21 */	bctrl 
/* 80730740  38 00 00 02 */	li r0, 2
/* 80730744  90 1E 06 B0 */	stw r0, 0x6b0(r30)
lbl_80730748:
/* 80730748  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8073074C  D0 1E 06 A0 */	stfs f0, 0x6a0(r30)
/* 80730750  48 00 06 48 */	b lbl_80730D98
lbl_80730754:
/* 80730754  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80730758  80 63 00 04 */	lwz r3, 4(r3)
/* 8073075C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80730760  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80730764  C0 43 00 2C */	lfs f2, 0x2c(r3)
/* 80730768  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8073076C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80730770  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80730774  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80730778  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8073077C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80730780  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80730784  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80730788  38 00 00 FF */	li r0, 0xff
/* 8073078C  90 01 00 08 */	stw r0, 8(r1)
/* 80730790  38 80 00 00 */	li r4, 0
/* 80730794  90 81 00 0C */	stw r4, 0xc(r1)
/* 80730798  38 00 FF FF */	li r0, -1
/* 8073079C  90 01 00 10 */	stw r0, 0x10(r1)
/* 807307A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807307A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807307A8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807307AC  80 9E 0E 68 */	lwz r4, 0xe68(r30)
/* 807307B0  38 A0 00 00 */	li r5, 0
/* 807307B4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008379@ha */
/* 807307B8  38 C6 83 79 */	addi r6, r6, 0x8379 /* 0x00008379@l */
/* 807307BC  38 E1 00 54 */	addi r7, r1, 0x54
/* 807307C0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807307C4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807307C8  39 40 00 00 */	li r10, 0
/* 807307CC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807307D0  4B 91 CC FD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807307D4  90 7E 0E 68 */	stw r3, 0xe68(r30)
/* 807307D8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 807307DC  38 00 00 FF */	li r0, 0xff
/* 807307E0  90 01 00 08 */	stw r0, 8(r1)
/* 807307E4  38 80 00 00 */	li r4, 0
/* 807307E8  90 81 00 0C */	stw r4, 0xc(r1)
/* 807307EC  38 00 FF FF */	li r0, -1
/* 807307F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807307F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 807307F8  90 81 00 18 */	stw r4, 0x18(r1)
/* 807307FC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80730800  80 9E 0E 6C */	lwz r4, 0xe6c(r30)
/* 80730804  38 A0 00 00 */	li r5, 0
/* 80730808  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000837A@ha */
/* 8073080C  38 C6 83 7A */	addi r6, r6, 0x837A /* 0x0000837A@l */
/* 80730810  38 E1 00 54 */	addi r7, r1, 0x54
/* 80730814  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80730818  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8073081C  39 40 00 00 */	li r10, 0
/* 80730820  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80730824  4B 91 CC A9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80730828  90 7E 0E 6C */	stw r3, 0xe6c(r30)
lbl_8073082C:
/* 8073082C  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80730830  2C 00 00 01 */	cmpwi r0, 1
/* 80730834  40 82 01 1C */	bne lbl_80730950
/* 80730838  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8073083C  38 63 00 0C */	addi r3, r3, 0xc
/* 80730840  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80730844  4B BF 7B E9 */	bl checkPass__12J3DFrameCtrlFf
/* 80730848  2C 03 00 00 */	cmpwi r3, 0
/* 8073084C  41 82 00 30 */	beq lbl_8073087C
/* 80730850  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070186@ha */
/* 80730854  38 03 01 86 */	addi r0, r3, 0x0186 /* 0x00070186@l */
/* 80730858  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8073085C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730860  38 81 00 3C */	addi r4, r1, 0x3c
/* 80730864  38 A0 FF FF */	li r5, -1
/* 80730868  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8073086C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730870  7D 89 03 A6 */	mtctr r12
/* 80730874  4E 80 04 21 */	bctrl 
/* 80730878  48 00 01 60 */	b lbl_807309D8
lbl_8073087C:
/* 8073087C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80730880  38 63 00 0C */	addi r3, r3, 0xc
/* 80730884  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80730888  4B BF 7B A5 */	bl checkPass__12J3DFrameCtrlFf
/* 8073088C  2C 03 00 00 */	cmpwi r3, 0
/* 80730890  41 82 00 34 */	beq lbl_807308C4
/* 80730894  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070188@ha */
/* 80730898  38 03 01 88 */	addi r0, r3, 0x0188 /* 0x00070188@l */
/* 8073089C  90 01 00 38 */	stw r0, 0x38(r1)
/* 807308A0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 807308A4  38 81 00 38 */	addi r4, r1, 0x38
/* 807308A8  38 A0 00 00 */	li r5, 0
/* 807308AC  38 C0 FF FF */	li r6, -1
/* 807308B0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 807308B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807308B8  7D 89 03 A6 */	mtctr r12
/* 807308BC  4E 80 04 21 */	bctrl 
/* 807308C0  48 00 01 18 */	b lbl_807309D8
lbl_807308C4:
/* 807308C4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807308C8  38 63 00 0C */	addi r3, r3, 0xc
/* 807308CC  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 807308D0  4B BF 7B 5D */	bl checkPass__12J3DFrameCtrlFf
/* 807308D4  2C 03 00 00 */	cmpwi r3, 0
/* 807308D8  41 82 01 00 */	beq lbl_807309D8
/* 807308DC  80 9E 06 A4 */	lwz r4, 0x6a4(r30)
/* 807308E0  3C 60 80 73 */	lis r3, d_a_e_oc__stringBase0@ha /* 0x80735D0C@ha */
/* 807308E4  38 03 5D 0C */	addi r0, r3, d_a_e_oc__stringBase0@l /* 0x80735D0C@l */
/* 807308E8  7C 04 00 40 */	cmplw r4, r0
/* 807308EC  40 82 00 34 */	bne lbl_80730920
/* 807308F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070192@ha */
/* 807308F4  38 03 01 92 */	addi r0, r3, 0x0192 /* 0x00070192@l */
/* 807308F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 807308FC  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730900  38 81 00 34 */	addi r4, r1, 0x34
/* 80730904  38 A0 00 00 */	li r5, 0
/* 80730908  38 C0 FF FF */	li r6, -1
/* 8073090C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730910  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80730914  7D 89 03 A6 */	mtctr r12
/* 80730918  4E 80 04 21 */	bctrl 
/* 8073091C  48 00 00 BC */	b lbl_807309D8
lbl_80730920:
/* 80730920  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070536@ha */
/* 80730924  38 03 05 36 */	addi r0, r3, 0x0536 /* 0x00070536@l */
/* 80730928  90 01 00 30 */	stw r0, 0x30(r1)
/* 8073092C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730930  38 81 00 30 */	addi r4, r1, 0x30
/* 80730934  38 A0 00 00 */	li r5, 0
/* 80730938  38 C0 FF FF */	li r6, -1
/* 8073093C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730940  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80730944  7D 89 03 A6 */	mtctr r12
/* 80730948  4E 80 04 21 */	bctrl 
/* 8073094C  48 00 00 8C */	b lbl_807309D8
lbl_80730950:
/* 80730950  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80730954  38 63 00 0C */	addi r3, r3, 0xc
/* 80730958  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 8073095C  4B BF 7A D1 */	bl checkPass__12J3DFrameCtrlFf
/* 80730960  2C 03 00 00 */	cmpwi r3, 0
/* 80730964  41 82 00 30 */	beq lbl_80730994
/* 80730968  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070187@ha */
/* 8073096C  38 03 01 87 */	addi r0, r3, 0x0187 /* 0x00070187@l */
/* 80730970  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80730974  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730978  38 81 00 2C */	addi r4, r1, 0x2c
/* 8073097C  38 A0 FF FF */	li r5, -1
/* 80730980  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730984  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730988  7D 89 03 A6 */	mtctr r12
/* 8073098C  4E 80 04 21 */	bctrl 
/* 80730990  48 00 00 48 */	b lbl_807309D8
lbl_80730994:
/* 80730994  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80730998  38 63 00 0C */	addi r3, r3, 0xc
/* 8073099C  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 807309A0  4B BF 7A 8D */	bl checkPass__12J3DFrameCtrlFf
/* 807309A4  2C 03 00 00 */	cmpwi r3, 0
/* 807309A8  41 82 00 30 */	beq lbl_807309D8
/* 807309AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070189@ha */
/* 807309B0  38 03 01 89 */	addi r0, r3, 0x0189 /* 0x00070189@l */
/* 807309B4  90 01 00 28 */	stw r0, 0x28(r1)
/* 807309B8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 807309BC  38 81 00 28 */	addi r4, r1, 0x28
/* 807309C0  38 A0 00 00 */	li r5, 0
/* 807309C4  38 C0 FF FF */	li r6, -1
/* 807309C8  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 807309CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807309D0  7D 89 03 A6 */	mtctr r12
/* 807309D4  4E 80 04 21 */	bctrl 
lbl_807309D8:
/* 807309D8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 807309DC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 807309E0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807309E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807309E8  4C 41 13 82 */	cror 2, 1, 2
/* 807309EC  40 82 00 2C */	bne lbl_80730A18
/* 807309F0  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 807309F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807309F8  4C 40 13 82 */	cror 2, 0, 2
/* 807309FC  40 82 00 1C */	bne lbl_80730A18
/* 80730A00  80 1E 0B CC */	lwz r0, 0xbcc(r30)
/* 80730A04  60 00 00 01 */	ori r0, r0, 1
/* 80730A08  90 1E 0B CC */	stw r0, 0xbcc(r30)
/* 80730A0C  80 1E 0D 04 */	lwz r0, 0xd04(r30)
/* 80730A10  60 00 00 01 */	ori r0, r0, 1
/* 80730A14  90 1E 0D 04 */	stw r0, 0xd04(r30)
lbl_80730A18:
/* 80730A18  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80730A1C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80730A20  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 80730A24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80730A28  4C 41 13 82 */	cror 2, 1, 2
/* 80730A2C  40 82 00 1C */	bne lbl_80730A48
/* 80730A30  7F C3 F3 78 */	mr r3, r30
/* 80730A34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80730A38  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80730A3C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80730A40  4B 8E 9C D1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80730A44  B0 7E 06 D4 */	sth r3, 0x6d4(r30)
lbl_80730A48:
/* 80730A48  3B A0 00 00 */	li r29, 0
/* 80730A4C  38 7E 0B CC */	addi r3, r30, 0xbcc
/* 80730A50  4B 95 38 71 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80730A54  28 03 00 00 */	cmplwi r3, 0
/* 80730A58  41 82 00 20 */	beq lbl_80730A78
/* 80730A5C  38 7E 0B CC */	addi r3, r30, 0xbcc
/* 80730A60  4B 95 38 F9 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 80730A64  4B B3 2F E5 */	bl GetAc__8cCcD_ObjFv
/* 80730A68  A8 03 00 08 */	lha r0, 8(r3)
/* 80730A6C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80730A70  40 82 00 08 */	bne lbl_80730A78
/* 80730A74  3B A0 00 01 */	li r29, 1
lbl_80730A78:
/* 80730A78  38 7E 0D 04 */	addi r3, r30, 0xd04
/* 80730A7C  4B 95 38 45 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80730A80  28 03 00 00 */	cmplwi r3, 0
/* 80730A84  41 82 00 20 */	beq lbl_80730AA4
/* 80730A88  38 7E 0D 04 */	addi r3, r30, 0xd04
/* 80730A8C  4B 95 38 CD */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 80730A90  4B B3 2F B9 */	bl GetAc__8cCcD_ObjFv
/* 80730A94  A8 03 00 08 */	lha r0, 8(r3)
/* 80730A98  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80730A9C  40 82 00 08 */	bne lbl_80730AA4
/* 80730AA0  3B A0 00 01 */	li r29, 1
lbl_80730AA4:
/* 80730AA4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80730AA8  41 82 00 6C */	beq lbl_80730B14
/* 80730AAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80730AB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80730AB4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80730AB8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80730ABC  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 80730AC0  7D 89 03 A6 */	mtctr r12
/* 80730AC4  4E 80 04 21 */	bctrl 
/* 80730AC8  2C 03 00 00 */	cmpwi r3, 0
/* 80730ACC  41 82 00 48 */	beq lbl_80730B14
/* 80730AD0  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80730AD4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80730AD8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80730ADC  38 00 00 03 */	li r0, 3
/* 80730AE0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80730AE4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730AE8  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80730AEC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80730AF0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80730AF4  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80730AF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80730AFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80730B00  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80730B04  38 80 00 03 */	li r4, 3
/* 80730B08  38 A0 00 1F */	li r5, 0x1f
/* 80730B0C  38 C1 00 48 */	addi r6, r1, 0x48
/* 80730B10  4B 93 EF 15 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80730B14:
/* 80730B14  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80730B18  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80730B1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80730B20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80730B24  7C 43 04 2E */	lfsx f2, r3, r0
/* 80730B28  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80730B2C  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 80730B30  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80730B34  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80730B38  EC 01 00 2A */	fadds f0, f1, f0
/* 80730B3C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80730B40  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80730B44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80730B48  7C 63 02 14 */	add r3, r3, r0
/* 80730B4C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80730B50  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80730B54  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 80730B58  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80730B5C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80730B60  EC 01 00 2A */	fadds f0, f1, f0
/* 80730B64  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80730B68  D3 FE 06 A0 */	stfs f31, 0x6a0(r30)
/* 80730B6C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80730B70  38 80 00 01 */	li r4, 1
/* 80730B74  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80730B78  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80730B7C  40 82 00 18 */	bne lbl_80730B94
/* 80730B80  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730B84  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80730B88  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80730B8C  41 82 00 08 */	beq lbl_80730B94
/* 80730B90  38 80 00 00 */	li r4, 0
lbl_80730B94:
/* 80730B94  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80730B98  41 82 02 00 */	beq lbl_80730D98
/* 80730B9C  7F C3 F3 78 */	mr r3, r30
/* 80730BA0  38 80 00 1C */	li r4, 0x1c
/* 80730BA4  38 A0 00 02 */	li r5, 2
/* 80730BA8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730BAC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80730BB0  4B FF D6 C5 */	bl setBck__8daE_OC_cFiUcff
/* 80730BB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018D@ha */
/* 80730BB8  38 03 01 8D */	addi r0, r3, 0x018D /* 0x0007018D@l */
/* 80730BBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80730BC0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730BC4  38 81 00 24 */	addi r4, r1, 0x24
/* 80730BC8  38 A0 FF FF */	li r5, -1
/* 80730BCC  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730BD0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730BD4  7D 89 03 A6 */	mtctr r12
/* 80730BD8  4E 80 04 21 */	bctrl 
/* 80730BDC  88 1E 06 E3 */	lbz r0, 0x6e3(r30)
/* 80730BE0  28 00 00 00 */	cmplwi r0, 0
/* 80730BE4  41 82 00 18 */	beq lbl_80730BFC
/* 80730BE8  7F C3 F3 78 */	mr r3, r30
/* 80730BEC  38 80 00 10 */	li r4, 0x10
/* 80730BF0  38 A0 00 00 */	li r5, 0
/* 80730BF4  4B FF D0 C9 */	bl setActionMode__8daE_OC_cFii
/* 80730BF8  48 00 01 A0 */	b lbl_80730D98
lbl_80730BFC:
/* 80730BFC  A8 1E 06 CA */	lha r0, 0x6ca(r30)
/* 80730C00  2C 00 00 00 */	cmpwi r0, 0
/* 80730C04  41 82 00 30 */	beq lbl_80730C34
/* 80730C08  7F C3 F3 78 */	mr r3, r30
/* 80730C0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80730C10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80730C14  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80730C18  4B 8E 9B C9 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80730C1C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80730C20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80730C24  40 80 00 10 */	bge lbl_80730C34
/* 80730C28  38 00 00 00 */	li r0, 0
/* 80730C2C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80730C30  48 00 01 68 */	b lbl_80730D98
lbl_80730C34:
/* 80730C34  7F C3 F3 78 */	mr r3, r30
/* 80730C38  38 80 00 03 */	li r4, 3
/* 80730C3C  38 A0 00 00 */	li r5, 0
/* 80730C40  4B FF D0 7D */	bl setActionMode__8daE_OC_cFii
/* 80730C44  48 00 01 54 */	b lbl_80730D98
lbl_80730C48:
/* 80730C48  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80730C4C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80730C50  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80730C54  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80730C58  7C 43 04 2E */	lfsx f2, r3, r0
/* 80730C5C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80730C60  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 80730C64  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80730C68  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80730C6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80730C70  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80730C74  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80730C78  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80730C7C  7C 63 02 14 */	add r3, r3, r0
/* 80730C80  C0 43 00 04 */	lfs f2, 4(r3)
/* 80730C84  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80730C88  C0 1E 06 A0 */	lfs f0, 0x6a0(r30)
/* 80730C8C  EC 1F 00 28 */	fsubs f0, f31, f0
/* 80730C90  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80730C94  EC 01 00 2A */	fadds f0, f1, f0
/* 80730C98  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80730C9C  D3 FE 06 A0 */	stfs f31, 0x6a0(r30)
/* 80730CA0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80730CA4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80730CA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80730CAC  40 82 00 18 */	bne lbl_80730CC4
/* 80730CB0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80730CB4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80730CB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80730CBC  41 82 00 08 */	beq lbl_80730CC4
/* 80730CC0  38 80 00 00 */	li r4, 0
lbl_80730CC4:
/* 80730CC4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80730CC8  41 82 00 D0 */	beq lbl_80730D98
/* 80730CCC  7F C3 F3 78 */	mr r3, r30
/* 80730CD0  38 80 00 1C */	li r4, 0x1c
/* 80730CD4  38 A0 00 02 */	li r5, 2
/* 80730CD8  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80730CDC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80730CE0  4B FF D5 95 */	bl setBck__8daE_OC_cFiUcff
/* 80730CE4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007018D@ha */
/* 80730CE8  38 03 01 8D */	addi r0, r3, 0x018D /* 0x0007018D@l */
/* 80730CEC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80730CF0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80730CF4  38 81 00 20 */	addi r4, r1, 0x20
/* 80730CF8  38 A0 FF FF */	li r5, -1
/* 80730CFC  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 80730D00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80730D04  7D 89 03 A6 */	mtctr r12
/* 80730D08  4E 80 04 21 */	bctrl 
/* 80730D0C  88 1E 06 E3 */	lbz r0, 0x6e3(r30)
/* 80730D10  28 00 00 00 */	cmplwi r0, 0
/* 80730D14  41 82 00 18 */	beq lbl_80730D2C
/* 80730D18  7F C3 F3 78 */	mr r3, r30
/* 80730D1C  38 80 00 10 */	li r4, 0x10
/* 80730D20  38 A0 00 00 */	li r5, 0
/* 80730D24  4B FF CF 99 */	bl setActionMode__8daE_OC_cFii
/* 80730D28  48 00 00 70 */	b lbl_80730D98
lbl_80730D2C:
/* 80730D2C  A8 1E 06 CA */	lha r0, 0x6ca(r30)
/* 80730D30  2C 00 00 00 */	cmpwi r0, 0
/* 80730D34  41 82 00 54 */	beq lbl_80730D88
/* 80730D38  7F C3 F3 78 */	mr r3, r30
/* 80730D3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80730D40  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80730D44  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80730D48  4B 8E 9A 99 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80730D4C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80730D50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80730D54  40 80 00 34 */	bge lbl_80730D88
/* 80730D58  7F C3 F3 78 */	mr r3, r30
/* 80730D5C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80730D60  4B 8E 99 B1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80730D64  7C 63 07 34 */	extsh r3, r3
/* 80730D68  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80730D6C  7C 63 00 50 */	subf r3, r3, r0
/* 80730D70  4B C3 43 61 */	bl abs
/* 80730D74  2C 03 10 00 */	cmpwi r3, 0x1000
/* 80730D78  40 80 00 10 */	bge lbl_80730D88
/* 80730D7C  38 00 00 00 */	li r0, 0
/* 80730D80  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80730D84  48 00 00 14 */	b lbl_80730D98
lbl_80730D88:
/* 80730D88  7F C3 F3 78 */	mr r3, r30
/* 80730D8C  38 80 00 03 */	li r4, 3
/* 80730D90  38 A0 00 00 */	li r5, 0
/* 80730D94  4B FF CF 29 */	bl setActionMode__8daE_OC_cFii
lbl_80730D98:
/* 80730D98  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80730D9C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80730DA0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80730DA4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80730DA8  39 61 00 80 */	addi r11, r1, 0x80
/* 80730DAC  4B C3 14 7D */	bl _restgpr_29
/* 80730DB0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80730DB4  7C 08 03 A6 */	mtlr r0
/* 80730DB8  38 21 00 90 */	addi r1, r1, 0x90
/* 80730DBC  4E 80 00 20 */	blr 
