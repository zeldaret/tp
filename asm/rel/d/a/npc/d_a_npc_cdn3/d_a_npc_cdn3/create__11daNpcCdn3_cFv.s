lbl_8097C910:
/* 8097C910  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8097C914  7C 08 02 A6 */	mflr r0
/* 8097C918  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097C91C  39 61 00 20 */	addi r11, r1, 0x20
/* 8097C920  4B 9E 58 B8 */	b _savegpr_28
/* 8097C924  7C 7F 1B 78 */	mr r31, r3
/* 8097C928  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8097C92C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8097C930  40 82 01 28 */	bne lbl_8097CA58
/* 8097C934  7F E0 FB 79 */	or. r0, r31, r31
/* 8097C938  41 82 01 14 */	beq lbl_8097CA4C
/* 8097C93C  7C 1D 03 78 */	mr r29, r0
/* 8097C940  7C 1E 03 78 */	mr r30, r0
/* 8097C944  4B 69 C2 20 */	b __ct__10fopAc_ac_cFv
/* 8097C948  3C 60 80 98 */	lis r3, __vt__10daNpcCd2_c@ha
/* 8097C94C  38 03 07 2C */	addi r0, r3, __vt__10daNpcCd2_c@l
/* 8097C950  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8097C954  38 7E 05 94 */	addi r3, r30, 0x594
/* 8097C958  4B 94 42 B8 */	b __ct__17Z2CreatureCitizenFv
/* 8097C95C  3B 9E 06 38 */	addi r28, r30, 0x638
/* 8097C960  7F 83 E3 78 */	mr r3, r28
/* 8097C964  4B 6F 97 3C */	b __ct__9dBgS_AcchFv
/* 8097C968  3C 60 80 98 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8097C96C  38 63 07 08 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8097C970  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8097C974  38 03 00 0C */	addi r0, r3, 0xc
/* 8097C978  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8097C97C  38 03 00 18 */	addi r0, r3, 0x18
/* 8097C980  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8097C984  38 7C 00 14 */	addi r3, r28, 0x14
/* 8097C988  4B 6F C4 E0 */	b SetObj__16dBgS_PolyPassChkFv
/* 8097C98C  38 7E 08 10 */	addi r3, r30, 0x810
/* 8097C990  4B 6F 95 1C */	b __ct__12dBgS_AcchCirFv
/* 8097C994  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8097C998  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8097C99C  90 1E 08 68 */	stw r0, 0x868(r30)
/* 8097C9A0  38 7E 08 6C */	addi r3, r30, 0x86c
/* 8097C9A4  4B 70 6D BC */	b __ct__10dCcD_GSttsFv
/* 8097C9A8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8097C9AC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8097C9B0  90 7E 08 68 */	stw r3, 0x868(r30)
/* 8097C9B4  38 03 00 20 */	addi r0, r3, 0x20
/* 8097C9B8  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 8097C9BC  3B 9E 08 8C */	addi r28, r30, 0x88c
/* 8097C9C0  7F 83 E3 78 */	mr r3, r28
/* 8097C9C4  4B 70 70 64 */	b __ct__12dCcD_GObjInfFv
/* 8097C9C8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8097C9CC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8097C9D0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8097C9D4  3C 60 80 98 */	lis r3, __vt__8cM3dGAab@ha
/* 8097C9D8  38 03 06 FC */	addi r0, r3, __vt__8cM3dGAab@l
/* 8097C9DC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8097C9E0  3C 60 80 98 */	lis r3, __vt__8cM3dGCyl@ha
/* 8097C9E4  38 03 06 F0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8097C9E8  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8097C9EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8097C9F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8097C9F4  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8097C9F8  38 03 00 58 */	addi r0, r3, 0x58
/* 8097C9FC  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8097CA00  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8097CA04  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8097CA08  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8097CA0C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8097CA10  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8097CA14  38 03 00 84 */	addi r0, r3, 0x84
/* 8097CA18  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8097CA1C  38 7E 09 C8 */	addi r3, r30, 0x9c8
/* 8097CA20  4B 8D 48 F4 */	b __ct__16dNpcLib_lookat_cFv
/* 8097CA24  3C 60 80 98 */	lis r3, __vt__11daNpcCdn3_c@ha
/* 8097CA28  38 03 06 E4 */	addi r0, r3, __vt__11daNpcCdn3_c@l
/* 8097CA2C  90 1D 05 68 */	stw r0, 0x568(r29)
/* 8097CA30  3C 60 80 98 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8097CA34  38 03 06 D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8097CA38  90 1D 0A FC */	stw r0, 0xafc(r29)
/* 8097CA3C  38 7D 0A F8 */	addi r3, r29, 0xaf8
/* 8097CA40  4B 7C 8C 94 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8097CA44  38 7D 0B 00 */	addi r3, r29, 0xb00
/* 8097CA48  4B 8C D4 B8 */	b __ct__10dMsgFlow_cFv
lbl_8097CA4C:
/* 8097CA4C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8097CA50  60 00 00 08 */	ori r0, r0, 8
/* 8097CA54  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8097CA58:
/* 8097CA58  4B 82 FB 24 */	b dKy_darkworld_check__Fv
/* 8097CA5C  98 7F 0A C6 */	stb r3, 0xac6(r31)
/* 8097CA60  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 8097CA64  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 8097CA68  90 1F 0A 98 */	stw r0, 0xa98(r31)
/* 8097CA6C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 8097CA70  54 1D D7 3E */	rlwinm r29, r0, 0x1a, 0x1c, 0x1f
/* 8097CA74  7F E3 FB 78 */	mr r3, r31
/* 8097CA78  4B 7D B6 30 */	b isM___10daNpcCd2_cFv
/* 8097CA7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097CA80  41 82 00 9C */	beq lbl_8097CB1C
/* 8097CA84  28 1D 00 07 */	cmplwi r29, 7
/* 8097CA88  41 81 00 5C */	bgt lbl_8097CAE4
/* 8097CA8C  3C 60 80 98 */	lis r3, lit_5487@ha
/* 8097CA90  38 63 06 38 */	addi r3, r3, lit_5487@l
/* 8097CA94  57 A0 10 3A */	slwi r0, r29, 2
/* 8097CA98  7C 03 00 2E */	lwzx r0, r3, r0
/* 8097CA9C  7C 09 03 A6 */	mtctr r0
/* 8097CAA0  4E 80 04 20 */	bctr 
lbl_8097CAA4:
/* 8097CAA4  3B A0 00 00 */	li r29, 0
/* 8097CAA8  48 00 00 40 */	b lbl_8097CAE8
lbl_8097CAAC:
/* 8097CAAC  3B A0 00 01 */	li r29, 1
/* 8097CAB0  48 00 00 38 */	b lbl_8097CAE8
lbl_8097CAB4:
/* 8097CAB4  3B A0 00 02 */	li r29, 2
/* 8097CAB8  48 00 00 30 */	b lbl_8097CAE8
lbl_8097CABC:
/* 8097CABC  3B A0 00 04 */	li r29, 4
/* 8097CAC0  48 00 00 28 */	b lbl_8097CAE8
lbl_8097CAC4:
/* 8097CAC4  3B A0 00 06 */	li r29, 6
/* 8097CAC8  48 00 00 20 */	b lbl_8097CAE8
lbl_8097CACC:
/* 8097CACC  3B A0 00 00 */	li r29, 0
/* 8097CAD0  48 00 00 18 */	b lbl_8097CAE8
lbl_8097CAD4:
/* 8097CAD4  3B A0 00 00 */	li r29, 0
/* 8097CAD8  48 00 00 10 */	b lbl_8097CAE8
lbl_8097CADC:
/* 8097CADC  3B A0 00 09 */	li r29, 9
/* 8097CAE0  48 00 00 08 */	b lbl_8097CAE8
lbl_8097CAE4:
/* 8097CAE4  3B A0 00 00 */	li r29, 0
lbl_8097CAE8:
/* 8097CAE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8097CAEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8097CAF0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8097CAF4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8097CAF8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8097CAFC  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 8097CB00  4B 6B 7E BC */	b isEventBit__11dSv_event_cCFUs
/* 8097CB04  2C 03 00 00 */	cmpwi r3, 0
/* 8097CB08  41 82 00 A8 */	beq lbl_8097CBB0
/* 8097CB0C  2C 1D 00 09 */	cmpwi r29, 9
/* 8097CB10  40 82 00 A0 */	bne lbl_8097CBB0
/* 8097CB14  3B A0 00 0B */	li r29, 0xb
/* 8097CB18  48 00 00 98 */	b lbl_8097CBB0
lbl_8097CB1C:
/* 8097CB1C  28 1D 00 07 */	cmplwi r29, 7
/* 8097CB20  41 81 00 5C */	bgt lbl_8097CB7C
/* 8097CB24  3C 60 80 98 */	lis r3, lit_5488@ha
/* 8097CB28  38 63 06 18 */	addi r3, r3, lit_5488@l
/* 8097CB2C  57 A0 10 3A */	slwi r0, r29, 2
/* 8097CB30  7C 03 00 2E */	lwzx r0, r3, r0
/* 8097CB34  7C 09 03 A6 */	mtctr r0
/* 8097CB38  4E 80 04 20 */	bctr 
lbl_8097CB3C:
/* 8097CB3C  3B A0 00 00 */	li r29, 0
/* 8097CB40  48 00 00 40 */	b lbl_8097CB80
lbl_8097CB44:
/* 8097CB44  3B A0 00 08 */	li r29, 8
/* 8097CB48  48 00 00 38 */	b lbl_8097CB80
lbl_8097CB4C:
/* 8097CB4C  3B A0 00 03 */	li r29, 3
/* 8097CB50  48 00 00 30 */	b lbl_8097CB80
lbl_8097CB54:
/* 8097CB54  3B A0 00 05 */	li r29, 5
/* 8097CB58  48 00 00 28 */	b lbl_8097CB80
lbl_8097CB5C:
/* 8097CB5C  3B A0 00 07 */	li r29, 7
/* 8097CB60  48 00 00 20 */	b lbl_8097CB80
lbl_8097CB64:
/* 8097CB64  3B A0 00 00 */	li r29, 0
/* 8097CB68  48 00 00 18 */	b lbl_8097CB80
lbl_8097CB6C:
/* 8097CB6C  3B A0 00 00 */	li r29, 0
/* 8097CB70  48 00 00 10 */	b lbl_8097CB80
lbl_8097CB74:
/* 8097CB74  3B A0 00 0A */	li r29, 0xa
/* 8097CB78  48 00 00 08 */	b lbl_8097CB80
lbl_8097CB7C:
/* 8097CB7C  3B A0 00 00 */	li r29, 0
lbl_8097CB80:
/* 8097CB80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8097CB84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8097CB88  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8097CB8C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 8097CB90  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 8097CB94  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 8097CB98  4B 6B 7E 24 */	b isEventBit__11dSv_event_cCFUs
/* 8097CB9C  2C 03 00 00 */	cmpwi r3, 0
/* 8097CBA0  41 82 00 10 */	beq lbl_8097CBB0
/* 8097CBA4  2C 1D 00 0A */	cmpwi r29, 0xa
/* 8097CBA8  40 82 00 08 */	bne lbl_8097CBB0
/* 8097CBAC  3B A0 00 0C */	li r29, 0xc
lbl_8097CBB0:
/* 8097CBB0  93 BF 0B 58 */	stw r29, 0xb58(r31)
/* 8097CBB4  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 8097CBB8  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8097CBBC  90 1F 0B 78 */	stw r0, 0xb78(r31)
/* 8097CBC0  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 8097CBC4  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 8097CBC8  80 9F 0B 78 */	lwz r4, 0xb78(r31)
/* 8097CBCC  2C 04 00 00 */	cmpwi r4, 0
/* 8097CBD0  41 80 00 0C */	blt lbl_8097CBDC
/* 8097CBD4  2C 04 00 2C */	cmpwi r4, 0x2c
/* 8097CBD8  41 80 00 18 */	blt lbl_8097CBF0
lbl_8097CBDC:
/* 8097CBDC  3C 60 80 98 */	lis r3, stringBase0@ha
/* 8097CBE0  38 63 F5 AC */	addi r3, r3, stringBase0@l
/* 8097CBE4  38 63 00 A6 */	addi r3, r3, 0xa6
/* 8097CBE8  4C C6 31 82 */	crclr 6
/* 8097CBEC  4B 68 A0 20 */	b OSReport_Error
lbl_8097CBF0:
/* 8097CBF0  7F E3 FB 78 */	mr r3, r31
/* 8097CBF4  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 8097CBF8  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097CBFC  4B 7D BF BC */	b loadResrc__10daNpcCd2_cFii
/* 8097CC00  7C 7D 1B 78 */	mr r29, r3
/* 8097CC04  2C 1D 00 04 */	cmpwi r29, 4
/* 8097CC08  40 82 00 34 */	bne lbl_8097CC3C
/* 8097CC0C  7F E3 FB 78 */	mr r3, r31
/* 8097CC10  3C 80 80 98 */	lis r4, createHeapCallBack__FP10fopAc_ac_c@ha
/* 8097CC14  38 84 8C D8 */	addi r4, r4, createHeapCallBack__FP10fopAc_ac_c@l
/* 8097CC18  3C A0 80 00 */	lis r5, 0x8000 /* 0x80002890@ha */
/* 8097CC1C  38 A5 28 90 */	addi r5, r5, 0x2890 /* 0x80002890@l */
/* 8097CC20  4B 69 D8 90 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8097CC24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8097CC28  40 82 00 0C */	bne lbl_8097CC34
/* 8097CC2C  38 60 00 05 */	li r3, 5
/* 8097CC30  48 00 00 10 */	b lbl_8097CC40
lbl_8097CC34:
/* 8097CC34  7F E3 FB 78 */	mr r3, r31
/* 8097CC38  48 00 00 21 */	bl create_init__11daNpcCdn3_cFv
lbl_8097CC3C:
/* 8097CC3C  7F A3 EB 78 */	mr r3, r29
lbl_8097CC40:
/* 8097CC40  39 61 00 20 */	addi r11, r1, 0x20
/* 8097CC44  4B 9E 55 E0 */	b _restgpr_28
/* 8097CC48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8097CC4C  7C 08 03 A6 */	mtlr r0
/* 8097CC50  38 21 00 20 */	addi r1, r1, 0x20
/* 8097CC54  4E 80 00 20 */	blr 
