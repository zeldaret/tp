lbl_80647AC8:
/* 80647AC8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80647ACC  7C 08 02 A6 */	mflr r0
/* 80647AD0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80647AD4  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80647AD8  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80647ADC  7C 7E 1B 78 */	mr r30, r3
/* 80647AE0  3C 80 80 65 */	lis r4, lit_3757@ha
/* 80647AE4  3B E4 EB 1C */	addi r31, r4, lit_3757@l
/* 80647AE8  80 03 06 DC */	lwz r0, 0x6dc(r3)
/* 80647AEC  2C 00 00 06 */	cmpwi r0, 6
/* 80647AF0  41 82 03 54 */	beq lbl_80647E44
/* 80647AF4  40 80 00 2C */	bge lbl_80647B20
/* 80647AF8  2C 00 00 02 */	cmpwi r0, 2
/* 80647AFC  41 82 02 AC */	beq lbl_80647DA8
/* 80647B00  40 80 00 14 */	bge lbl_80647B14
/* 80647B04  2C 00 00 00 */	cmpwi r0, 0
/* 80647B08  41 82 00 3C */	beq lbl_80647B44
/* 80647B0C  40 80 01 80 */	bge lbl_80647C8C
/* 80647B10  48 00 06 CC */	b lbl_806481DC
lbl_80647B14:
/* 80647B14  2C 00 00 05 */	cmpwi r0, 5
/* 80647B18  40 80 03 14 */	bge lbl_80647E2C
/* 80647B1C  48 00 06 C0 */	b lbl_806481DC
lbl_80647B20:
/* 80647B20  2C 00 00 09 */	cmpwi r0, 9
/* 80647B24  41 82 04 2C */	beq lbl_80647F50
/* 80647B28  40 80 00 10 */	bge lbl_80647B38
/* 80647B2C  2C 00 00 08 */	cmpwi r0, 8
/* 80647B30  40 80 03 70 */	bge lbl_80647EA0
/* 80647B34  48 00 06 A8 */	b lbl_806481DC
lbl_80647B38:
/* 80647B38  2C 00 00 64 */	cmpwi r0, 0x64
/* 80647B3C  41 82 06 20 */	beq lbl_8064815C
/* 80647B40  48 00 06 9C */	b lbl_806481DC
lbl_80647B44:
/* 80647B44  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 80647B48  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80647B4C  38 00 00 01 */	li r0, 1
/* 80647B50  98 1E 07 07 */	stb r0, 0x707(r30)
/* 80647B54  38 80 00 00 */	li r4, 0
/* 80647B58  4B FF 84 15 */	bl setTgHitBit__10daB_ZANT_cFi
/* 80647B5C  80 1E 0A 7C */	lwz r0, 0xa7c(r30)
/* 80647B60  60 00 00 04 */	ori r0, r0, 4
/* 80647B64  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80647B68  80 1E 0B B4 */	lwz r0, 0xbb4(r30)
/* 80647B6C  60 00 00 04 */	ori r0, r0, 4
/* 80647B70  90 1E 0B B4 */	stw r0, 0xbb4(r30)
/* 80647B74  88 1E 07 0A */	lbz r0, 0x70a(r30)
/* 80647B78  98 1E 07 09 */	stb r0, 0x709(r30)
/* 80647B7C  98 1E 07 08 */	stb r0, 0x708(r30)
/* 80647B80  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 80647B84  2C 00 00 01 */	cmpwi r0, 1
/* 80647B88  40 82 00 80 */	bne lbl_80647C08
/* 80647B8C  88 1E 07 1B */	lbz r0, 0x71b(r30)
/* 80647B90  28 00 00 00 */	cmplwi r0, 0
/* 80647B94  41 82 00 48 */	beq lbl_80647BDC
/* 80647B98  38 80 00 00 */	li r4, 0
/* 80647B9C  98 9E 07 1B */	stb r4, 0x71b(r30)
/* 80647BA0  3C 60 80 65 */	lis r3, l_HIO@ha
/* 80647BA4  38 63 F6 04 */	addi r3, r3, l_HIO@l
/* 80647BA8  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80647BAC  FC 00 00 1E */	fctiwz f0, f0
/* 80647BB0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80647BB4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80647BB8  98 1E 07 03 */	stb r0, 0x703(r30)
/* 80647BBC  98 9E 07 11 */	stb r4, 0x711(r30)
/* 80647BC0  7F C3 F3 78 */	mr r3, r30
/* 80647BC4  38 80 00 00 */	li r4, 0
/* 80647BC8  38 A0 00 00 */	li r5, 0
/* 80647BCC  4B FF 6A F9 */	bl setActionMode__10daB_ZANT_cFii
/* 80647BD0  7F C3 F3 78 */	mr r3, r30
/* 80647BD4  4B FF F9 21 */	bl setNextPillarPos__10daB_ZANT_cFv
/* 80647BD8  48 00 06 04 */	b lbl_806481DC
lbl_80647BDC:
/* 80647BDC  7F C3 F3 78 */	mr r3, r30
/* 80647BE0  4B FF F9 15 */	bl setNextPillarPos__10daB_ZANT_cFv
/* 80647BE4  7F C3 F3 78 */	mr r3, r30
/* 80647BE8  38 80 00 21 */	li r4, 0x21
/* 80647BEC  38 A0 00 00 */	li r5, 0
/* 80647BF0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80647BF4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80647BF8  4B FF 69 CD */	bl setBck__10daB_ZANT_cFiUcff
/* 80647BFC  38 00 00 08 */	li r0, 8
/* 80647C00  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80647C04  48 00 00 58 */	b lbl_80647C5C
lbl_80647C08:
/* 80647C08  2C 00 00 00 */	cmpwi r0, 0
/* 80647C0C  40 82 00 30 */	bne lbl_80647C3C
/* 80647C10  38 00 00 05 */	li r0, 5
/* 80647C14  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80647C18  7F C3 F3 78 */	mr r3, r30
/* 80647C1C  38 80 00 41 */	li r4, 0x41
/* 80647C20  38 A0 00 02 */	li r5, 2
/* 80647C24  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80647C28  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80647C2C  4B FF 69 99 */	bl setBck__10daB_ZANT_cFiUcff
/* 80647C30  38 00 00 00 */	li r0, 0
/* 80647C34  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80647C38  48 00 00 24 */	b lbl_80647C5C
lbl_80647C3C:
/* 80647C3C  38 00 00 05 */	li r0, 5
/* 80647C40  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80647C44  7F C3 F3 78 */	mr r3, r30
/* 80647C48  38 80 00 41 */	li r4, 0x41
/* 80647C4C  38 A0 00 02 */	li r5, 2
/* 80647C50  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80647C54  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80647C58  4B FF 69 6D */	bl setBck__10daB_ZANT_cFiUcff
lbl_80647C5C:
/* 80647C5C  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 80647C60  4B C1 FC F4 */	b cM_rndF__Ff
/* 80647C64  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80647C68  EC 00 08 2A */	fadds f0, f0, f1
/* 80647C6C  FC 00 00 1E */	fctiwz f0, f0
/* 80647C70  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80647C74  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80647C78  98 1E 07 0B */	stb r0, 0x70b(r30)
/* 80647C7C  38 00 00 00 */	li r0, 0
/* 80647C80  98 1E 06 FD */	stb r0, 0x6fd(r30)
/* 80647C84  98 1E 07 1B */	stb r0, 0x71b(r30)
/* 80647C88  48 00 05 54 */	b lbl_806481DC
lbl_80647C8C:
/* 80647C8C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80647C90  38 63 00 0C */	addi r3, r3, 0xc
/* 80647C94  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80647C98  4B CE 07 94 */	b checkPass__12J3DFrameCtrlFf
/* 80647C9C  2C 03 00 00 */	cmpwi r3, 0
/* 80647CA0  40 82 00 1C */	bne lbl_80647CBC
/* 80647CA4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80647CA8  38 63 00 0C */	addi r3, r3, 0xc
/* 80647CAC  C0 3F 01 FC */	lfs f1, 0x1fc(r31)
/* 80647CB0  4B CE 07 7C */	b checkPass__12J3DFrameCtrlFf
/* 80647CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80647CB8  41 82 00 2C */	beq lbl_80647CE4
lbl_80647CBC:
/* 80647CBC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007042F@ha */
/* 80647CC0  38 03 04 2F */	addi r0, r3, 0x042F /* 0x0007042F@l */
/* 80647CC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80647CC8  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80647CCC  38 81 00 10 */	addi r4, r1, 0x10
/* 80647CD0  38 A0 FF FF */	li r5, -1
/* 80647CD4  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80647CD8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80647CDC  7D 89 03 A6 */	mtctr r12
/* 80647CE0  4E 80 04 21 */	bctrl 
lbl_80647CE4:
/* 80647CE4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80647CE8  38 80 00 01 */	li r4, 1
/* 80647CEC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80647CF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80647CF4  40 82 00 18 */	bne lbl_80647D0C
/* 80647CF8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80647CFC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80647D00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80647D04  41 82 00 08 */	beq lbl_80647D0C
/* 80647D08  38 80 00 00 */	li r4, 0
lbl_80647D0C:
/* 80647D0C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80647D10  41 82 04 CC */	beq lbl_806481DC
/* 80647D14  88 7E 06 FD */	lbz r3, 0x6fd(r30)
/* 80647D18  38 03 00 01 */	addi r0, r3, 1
/* 80647D1C  98 1E 06 FD */	stb r0, 0x6fd(r30)
/* 80647D20  88 7E 06 FD */	lbz r3, 0x6fd(r30)
/* 80647D24  88 1E 07 0B */	lbz r0, 0x70b(r30)
/* 80647D28  7C 03 00 40 */	cmplw r3, r0
/* 80647D2C  41 80 00 58 */	blt lbl_80647D84
/* 80647D30  88 1E 07 1A */	lbz r0, 0x71a(r30)
/* 80647D34  28 00 00 00 */	cmplwi r0, 0
/* 80647D38  41 82 00 28 */	beq lbl_80647D60
/* 80647D3C  7F C3 F3 78 */	mr r3, r30
/* 80647D40  4B FF F4 8D */	bl setFarPillarPos__10daB_ZANT_cFv
/* 80647D44  38 00 00 00 */	li r0, 0
/* 80647D48  98 1E 07 11 */	stb r0, 0x711(r30)
/* 80647D4C  7F C3 F3 78 */	mr r3, r30
/* 80647D50  38 80 00 01 */	li r4, 1
/* 80647D54  38 A0 00 01 */	li r5, 1
/* 80647D58  4B FF 69 6D */	bl setActionMode__10daB_ZANT_cFii
/* 80647D5C  48 00 04 80 */	b lbl_806481DC
lbl_80647D60:
/* 80647D60  7F C3 F3 78 */	mr r3, r30
/* 80647D64  38 80 00 41 */	li r4, 0x41
/* 80647D68  38 A0 00 02 */	li r5, 2
/* 80647D6C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80647D70  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80647D74  4B FF 68 51 */	bl setBck__10daB_ZANT_cFiUcff
/* 80647D78  38 00 00 02 */	li r0, 2
/* 80647D7C  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80647D80  48 00 04 5C */	b lbl_806481DC
lbl_80647D84:
/* 80647D84  38 00 00 05 */	li r0, 5
/* 80647D88  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80647D8C  7F C3 F3 78 */	mr r3, r30
/* 80647D90  38 80 00 41 */	li r4, 0x41
/* 80647D94  38 A0 00 02 */	li r5, 2
/* 80647D98  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80647D9C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80647DA0  4B FF 68 25 */	bl setBck__10daB_ZANT_cFiUcff
/* 80647DA4  48 00 04 38 */	b lbl_806481DC
lbl_80647DA8:
/* 80647DA8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80647DAC  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80647DB0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80647DB4  4B 9D 29 5C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80647DB8  7C 64 1B 78 */	mr r4, r3
/* 80647DBC  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80647DC0  38 A0 00 08 */	li r5, 8
/* 80647DC4  38 C0 08 00 */	li r6, 0x800
/* 80647DC8  38 E0 00 80 */	li r7, 0x80
/* 80647DCC  4B C2 87 74 */	b cLib_addCalcAngleS__FPsssss
/* 80647DD0  7F C3 F3 78 */	mr r3, r30
/* 80647DD4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80647DD8  4B 9D 29 38 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80647DDC  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80647DE0  7C 03 00 50 */	subf r0, r3, r0
/* 80647DE4  7C 03 07 34 */	extsh r3, r0
/* 80647DE8  4B D1 D2 E8 */	b abs
/* 80647DEC  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80647DF0  40 80 03 EC */	bge lbl_806481DC
/* 80647DF4  3C 60 80 65 */	lis r3, l_HIO@ha
/* 80647DF8  38 63 F6 04 */	addi r3, r3, l_HIO@l
/* 80647DFC  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 80647E00  FC 00 00 1E */	fctiwz f0, f0
/* 80647E04  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80647E08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80647E0C  98 1E 07 03 */	stb r0, 0x703(r30)
/* 80647E10  38 00 00 00 */	li r0, 0
/* 80647E14  98 1E 07 11 */	stb r0, 0x711(r30)
/* 80647E18  7F C3 F3 78 */	mr r3, r30
/* 80647E1C  38 80 00 00 */	li r4, 0
/* 80647E20  38 A0 00 00 */	li r5, 0
/* 80647E24  4B FF 68 A1 */	bl setActionMode__10daB_ZANT_cFii
/* 80647E28  48 00 03 B4 */	b lbl_806481DC
lbl_80647E2C:
/* 80647E2C  38 80 00 00 */	li r4, 0
/* 80647E30  4B FF 81 3D */	bl setTgHitBit__10daB_ZANT_cFi
/* 80647E34  7F C3 F3 78 */	mr r3, r30
/* 80647E38  4B FF F6 BD */	bl setNextPillarPos__10daB_ZANT_cFv
/* 80647E3C  38 00 00 06 */	li r0, 6
/* 80647E40  90 1E 06 DC */	stw r0, 0x6dc(r30)
lbl_80647E44:
/* 80647E44  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80647E48  38 9E 06 AC */	addi r4, r30, 0x6ac
/* 80647E4C  4B C2 8D B8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80647E50  7C 64 1B 78 */	mr r4, r3
/* 80647E54  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80647E58  38 A0 00 08 */	li r5, 8
/* 80647E5C  38 C0 08 00 */	li r6, 0x800
/* 80647E60  4B C2 87 A8 */	b cLib_addCalcAngleS2__FPssss
/* 80647E64  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 80647E68  2C 00 00 00 */	cmpwi r0, 0
/* 80647E6C  40 82 03 70 */	bne lbl_806481DC
/* 80647E70  80 1E 07 F8 */	lwz r0, 0x7f8(r30)
/* 80647E74  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80647E78  41 82 03 64 */	beq lbl_806481DC
/* 80647E7C  7F C3 F3 78 */	mr r3, r30
/* 80647E80  38 80 00 21 */	li r4, 0x21
/* 80647E84  38 A0 00 00 */	li r5, 0
/* 80647E88  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80647E8C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80647E90  4B FF 67 35 */	bl setBck__10daB_ZANT_cFiUcff
/* 80647E94  38 00 00 08 */	li r0, 8
/* 80647E98  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80647E9C  48 00 03 40 */	b lbl_806481DC
lbl_80647EA0:
/* 80647EA0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80647EA4  38 9E 06 AC */	addi r4, r30, 0x6ac
/* 80647EA8  4B C2 8D 5C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80647EAC  7C 64 1B 78 */	mr r4, r3
/* 80647EB0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80647EB4  38 A0 00 08 */	li r5, 8
/* 80647EB8  38 C0 08 00 */	li r6, 0x800
/* 80647EBC  4B C2 87 4C */	b cLib_addCalcAngleS2__FPssss
/* 80647EC0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80647EC4  38 63 00 0C */	addi r3, r3, 0xc
/* 80647EC8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80647ECC  4B CE 05 60 */	b checkPass__12J3DFrameCtrlFf
/* 80647ED0  2C 03 00 00 */	cmpwi r3, 0
/* 80647ED4  41 82 03 08 */	beq lbl_806481DC
/* 80647ED8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007042E@ha */
/* 80647EDC  38 03 04 2E */	addi r0, r3, 0x042E /* 0x0007042E@l */
/* 80647EE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80647EE4  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80647EE8  38 81 00 0C */	addi r4, r1, 0xc
/* 80647EEC  38 A0 FF FF */	li r5, -1
/* 80647EF0  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80647EF4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80647EF8  7D 89 03 A6 */	mtctr r12
/* 80647EFC  4E 80 04 21 */	bctrl 
/* 80647F00  38 00 00 12 */	li r0, 0x12
/* 80647F04  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80647F08  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 80647F0C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80647F10  38 00 00 09 */	li r0, 9
/* 80647F14  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80647F18  38 00 00 00 */	li r0, 0
/* 80647F1C  98 1E 07 07 */	stb r0, 0x707(r30)
/* 80647F20  88 1E 07 0A */	lbz r0, 0x70a(r30)
/* 80647F24  54 00 10 3A */	slwi r0, r0, 2
/* 80647F28  7C 7E 02 14 */	add r3, r30, r0
/* 80647F2C  80 63 07 3C */	lwz r3, 0x73c(r3)
/* 80647F30  38 81 00 14 */	addi r4, r1, 0x14
/* 80647F34  4B 9D 1A 88 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80647F38  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80647F3C  28 03 00 00 */	cmplwi r3, 0
/* 80647F40  41 82 02 9C */	beq lbl_806481DC
/* 80647F44  38 00 00 02 */	li r0, 2
/* 80647F48  90 03 07 38 */	stw r0, 0x738(r3)
/* 80647F4C  48 00 02 90 */	b lbl_806481DC
lbl_80647F50:
/* 80647F50  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 80647F54  2C 00 00 00 */	cmpwi r0, 0
/* 80647F58  41 82 01 68 */	beq lbl_806480C0
/* 80647F5C  C0 5E 06 B4 */	lfs f2, 0x6b4(r30)
/* 80647F60  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80647F64  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 80647F68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80647F6C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80647F70  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80647F74  C0 5E 06 B4 */	lfs f2, 0x6b4(r30)
/* 80647F78  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 80647F7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80647F80  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80647F84  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80647F88  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80647F8C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80647F90  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80647F94  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80647F98  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80647F9C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80647FA0  38 61 00 18 */	addi r3, r1, 0x18
/* 80647FA4  38 81 00 24 */	addi r4, r1, 0x24
/* 80647FA8  4B CF F3 F4 */	b PSVECSquareDistance
/* 80647FAC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80647FB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80647FB4  40 81 00 58 */	ble lbl_8064800C
/* 80647FB8  FC 00 08 34 */	frsqrte f0, f1
/* 80647FBC  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 80647FC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80647FC4  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 80647FC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80647FCC  FC 01 00 32 */	fmul f0, f1, f0
/* 80647FD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80647FD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80647FD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80647FDC  FC 00 00 32 */	fmul f0, f0, f0
/* 80647FE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80647FE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80647FE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80647FEC  FC 44 00 32 */	fmul f2, f4, f0
/* 80647FF0  FC 00 00 32 */	fmul f0, f0, f0
/* 80647FF4  FC 01 00 32 */	fmul f0, f1, f0
/* 80647FF8  FC 03 00 28 */	fsub f0, f3, f0
/* 80647FFC  FC 02 00 32 */	fmul f0, f2, f0
/* 80648000  FC 21 00 32 */	fmul f1, f1, f0
/* 80648004  FC 20 08 18 */	frsp f1, f1
/* 80648008  48 00 00 88 */	b lbl_80648090
lbl_8064800C:
/* 8064800C  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 80648010  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648014  40 80 00 10 */	bge lbl_80648024
/* 80648018  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8064801C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80648020  48 00 00 70 */	b lbl_80648090
lbl_80648024:
/* 80648024  D0 21 00 08 */	stfs f1, 8(r1)
/* 80648028  80 81 00 08 */	lwz r4, 8(r1)
/* 8064802C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80648030  3C 00 7F 80 */	lis r0, 0x7f80
/* 80648034  7C 03 00 00 */	cmpw r3, r0
/* 80648038  41 82 00 14 */	beq lbl_8064804C
/* 8064803C  40 80 00 40 */	bge lbl_8064807C
/* 80648040  2C 03 00 00 */	cmpwi r3, 0
/* 80648044  41 82 00 20 */	beq lbl_80648064
/* 80648048  48 00 00 34 */	b lbl_8064807C
lbl_8064804C:
/* 8064804C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80648050  41 82 00 0C */	beq lbl_8064805C
/* 80648054  38 00 00 01 */	li r0, 1
/* 80648058  48 00 00 28 */	b lbl_80648080
lbl_8064805C:
/* 8064805C  38 00 00 02 */	li r0, 2
/* 80648060  48 00 00 20 */	b lbl_80648080
lbl_80648064:
/* 80648064  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80648068  41 82 00 0C */	beq lbl_80648074
/* 8064806C  38 00 00 05 */	li r0, 5
/* 80648070  48 00 00 10 */	b lbl_80648080
lbl_80648074:
/* 80648074  38 00 00 03 */	li r0, 3
/* 80648078  48 00 00 08 */	b lbl_80648080
lbl_8064807C:
/* 8064807C  38 00 00 04 */	li r0, 4
lbl_80648080:
/* 80648080  2C 00 00 01 */	cmpwi r0, 1
/* 80648084  40 82 00 0C */	bne lbl_80648090
/* 80648088  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8064808C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80648090:
/* 80648090  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80648094  38 81 00 30 */	addi r4, r1, 0x30
/* 80648098  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 8064809C  C8 5F 01 80 */	lfd f2, 0x180(r31)
/* 806480A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806480A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806480A8  3C 00 43 30 */	lis r0, 0x4330
/* 806480AC  90 01 00 40 */	stw r0, 0x40(r1)
/* 806480B0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 806480B4  EC 00 10 28 */	fsubs f0, f0, f2
/* 806480B8  EC 21 00 24 */	fdivs f1, f1, f0
/* 806480BC  4B C2 88 D4 */	b cLib_chasePosXZ__FP4cXyzRC4cXyzf
lbl_806480C0:
/* 806480C0  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 806480C4  2C 00 00 08 */	cmpwi r0, 8
/* 806480C8  40 82 00 1C */	bne lbl_806480E4
/* 806480CC  7F C3 F3 78 */	mr r3, r30
/* 806480D0  38 80 00 22 */	li r4, 0x22
/* 806480D4  38 A0 00 00 */	li r5, 0
/* 806480D8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806480DC  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 806480E0  4B FF 64 E5 */	bl setBck__10daB_ZANT_cFiUcff
lbl_806480E4:
/* 806480E4  80 1E 07 F8 */	lwz r0, 0x7f8(r30)
/* 806480E8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806480EC  41 82 00 F0 */	beq lbl_806481DC
/* 806480F0  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 806480F4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 806480F8  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 806480FC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80648100  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 80648104  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80648108  38 00 00 01 */	li r0, 1
/* 8064810C  98 1E 07 07 */	stb r0, 0x707(r30)
/* 80648110  88 1E 07 09 */	lbz r0, 0x709(r30)
/* 80648114  98 1E 07 0A */	stb r0, 0x70a(r30)
/* 80648118  88 1E 07 0A */	lbz r0, 0x70a(r30)
/* 8064811C  54 00 10 3A */	slwi r0, r0, 2
/* 80648120  7C 7E 02 14 */	add r3, r30, r0
/* 80648124  80 63 07 3C */	lwz r3, 0x73c(r3)
/* 80648128  38 81 00 14 */	addi r4, r1, 0x14
/* 8064812C  4B 9D 18 90 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80648130  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80648134  28 03 00 00 */	cmplwi r3, 0
/* 80648138  41 82 00 0C */	beq lbl_80648144
/* 8064813C  38 00 00 02 */	li r0, 2
/* 80648140  90 03 07 38 */	stw r0, 0x738(r3)
lbl_80648144:
/* 80648144  38 00 00 01 */	li r0, 1
/* 80648148  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 8064814C  88 7E 06 FD */	lbz r3, 0x6fd(r30)
/* 80648150  38 03 00 01 */	addi r0, r3, 1
/* 80648154  98 1E 06 FD */	stb r0, 0x6fd(r30)
/* 80648158  48 00 00 84 */	b lbl_806481DC
lbl_8064815C:
/* 8064815C  38 00 00 00 */	li r0, 0
/* 80648160  3C 60 80 65 */	lis r3, target_info_count@ha
/* 80648164  90 03 F6 90 */	stw r0, target_info_count@l(r3)
/* 80648168  3C 60 80 64 */	lis r3, s_pillar_sub__FPvPv@ha
/* 8064816C  38 63 05 84 */	addi r3, r3, s_pillar_sub__FPvPv@l
/* 80648170  7F C4 F3 78 */	mr r4, r30
/* 80648174  4B 9D 91 C4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80648178  3C 60 80 65 */	lis r3, target_info_count@ha
/* 8064817C  80 03 F6 90 */	lwz r0, target_info_count@l(r3)
/* 80648180  2C 00 00 08 */	cmpwi r0, 8
/* 80648184  41 80 00 14 */	blt lbl_80648198
/* 80648188  80 7E 07 5C */	lwz r3, 0x75c(r30)
/* 8064818C  3C 03 00 01 */	addis r0, r3, 1
/* 80648190  28 00 FF FF */	cmplwi r0, 0xffff
/* 80648194  40 82 00 28 */	bne lbl_806481BC
lbl_80648198:
/* 80648198  38 60 00 00 */	li r3, 0
/* 8064819C  38 80 FF FF */	li r4, -1
/* 806481A0  38 00 00 09 */	li r0, 9
/* 806481A4  7C 09 03 A6 */	mtctr r0
lbl_806481A8:
/* 806481A8  38 03 07 3C */	addi r0, r3, 0x73c
/* 806481AC  7C 9E 01 2E */	stwx r4, r30, r0
/* 806481B0  38 63 00 04 */	addi r3, r3, 4
/* 806481B4  42 00 FF F4 */	bdnz lbl_806481A8
/* 806481B8  48 00 00 24 */	b lbl_806481DC
lbl_806481BC:
/* 806481BC  7F C3 F3 78 */	mr r3, r30
/* 806481C0  4B FF F2 25 */	bl setNearPillarPos__10daB_ZANT_cFv
/* 806481C4  38 00 00 00 */	li r0, 0
/* 806481C8  98 1E 07 11 */	stb r0, 0x711(r30)
/* 806481CC  7F C3 F3 78 */	mr r3, r30
/* 806481D0  38 80 00 01 */	li r4, 1
/* 806481D4  38 A0 00 01 */	li r5, 1
/* 806481D8  4B FF 64 ED */	bl setActionMode__10daB_ZANT_cFii
lbl_806481DC:
/* 806481DC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806481E0  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 806481E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806481E8  7C 08 03 A6 */	mtlr r0
/* 806481EC  38 21 00 50 */	addi r1, r1, 0x50
/* 806481F0  4E 80 00 20 */	blr 
