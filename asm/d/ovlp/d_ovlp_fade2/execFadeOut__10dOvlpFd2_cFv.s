lbl_80252A78:
/* 80252A78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252A7C  7C 08 02 A6 */	mflr r0
/* 80252A80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252A84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252A88  7C 7F 1B 78 */	mr r31, r3
/* 80252A8C  38 00 00 00 */	li r0, 0
/* 80252A90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80252A94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80252A98  98 03 5D 44 */	stb r0, 0x5d44(r3)
/* 80252A9C  38 7F 01 12 */	addi r3, r31, 0x112
/* 80252AA0  38 80 07 D0 */	li r4, 0x7d0
/* 80252AA4  38 A0 00 64 */	li r5, 0x64
/* 80252AA8  48 01 E0 E9 */	bl cLib_chaseAngleS__FPsss
/* 80252AAC  A8 9F 01 12 */	lha r4, 0x112(r31)
/* 80252AB0  A8 7F 01 10 */	lha r3, 0x110(r31)
/* 80252AB4  38 03 40 00 */	addi r0, r3, 0x4000
/* 80252AB8  54 00 04 20 */	rlwinm r0, r0, 0, 0x10, 0x10
/* 80252ABC  60 00 40 00 */	ori r0, r0, 0x4000
/* 80252AC0  7C 04 00 50 */	subf r0, r4, r0
/* 80252AC4  7C 05 07 34 */	extsh r5, r0
/* 80252AC8  7C 03 22 14 */	add r0, r3, r4
/* 80252ACC  B0 1F 01 10 */	sth r0, 0x110(r31)
/* 80252AD0  A8 7F 01 12 */	lha r3, 0x112(r31)
/* 80252AD4  A8 1F 01 10 */	lha r0, 0x110(r31)
/* 80252AD8  7C 00 28 50 */	subf r0, r0, r5
/* 80252ADC  7C 00 07 34 */	extsh r0, r0
/* 80252AE0  7C 03 01 D7 */	mullw. r0, r3, r0
/* 80252AE4  40 80 00 54 */	bge lbl_80252B38
/* 80252AE8  88 1F 01 1D */	lbz r0, 0x11d(r31)
/* 80252AEC  7C 00 07 75 */	extsb. r0, r0
/* 80252AF0  40 82 00 48 */	bne lbl_80252B38
/* 80252AF4  7F E3 FB 78 */	mr r3, r31
/* 80252AF8  4B DC BA 0D */	bl fopOvlpM_IsOutReq__FP18overlap_task_class
/* 80252AFC  2C 03 00 00 */	cmpwi r3, 0
/* 80252B00  41 82 00 38 */	beq lbl_80252B38
/* 80252B04  4B DC B9 C1 */	bl fopOvlpM_SceneIsStart__Fv
/* 80252B08  3C 60 80 3C */	lis r3, lit_3736@ha
/* 80252B0C  38 83 2D 08 */	addi r4, r3, lit_3736@l
/* 80252B10  80 64 00 00 */	lwz r3, 0(r4)
/* 80252B14  80 04 00 04 */	lwz r0, 4(r4)
/* 80252B18  90 7F 00 CC */	stw r3, 0xcc(r31)
/* 80252B1C  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80252B20  80 04 00 08 */	lwz r0, 8(r4)
/* 80252B24  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 80252B28  38 00 C0 00 */	li r0, -16384
/* 80252B2C  B0 1F 01 10 */	sth r0, 0x110(r31)
/* 80252B30  38 00 00 0F */	li r0, 0xf
/* 80252B34  98 1F 01 1D */	stb r0, 0x11d(r31)
lbl_80252B38:
/* 80252B38  88 7F 01 1D */	lbz r3, 0x11d(r31)
/* 80252B3C  7C 60 07 75 */	extsb. r0, r3
/* 80252B40  40 80 00 44 */	bge lbl_80252B84
/* 80252B44  38 03 00 01 */	addi r0, r3, 1
/* 80252B48  98 1F 01 1D */	stb r0, 0x11d(r31)
/* 80252B4C  7C 00 07 75 */	extsb. r0, r0
/* 80252B50  40 82 00 3C */	bne lbl_80252B8C
/* 80252B54  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80252B58  80 63 00 04 */	lwz r3, 4(r3)
/* 80252B5C  28 03 00 00 */	cmplwi r3, 0
/* 80252B60  41 82 00 18 */	beq lbl_80252B78
/* 80252B64  38 80 00 10 */	li r4, 0x10
/* 80252B68  81 83 00 00 */	lwz r12, 0(r3)
/* 80252B6C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80252B70  7D 89 03 A6 */	mtctr r12
/* 80252B74  4E 80 04 21 */	bctrl 
lbl_80252B78:
/* 80252B78  38 00 00 14 */	li r0, 0x14
/* 80252B7C  98 1F 01 1D */	stb r0, 0x11d(r31)
/* 80252B80  48 00 00 0C */	b lbl_80252B8C
lbl_80252B84:
/* 80252B84  38 7F 01 1D */	addi r3, r31, 0x11d
/* 80252B88  48 00 02 E9 */	bl func_80252E70
lbl_80252B8C:
/* 80252B8C  A8 7F 01 14 */	lha r3, 0x114(r31)
/* 80252B90  38 03 08 00 */	addi r0, r3, 0x800
/* 80252B94  B0 1F 01 14 */	sth r0, 0x114(r31)
/* 80252B98  38 7F 01 18 */	addi r3, r31, 0x118
/* 80252B9C  C0 22 B4 30 */	lfs f1, lit_3686(r2)
/* 80252BA0  FC 40 08 90 */	fmr f2, f1
/* 80252BA4  C0 62 B4 48 */	lfs f3, lit_3757(r2)
/* 80252BA8  48 01 CE 95 */	bl cLib_addCalc2__FPffff
/* 80252BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252BB4  7C 08 03 A6 */	mtlr r0
/* 80252BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80252BBC  4E 80 00 20 */	blr 
