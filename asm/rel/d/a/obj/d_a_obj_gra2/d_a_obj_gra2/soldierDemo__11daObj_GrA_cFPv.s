lbl_80C078A8:
/* 80C078A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C078AC  7C 08 02 A6 */	mflr r0
/* 80C078B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C078B4  39 61 00 40 */	addi r11, r1, 0x40
/* 80C078B8  4B 75 A9 24 */	b _savegpr_29
/* 80C078BC  7C 7E 1B 78 */	mr r30, r3
/* 80C078C0  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha
/* 80C078C4  3B E4 FA 7C */	addi r31, r4, m__17daObj_GrA_Param_c@l
/* 80C078C8  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C078CC  2C 00 00 01 */	cmpwi r0, 1
/* 80C078D0  41 82 00 60 */	beq lbl_80C07930
/* 80C078D4  40 80 00 10 */	bge lbl_80C078E4
/* 80C078D8  2C 00 00 00 */	cmpwi r0, 0
/* 80C078DC  40 80 00 14 */	bge lbl_80C078F0
/* 80C078E0  48 00 03 44 */	b lbl_80C07C24
lbl_80C078E4:
/* 80C078E4  2C 00 00 03 */	cmpwi r0, 3
/* 80C078E8  40 80 03 3C */	bge lbl_80C07C24
/* 80C078EC  48 00 03 2C */	b lbl_80C07C18
lbl_80C078F0:
/* 80C078F0  38 80 00 00 */	li r4, 0
/* 80C078F4  38 BF 00 00 */	addi r5, r31, 0
/* 80C078F8  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C078FC  4B FF 9E 91 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C07900  7F C3 F3 78 */	mr r3, r30
/* 80C07904  38 80 00 0D */	li r4, 0xd
/* 80C07908  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C0790C  4B FF 9E A1 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C07910  7F C3 F3 78 */	mr r3, r30
/* 80C07914  38 80 00 02 */	li r4, 2
/* 80C07918  4B FF B1 BD */	bl setLookMode__11daObj_GrA_cFi
/* 80C0791C  38 00 00 00 */	li r0, 0
/* 80C07920  B0 1E 20 54 */	sth r0, 0x2054(r30)
/* 80C07924  38 00 00 01 */	li r0, 1
/* 80C07928  90 1E 20 9C */	stw r0, 0x209c(r30)
/* 80C0792C  48 00 02 F8 */	b lbl_80C07C24
lbl_80C07930:
/* 80C07930  A8 1E 20 54 */	lha r0, 0x2054(r30)
/* 80C07934  2C 00 00 03 */	cmpwi r0, 3
/* 80C07938  41 82 01 20 */	beq lbl_80C07A58
/* 80C0793C  40 80 00 10 */	bge lbl_80C0794C
/* 80C07940  2C 00 00 01 */	cmpwi r0, 1
/* 80C07944  41 82 00 14 */	beq lbl_80C07958
/* 80C07948  48 00 02 DC */	b lbl_80C07C24
lbl_80C0794C:
/* 80C0794C  2C 00 00 05 */	cmpwi r0, 5
/* 80C07950  40 80 02 D4 */	bge lbl_80C07C24
/* 80C07954  48 00 02 04 */	b lbl_80C07B58
lbl_80C07958:
/* 80C07958  A0 1E 0A 90 */	lhz r0, 0xa90(r30)
/* 80C0795C  28 00 00 11 */	cmplwi r0, 0x11
/* 80C07960  40 82 00 44 */	bne lbl_80C079A4
/* 80C07964  38 80 00 14 */	li r4, 0x14
/* 80C07968  3B BF 00 00 */	addi r29, r31, 0
/* 80C0796C  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80C07970  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80C07974  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C07978  4B FF 9E 15 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0797C  7F C3 F3 78 */	mr r3, r30
/* 80C07980  38 80 00 0D */	li r4, 0xd
/* 80C07984  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 80C07988  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80C0798C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C07990  4B FF 9E 1D */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C07994  7F C3 F3 78 */	mr r3, r30
/* 80C07998  38 80 00 00 */	li r4, 0
/* 80C0799C  4B FF B1 39 */	bl setLookMode__11daObj_GrA_cFi
/* 80C079A0  48 00 02 84 */	b lbl_80C07C24
lbl_80C079A4:
/* 80C079A4  80 9E 07 54 */	lwz r4, 0x754(r30)
/* 80C079A8  38 60 00 01 */	li r3, 1
/* 80C079AC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80C079B0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C079B4  40 82 00 18 */	bne lbl_80C079CC
/* 80C079B8  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C079BC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80C079C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C079C4  41 82 00 08 */	beq lbl_80C079CC
/* 80C079C8  38 60 00 00 */	li r3, 0
lbl_80C079CC:
/* 80C079CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C079D0  41 82 00 10 */	beq lbl_80C079E0
/* 80C079D4  38 00 00 01 */	li r0, 1
/* 80C079D8  90 1E 10 9C */	stw r0, 0x109c(r30)
/* 80C079DC  48 00 02 48 */	b lbl_80C07C24
lbl_80C079E0:
/* 80C079E0  38 64 00 0C */	addi r3, r4, 0xc
/* 80C079E4  C0 3F 02 A4 */	lfs f1, 0x2a4(r31)
/* 80C079E8  4B 72 0A 44 */	b checkPass__12J3DFrameCtrlFf
/* 80C079EC  2C 03 00 00 */	cmpwi r3, 0
/* 80C079F0  41 82 02 34 */	beq lbl_80C07C24
/* 80C079F4  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C079F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C079FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C07A00  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C07A04  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C07A08  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C07A0C  4B 40 53 58 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C07A10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C07A14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C07A18  A8 9E 09 1C */	lha r4, 0x91c(r30)
/* 80C07A1C  4B 40 4A 18 */	b mDoMtx_YrotM__FPA4_fs
/* 80C07A20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C07A24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C07A28  38 81 00 18 */	addi r4, r1, 0x18
/* 80C07A2C  38 BE 0B 74 */	addi r5, r30, 0xb74
/* 80C07A30  4B 73 F3 3C */	b PSMTXMultVec
/* 80C07A34  A8 1E 09 1A */	lha r0, 0x91a(r30)
/* 80C07A38  B0 1E 0B 80 */	sth r0, 0xb80(r30)
/* 80C07A3C  A8 1E 09 1C */	lha r0, 0x91c(r30)
/* 80C07A40  B0 1E 0B 82 */	sth r0, 0xb82(r30)
/* 80C07A44  A8 1E 09 1E */	lha r0, 0x91e(r30)
/* 80C07A48  B0 1E 0B 84 */	sth r0, 0xb84(r30)
/* 80C07A4C  38 00 00 01 */	li r0, 1
/* 80C07A50  98 1E 0B 70 */	stb r0, 0xb70(r30)
/* 80C07A54  48 00 01 D0 */	b lbl_80C07C24
lbl_80C07A58:
/* 80C07A58  80 1E 10 A0 */	lwz r0, 0x10a0(r30)
/* 80C07A5C  2C 00 00 00 */	cmpwi r0, 0
/* 80C07A60  41 82 00 EC */	beq lbl_80C07B4C
/* 80C07A64  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80C07A68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C07A6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C07A70  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80C07A74  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C07A78  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C07A7C  4B 40 52 E8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C07A80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C07A84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C07A88  A8 9E 09 1C */	lha r4, 0x91c(r30)
/* 80C07A8C  4B 40 49 A8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C07A90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C07A94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C07A98  38 81 00 0C */	addi r4, r1, 0xc
/* 80C07A9C  38 BE 0C 2C */	addi r5, r30, 0xc2c
/* 80C07AA0  4B 73 F2 CC */	b PSMTXMultVec
/* 80C07AA4  A8 1E 09 1A */	lha r0, 0x91a(r30)
/* 80C07AA8  B0 1E 0C 38 */	sth r0, 0xc38(r30)
/* 80C07AAC  A8 1E 09 1C */	lha r0, 0x91c(r30)
/* 80C07AB0  B0 1E 0C 3A */	sth r0, 0xc3a(r30)
/* 80C07AB4  A8 1E 09 1E */	lha r0, 0x91e(r30)
/* 80C07AB8  B0 1E 0C 3C */	sth r0, 0xc3c(r30)
/* 80C07ABC  38 00 00 01 */	li r0, 1
/* 80C07AC0  98 1E 0C 28 */	stb r0, 0xc28(r30)
/* 80C07AC4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060008@ha */
/* 80C07AC8  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x00060008@l */
/* 80C07ACC  90 01 00 08 */	stw r0, 8(r1)
/* 80C07AD0  38 7E 07 58 */	addi r3, r30, 0x758
/* 80C07AD4  38 81 00 08 */	addi r4, r1, 8
/* 80C07AD8  38 A0 00 00 */	li r5, 0
/* 80C07ADC  38 C0 FF FF */	li r6, -1
/* 80C07AE0  81 9E 07 58 */	lwz r12, 0x758(r30)
/* 80C07AE4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C07AE8  7D 89 03 A6 */	mtctr r12
/* 80C07AEC  4E 80 04 21 */	bctrl 
/* 80C07AF0  80 7E 10 A0 */	lwz r3, 0x10a0(r30)
/* 80C07AF4  38 03 FF FF */	addi r0, r3, -1
/* 80C07AF8  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 80C07AFC  80 1E 10 A0 */	lwz r0, 0x10a0(r30)
/* 80C07B00  2C 00 00 00 */	cmpwi r0, 0
/* 80C07B04  40 82 01 20 */	bne lbl_80C07C24
/* 80C07B08  7F C3 F3 78 */	mr r3, r30
/* 80C07B0C  38 80 00 06 */	li r4, 6
/* 80C07B10  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C07B14  4B FF 9C 79 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C07B18  7F C3 F3 78 */	mr r3, r30
/* 80C07B1C  38 80 00 03 */	li r4, 3
/* 80C07B20  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C07B24  4B FF 9C 89 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C07B28  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80C07B2C  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C07B30  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C07B34  38 00 00 00 */	li r0, 0
/* 80C07B38  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 80C07B3C  90 1E 10 9C */	stw r0, 0x109c(r30)
/* 80C07B40  38 00 00 04 */	li r0, 4
/* 80C07B44  B0 1E 20 54 */	sth r0, 0x2054(r30)
/* 80C07B48  48 00 00 DC */	b lbl_80C07C24
lbl_80C07B4C:
/* 80C07B4C  38 00 00 5A */	li r0, 0x5a
/* 80C07B50  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 80C07B54  48 00 00 D0 */	b lbl_80C07C24
lbl_80C07B58:
/* 80C07B58  80 9E 07 54 */	lwz r4, 0x754(r30)
/* 80C07B5C  38 60 00 01 */	li r3, 1
/* 80C07B60  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80C07B64  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C07B68  40 82 00 18 */	bne lbl_80C07B80
/* 80C07B6C  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80C07B70  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80C07B74  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C07B78  41 82 00 08 */	beq lbl_80C07B80
/* 80C07B7C  38 60 00 00 */	li r3, 0
lbl_80C07B80:
/* 80C07B80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C07B84  41 82 00 44 */	beq lbl_80C07BC8
/* 80C07B88  A0 1E 0A 90 */	lhz r0, 0xa90(r30)
/* 80C07B8C  28 00 00 00 */	cmplwi r0, 0
/* 80C07B90  41 82 00 38 */	beq lbl_80C07BC8
/* 80C07B94  7F C3 F3 78 */	mr r3, r30
/* 80C07B98  38 80 00 01 */	li r4, 1
/* 80C07B9C  4B FF AF 39 */	bl setLookMode__11daObj_GrA_cFi
/* 80C07BA0  7F C3 F3 78 */	mr r3, r30
/* 80C07BA4  38 80 00 00 */	li r4, 0
/* 80C07BA8  38 BF 00 00 */	addi r5, r31, 0
/* 80C07BAC  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C07BB0  4B FF 9B DD */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C07BB4  7F C3 F3 78 */	mr r3, r30
/* 80C07BB8  38 80 00 0D */	li r4, 0xd
/* 80C07BBC  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 80C07BC0  4B FF 9B ED */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C07BC4  48 00 00 60 */	b lbl_80C07C24
lbl_80C07BC8:
/* 80C07BC8  38 64 00 0C */	addi r3, r4, 0xc
/* 80C07BCC  C0 3F 02 90 */	lfs f1, 0x290(r31)
/* 80C07BD0  4B 72 08 5C */	b checkPass__12J3DFrameCtrlFf
/* 80C07BD4  2C 03 00 00 */	cmpwi r3, 0
/* 80C07BD8  41 82 00 4C */	beq lbl_80C07C24
/* 80C07BDC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C07BE0  D0 1E 0B D0 */	stfs f0, 0xbd0(r30)
/* 80C07BE4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C07BE8  D0 1E 0B D4 */	stfs f0, 0xbd4(r30)
/* 80C07BEC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C07BF0  D0 1E 0B D8 */	stfs f0, 0xbd8(r30)
/* 80C07BF4  A8 1E 09 1A */	lha r0, 0x91a(r30)
/* 80C07BF8  B0 1E 0B DC */	sth r0, 0xbdc(r30)
/* 80C07BFC  A8 1E 09 1C */	lha r0, 0x91c(r30)
/* 80C07C00  B0 1E 0B DE */	sth r0, 0xbde(r30)
/* 80C07C04  A8 1E 09 1E */	lha r0, 0x91e(r30)
/* 80C07C08  B0 1E 0B E0 */	sth r0, 0xbe0(r30)
/* 80C07C0C  38 00 00 01 */	li r0, 1
/* 80C07C10  98 1E 0B CC */	stb r0, 0xbcc(r30)
/* 80C07C14  48 00 00 10 */	b lbl_80C07C24
lbl_80C07C18:
/* 80C07C18  38 00 00 00 */	li r0, 0
/* 80C07C1C  B0 1E 20 54 */	sth r0, 0x2054(r30)
/* 80C07C20  90 1E 20 9C */	stw r0, 0x209c(r30)
lbl_80C07C24:
/* 80C07C24  38 60 00 01 */	li r3, 1
/* 80C07C28  39 61 00 40 */	addi r11, r1, 0x40
/* 80C07C2C  4B 75 A5 FC */	b _restgpr_29
/* 80C07C30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C07C34  7C 08 03 A6 */	mtlr r0
/* 80C07C38  38 21 00 40 */	addi r1, r1, 0x40
/* 80C07C3C  4E 80 00 20 */	blr 
