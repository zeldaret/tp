lbl_801B61BC:
/* 801B61BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B61C0  7C 08 02 A6 */	mflr r0
/* 801B61C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B61C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B61CC  93 C1 00 08 */	stw r30, 8(r1)
/* 801B61D0  7C 7E 1B 78 */	mr r30, r3
/* 801B61D4  54 86 06 3E */	clrlwi r6, r4, 0x18
/* 801B61D8  1C 06 00 06 */	mulli r0, r6, 6
/* 801B61DC  7C 1E 02 14 */	add r0, r30, r0
/* 801B61E0  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 801B61E4  7C 80 2A 14 */	add r4, r0, r5
/* 801B61E8  88 04 02 2D */	lbz r0, 0x22d(r4)
/* 801B61EC  28 00 00 00 */	cmplwi r0, 0
/* 801B61F0  40 82 00 0C */	bne lbl_801B61FC
/* 801B61F4  48 00 01 51 */	bl setItemNameStringNull__17dMenu_Collect2D_cFv
/* 801B61F8  48 00 01 34 */	b lbl_801B632C
lbl_801B61FC:
/* 801B61FC  1C 06 00 0C */	mulli r0, r6, 0xc
/* 801B6200  7C 1E 02 14 */	add r0, r30, r0
/* 801B6204  54 A4 08 3C */	slwi r4, r5, 1
/* 801B6208  7C 80 22 14 */	add r4, r0, r4
/* 801B620C  A3 E4 01 84 */	lhz r31, 0x184(r4)
/* 801B6210  A0 04 01 D8 */	lhz r0, 0x1d8(r4)
/* 801B6214  B0 1E 01 82 */	sth r0, 0x182(r30)
/* 801B6218  B3 FE 01 80 */	sth r31, 0x180(r30)
/* 801B621C  28 1F 00 00 */	cmplwi r31, 0
/* 801B6220  40 82 00 0C */	bne lbl_801B622C
/* 801B6224  48 00 01 21 */	bl setItemNameStringNull__17dMenu_Collect2D_cFv
/* 801B6228  48 00 01 04 */	b lbl_801B632C
lbl_801B622C:
/* 801B622C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B6230  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3034@ha */
/* 801B6234  38 C4 30 34 */	addi r6, r4, 0x3034 /* 0x5F6E3034@l */
/* 801B6238  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B623C  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B6240  81 83 00 00 */	lwz r12, 0(r3)
/* 801B6244  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B6248  7D 89 03 A6 */	mtctr r12
/* 801B624C  4E 80 04 21 */	bctrl 
/* 801B6250  48 14 A4 09 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B6254  7C 65 1B 78 */	mr r5, r3
/* 801B6258  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801B625C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801B6260  7F E4 FB 78 */	mr r4, r31
/* 801B6264  38 C0 00 00 */	li r6, 0
/* 801B6268  48 06 62 DD */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801B626C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B6270  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3035@ha */
/* 801B6274  38 C4 30 35 */	addi r6, r4, 0x3035 /* 0x5F6E3035@l */
/* 801B6278  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B627C  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B6280  81 83 00 00 */	lwz r12, 0(r3)
/* 801B6284  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B6288  7D 89 03 A6 */	mtctr r12
/* 801B628C  4E 80 04 21 */	bctrl 
/* 801B6290  48 14 A3 C9 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B6294  7C 65 1B 78 */	mr r5, r3
/* 801B6298  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801B629C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801B62A0  7F E4 FB 78 */	mr r4, r31
/* 801B62A4  38 C0 00 00 */	li r6, 0
/* 801B62A8  48 06 62 9D */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801B62AC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B62B0  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3036@ha */
/* 801B62B4  38 C4 30 36 */	addi r6, r4, 0x3036 /* 0x5F6E3036@l */
/* 801B62B8  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B62BC  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B62C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B62C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B62C8  7D 89 03 A6 */	mtctr r12
/* 801B62CC  4E 80 04 21 */	bctrl 
/* 801B62D0  48 14 A3 89 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B62D4  7C 65 1B 78 */	mr r5, r3
/* 801B62D8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801B62DC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801B62E0  7F E4 FB 78 */	mr r4, r31
/* 801B62E4  38 C0 00 00 */	li r6, 0
/* 801B62E8  48 06 62 5D */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801B62EC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B62F0  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3037@ha */
/* 801B62F4  38 C4 30 37 */	addi r6, r4, 0x3037 /* 0x5F6E3037@l */
/* 801B62F8  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B62FC  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B6300  81 83 00 00 */	lwz r12, 0(r3)
/* 801B6304  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B6308  7D 89 03 A6 */	mtctr r12
/* 801B630C  4E 80 04 21 */	bctrl 
/* 801B6310  48 14 A3 49 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B6314  7C 65 1B 78 */	mr r5, r3
/* 801B6318  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801B631C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801B6320  7F E4 FB 78 */	mr r4, r31
/* 801B6324  38 C0 00 00 */	li r6, 0
/* 801B6328  48 06 62 1D */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
lbl_801B632C:
/* 801B632C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B6330  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B6334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B6338  7C 08 03 A6 */	mtlr r0
/* 801B633C  38 21 00 10 */	addi r1, r1, 0x10
/* 801B6340  4E 80 00 20 */	blr 
