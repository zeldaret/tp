lbl_804CCC6C:
/* 804CCC6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CCC70  7C 08 02 A6 */	mflr r0
/* 804CCC74  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CCC78  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804CCC7C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804CCC80  7C 7E 1B 78 */	mr r30, r3
/* 804CCC84  3C 80 80 4D */	lis r4, l_cyl_src@ha
/* 804CCC88  3B E4 E3 F4 */	addi r31, r4, l_cyl_src@l
/* 804CCC8C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804CCC90  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 804CCC94  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 804CCC98  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 804CCC9C  4B FF FF 49 */	bl initBaseMtx__11daObjLife_cFv
/* 804CCCA0  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 804CCCA4  38 03 00 24 */	addi r0, r3, 0x24
/* 804CCCA8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 804CCCAC  38 7E 07 64 */	addi r3, r30, 0x764
/* 804CCCB0  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 804CCCB4  FC 40 08 90 */	fmr f2, f1
/* 804CCCB8  4B BA 92 A0 */	b SetWall__12dBgS_AcchCirFff
/* 804CCCBC  38 00 00 00 */	li r0, 0
/* 804CCCC0  90 01 00 08 */	stw r0, 8(r1)
/* 804CCCC4  38 7E 05 8C */	addi r3, r30, 0x58c
/* 804CCCC8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804CCCCC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 804CCCD0  7F C6 F3 78 */	mr r6, r30
/* 804CCCD4  38 E0 00 01 */	li r7, 1
/* 804CCCD8  39 1E 07 64 */	addi r8, r30, 0x764
/* 804CCCDC  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 804CCCE0  39 40 00 00 */	li r10, 0
/* 804CCCE4  4B BA 95 64 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 804CCCE8  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 804CCCEC  38 80 00 00 */	li r4, 0
/* 804CCCF0  38 A0 00 FF */	li r5, 0xff
/* 804CCCF4  7F C6 F3 78 */	mr r6, r30
/* 804CCCF8  4B BB 6B 68 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804CCCFC  38 7E 07 E0 */	addi r3, r30, 0x7e0
/* 804CCD00  38 9F 00 00 */	addi r4, r31, 0
/* 804CCD04  4B BB 7B B0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 804CCD08  38 1E 07 A4 */	addi r0, r30, 0x7a4
/* 804CCD0C  90 1E 08 24 */	stw r0, 0x824(r30)
/* 804CCD10  3C 60 80 4D */	lis r3, lifeGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 804CCD14  38 03 CB 78 */	addi r0, r3, lifeGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 804CCD18  90 1E 08 D0 */	stw r0, 0x8d0(r30)
/* 804CCD1C  3C 60 80 4D */	lis r3, lifeGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 804CCD20  38 03 CB 1C */	addi r0, r3, lifeGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 804CCD24  90 1E 08 84 */	stw r0, 0x884(r30)
/* 804CCD28  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha
/* 804CCD2C  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l
/* 804CCD30  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 804CCD34  54 00 10 3A */	slwi r0, r0, 2
/* 804CCD38  7C 63 02 14 */	add r3, r3, r0
/* 804CCD3C  88 03 00 02 */	lbz r0, 2(r3)
/* 804CCD40  38 7E 09 04 */	addi r3, r30, 0x904
/* 804CCD44  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 804CCD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CCD4C  3C 00 43 30 */	lis r0, 0x4330
/* 804CCD50  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CCD54  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 804CCD58  EC 20 08 28 */	fsubs f1, f0, f1
/* 804CCD5C  4B DA 24 A4 */	b SetR__8cM3dGCylFf
/* 804CCD60  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha
/* 804CCD64  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l
/* 804CCD68  88 1E 09 2A */	lbz r0, 0x92a(r30)
/* 804CCD6C  54 00 10 3A */	slwi r0, r0, 2
/* 804CCD70  7C 63 02 14 */	add r3, r3, r0
/* 804CCD74  88 03 00 01 */	lbz r0, 1(r3)
/* 804CCD78  38 7E 09 04 */	addi r3, r30, 0x904
/* 804CCD7C  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 804CCD80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804CCD84  3C 00 43 30 */	lis r0, 0x4330
/* 804CCD88  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CCD8C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 804CCD90  EC 20 08 28 */	fsubs f1, f0, f1
/* 804CCD94  4B DA 24 64 */	b SetH__8cM3dGCylFf
/* 804CCD98  38 00 00 0F */	li r0, 0xf
/* 804CCD9C  98 1E 04 97 */	stb r0, 0x497(r30)
/* 804CCDA0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804CCDA4  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 804CCDA8  7F C3 F3 78 */	mr r3, r30
/* 804CCDAC  48 00 08 0D */	bl actionWaitInit__11daObjLife_cFv
/* 804CCDB0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804CCDB4  D0 1E 09 4C */	stfs f0, 0x94c(r30)
/* 804CCDB8  38 00 1B 58 */	li r0, 0x1b58
/* 804CCDBC  B0 1E 09 62 */	sth r0, 0x962(r30)
/* 804CCDC0  7F C3 F3 78 */	mr r3, r30
/* 804CCDC4  48 00 00 3D */	bl setEffect__11daObjLife_cFv
/* 804CCDC8  38 7E 09 B0 */	addi r3, r30, 0x9b0
/* 804CCDCC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804CCDD0  38 A0 00 01 */	li r5, 1
/* 804CCDD4  81 9E 09 C0 */	lwz r12, 0x9c0(r30)
/* 804CCDD8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804CCDDC  7D 89 03 A6 */	mtctr r12
/* 804CCDE0  4E 80 04 21 */	bctrl 
/* 804CCDE4  38 60 00 01 */	li r3, 1
/* 804CCDE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804CCDEC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804CCDF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CCDF4  7C 08 03 A6 */	mtlr r0
/* 804CCDF8  38 21 00 30 */	addi r1, r1, 0x30
/* 804CCDFC  4E 80 00 20 */	blr 
