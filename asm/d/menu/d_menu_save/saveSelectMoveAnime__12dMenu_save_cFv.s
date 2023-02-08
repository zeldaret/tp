lbl_801F3E30:
/* 801F3E30  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F3E34  7C 08 02 A6 */	mflr r0
/* 801F3E38  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F3E3C  39 61 00 30 */	addi r11, r1, 0x30
/* 801F3E40  48 16 E3 91 */	bl _savegpr_26
/* 801F3E44  7C 7A 1B 78 */	mr r26, r3
/* 801F3E48  3B E0 00 01 */	li r31, 1
/* 801F3E4C  3B C0 00 01 */	li r30, 1
/* 801F3E50  3B A0 00 01 */	li r29, 1
/* 801F3E54  88 03 00 55 */	lbz r0, 0x55(r3)
/* 801F3E58  28 00 00 FF */	cmplwi r0, 0xff
/* 801F3E5C  41 82 00 DC */	beq lbl_801F3F38
/* 801F3E60  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801F3E64  7C 7A 02 14 */	add r3, r26, r0
/* 801F3E68  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 801F3E6C  3C 80 80 43 */	lis r4, g_msHIO@ha /* 0x8042E84C@ha */
/* 801F3E70  38 84 E8 4C */	addi r4, r4, g_msHIO@l /* 0x8042E84C@l */
/* 801F3E74  88 84 00 07 */	lbz r4, 7(r4)
/* 801F3E78  38 A0 00 FF */	li r5, 0xff
/* 801F3E7C  38 C0 00 00 */	li r6, 0
/* 801F3E80  38 E0 00 01 */	li r7, 1
/* 801F3E84  48 06 19 F5 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F3E88  7C 7F 1B 78 */	mr r31, r3
/* 801F3E8C  7F 43 D3 78 */	mr r3, r26
/* 801F3E90  88 9A 00 55 */	lbz r4, 0x55(r26)
/* 801F3E94  48 00 24 FD */	bl selectWakuAlpahAnm__12dMenu_save_cFUc
/* 801F3E98  7C 7E 1B 78 */	mr r30, r3
/* 801F3E9C  88 1A 00 55 */	lbz r0, 0x55(r26)
/* 801F3EA0  54 00 10 3A */	slwi r0, r0, 2
/* 801F3EA4  7C BA 02 14 */	add r5, r26, r0
/* 801F3EA8  80 85 00 74 */	lwz r4, 0x74(r5)
/* 801F3EAC  3C 60 80 3C */	lis r3, SelStartFrameTbl@ha /* 0x803BDF84@ha */
/* 801F3EB0  38 63 DF 84 */	addi r3, r3, SelStartFrameTbl@l /* 0x803BDF84@l */
/* 801F3EB4  7C 03 00 2E */	lwzx r0, r3, r0
/* 801F3EB8  7C 04 00 00 */	cmpw r4, r0
/* 801F3EBC  41 82 00 7C */	beq lbl_801F3F38
/* 801F3EC0  38 04 FF FE */	addi r0, r4, -2
/* 801F3EC4  90 05 00 74 */	stw r0, 0x74(r5)
/* 801F3EC8  88 1A 00 55 */	lbz r0, 0x55(r26)
/* 801F3ECC  54 04 10 3A */	slwi r4, r0, 2
/* 801F3ED0  7C BA 22 14 */	add r5, r26, r4
/* 801F3ED4  80 05 00 74 */	lwz r0, 0x74(r5)
/* 801F3ED8  7C 63 20 2E */	lwzx r3, r3, r4
/* 801F3EDC  7C 00 18 00 */	cmpw r0, r3
/* 801F3EE0  40 80 00 08 */	bge lbl_801F3EE8
/* 801F3EE4  90 65 00 74 */	stw r3, 0x74(r5)
lbl_801F3EE8:
/* 801F3EE8  88 1A 00 55 */	lbz r0, 0x55(r26)
/* 801F3EEC  54 00 10 3A */	slwi r0, r0, 2
/* 801F3EF0  7C 7A 02 14 */	add r3, r26, r0
/* 801F3EF4  80 03 00 74 */	lwz r0, 0x74(r3)
/* 801F3EF8  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F3EFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F3F00  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F3F04  3C 00 43 30 */	lis r0, 0x4330
/* 801F3F08  90 01 00 08 */	stw r0, 8(r1)
/* 801F3F0C  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F3F10  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F3F14  80 7A 00 44 */	lwz r3, 0x44(r26)
/* 801F3F18  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F3F1C  88 1A 00 55 */	lbz r0, 0x55(r26)
/* 801F3F20  54 00 10 3A */	slwi r0, r0, 2
/* 801F3F24  7C 7A 02 14 */	add r3, r26, r0
/* 801F3F28  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F3F2C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F3F30  48 10 40 9D */	bl animationTransform__7J2DPaneFv
/* 801F3F34  3B A0 00 00 */	li r29, 0
lbl_801F3F38:
/* 801F3F38  3B 80 00 01 */	li r28, 1
/* 801F3F3C  3B 60 00 01 */	li r27, 1
/* 801F3F40  88 1A 00 54 */	lbz r0, 0x54(r26)
/* 801F3F44  28 00 00 FF */	cmplwi r0, 0xff
/* 801F3F48  41 82 00 CC */	beq lbl_801F4014
/* 801F3F4C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801F3F50  7C 7A 02 14 */	add r3, r26, r0
/* 801F3F54  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 801F3F58  3C 80 80 43 */	lis r4, g_msHIO@ha /* 0x8042E84C@ha */
/* 801F3F5C  38 84 E8 4C */	addi r4, r4, g_msHIO@l /* 0x8042E84C@l */
/* 801F3F60  88 84 00 07 */	lbz r4, 7(r4)
/* 801F3F64  38 A0 00 00 */	li r5, 0
/* 801F3F68  38 C0 00 FF */	li r6, 0xff
/* 801F3F6C  38 E0 00 01 */	li r7, 1
/* 801F3F70  48 06 19 09 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 801F3F74  7C 7C 1B 78 */	mr r28, r3
/* 801F3F78  88 1A 00 54 */	lbz r0, 0x54(r26)
/* 801F3F7C  54 00 10 3A */	slwi r0, r0, 2
/* 801F3F80  7C BA 02 14 */	add r5, r26, r0
/* 801F3F84  80 85 00 74 */	lwz r4, 0x74(r5)
/* 801F3F88  3C 60 80 3C */	lis r3, SelEndFrameTbl@ha /* 0x803BDF90@ha */
/* 801F3F8C  38 63 DF 90 */	addi r3, r3, SelEndFrameTbl@l /* 0x803BDF90@l */
/* 801F3F90  7C 03 00 2E */	lwzx r0, r3, r0
/* 801F3F94  7C 04 00 00 */	cmpw r4, r0
/* 801F3F98  41 82 00 7C */	beq lbl_801F4014
/* 801F3F9C  38 04 00 02 */	addi r0, r4, 2
/* 801F3FA0  90 05 00 74 */	stw r0, 0x74(r5)
/* 801F3FA4  88 1A 00 54 */	lbz r0, 0x54(r26)
/* 801F3FA8  54 04 10 3A */	slwi r4, r0, 2
/* 801F3FAC  7C BA 22 14 */	add r5, r26, r4
/* 801F3FB0  80 05 00 74 */	lwz r0, 0x74(r5)
/* 801F3FB4  7C 63 20 2E */	lwzx r3, r3, r4
/* 801F3FB8  7C 00 18 00 */	cmpw r0, r3
/* 801F3FBC  40 81 00 08 */	ble lbl_801F3FC4
/* 801F3FC0  90 65 00 74 */	stw r3, 0x74(r5)
lbl_801F3FC4:
/* 801F3FC4  88 1A 00 54 */	lbz r0, 0x54(r26)
/* 801F3FC8  54 00 10 3A */	slwi r0, r0, 2
/* 801F3FCC  7C 7A 02 14 */	add r3, r26, r0
/* 801F3FD0  80 03 00 74 */	lwz r0, 0x74(r3)
/* 801F3FD4  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F3FD8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F3FDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F3FE0  3C 00 43 30 */	lis r0, 0x4330
/* 801F3FE4  90 01 00 08 */	stw r0, 8(r1)
/* 801F3FE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F3FEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F3FF0  80 7A 00 40 */	lwz r3, 0x40(r26)
/* 801F3FF4  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F3FF8  88 1A 00 54 */	lbz r0, 0x54(r26)
/* 801F3FFC  54 00 10 3A */	slwi r0, r0, 2
/* 801F4000  7C 7A 02 14 */	add r3, r26, r0
/* 801F4004  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F4008  80 63 00 04 */	lwz r3, 4(r3)
/* 801F400C  48 10 3F C1 */	bl animationTransform__7J2DPaneFv
/* 801F4010  3B 60 00 00 */	li r27, 0
lbl_801F4014:
/* 801F4014  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 801F4018  28 00 00 01 */	cmplwi r0, 1
/* 801F401C  40 82 00 A4 */	bne lbl_801F40C0
/* 801F4020  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F4024  28 00 00 01 */	cmplwi r0, 1
/* 801F4028  40 82 00 98 */	bne lbl_801F40C0
/* 801F402C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801F4030  28 00 00 01 */	cmplwi r0, 1
/* 801F4034  40 82 00 8C */	bne lbl_801F40C0
/* 801F4038  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801F403C  28 00 00 01 */	cmplwi r0, 1
/* 801F4040  40 82 00 80 */	bne lbl_801F40C0
/* 801F4044  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 801F4048  28 00 00 01 */	cmplwi r0, 1
/* 801F404C  40 82 00 74 */	bne lbl_801F40C0
/* 801F4050  88 1A 00 54 */	lbz r0, 0x54(r26)
/* 801F4054  28 00 00 FF */	cmplwi r0, 0xff
/* 801F4058  41 82 00 30 */	beq lbl_801F4088
/* 801F405C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801F4060  7C 7A 02 14 */	add r3, r26, r0
/* 801F4064  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F4068  80 63 00 04 */	lwz r3, 4(r3)
/* 801F406C  38 80 00 00 */	li r4, 0
/* 801F4070  81 83 00 00 */	lwz r12, 0(r3)
/* 801F4074  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F4078  7D 89 03 A6 */	mtctr r12
/* 801F407C  4E 80 04 21 */	bctrl 
/* 801F4080  7F 43 D3 78 */	mr r3, r26
/* 801F4084  48 00 23 D5 */	bl selFileCursorShow__12dMenu_save_cFv
lbl_801F4088:
/* 801F4088  88 1A 00 55 */	lbz r0, 0x55(r26)
/* 801F408C  28 00 00 FF */	cmplwi r0, 0xff
/* 801F4090  41 82 00 28 */	beq lbl_801F40B8
/* 801F4094  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801F4098  7C 7A 02 14 */	add r3, r26, r0
/* 801F409C  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F40A0  80 63 00 04 */	lwz r3, 4(r3)
/* 801F40A4  38 80 00 00 */	li r4, 0
/* 801F40A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F40AC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F40B0  7D 89 03 A6 */	mtctr r12
/* 801F40B4  4E 80 04 21 */	bctrl 
lbl_801F40B8:
/* 801F40B8  38 00 00 31 */	li r0, 0x31
/* 801F40BC  98 1A 01 B2 */	stb r0, 0x1b2(r26)
lbl_801F40C0:
/* 801F40C0  39 61 00 30 */	addi r11, r1, 0x30
/* 801F40C4  48 16 E1 59 */	bl _restgpr_26
/* 801F40C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F40CC  7C 08 03 A6 */	mtlr r0
/* 801F40D0  38 21 00 30 */	addi r1, r1, 0x30
/* 801F40D4  4E 80 00 20 */	blr 
