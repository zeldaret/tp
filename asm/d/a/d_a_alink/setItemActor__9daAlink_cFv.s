lbl_800BF9F0:
/* 800BF9F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800BF9F4  7C 08 02 A6 */	mflr r0
/* 800BF9F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800BF9FC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800BFA00  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800BFA04  7C 7F 1B 78 */	mr r31, r3
/* 800BFA08  A0 63 2F DC */	lhz r3, 0x2fdc(r3)
/* 800BFA0C  28 03 00 40 */	cmplwi r3, 0x40
/* 800BFA10  40 82 00 68 */	bne lbl_800BFA78
/* 800BFA14  38 00 00 00 */	li r0, 0
/* 800BFA18  90 01 00 08 */	stw r0, 8(r1)
/* 800BFA1C  38 60 00 FE */	li r3, 0xfe
/* 800BFA20  38 80 00 00 */	li r4, 0
/* 800BFA24  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800BFA28  38 C0 FF FF */	li r6, -1
/* 800BFA2C  38 E0 00 00 */	li r7, 0
/* 800BFA30  39 00 00 00 */	li r8, 0
/* 800BFA34  39 20 FF FF */	li r9, -1
/* 800BFA38  39 40 00 00 */	li r10, 0
/* 800BFA3C  4B F5 A3 C9 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800BFA40  7C 64 1B 79 */	or. r4, r3, r3
/* 800BFA44  40 82 00 1C */	bne lbl_800BFA60
/* 800BFA48  7F E3 FB 78 */	mr r3, r31
/* 800BFA4C  38 80 00 00 */	li r4, 0
/* 800BFA50  38 A0 00 00 */	li r5, 0
/* 800BFA54  48 00 18 89 */	bl deleteEquipItem__9daAlink_cFii
/* 800BFA58  38 60 00 00 */	li r3, 0
/* 800BFA5C  48 00 03 00 */	b lbl_800BFD5C
lbl_800BFA60:
/* 800BFA60  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800BFA64  48 09 F2 55 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800BFA68  38 00 00 02 */	li r0, 2
/* 800BFA6C  98 1F 2F 94 */	stb r0, 0x2f94(r31)
/* 800BFA70  38 60 00 01 */	li r3, 1
/* 800BFA74  48 00 02 E8 */	b lbl_800BFD5C
lbl_800BFA78:
/* 800BFA78  28 03 00 46 */	cmplwi r3, 0x46
/* 800BFA7C  40 82 00 68 */	bne lbl_800BFAE4
/* 800BFA80  38 00 00 00 */	li r0, 0
/* 800BFA84  90 01 00 08 */	stw r0, 8(r1)
/* 800BFA88  38 60 02 F4 */	li r3, 0x2f4
/* 800BFA8C  38 80 00 00 */	li r4, 0
/* 800BFA90  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800BFA94  38 C0 FF FF */	li r6, -1
/* 800BFA98  38 E0 00 00 */	li r7, 0
/* 800BFA9C  39 00 00 00 */	li r8, 0
/* 800BFAA0  39 20 FF FF */	li r9, -1
/* 800BFAA4  39 40 00 00 */	li r10, 0
/* 800BFAA8  4B F5 A3 5D */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800BFAAC  7C 64 1B 79 */	or. r4, r3, r3
/* 800BFAB0  40 82 00 1C */	bne lbl_800BFACC
/* 800BFAB4  7F E3 FB 78 */	mr r3, r31
/* 800BFAB8  38 80 00 00 */	li r4, 0
/* 800BFABC  38 A0 00 00 */	li r5, 0
/* 800BFAC0  48 00 18 1D */	bl deleteEquipItem__9daAlink_cFii
/* 800BFAC4  38 60 00 00 */	li r3, 0
/* 800BFAC8  48 00 02 94 */	b lbl_800BFD5C
lbl_800BFACC:
/* 800BFACC  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800BFAD0  48 09 F1 E9 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800BFAD4  38 00 00 02 */	li r0, 2
/* 800BFAD8  98 1F 2F 94 */	stb r0, 0x2f94(r31)
/* 800BFADC  38 60 00 01 */	li r3, 1
/* 800BFAE0  48 00 02 7C */	b lbl_800BFD5C
lbl_800BFAE4:
/* 800BFAE4  28 03 00 42 */	cmplwi r3, 0x42
/* 800BFAE8  40 82 00 88 */	bne lbl_800BFB70
/* 800BFAEC  38 00 00 00 */	li r0, 0
/* 800BFAF0  90 01 00 08 */	stw r0, 8(r1)
/* 800BFAF4  38 60 02 F4 */	li r3, 0x2f4
/* 800BFAF8  38 80 00 06 */	li r4, 6
/* 800BFAFC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800BFB00  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800BFB04  7C 06 07 74 */	extsb r6, r0
/* 800BFB08  38 E0 00 00 */	li r7, 0
/* 800BFB0C  39 00 00 00 */	li r8, 0
/* 800BFB10  39 20 FF FF */	li r9, -1
/* 800BFB14  39 40 00 00 */	li r10, 0
/* 800BFB18  4B F5 A2 ED */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800BFB1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800BFB20  40 82 00 38 */	bne lbl_800BFB58
/* 800BFB24  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800BFB28  28 00 01 9C */	cmplwi r0, 0x19c
/* 800BFB2C  40 82 00 14 */	bne lbl_800BFB40
/* 800BFB30  7F E3 FB 78 */	mr r3, r31
/* 800BFB34  38 80 00 02 */	li r4, 2
/* 800BFB38  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800BFB3C  4B FE DB E9 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800BFB40:
/* 800BFB40  7F E3 FB 78 */	mr r3, r31
/* 800BFB44  38 80 00 00 */	li r4, 0
/* 800BFB48  38 A0 00 00 */	li r5, 0
/* 800BFB4C  48 00 17 91 */	bl deleteEquipItem__9daAlink_cFii
/* 800BFB50  38 60 00 00 */	li r3, 0
/* 800BFB54  48 00 02 08 */	b lbl_800BFD5C
lbl_800BFB58:
/* 800BFB58  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800BFB5C  7F C4 F3 78 */	mr r4, r30
/* 800BFB60  48 09 F1 59 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800BFB64  93 DF 17 48 */	stw r30, 0x1748(r31)
/* 800BFB68  38 60 00 01 */	li r3, 1
/* 800BFB6C  48 00 01 F0 */	b lbl_800BFD5C
lbl_800BFB70:
/* 800BFB70  28 03 01 05 */	cmplwi r3, 0x105
/* 800BFB74  40 82 00 38 */	bne lbl_800BFBAC
/* 800BFB78  38 60 02 E4 */	li r3, 0x2e4
/* 800BFB7C  38 80 01 0D */	li r4, 0x10d
/* 800BFB80  38 BF 05 C8 */	addi r5, r31, 0x5c8
/* 800BFB84  38 C0 FF FF */	li r6, -1
/* 800BFB88  38 E0 00 00 */	li r7, 0
/* 800BFB8C  39 00 00 00 */	li r8, 0
/* 800BFB90  39 20 FF FF */	li r9, -1
/* 800BFB94  4B F5 A2 05 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 800BFB98  90 7F 28 24 */	stw r3, 0x2824(r31)
/* 800BFB9C  7F E3 FB 78 */	mr r3, r31
/* 800BFBA0  48 03 42 01 */	bl initFishingRodHand__9daAlink_cFv
/* 800BFBA4  38 60 00 01 */	li r3, 1
/* 800BFBA8  48 00 01 B4 */	b lbl_800BFD5C
lbl_800BFBAC:
/* 800BFBAC  48 09 EE 75 */	bl checkFishingRodItem__9daPy_py_cFi
/* 800BFBB0  2C 03 00 00 */	cmpwi r3, 0
/* 800BFBB4  41 82 00 14 */	beq lbl_800BFBC8
/* 800BFBB8  7F E3 FB 78 */	mr r3, r31
/* 800BFBBC  48 03 7B 4D */	bl setGroundFishingRodActor__9daAlink_cFv
/* 800BFBC0  38 60 00 01 */	li r3, 1
/* 800BFBC4  48 00 01 98 */	b lbl_800BFD5C
lbl_800BFBC8:
/* 800BFBC8  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800BFBCC  48 09 EE 7D */	bl checkBombItem__9daPy_py_cFi
/* 800BFBD0  2C 03 00 00 */	cmpwi r3, 0
/* 800BFBD4  41 82 01 84 */	beq lbl_800BFD58
/* 800BFBD8  7F E3 FB 78 */	mr r3, r31
/* 800BFBDC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BFBE0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800BFBE4  7D 89 03 A6 */	mtctr r12
/* 800BFBE8  4E 80 04 21 */	bctrl 
/* 800BFBEC  28 03 00 00 */	cmplwi r3, 0
/* 800BFBF0  41 82 00 5C */	beq lbl_800BFC4C
/* 800BFBF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800BFBF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800BFBFC  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800BFC00  38 00 00 00 */	li r0, 0
/* 800BFC04  88 63 16 B4 */	lbz r3, 0x16b4(r3)
/* 800BFC08  28 03 00 00 */	cmplwi r3, 0
/* 800BFC0C  41 82 00 0C */	beq lbl_800BFC18
/* 800BFC10  28 03 00 01 */	cmplwi r3, 1
/* 800BFC14  40 82 00 08 */	bne lbl_800BFC1C
lbl_800BFC18:
/* 800BFC18  38 00 00 01 */	li r0, 1
lbl_800BFC1C:
/* 800BFC1C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BFC20  40 82 00 2C */	bne lbl_800BFC4C
/* 800BFC24  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800BFC28  28 00 00 3D */	cmplwi r0, 0x3d
/* 800BFC2C  40 82 00 10 */	bne lbl_800BFC3C
/* 800BFC30  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800BFC34  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800BFC38  40 82 00 14 */	bne lbl_800BFC4C
lbl_800BFC3C:
/* 800BFC3C  38 00 00 FF */	li r0, 0xff
/* 800BFC40  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800BFC44  38 60 00 01 */	li r3, 1
/* 800BFC48  48 00 01 14 */	b lbl_800BFD5C
lbl_800BFC4C:
/* 800BFC4C  38 61 00 1C */	addi r3, r1, 0x1c
/* 800BFC50  38 9F 05 C8 */	addi r4, r31, 0x5c8
/* 800BFC54  38 BF 05 D4 */	addi r5, r31, 0x5d4
/* 800BFC58  48 1A 6E 8D */	bl __pl__4cXyzCFRC3Vec
/* 800BFC5C  38 61 00 10 */	addi r3, r1, 0x10
/* 800BFC60  38 81 00 1C */	addi r4, r1, 0x1c
/* 800BFC64  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800BFC68  48 1A 6F 1D */	bl __ml__4cXyzCFf
/* 800BFC6C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800BFC70  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800BFC74  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800BFC78  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800BFC7C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800BFC80  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800BFC84  7F E3 FB 78 */	mr r3, r31
/* 800BFC88  4B FF 8C A9 */	bl checkReadyItem__9daAlink_cFv
/* 800BFC8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BFC90  41 82 00 B8 */	beq lbl_800BFD48
/* 800BFC94  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800BFC98  28 00 00 70 */	cmplwi r0, 0x70
/* 800BFC9C  40 82 00 38 */	bne lbl_800BFCD4
/* 800BFCA0  38 00 00 00 */	li r0, 0
/* 800BFCA4  90 01 00 08 */	stw r0, 8(r1)
/* 800BFCA8  38 60 02 21 */	li r3, 0x221
/* 800BFCAC  38 80 00 08 */	li r4, 8
/* 800BFCB0  38 A1 00 28 */	addi r5, r1, 0x28
/* 800BFCB4  38 C0 FF FF */	li r6, -1
/* 800BFCB8  38 E0 00 00 */	li r7, 0
/* 800BFCBC  39 00 00 00 */	li r8, 0
/* 800BFCC0  39 20 FF FF */	li r9, -1
/* 800BFCC4  39 40 00 00 */	li r10, 0
/* 800BFCC8  4B F5 A1 3D */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800BFCCC  7C 64 1B 78 */	mr r4, r3
/* 800BFCD0  48 00 00 34 */	b lbl_800BFD04
lbl_800BFCD4:
/* 800BFCD4  38 00 00 00 */	li r0, 0
/* 800BFCD8  90 01 00 08 */	stw r0, 8(r1)
/* 800BFCDC  38 60 02 21 */	li r3, 0x221
/* 800BFCE0  38 80 00 09 */	li r4, 9
/* 800BFCE4  38 A1 00 28 */	addi r5, r1, 0x28
/* 800BFCE8  38 C0 FF FF */	li r6, -1
/* 800BFCEC  38 E0 00 00 */	li r7, 0
/* 800BFCF0  39 00 00 00 */	li r8, 0
/* 800BFCF4  39 20 FF FF */	li r9, -1
/* 800BFCF8  39 40 00 00 */	li r10, 0
/* 800BFCFC  4B F5 A1 09 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 800BFD00  7C 64 1B 78 */	mr r4, r3
lbl_800BFD04:
/* 800BFD04  28 04 00 00 */	cmplwi r4, 0
/* 800BFD08  41 82 00 40 */	beq lbl_800BFD48
/* 800BFD0C  88 7F 2F A2 */	lbz r3, 0x2fa2(r31)
/* 800BFD10  38 03 00 01 */	addi r0, r3, 1
/* 800BFD14  98 1F 2F A2 */	stb r0, 0x2fa2(r31)
/* 800BFD18  7F E3 FB 78 */	mr r3, r31
/* 800BFD1C  48 02 5E 99 */	bl setGrabItemActor__9daAlink_cFP10fopAc_ac_c
/* 800BFD20  88 7F 2F 9C */	lbz r3, 0x2f9c(r31)
/* 800BFD24  38 80 FF FF */	li r4, -1
/* 800BFD28  4B F6 EB 15 */	bl dComIfGp_addSelectItemNum__Fis
/* 800BFD2C  C0 02 93 94 */	lfs f0, lit_8785(r2)
/* 800BFD30  D0 1F 33 E4 */	stfs f0, 0x33e4(r31)
/* 800BFD34  7F E3 FB 78 */	mr r3, r31
/* 800BFD38  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 800BFD3C  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 800BFD40  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800BFD44  48 02 40 79 */	bl setGrabUpperAnime__9daAlink_cFf
lbl_800BFD48:
/* 800BFD48  38 00 00 FF */	li r0, 0xff
/* 800BFD4C  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800BFD50  38 60 00 01 */	li r3, 1
/* 800BFD54  48 00 00 08 */	b lbl_800BFD5C
lbl_800BFD58:
/* 800BFD58  38 60 00 00 */	li r3, 0
lbl_800BFD5C:
/* 800BFD5C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800BFD60  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800BFD64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800BFD68  7C 08 03 A6 */	mtlr r0
/* 800BFD6C  38 21 00 40 */	addi r1, r1, 0x40
/* 800BFD70  4E 80 00 20 */	blr 
