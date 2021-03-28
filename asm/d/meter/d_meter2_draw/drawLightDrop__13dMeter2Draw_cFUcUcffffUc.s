lbl_80215B18:
/* 80215B18  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80215B1C  7C 08 02 A6 */	mflr r0
/* 80215B20  90 01 00 84 */	stw r0, 0x84(r1)
/* 80215B24  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80215B28  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80215B2C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80215B30  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80215B34  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80215B38  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80215B3C  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80215B40  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80215B44  39 61 00 40 */	addi r11, r1, 0x40
/* 80215B48  48 14 C6 85 */	bl _savegpr_25
/* 80215B4C  7C 7A 1B 78 */	mr r26, r3
/* 80215B50  FF C0 08 90 */	fmr f30, f1
/* 80215B54  FF E0 10 90 */	fmr f31, f2
/* 80215B58  FF 80 18 90 */	fmr f28, f3
/* 80215B5C  FF A0 20 90 */	fmr f29, f4
/* 80215B60  7C DB 33 78 */	mr r27, r6
/* 80215B64  3B 80 00 00 */	li r28, 0
/* 80215B68  3B 20 00 00 */	li r25, 0
/* 80215B6C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80215B70  3B E3 EB C8 */	addi r31, r3, g_drawHIO@l
/* 80215B74  54 9D 06 3E */	clrlwi r29, r4, 0x18
lbl_80215B78:
/* 80215B78  7F DA CA 14 */	add r30, r26, r25
/* 80215B7C  80 7E 01 F0 */	lwz r3, 0x1f0(r30)
/* 80215B80  28 03 00 00 */	cmplwi r3, 0
/* 80215B84  41 82 00 28 */	beq lbl_80215BAC
/* 80215B88  C0 1F 0E C4 */	lfs f0, 0xec4(r31)
/* 80215B8C  80 63 00 04 */	lwz r3, 4(r3)
/* 80215B90  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80215B94  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80215B98  81 83 00 00 */	lwz r12, 0(r3)
/* 80215B9C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80215BA0  7D 89 03 A6 */	mtctr r12
/* 80215BA4  4E 80 04 21 */	bctrl 
/* 80215BA8  48 00 00 4C */	b lbl_80215BF4
lbl_80215BAC:
/* 80215BAC  C0 1F 0E C4 */	lfs f0, 0xec4(r31)
/* 80215BB0  80 7E 01 F4 */	lwz r3, 0x1f4(r30)
/* 80215BB4  80 63 00 04 */	lwz r3, 4(r3)
/* 80215BB8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80215BBC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80215BC0  81 83 00 00 */	lwz r12, 0(r3)
/* 80215BC4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80215BC8  7D 89 03 A6 */	mtctr r12
/* 80215BCC  4E 80 04 21 */	bctrl 
/* 80215BD0  C0 1F 0E C4 */	lfs f0, 0xec4(r31)
/* 80215BD4  80 7E 01 F8 */	lwz r3, 0x1f8(r30)
/* 80215BD8  80 63 00 04 */	lwz r3, 4(r3)
/* 80215BDC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80215BE0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80215BE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80215BE8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80215BEC  7D 89 03 A6 */	mtctr r12
/* 80215BF0  4E 80 04 21 */	bctrl 
lbl_80215BF4:
/* 80215BF4  7C 1C E8 00 */	cmpw r28, r29
/* 80215BF8  40 80 00 58 */	bge lbl_80215C50
/* 80215BFC  80 1F 0E B4 */	lwz r0, 0xeb4(r31)
/* 80215C00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80215C04  80 1F 0E B8 */	lwz r0, 0xeb8(r31)
/* 80215C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80215C0C  80 7E 01 F4 */	lwz r3, 0x1f4(r30)
/* 80215C10  80 63 00 04 */	lwz r3, 4(r3)
/* 80215C14  38 81 00 14 */	addi r4, r1, 0x14
/* 80215C18  38 A1 00 10 */	addi r5, r1, 0x10
/* 80215C1C  81 83 00 00 */	lwz r12, 0(r3)
/* 80215C20  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80215C24  7D 89 03 A6 */	mtctr r12
/* 80215C28  4E 80 04 21 */	bctrl 
/* 80215C2C  80 7A 01 EC */	lwz r3, 0x1ec(r26)
/* 80215C30  48 03 FB F9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215C34  80 7E 01 F4 */	lwz r3, 0x1f4(r30)
/* 80215C38  48 03 FB 99 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80215C3C  80 7A 01 EC */	lwz r3, 0x1ec(r26)
/* 80215C40  48 03 FB E9 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215C44  80 7E 01 F8 */	lwz r3, 0x1f8(r30)
/* 80215C48  48 03 FB 89 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80215C4C  48 00 00 64 */	b lbl_80215CB0
lbl_80215C50:
/* 80215C50  80 1F 0E BC */	lwz r0, 0xebc(r31)
/* 80215C54  90 01 00 08 */	stw r0, 8(r1)
/* 80215C58  80 1F 0E C0 */	lwz r0, 0xec0(r31)
/* 80215C5C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80215C60  80 7E 01 F4 */	lwz r3, 0x1f4(r30)
/* 80215C64  80 63 00 04 */	lwz r3, 4(r3)
/* 80215C68  38 81 00 0C */	addi r4, r1, 0xc
/* 80215C6C  38 A1 00 08 */	addi r5, r1, 8
/* 80215C70  81 83 00 00 */	lwz r12, 0(r3)
/* 80215C74  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80215C78  7D 89 03 A6 */	mtctr r12
/* 80215C7C  4E 80 04 21 */	bctrl 
/* 80215C80  80 7A 01 EC */	lwz r3, 0x1ec(r26)
/* 80215C84  48 03 FB A5 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215C88  C0 02 AE C8 */	lfs f0, lit_6524(r2)
/* 80215C8C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80215C90  80 7E 01 F4 */	lwz r3, 0x1f4(r30)
/* 80215C94  48 03 FB 3D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80215C98  80 7A 01 EC */	lwz r3, 0x1ec(r26)
/* 80215C9C  48 03 FB 8D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80215CA0  C0 02 AE C8 */	lfs f0, lit_6524(r2)
/* 80215CA4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80215CA8  80 7E 01 F8 */	lwz r3, 0x1f8(r30)
/* 80215CAC  48 03 FB 25 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80215CB0:
/* 80215CB0  3B 9C 00 01 */	addi r28, r28, 1
/* 80215CB4  2C 1C 00 10 */	cmpwi r28, 0x10
/* 80215CB8  3B 39 00 0C */	addi r25, r25, 0xc
/* 80215CBC  41 80 FE BC */	blt lbl_80215B78
/* 80215CC0  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80215CC4  28 00 00 01 */	cmplwi r0, 1
/* 80215CC8  40 82 00 30 */	bne lbl_80215CF8
/* 80215CCC  9B 7A 07 60 */	stb r27, 0x760(r26)
/* 80215CD0  38 00 FF FF */	li r0, -1
/* 80215CD4  B0 1A 07 56 */	sth r0, 0x756(r26)
/* 80215CD8  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80215CDC  57 A0 10 3A */	slwi r0, r29, 2
/* 80215CE0  7C 7A 02 14 */	add r3, r26, r0
/* 80215CE4  C0 03 06 28 */	lfs f0, 0x628(r3)
/* 80215CE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80215CEC  40 82 00 0C */	bne lbl_80215CF8
/* 80215CF0  C0 02 AE 98 */	lfs f0, lit_4923(r2)
/* 80215CF4  D0 03 06 28 */	stfs f0, 0x628(r3)
lbl_80215CF8:
/* 80215CF8  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 80215CFC  28 00 00 02 */	cmplwi r0, 2
/* 80215D00  40 82 00 28 */	bne lbl_80215D28
/* 80215D04  9B 7A 07 60 */	stb r27, 0x760(r26)
/* 80215D08  38 00 00 00 */	li r0, 0
/* 80215D0C  B0 1A 07 56 */	sth r0, 0x756(r26)
/* 80215D10  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80215D14  C0 1A 06 2C */	lfs f0, 0x62c(r26)
/* 80215D18  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80215D1C  40 82 00 0C */	bne lbl_80215D28
/* 80215D20  C0 02 AE 98 */	lfs f0, lit_4923(r2)
/* 80215D24  D0 1A 06 2C */	stfs f0, 0x62c(r26)
lbl_80215D28:
/* 80215D28  D3 BA 06 FC */	stfs f29, 0x6fc(r26)
/* 80215D2C  D3 9A 06 F4 */	stfs f28, 0x6f4(r26)
/* 80215D30  C0 3A 06 F4 */	lfs f1, 0x6f4(r26)
/* 80215D34  C0 1A 06 F8 */	lfs f0, 0x6f8(r26)
/* 80215D38  EC 01 00 32 */	fmuls f0, f1, f0
/* 80215D3C  80 7A 01 E0 */	lwz r3, 0x1e0(r26)
/* 80215D40  80 63 00 04 */	lwz r3, 4(r3)
/* 80215D44  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80215D48  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80215D4C  81 83 00 00 */	lwz r12, 0(r3)
/* 80215D50  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80215D54  7D 89 03 A6 */	mtctr r12
/* 80215D58  4E 80 04 21 */	bctrl 
/* 80215D5C  80 7A 01 E0 */	lwz r3, 0x1e0(r26)
/* 80215D60  FC 20 F0 90 */	fmr f1, f30
/* 80215D64  FC 40 F8 90 */	fmr f2, f31
/* 80215D68  48 03 E8 49 */	bl paneTrans__8CPaneMgrFff
/* 80215D6C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80215D70  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80215D74  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80215D78  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80215D7C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80215D80  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80215D84  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80215D88  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80215D8C  39 61 00 40 */	addi r11, r1, 0x40
/* 80215D90  48 14 C4 89 */	bl _restgpr_25
/* 80215D94  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80215D98  7C 08 03 A6 */	mtlr r0
/* 80215D9C  38 21 00 80 */	addi r1, r1, 0x80
/* 80215DA0  4E 80 00 20 */	blr 
