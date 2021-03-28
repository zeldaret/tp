lbl_80C38A64:
/* 80C38A64  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C38A68  7C 08 02 A6 */	mflr r0
/* 80C38A6C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C38A70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C38A74  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C38A78  7C 7E 1B 78 */	mr r30, r3
/* 80C38A7C  3C 80 80 C4 */	lis r4, l_cyl_src@ha
/* 80C38A80  3B E4 96 48 */	addi r31, r4, l_cyl_src@l
/* 80C38A84  4B FF FF 39 */	bl initBaseMtx__15daItemKantera_cFv
/* 80C38A88  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80C38A8C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C38A90  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C38A94  38 7E 07 64 */	addi r3, r30, 0x764
/* 80C38A98  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C38A9C  FC 40 08 90 */	fmr f2, f1
/* 80C38AA0  4B 43 D4 B8 */	b SetWall__12dBgS_AcchCirFff
/* 80C38AA4  38 00 00 00 */	li r0, 0
/* 80C38AA8  90 01 00 08 */	stw r0, 8(r1)
/* 80C38AAC  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80C38AB0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C38AB4  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80C38AB8  7F C6 F3 78 */	mr r6, r30
/* 80C38ABC  38 E0 00 01 */	li r7, 1
/* 80C38AC0  39 1E 07 64 */	addi r8, r30, 0x764
/* 80C38AC4  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80C38AC8  39 40 00 00 */	li r10, 0
/* 80C38ACC  4B 43 D7 7C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C38AD0  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80C38AD4  38 80 00 00 */	li r4, 0
/* 80C38AD8  38 A0 00 FF */	li r5, 0xff
/* 80C38ADC  7F C6 F3 78 */	mr r6, r30
/* 80C38AE0  4B 44 AD 80 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C38AE4  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 80C38AE8  38 9F 00 00 */	addi r4, r31, 0
/* 80C38AEC  4B 44 BD C8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C38AF0  38 1E 07 A4 */	addi r0, r30, 0x7a4
/* 80C38AF4  90 1E 08 24 */	stw r0, 0x824(r30)
/* 80C38AF8  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha
/* 80C38AFC  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l
/* 80C38B00  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 80C38B04  54 00 10 3A */	slwi r0, r0, 2
/* 80C38B08  7C 63 02 14 */	add r3, r3, r0
/* 80C38B0C  88 03 00 02 */	lbz r0, 2(r3)
/* 80C38B10  38 7E 09 04 */	addi r3, r30, 0x904
/* 80C38B14  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80C38B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38B1C  3C 00 43 30 */	lis r0, 0x4330
/* 80C38B20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C38B24  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C38B28  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C38B2C  4B 63 66 D4 */	b SetR__8cM3dGCylFf
/* 80C38B30  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha
/* 80C38B34  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l
/* 80C38B38  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 80C38B3C  54 00 10 3A */	slwi r0, r0, 2
/* 80C38B40  7C 63 02 14 */	add r3, r3, r0
/* 80C38B44  88 03 00 01 */	lbz r0, 1(r3)
/* 80C38B48  38 7E 09 04 */	addi r3, r30, 0x904
/* 80C38B4C  C8 3F 00 68 */	lfd f1, 0x68(r31)
/* 80C38B50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C38B54  3C 00 43 30 */	lis r0, 0x4330
/* 80C38B58  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C38B5C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C38B60  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C38B64  4B 63 66 94 */	b SetH__8cM3dGCylFf
/* 80C38B68  38 00 00 0F */	li r0, 0xf
/* 80C38B6C  98 1E 04 97 */	stb r0, 0x497(r30)
/* 80C38B70  7F C3 F3 78 */	mr r3, r30
/* 80C38B74  48 00 05 2D */	bl actionWaitInit__15daItemKantera_cFv
/* 80C38B78  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C38B7C  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80C38B80  88 1E 04 9A */	lbz r0, 0x49a(r30)
/* 80C38B84  60 00 00 20 */	ori r0, r0, 0x20
/* 80C38B88  98 1E 04 9A */	stb r0, 0x49a(r30)
/* 80C38B8C  38 60 00 01 */	li r3, 1
/* 80C38B90  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C38B94  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C38B98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C38B9C  7C 08 03 A6 */	mtlr r0
/* 80C38BA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C38BA4  4E 80 00 20 */	blr 
