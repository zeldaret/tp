lbl_80086AC0:
/* 80086AC0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80086AC4  7C 08 02 A6 */	mflr r0
/* 80086AC8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80086ACC  39 61 00 60 */	addi r11, r1, 0x60
/* 80086AD0  48 2D B6 DD */	bl _savegpr_17
/* 80086AD4  7C 76 1B 78 */	mr r22, r3
/* 80086AD8  7C 97 23 78 */	mr r23, r4
/* 80086ADC  7C B8 2B 78 */	mr r24, r5
/* 80086AE0  7C D9 33 78 */	mr r25, r6
/* 80086AE4  7C FA 3B 78 */	mr r26, r7
/* 80086AE8  7D 5B 53 78 */	mr r27, r10
/* 80086AEC  83 81 00 68 */	lwz r28, 0x68(r1)
/* 80086AF0  83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 80086AF4  83 C1 00 70 */	lwz r30, 0x70(r1)
/* 80086AF8  83 E1 00 74 */	lwz r31, 0x74(r1)
/* 80086AFC  7D 14 43 78 */	mr r20, r8
/* 80086B00  7D 33 4B 78 */	mr r19, r9
/* 80086B04  7F 24 CB 78 */	mr r4, r25
/* 80086B08  7F 45 D3 78 */	mr r5, r26
/* 80086B0C  7E 86 A3 78 */	mr r6, r20
/* 80086B10  7E 67 9B 78 */	mr r7, r19
/* 80086B14  7F E8 FB 78 */	mr r8, r31
/* 80086B18  4B FF F5 E1 */	bl ChkShield__4dCcSFP8cCcD_ObjP8cCcD_ObjP12dCcD_GObjInfP12dCcD_GObjInfPC4cXyz
/* 80086B1C  7C 75 1B 78 */	mr r21, r3
/* 80086B20  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80086B24  41 82 00 BC */	beq lbl_80086BE0
/* 80086B28  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80086B2C  D0 14 00 78 */	stfs f0, 0x78(r20)
/* 80086B30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80086B34  D0 14 00 7C */	stfs f0, 0x7c(r20)
/* 80086B38  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80086B3C  D0 14 00 80 */	stfs f0, 0x80(r20)
/* 80086B40  C0 13 00 BC */	lfs f0, 0xbc(r19)
/* 80086B44  D0 14 00 90 */	stfs f0, 0x90(r20)
/* 80086B48  C0 13 00 C0 */	lfs f0, 0xc0(r19)
/* 80086B4C  D0 14 00 94 */	stfs f0, 0x94(r20)
/* 80086B50  C0 13 00 C4 */	lfs f0, 0xc4(r19)
/* 80086B54  D0 14 00 98 */	stfs f0, 0x98(r20)
/* 80086B58  28 1D 00 00 */	cmplwi r29, 0
/* 80086B5C  41 82 00 18 */	beq lbl_80086B74
/* 80086B60  88 1D 00 05 */	lbz r0, 5(r29)
/* 80086B64  2C 00 00 00 */	cmpwi r0, 0
/* 80086B68  40 82 00 0C */	bne lbl_80086B74
/* 80086B6C  88 13 00 BB */	lbz r0, 0xbb(r19)
/* 80086B70  98 1D 00 05 */	stb r0, 5(r29)
lbl_80086B74:
/* 80086B74  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 80086B78  38 74 00 58 */	addi r3, r20, 0x58
/* 80086B7C  4B FF CA FD */	bl SetHitApid__22dCcD_GAtTgCoCommonBaseFUi
/* 80086B80  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 80086B84  40 82 00 38 */	bne lbl_80086BBC
/* 80086B88  88 13 00 BA */	lbz r0, 0xba(r19)
/* 80086B8C  2C 00 00 08 */	cmpwi r0, 8
/* 80086B90  40 82 00 38 */	bne lbl_80086BC8
/* 80086B94  88 14 00 75 */	lbz r0, 0x75(r20)
/* 80086B98  28 00 00 02 */	cmplwi r0, 2
/* 80086B9C  41 82 00 2C */	beq lbl_80086BC8
/* 80086BA0  88 14 00 77 */	lbz r0, 0x77(r20)
/* 80086BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80086BA8  41 82 00 14 */	beq lbl_80086BBC
/* 80086BAC  2C 00 00 05 */	cmpwi r0, 5
/* 80086BB0  41 82 00 0C */	beq lbl_80086BBC
/* 80086BB4  2C 00 00 08 */	cmpwi r0, 8
/* 80086BB8  40 82 00 10 */	bne lbl_80086BC8
lbl_80086BBC:
/* 80086BBC  80 14 00 5C */	lwz r0, 0x5c(r20)
/* 80086BC0  60 00 00 01 */	ori r0, r0, 1
/* 80086BC4  90 14 00 5C */	stw r0, 0x5c(r20)
lbl_80086BC8:
/* 80086BC8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 80086BCC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80086BD0  41 82 00 10 */	beq lbl_80086BE0
/* 80086BD4  80 14 00 5C */	lwz r0, 0x5c(r20)
/* 80086BD8  60 00 00 02 */	ori r0, r0, 2
/* 80086BDC  90 14 00 5C */	stw r0, 0x5c(r20)
lbl_80086BE0:
/* 80086BE0  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80086BE4  41 82 00 98 */	beq lbl_80086C7C
/* 80086BE8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80086BEC  D0 13 00 D4 */	stfs f0, 0xd4(r19)
/* 80086BF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80086BF4  D0 13 00 D8 */	stfs f0, 0xd8(r19)
/* 80086BF8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80086BFC  D0 13 00 DC */	stfs f0, 0xdc(r19)
/* 80086C00  C0 14 00 84 */	lfs f0, 0x84(r20)
/* 80086C04  D0 13 00 C8 */	stfs f0, 0xc8(r19)
/* 80086C08  C0 14 00 88 */	lfs f0, 0x88(r20)
/* 80086C0C  D0 13 00 CC */	stfs f0, 0xcc(r19)
/* 80086C10  C0 14 00 8C */	lfs f0, 0x8c(r20)
/* 80086C14  D0 13 00 D0 */	stfs f0, 0xd0(r19)
/* 80086C18  28 1E 00 00 */	cmplwi r30, 0
/* 80086C1C  41 82 00 18 */	beq lbl_80086C34
/* 80086C20  88 1D 00 04 */	lbz r0, 4(r29)
/* 80086C24  2C 00 00 00 */	cmpwi r0, 0
/* 80086C28  40 82 00 0C */	bne lbl_80086C34
/* 80086C2C  88 14 00 77 */	lbz r0, 0x77(r20)
/* 80086C30  98 1E 00 04 */	stb r0, 4(r30)
lbl_80086C34:
/* 80086C34  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 80086C38  38 73 00 9C */	addi r3, r19, 0x9c
/* 80086C3C  4B FF CA 3D */	bl SetHitApid__22dCcD_GAtTgCoCommonBaseFUi
/* 80086C40  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 80086C44  41 82 00 14 */	beq lbl_80086C58
/* 80086C48  80 13 00 A0 */	lwz r0, 0xa0(r19)
/* 80086C4C  60 00 00 02 */	ori r0, r0, 2
/* 80086C50  90 13 00 A0 */	stw r0, 0xa0(r19)
/* 80086C54  48 00 00 10 */	b lbl_80086C64
lbl_80086C58:
/* 80086C58  7F 83 E3 78 */	mr r3, r28
/* 80086C5C  88 99 00 14 */	lbz r4, 0x14(r25)
/* 80086C60  48 1D CD 11 */	bl PlusDmg__9cCcD_SttsFi
lbl_80086C64:
/* 80086C64  80 1D 00 1C */	lwz r0, 0x1c(r29)
/* 80086C68  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80086C6C  41 82 00 10 */	beq lbl_80086C7C
/* 80086C70  80 13 00 A0 */	lwz r0, 0xa0(r19)
/* 80086C74  60 00 00 01 */	ori r0, r0, 1
/* 80086C78  90 13 00 A0 */	stw r0, 0xa0(r19)
lbl_80086C7C:
/* 80086C7C  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80086C80  41 82 00 3C */	beq lbl_80086CBC
/* 80086C84  82 34 00 60 */	lwz r17, 0x60(r20)
/* 80086C88  28 11 00 00 */	cmplwi r17, 0
/* 80086C8C  41 82 00 30 */	beq lbl_80086CBC
/* 80086C90  7E 63 9B 78 */	mr r3, r19
/* 80086C94  48 1D CD B5 */	bl GetAc__8cCcD_ObjFv
/* 80086C98  7C 72 1B 78 */	mr r18, r3
/* 80086C9C  7E 83 A3 78 */	mr r3, r20
/* 80086CA0  48 1D CD A9 */	bl GetAc__8cCcD_ObjFv
/* 80086CA4  7E 84 A3 78 */	mr r4, r20
/* 80086CA8  7E 45 93 78 */	mr r5, r18
/* 80086CAC  7E 66 9B 78 */	mr r6, r19
/* 80086CB0  7E 2C 8B 78 */	mr r12, r17
/* 80086CB4  7D 89 03 A6 */	mtctr r12
/* 80086CB8  4E 80 04 21 */	bctrl 
lbl_80086CBC:
/* 80086CBC  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80086CC0  41 82 00 3C */	beq lbl_80086CFC
/* 80086CC4  82 33 00 A4 */	lwz r17, 0xa4(r19)
/* 80086CC8  28 11 00 00 */	cmplwi r17, 0
/* 80086CCC  41 82 00 30 */	beq lbl_80086CFC
/* 80086CD0  7E 83 A3 78 */	mr r3, r20
/* 80086CD4  48 1D CD 75 */	bl GetAc__8cCcD_ObjFv
/* 80086CD8  7C 72 1B 78 */	mr r18, r3
/* 80086CDC  7E 63 9B 78 */	mr r3, r19
/* 80086CE0  48 1D CD 69 */	bl GetAc__8cCcD_ObjFv
/* 80086CE4  7E 64 9B 78 */	mr r4, r19
/* 80086CE8  7E 45 93 78 */	mr r5, r18
/* 80086CEC  7E 86 A3 78 */	mr r6, r20
/* 80086CF0  7E 2C 8B 78 */	mr r12, r17
/* 80086CF4  7D 89 03 A6 */	mtctr r12
/* 80086CF8  4E 80 04 21 */	bctrl 
lbl_80086CFC:
/* 80086CFC  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 80086D00  41 82 00 74 */	beq lbl_80086D74
/* 80086D04  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80086D08  41 82 00 6C */	beq lbl_80086D74
/* 80086D0C  38 74 00 58 */	addi r3, r20, 0x58
/* 80086D10  4B FF CA 39 */	bl ChkEffCounter__22dCcD_GAtTgCoCommonBaseFv
/* 80086D14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80086D18  41 82 00 14 */	beq lbl_80086D2C
/* 80086D1C  38 73 00 9C */	addi r3, r19, 0x9c
/* 80086D20  4B FF CA 29 */	bl ChkEffCounter__22dCcD_GAtTgCoCommonBaseFv
/* 80086D24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80086D28  40 82 00 4C */	bne lbl_80086D74
lbl_80086D2C:
/* 80086D2C  38 74 00 58 */	addi r3, r20, 0x58
/* 80086D30  4B FF C9 E9 */	bl SetEffCounterTimer__22dCcD_GAtTgCoCommonBaseFv
/* 80086D34  38 73 00 9C */	addi r3, r19, 0x9c
/* 80086D38  4B FF C9 E1 */	bl SetEffCounterTimer__22dCcD_GAtTgCoCommonBaseFv
/* 80086D3C  93 81 00 08 */	stw r28, 8(r1)
/* 80086D40  93 A1 00 0C */	stw r29, 0xc(r1)
/* 80086D44  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80086D48  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80086D4C  92 A1 00 18 */	stw r21, 0x18(r1)
/* 80086D50  7E C3 B3 78 */	mr r3, r22
/* 80086D54  7E E4 BB 78 */	mr r4, r23
/* 80086D58  7F 05 C3 78 */	mr r5, r24
/* 80086D5C  7F 26 CB 78 */	mr r6, r25
/* 80086D60  7F 47 D3 78 */	mr r7, r26
/* 80086D64  7E 88 A3 78 */	mr r8, r20
/* 80086D68  7E 69 9B 78 */	mr r9, r19
/* 80086D6C  7F 6A DB 78 */	mr r10, r27
/* 80086D70  4B FF FA ED */	bl ProcAtTgHitmark__4dCcSFbbP8cCcD_ObjP8cCcD_ObjP12dCcD_GObjInfP12dCcD_GObjInfP9cCcD_SttsP9cCcD_SttsP10dCcD_GSttsP10dCcD_GSttsP4cXyzb
lbl_80086D74:
/* 80086D74  39 61 00 60 */	addi r11, r1, 0x60
/* 80086D78  48 2D B4 81 */	bl _restgpr_17
/* 80086D7C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80086D80  7C 08 03 A6 */	mtlr r0
/* 80086D84  38 21 00 60 */	addi r1, r1, 0x60
/* 80086D88  4E 80 00 20 */	blr 
