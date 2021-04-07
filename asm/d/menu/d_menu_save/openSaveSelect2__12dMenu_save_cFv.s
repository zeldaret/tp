lbl_801F36B4:
/* 801F36B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F36B8  7C 08 02 A6 */	mflr r0
/* 801F36BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F36C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F36C4  93 C1 00 08 */	stw r30, 8(r1)
/* 801F36C8  7C 7F 1B 78 */	mr r31, r3
/* 801F36CC  48 00 12 5D */	bl headerTxtChangeAnm__12dMenu_save_cFv
/* 801F36D0  7C 7E 1B 78 */	mr r30, r3
/* 801F36D4  7F E3 FB 78 */	mr r3, r31
/* 801F36D8  48 00 1C FD */	bl selectDataBaseMoveAnm__12dMenu_save_cFv
/* 801F36DC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F36E0  28 00 00 01 */	cmplwi r0, 1
/* 801F36E4  40 82 00 A4 */	bne lbl_801F3788
/* 801F36E8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F36EC  28 00 00 01 */	cmplwi r0, 1
/* 801F36F0  40 82 00 98 */	bne lbl_801F3788
/* 801F36F4  7F E3 FB 78 */	mr r3, r31
/* 801F36F8  38 80 00 01 */	li r4, 1
/* 801F36FC  48 00 29 A9 */	bl modoruTxtDispAnmInit__12dMenu_save_cFUc
/* 801F3700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801F3704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801F3708  88 03 0F 18 */	lbz r0, 0xf18(r3)
/* 801F370C  98 1F 00 54 */	stb r0, 0x54(r31)
/* 801F3710  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F3714  98 1F 00 55 */	stb r0, 0x55(r31)
/* 801F3718  38 80 00 00 */	li r4, 0
/* 801F371C  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F3720  54 00 10 3A */	slwi r0, r0, 2
/* 801F3724  7C 7F 02 14 */	add r3, r31, r0
/* 801F3728  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 801F372C  B0 83 00 16 */	sth r4, 0x16(r3)
/* 801F3730  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F3734  54 00 10 3A */	slwi r0, r0, 2
/* 801F3738  7C 7F 02 14 */	add r3, r31, r0
/* 801F373C  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F3740  80 63 00 04 */	lwz r3, 4(r3)
/* 801F3744  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 801F3748  81 83 00 00 */	lwz r12, 0(r3)
/* 801F374C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F3750  7D 89 03 A6 */	mtctr r12
/* 801F3754  4E 80 04 21 */	bctrl 
/* 801F3758  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F375C  54 04 10 3A */	slwi r4, r0, 2
/* 801F3760  3C 60 80 3C */	lis r3, SelStartFrameTbl@ha /* 0x803BDF84@ha */
/* 801F3764  38 63 DF 84 */	addi r3, r3, SelStartFrameTbl@l /* 0x803BDF84@l */
/* 801F3768  7C 03 20 2E */	lwzx r0, r3, r4
/* 801F376C  7C 7F 22 14 */	add r3, r31, r4
/* 801F3770  90 03 00 74 */	stw r0, 0x74(r3)
/* 801F3774  7F E3 FB 78 */	mr r3, r31
/* 801F3778  38 80 00 01 */	li r4, 1
/* 801F377C  48 00 2A 81 */	bl ketteiTxtDispAnmInit__12dMenu_save_cFUc
/* 801F3780  38 00 00 30 */	li r0, 0x30
/* 801F3784  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F3788:
/* 801F3788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F378C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801F3790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F3794  7C 08 03 A6 */	mtlr r0
/* 801F3798  38 21 00 10 */	addi r1, r1, 0x10
/* 801F379C  4E 80 00 20 */	blr 
