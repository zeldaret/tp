lbl_80040B00:
/* 80040B00  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80040B04  7C 08 02 A6 */	mflr r0
/* 80040B08  90 01 00 74 */	stw r0, 0x74(r1)
/* 80040B0C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80040B10  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80040B14  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80040B18  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80040B1C  39 61 00 50 */	addi r11, r1, 0x50
/* 80040B20  48 32 16 99 */	bl _savegpr_20
/* 80040B24  7C 7F 1B 78 */	mr r31, r3
/* 80040B28  81 83 00 00 */	lwz r12, 0(r3)
/* 80040B2C  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 80040B30  7D 89 03 A6 */	mtctr r12
/* 80040B34  4E 80 04 21 */	bctrl 
/* 80040B38  7C 74 1B 78 */	mr r20, r3
/* 80040B3C  48 31 AA 51 */	bl GXClearVtxDesc
/* 80040B40  38 60 00 09 */	li r3, 9
/* 80040B44  38 80 00 01 */	li r4, 1
/* 80040B48  48 31 A3 71 */	bl GXSetVtxDesc
/* 80040B4C  38 60 00 0D */	li r3, 0xd
/* 80040B50  38 80 00 02 */	li r4, 2
/* 80040B54  48 31 A3 65 */	bl GXSetVtxDesc
/* 80040B58  38 60 00 00 */	li r3, 0
/* 80040B5C  38 80 00 09 */	li r4, 9
/* 80040B60  38 A0 00 00 */	li r5, 0
/* 80040B64  38 C0 00 04 */	li r6, 4
/* 80040B68  38 E0 00 00 */	li r7, 0
/* 80040B6C  48 31 AA 59 */	bl GXSetVtxAttrFmt
/* 80040B70  38 60 00 00 */	li r3, 0
/* 80040B74  38 80 00 0D */	li r4, 0xd
/* 80040B78  38 A0 00 01 */	li r5, 1
/* 80040B7C  38 C0 00 00 */	li r6, 0
/* 80040B80  38 E0 00 00 */	li r7, 0
/* 80040B84  48 31 AA 41 */	bl GXSetVtxAttrFmt
/* 80040B88  38 60 00 0D */	li r3, 0xd
/* 80040B8C  38 82 84 9C */	la r4, l_iconTex0_4523(r2) /* 80451E9C-_SDA2_BASE_ */
/* 80040B90  38 A0 00 02 */	li r5, 2
/* 80040B94  48 31 AF 95 */	bl GXSetArray
/* 80040B98  7F E3 FB 78 */	mr r3, r31
/* 80040B9C  4B FF C3 A5 */	bl setTevSettingIntensityTextureToCI__18dRenderingFDAmap_cCFv
/* 80040BA0  3A E0 00 00 */	li r23, 0
/* 80040BA4  3B C0 00 00 */	li r30, 0
/* 80040BA8  3B 42 84 A4 */	la r26, tboxNotStayColor_4542(r2) /* 80451EA4-_SDA2_BASE_ */
/* 80040BAC  3B 22 84 7C */	la r25, l_treasureStartColor(r2) /* 80451E7C-_SDA2_BASE_ */
/* 80040BB0  56 98 06 3E */	clrlwi r24, r20, 0x18
/* 80040BB4  3C 60 80 38 */	lis r3, l_treasureDispList_4524@ha /* 0x80379C88@ha */
/* 80040BB8  3B 63 9C 88 */	addi r27, r3, l_treasureDispList_4524@l /* 0x80379C88@l */
lbl_80040BBC:
/* 80040BBC  7F BB F2 14 */	add r29, r27, r30
/* 80040BC0  88 9D 00 00 */	lbz r4, 0(r29)
/* 80040BC4  7C 95 23 78 */	mr r21, r4
/* 80040BC8  7F E3 FB 78 */	mr r3, r31
/* 80040BCC  81 9F 00 00 */	lwz r12, 0(r31)
/* 80040BD0  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 80040BD4  7D 89 03 A6 */	mtctr r12
/* 80040BD8  4E 80 04 21 */	bctrl 
/* 80040BDC  7C 76 1B 78 */	mr r22, r3
/* 80040BE0  7F E3 FB 78 */	mr r3, r31
/* 80040BE4  7E A4 AB 78 */	mr r4, r21
/* 80040BE8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80040BEC  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80040BF0  7D 89 03 A6 */	mtctr r12
/* 80040BF4  4E 80 04 21 */	bctrl 
/* 80040BF8  7C 7C 1B 79 */	or. r28, r3, r3
/* 80040BFC  41 82 02 48 */	beq lbl_80040E44
/* 80040C00  7F E3 FB 78 */	mr r3, r31
/* 80040C04  7E A4 AB 78 */	mr r4, r21
/* 80040C08  81 9F 00 00 */	lwz r12, 0(r31)
/* 80040C0C  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 80040C10  7D 89 03 A6 */	mtctr r12
/* 80040C14  4E 80 04 21 */	bctrl 
/* 80040C18  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80040C1C  EF C0 00 72 */	fmuls f30, f0, f1
/* 80040C20  48 31 DA 45 */	bl GXInvalidateTexAll
/* 80040C24  80 1D 00 04 */	lwz r0, 4(r29)
/* 80040C28  54 00 10 3A */	slwi r0, r0, 2
/* 80040C2C  3C 60 80 42 */	lis r3, m_texObjAgg__8dMpath_n@ha /* 0x80424684@ha */
/* 80040C30  38 63 46 84 */	addi r3, r3, m_texObjAgg__8dMpath_n@l /* 0x80424684@l */
/* 80040C34  7C 63 00 2E */	lwzx r3, r3, r0
/* 80040C38  38 80 00 00 */	li r4, 0
/* 80040C3C  48 31 D7 D9 */	bl GXLoadTexObj
/* 80040C40  80 7D 00 08 */	lwz r3, 8(r29)
/* 80040C44  88 03 00 00 */	lbz r0, 0(r3)
/* 80040C48  98 01 00 18 */	stb r0, 0x18(r1)
/* 80040C4C  88 03 00 01 */	lbz r0, 1(r3)
/* 80040C50  98 01 00 19 */	stb r0, 0x19(r1)
/* 80040C54  88 03 00 02 */	lbz r0, 2(r3)
/* 80040C58  98 01 00 1A */	stb r0, 0x1a(r1)
/* 80040C5C  88 03 00 03 */	lbz r0, 3(r3)
/* 80040C60  98 01 00 1B */	stb r0, 0x1b(r1)
/* 80040C64  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80040C68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80040C6C  38 60 00 02 */	li r3, 2
/* 80040C70  38 81 00 14 */	addi r4, r1, 0x14
/* 80040C74  48 31 E7 09 */	bl GXSetTevColor
/* 80040C78  88 61 00 18 */	lbz r3, 0x18(r1)
/* 80040C7C  38 03 00 04 */	addi r0, r3, 4
/* 80040C80  98 01 00 18 */	stb r0, 0x18(r1)
/* 80040C84  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80040C88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80040C8C  38 60 00 03 */	li r3, 3
/* 80040C90  38 81 00 10 */	addi r4, r1, 0x10
/* 80040C94  48 31 E6 E9 */	bl GXSetTevColor
/* 80040C98  3A 80 00 00 */	li r20, 0
/* 80040C9C  56 BD 06 3E */	clrlwi r29, r21, 0x18
/* 80040CA0  C3 E2 84 A8 */	lfs f31, lit_4600(r2)
/* 80040CA4  48 00 01 90 */	b lbl_80040E34
lbl_80040CA8:
/* 80040CA8  7F E3 FB 78 */	mr r3, r31
/* 80040CAC  7E C4 B3 78 */	mr r4, r22
/* 80040CB0  81 9F 00 00 */	lwz r12, 0(r31)
/* 80040CB4  81 8C 00 A8 */	lwz r12, 0xa8(r12)
/* 80040CB8  7D 89 03 A6 */	mtctr r12
/* 80040CBC  4E 80 04 21 */	bctrl 
/* 80040CC0  7C 75 1B 78 */	mr r21, r3
/* 80040CC4  28 1D 00 00 */	cmplwi r29, 0
/* 80040CC8  40 82 00 90 */	bne lbl_80040D58
/* 80040CCC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80040CD0  88 16 00 01 */	lbz r0, 1(r22)
/* 80040CD4  7C 00 07 74 */	extsb r0, r0
/* 80040CD8  7C 03 00 00 */	cmpw r3, r0
/* 80040CDC  41 82 00 28 */	beq lbl_80040D04
/* 80040CE0  88 02 84 A4 */	lbz r0, tboxNotStayColor_4542(r2)
/* 80040CE4  98 01 00 18 */	stb r0, 0x18(r1)
/* 80040CE8  88 1A 00 01 */	lbz r0, 1(r26)
/* 80040CEC  98 01 00 19 */	stb r0, 0x19(r1)
/* 80040CF0  88 1A 00 02 */	lbz r0, 2(r26)
/* 80040CF4  98 01 00 1A */	stb r0, 0x1a(r1)
/* 80040CF8  88 1A 00 03 */	lbz r0, 3(r26)
/* 80040CFC  98 01 00 1B */	stb r0, 0x1b(r1)
/* 80040D00  48 00 00 24 */	b lbl_80040D24
lbl_80040D04:
/* 80040D04  88 02 84 7C */	lbz r0, l_treasureStartColor(r2)
/* 80040D08  98 01 00 18 */	stb r0, 0x18(r1)
/* 80040D0C  88 19 00 01 */	lbz r0, 1(r25)
/* 80040D10  98 01 00 19 */	stb r0, 0x19(r1)
/* 80040D14  88 19 00 02 */	lbz r0, 2(r25)
/* 80040D18  98 01 00 1A */	stb r0, 0x1a(r1)
/* 80040D1C  88 19 00 03 */	lbz r0, 3(r25)
/* 80040D20  98 01 00 1B */	stb r0, 0x1b(r1)
lbl_80040D24:
/* 80040D24  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80040D28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80040D2C  38 60 00 02 */	li r3, 2
/* 80040D30  38 81 00 0C */	addi r4, r1, 0xc
/* 80040D34  48 31 E6 49 */	bl GXSetTevColor
/* 80040D38  88 61 00 18 */	lbz r3, 0x18(r1)
/* 80040D3C  38 03 00 04 */	addi r0, r3, 4
/* 80040D40  98 01 00 18 */	stb r0, 0x18(r1)
/* 80040D44  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80040D48  90 01 00 08 */	stw r0, 8(r1)
/* 80040D4C  38 60 00 03 */	li r3, 3
/* 80040D50  38 81 00 08 */	addi r4, r1, 8
/* 80040D54  48 31 E6 29 */	bl GXSetTevColor
lbl_80040D58:
/* 80040D58  38 00 00 00 */	li r0, 0
/* 80040D5C  C0 75 00 00 */	lfs f3, 0(r21)
/* 80040D60  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80040D64  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80040D68  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80040D6C  EC 02 08 28 */	fsubs f0, f2, f1
/* 80040D70  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80040D74  4C 41 13 82 */	cror 2, 1, 2
/* 80040D78  40 82 00 48 */	bne lbl_80040DC0
/* 80040D7C  EC 02 08 2A */	fadds f0, f2, f1
/* 80040D80  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80040D84  4C 40 13 82 */	cror 2, 0, 2
/* 80040D88  40 82 00 38 */	bne lbl_80040DC0
/* 80040D8C  C0 75 00 08 */	lfs f3, 8(r21)
/* 80040D90  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80040D94  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80040D98  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80040D9C  EC 02 08 28 */	fsubs f0, f2, f1
/* 80040DA0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80040DA4  4C 41 13 82 */	cror 2, 1, 2
/* 80040DA8  40 82 00 18 */	bne lbl_80040DC0
/* 80040DAC  EC 02 08 2A */	fadds f0, f2, f1
/* 80040DB0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80040DB4  4C 40 13 82 */	cror 2, 0, 2
/* 80040DB8  40 82 00 08 */	bne lbl_80040DC0
/* 80040DBC  38 00 00 01 */	li r0, 1
lbl_80040DC0:
/* 80040DC0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80040DC4  41 82 00 50 */	beq lbl_80040E14
/* 80040DC8  7F E3 FB 78 */	mr r3, r31
/* 80040DCC  7E C4 B3 78 */	mr r4, r22
/* 80040DD0  80 BF 00 2C */	lwz r5, 0x2c(r31)
/* 80040DD4  88 DF 00 30 */	lbz r6, 0x30(r31)
/* 80040DD8  7C C6 07 74 */	extsb r6, r6
/* 80040DDC  7F 07 C3 78 */	mr r7, r24
/* 80040DE0  39 00 00 01 */	li r8, 1
/* 80040DE4  7E A9 AB 78 */	mr r9, r21
/* 80040DE8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80040DEC  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80040DF0  7D 89 03 A6 */	mtctr r12
/* 80040DF4  4E 80 04 21 */	bctrl 
/* 80040DF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80040DFC  41 82 00 18 */	beq lbl_80040E14
/* 80040E00  7F E3 FB 78 */	mr r3, r31
/* 80040E04  7E A4 AB 78 */	mr r4, r21
/* 80040E08  FC 20 F0 90 */	fmr f1, f30
/* 80040E0C  FC 40 F0 90 */	fmr f2, f30
/* 80040E10  48 00 03 F9 */	bl drawIconSingle__28renderingPlusDoorAndCursor_cFRC3Vecff
lbl_80040E14:
/* 80040E14  7F E3 FB 78 */	mr r3, r31
/* 80040E18  7E C4 B3 78 */	mr r4, r22
/* 80040E1C  81 9F 00 00 */	lwz r12, 0(r31)
/* 80040E20  81 8C 00 B0 */	lwz r12, 0xb0(r12)
/* 80040E24  7D 89 03 A6 */	mtctr r12
/* 80040E28  4E 80 04 21 */	bctrl 
/* 80040E2C  7C 76 1B 78 */	mr r22, r3
/* 80040E30  3A 94 00 01 */	addi r20, r20, 1
lbl_80040E34:
/* 80040E34  7C 14 E0 00 */	cmpw r20, r28
/* 80040E38  40 80 00 0C */	bge lbl_80040E44
/* 80040E3C  28 16 00 00 */	cmplwi r22, 0
/* 80040E40  40 82 FE 68 */	bne lbl_80040CA8
lbl_80040E44:
/* 80040E44  3A F7 00 01 */	addi r23, r23, 1
/* 80040E48  2C 17 00 04 */	cmpwi r23, 4
/* 80040E4C  3B DE 00 0C */	addi r30, r30, 0xc
/* 80040E50  41 80 FD 6C */	blt lbl_80040BBC
/* 80040E54  7F E3 FB 78 */	mr r3, r31
/* 80040E58  4B FF C0 21 */	bl setTevSettingNonTextureDirectColor__18dRenderingFDAmap_cCFv
/* 80040E5C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80040E60  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80040E64  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80040E68  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80040E6C  39 61 00 50 */	addi r11, r1, 0x50
/* 80040E70  48 32 13 95 */	bl _restgpr_20
/* 80040E74  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80040E78  7C 08 03 A6 */	mtlr r0
/* 80040E7C  38 21 00 70 */	addi r1, r1, 0x70
/* 80040E80  4E 80 00 20 */	blr 
