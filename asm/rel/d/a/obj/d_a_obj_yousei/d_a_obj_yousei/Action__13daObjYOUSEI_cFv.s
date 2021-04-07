lbl_804D0AD0:
/* 804D0AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D0AD4  7C 08 02 A6 */	mflr r0
/* 804D0AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D0ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D0AE0  93 C1 00 08 */	stw r30, 8(r1)
/* 804D0AE4  7C 7F 1B 78 */	mr r31, r3
/* 804D0AE8  A8 03 05 CA */	lha r0, 0x5ca(r3)
/* 804D0AEC  2C 00 00 02 */	cmpwi r0, 2
/* 804D0AF0  41 82 01 A8 */	beq lbl_804D0C98
/* 804D0AF4  40 80 00 14 */	bge lbl_804D0B08
/* 804D0AF8  2C 00 00 00 */	cmpwi r0, 0
/* 804D0AFC  41 82 00 18 */	beq lbl_804D0B14
/* 804D0B00  40 80 01 90 */	bge lbl_804D0C90
/* 804D0B04  48 00 01 A8 */	b lbl_804D0CAC
lbl_804D0B08:
/* 804D0B08  2C 00 00 04 */	cmpwi r0, 4
/* 804D0B0C  40 80 01 A0 */	bge lbl_804D0CAC
/* 804D0B10  48 00 01 98 */	b lbl_804D0CA8
lbl_804D0B14:
/* 804D0B14  38 00 00 00 */	li r0, 0
/* 804D0B18  B0 1F 06 1A */	sth r0, 0x61a(r31)
/* 804D0B1C  4B FF EB A9 */	bl WaitAction__13daObjYOUSEI_cFv
/* 804D0B20  7F E3 FB 78 */	mr r3, r31
/* 804D0B24  4B FF DD FD */	bl SpeedSet__13daObjYOUSEI_cFv
/* 804D0B28  7F E3 FB 78 */	mr r3, r31
/* 804D0B2C  4B FF DC 79 */	bl SetCcSph__13daObjYOUSEI_cFv
/* 804D0B30  7F E3 FB 78 */	mr r3, r31
/* 804D0B34  48 00 01 99 */	bl ObjHit__13daObjYOUSEI_cFv
/* 804D0B38  88 1F 05 AF */	lbz r0, 0x5af(r31)
/* 804D0B3C  28 00 00 00 */	cmplwi r0, 0
/* 804D0B40  41 82 00 84 */	beq lbl_804D0BC4
/* 804D0B44  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 804D0B48  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804D0B4C  38 BF 04 E6 */	addi r5, r31, 0x4e6
/* 804D0B50  38 C0 00 00 */	li r6, 0
/* 804D0B54  38 E0 1C 00 */	li r7, 0x1c00
/* 804D0B58  4B C8 DA FD */	bl posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 804D0B5C  2C 03 00 00 */	cmpwi r3, 0
/* 804D0B60  41 82 00 14 */	beq lbl_804D0B74
/* 804D0B64  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 804D0B68  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804D0B6C  4B C8 DD 11 */	bl bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 804D0B70  48 00 00 54 */	b lbl_804D0BC4
lbl_804D0B74:
/* 804D0B74  38 00 00 00 */	li r0, 0
/* 804D0B78  98 1F 05 AF */	stb r0, 0x5af(r31)
/* 804D0B7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D0B80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D0B84  A3 C3 00 02 */	lhz r30, 2(r3)
/* 804D0B88  4B B5 D1 21 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 804D0B8C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804D0B90  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 804D0B94  7C 00 18 40 */	cmplw r0, r3
/* 804D0B98  41 82 00 0C */	beq lbl_804D0BA4
/* 804D0B9C  7F E3 FB 78 */	mr r3, r31
/* 804D0BA0  4B FF FB E1 */	bl CareAction__13daObjYOUSEI_cFv
lbl_804D0BA4:
/* 804D0BA4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D0BA8  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 804D0BAC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804D0BB0  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 804D0BB4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804D0BB8  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 804D0BBC  7F E3 FB 78 */	mr r3, r31
/* 804D0BC0  4B FF FC 4D */	bl CheckGround__13daObjYOUSEI_cFv
lbl_804D0BC4:
/* 804D0BC4  38 7F 06 FC */	addi r3, r31, 0x6fc
/* 804D0BC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D0BCC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D0BD0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 804D0BD4  4B BA 5E D9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804D0BD8  C0 3F 06 14 */	lfs f1, 0x614(r31)
/* 804D0BDC  3C 60 80 4D */	lis r3, lit_4005@ha /* 0x804D16D0@ha */
/* 804D0BE0  C0 03 16 D0 */	lfs f0, lit_4005@l(r3)  /* 0x804D16D0@l */
/* 804D0BE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D0BE8  40 80 00 5C */	bge lbl_804D0C44
/* 804D0BEC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 804D0BF0  3C 60 80 4D */	lis r3, sLink_Pos@ha /* 0x804D182C@ha */
/* 804D0BF4  38 63 18 2C */	addi r3, r3, sLink_Pos@l /* 0x804D182C@l */
/* 804D0BF8  80 63 00 00 */	lwz r3, 0(r3)
/* 804D0BFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D0C00  EC 21 00 28 */	fsubs f1, f1, f0
/* 804D0C04  3C 60 80 4D */	lis r3, lit_4003@ha /* 0x804D16C8@ha */
/* 804D0C08  C0 03 16 C8 */	lfs f0, lit_4003@l(r3)  /* 0x804D16C8@l */
/* 804D0C0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D0C10  40 80 00 34 */	bge lbl_804D0C44
/* 804D0C14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D0C18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D0C1C  A3 C3 00 02 */	lhz r30, 2(r3)
/* 804D0C20  4B B5 D0 89 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 804D0C24  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 804D0C28  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 804D0C2C  7C 00 18 40 */	cmplw r0, r3
/* 804D0C30  41 82 00 14 */	beq lbl_804D0C44
/* 804D0C34  7F E3 FB 78 */	mr r3, r31
/* 804D0C38  4B FF FB 49 */	bl CareAction__13daObjYOUSEI_cFv
/* 804D0C3C  38 00 00 00 */	li r0, 0
/* 804D0C40  98 1F 05 AF */	stb r0, 0x5af(r31)
lbl_804D0C44:
/* 804D0C44  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 804D0C48  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 804D0C4C  41 82 00 60 */	beq lbl_804D0CAC
/* 804D0C50  7F E3 FB 78 */	mr r3, r31
/* 804D0C54  4B FF FD 35 */	bl CheckWater__13daObjYOUSEI_cFv
/* 804D0C58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D0C5C  41 82 00 10 */	beq lbl_804D0C6C
/* 804D0C60  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 804D0C64  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 804D0C68  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_804D0C6C:
/* 804D0C6C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D0C70  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 804D0C74  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804D0C78  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 804D0C7C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804D0C80  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 804D0C84  7F E3 FB 78 */	mr r3, r31
/* 804D0C88  4B FF FB 85 */	bl CheckGround__13daObjYOUSEI_cFv
/* 804D0C8C  48 00 00 20 */	b lbl_804D0CAC
lbl_804D0C90:
/* 804D0C90  4B FF DD 41 */	bl MoveAction__13daObjYOUSEI_cFv
/* 804D0C94  48 00 00 18 */	b lbl_804D0CAC
lbl_804D0C98:
/* 804D0C98  4B FF E1 B9 */	bl BinAction__13daObjYOUSEI_cFv
/* 804D0C9C  7F E3 FB 78 */	mr r3, r31
/* 804D0CA0  4B FF DC 81 */	bl SpeedSet__13daObjYOUSEI_cFv
/* 804D0CA4  48 00 00 08 */	b lbl_804D0CAC
lbl_804D0CA8:
/* 804D0CA8  4B FF F0 41 */	bl LinkAction__13daObjYOUSEI_cFv
lbl_804D0CAC:
/* 804D0CAC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 804D0CB0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 804D0CB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D0CB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D0CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D0CC0  7C 08 03 A6 */	mtlr r0
/* 804D0CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D0CC8  4E 80 00 20 */	blr 
