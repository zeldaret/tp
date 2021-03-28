lbl_805BB6E8:
/* 805BB6E8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805BB6EC  7C 08 02 A6 */	mflr r0
/* 805BB6F0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805BB6F4  39 61 00 50 */	addi r11, r1, 0x50
/* 805BB6F8  4B DA 6A E4 */	b _savegpr_29
/* 805BB6FC  7C 7D 1B 78 */	mr r29, r3
/* 805BB700  3C 60 80 5C */	lis r3, lit_3800@ha
/* 805BB704  3B E3 6C 74 */	addi r31, r3, lit_3800@l
/* 805BB708  3B C0 00 00 */	li r30, 0
/* 805BB70C  80 7D 07 10 */	lwz r3, 0x710(r29)
/* 805BB710  38 03 FF F0 */	addi r0, r3, -16
/* 805BB714  28 00 00 36 */	cmplwi r0, 0x36
/* 805BB718  41 81 08 5C */	bgt lbl_805BBF74
/* 805BB71C  3C 60 80 5C */	lis r3, lit_4342@ha
/* 805BB720  38 63 74 78 */	addi r3, r3, lit_4342@l
/* 805BB724  54 00 10 3A */	slwi r0, r0, 2
/* 805BB728  7C 03 00 2E */	lwzx r0, r3, r0
/* 805BB72C  7C 09 03 A6 */	mtctr r0
/* 805BB730  4E 80 04 20 */	bctr 
lbl_805BB734:
/* 805BB734  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB738  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB73C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 805BB740  4B D6 CC EC */	b checkPass__12J3DFrameCtrlFf
/* 805BB744  2C 03 00 00 */	cmpwi r3, 0
/* 805BB748  41 82 08 2C */	beq lbl_805BBF74
/* 805BB74C  3B C0 00 01 */	li r30, 1
/* 805BB750  48 00 08 24 */	b lbl_805BBF74
lbl_805BB754:
/* 805BB754  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB758  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB75C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 805BB760  4B D6 CC CC */	b checkPass__12J3DFrameCtrlFf
/* 805BB764  2C 03 00 00 */	cmpwi r3, 0
/* 805BB768  41 82 08 0C */	beq lbl_805BBF74
/* 805BB76C  3B C0 00 01 */	li r30, 1
/* 805BB770  48 00 08 04 */	b lbl_805BBF74
lbl_805BB774:
/* 805BB774  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB778  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB77C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 805BB780  4B D6 CC AC */	b checkPass__12J3DFrameCtrlFf
/* 805BB784  2C 03 00 00 */	cmpwi r3, 0
/* 805BB788  41 82 07 EC */	beq lbl_805BBF74
/* 805BB78C  3B C0 00 01 */	li r30, 1
/* 805BB790  48 00 07 E4 */	b lbl_805BBF74
lbl_805BB794:
/* 805BB794  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB798  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB79C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 805BB7A0  4B D6 CC 8C */	b checkPass__12J3DFrameCtrlFf
/* 805BB7A4  2C 03 00 00 */	cmpwi r3, 0
/* 805BB7A8  41 82 07 CC */	beq lbl_805BBF74
/* 805BB7AC  3B C0 00 01 */	li r30, 1
/* 805BB7B0  48 00 07 C4 */	b lbl_805BBF74
lbl_805BB7B4:
/* 805BB7B4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB7B8  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB7BC  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BB7C0  4B D6 CC 6C */	b checkPass__12J3DFrameCtrlFf
/* 805BB7C4  2C 03 00 00 */	cmpwi r3, 0
/* 805BB7C8  41 82 00 2C */	beq lbl_805BB7F4
/* 805BB7CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070485@ha */
/* 805BB7D0  38 03 04 85 */	addi r0, r3, 0x0485 /* 0x00070485@l */
/* 805BB7D4  90 01 00 38 */	stw r0, 0x38(r1)
/* 805BB7D8  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BB7DC  38 81 00 38 */	addi r4, r1, 0x38
/* 805BB7E0  38 A0 FF FF */	li r5, -1
/* 805BB7E4  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BB7E8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805BB7EC  7D 89 03 A6 */	mtctr r12
/* 805BB7F0  4E 80 04 21 */	bctrl 
lbl_805BB7F4:
/* 805BB7F4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB7F8  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB7FC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805BB800  4B D6 CC 2C */	b checkPass__12J3DFrameCtrlFf
/* 805BB804  2C 03 00 00 */	cmpwi r3, 0
/* 805BB808  40 82 00 1C */	bne lbl_805BB824
/* 805BB80C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB810  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB814  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 805BB818  4B D6 CC 14 */	b checkPass__12J3DFrameCtrlFf
/* 805BB81C  2C 03 00 00 */	cmpwi r3, 0
/* 805BB820  41 82 07 54 */	beq lbl_805BBF74
lbl_805BB824:
/* 805BB824  3B C0 00 01 */	li r30, 1
/* 805BB828  48 00 07 4C */	b lbl_805BBF74
lbl_805BB82C:
/* 805BB82C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB830  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB834  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BB838  4B D6 CB F4 */	b checkPass__12J3DFrameCtrlFf
/* 805BB83C  2C 03 00 00 */	cmpwi r3, 0
/* 805BB840  41 82 00 2C */	beq lbl_805BB86C
/* 805BB844  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070488@ha */
/* 805BB848  38 03 04 88 */	addi r0, r3, 0x0488 /* 0x00070488@l */
/* 805BB84C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BB850  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BB854  38 81 00 34 */	addi r4, r1, 0x34
/* 805BB858  38 A0 FF FF */	li r5, -1
/* 805BB85C  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BB860  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805BB864  7D 89 03 A6 */	mtctr r12
/* 805BB868  4E 80 04 21 */	bctrl 
lbl_805BB86C:
/* 805BB86C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB870  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB874  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 805BB878  4B D6 CB B4 */	b checkPass__12J3DFrameCtrlFf
/* 805BB87C  2C 03 00 00 */	cmpwi r3, 0
/* 805BB880  40 82 00 1C */	bne lbl_805BB89C
/* 805BB884  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB888  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB88C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 805BB890  4B D6 CB 9C */	b checkPass__12J3DFrameCtrlFf
/* 805BB894  2C 03 00 00 */	cmpwi r3, 0
/* 805BB898  41 82 06 DC */	beq lbl_805BBF74
lbl_805BB89C:
/* 805BB89C  3B C0 00 01 */	li r30, 1
/* 805BB8A0  48 00 06 D4 */	b lbl_805BBF74
lbl_805BB8A4:
/* 805BB8A4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB8A8  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB8AC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 805BB8B0  4B D6 CB 7C */	b checkPass__12J3DFrameCtrlFf
/* 805BB8B4  2C 03 00 00 */	cmpwi r3, 0
/* 805BB8B8  40 82 00 1C */	bne lbl_805BB8D4
/* 805BB8BC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB8C0  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB8C4  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 805BB8C8  4B D6 CB 64 */	b checkPass__12J3DFrameCtrlFf
/* 805BB8CC  2C 03 00 00 */	cmpwi r3, 0
/* 805BB8D0  41 82 06 A4 */	beq lbl_805BBF74
lbl_805BB8D4:
/* 805BB8D4  3B C0 00 01 */	li r30, 1
/* 805BB8D8  48 00 06 9C */	b lbl_805BBF74
lbl_805BB8DC:
/* 805BB8DC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB8E0  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB8E4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BB8E8  4B D6 CB 44 */	b checkPass__12J3DFrameCtrlFf
/* 805BB8EC  2C 03 00 00 */	cmpwi r3, 0
/* 805BB8F0  41 82 00 2C */	beq lbl_805BB91C
/* 805BB8F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070483@ha */
/* 805BB8F8  38 03 04 83 */	addi r0, r3, 0x0483 /* 0x00070483@l */
/* 805BB8FC  90 01 00 30 */	stw r0, 0x30(r1)
/* 805BB900  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BB904  38 81 00 30 */	addi r4, r1, 0x30
/* 805BB908  38 A0 FF FF */	li r5, -1
/* 805BB90C  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BB910  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805BB914  7D 89 03 A6 */	mtctr r12
/* 805BB918  4E 80 04 21 */	bctrl 
lbl_805BB91C:
/* 805BB91C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB920  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB924  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 805BB928  4B D6 CB 04 */	b checkPass__12J3DFrameCtrlFf
/* 805BB92C  2C 03 00 00 */	cmpwi r3, 0
/* 805BB930  40 82 00 4C */	bne lbl_805BB97C
/* 805BB934  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB938  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB93C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 805BB940  4B D6 CA EC */	b checkPass__12J3DFrameCtrlFf
/* 805BB944  2C 03 00 00 */	cmpwi r3, 0
/* 805BB948  40 82 00 34 */	bne lbl_805BB97C
/* 805BB94C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB950  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB954  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 805BB958  4B D6 CA D4 */	b checkPass__12J3DFrameCtrlFf
/* 805BB95C  2C 03 00 00 */	cmpwi r3, 0
/* 805BB960  40 82 00 1C */	bne lbl_805BB97C
/* 805BB964  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB968  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB96C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805BB970  4B D6 CA BC */	b checkPass__12J3DFrameCtrlFf
/* 805BB974  2C 03 00 00 */	cmpwi r3, 0
/* 805BB978  41 82 05 FC */	beq lbl_805BBF74
lbl_805BB97C:
/* 805BB97C  3B C0 00 01 */	li r30, 1
/* 805BB980  48 00 05 F4 */	b lbl_805BBF74
lbl_805BB984:
/* 805BB984  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB988  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB98C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BB990  4B D6 CA 9C */	b checkPass__12J3DFrameCtrlFf
/* 805BB994  2C 03 00 00 */	cmpwi r3, 0
/* 805BB998  41 82 00 30 */	beq lbl_805BB9C8
/* 805BB99C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047D@ha */
/* 805BB9A0  38 03 04 7D */	addi r0, r3, 0x047D /* 0x0007047D@l */
/* 805BB9A4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805BB9A8  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BB9AC  38 81 00 2C */	addi r4, r1, 0x2c
/* 805BB9B0  38 A0 00 00 */	li r5, 0
/* 805BB9B4  38 C0 FF FF */	li r6, -1
/* 805BB9B8  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BB9BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805BB9C0  7D 89 03 A6 */	mtctr r12
/* 805BB9C4  4E 80 04 21 */	bctrl 
lbl_805BB9C8:
/* 805BB9C8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB9CC  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB9D0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 805BB9D4  4B D6 CA 58 */	b checkPass__12J3DFrameCtrlFf
/* 805BB9D8  2C 03 00 00 */	cmpwi r3, 0
/* 805BB9DC  40 82 00 C4 */	bne lbl_805BBAA0
/* 805BB9E0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB9E4  38 63 00 0C */	addi r3, r3, 0xc
/* 805BB9E8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 805BB9EC  4B D6 CA 40 */	b checkPass__12J3DFrameCtrlFf
/* 805BB9F0  2C 03 00 00 */	cmpwi r3, 0
/* 805BB9F4  40 82 00 AC */	bne lbl_805BBAA0
/* 805BB9F8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BB9FC  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBA00  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 805BBA04  4B D6 CA 28 */	b checkPass__12J3DFrameCtrlFf
/* 805BBA08  2C 03 00 00 */	cmpwi r3, 0
/* 805BBA0C  40 82 00 94 */	bne lbl_805BBAA0
/* 805BBA10  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBA14  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBA18  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 805BBA1C  4B D6 CA 10 */	b checkPass__12J3DFrameCtrlFf
/* 805BBA20  2C 03 00 00 */	cmpwi r3, 0
/* 805BBA24  40 82 00 7C */	bne lbl_805BBAA0
/* 805BBA28  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBA2C  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBA30  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 805BBA34  4B D6 C9 F8 */	b checkPass__12J3DFrameCtrlFf
/* 805BBA38  2C 03 00 00 */	cmpwi r3, 0
/* 805BBA3C  40 82 00 64 */	bne lbl_805BBAA0
/* 805BBA40  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBA44  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBA48  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 805BBA4C  4B D6 C9 E0 */	b checkPass__12J3DFrameCtrlFf
/* 805BBA50  2C 03 00 00 */	cmpwi r3, 0
/* 805BBA54  40 82 00 4C */	bne lbl_805BBAA0
/* 805BBA58  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBA5C  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBA60  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805BBA64  4B D6 C9 C8 */	b checkPass__12J3DFrameCtrlFf
/* 805BBA68  2C 03 00 00 */	cmpwi r3, 0
/* 805BBA6C  40 82 00 34 */	bne lbl_805BBAA0
/* 805BBA70  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBA74  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBA78  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 805BBA7C  4B D6 C9 B0 */	b checkPass__12J3DFrameCtrlFf
/* 805BBA80  2C 03 00 00 */	cmpwi r3, 0
/* 805BBA84  40 82 00 1C */	bne lbl_805BBAA0
/* 805BBA88  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBA8C  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBA90  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 805BBA94  4B D6 C9 98 */	b checkPass__12J3DFrameCtrlFf
/* 805BBA98  2C 03 00 00 */	cmpwi r3, 0
/* 805BBA9C  41 82 04 D8 */	beq lbl_805BBF74
lbl_805BBAA0:
/* 805BBAA0  3B C0 00 01 */	li r30, 1
/* 805BBAA4  48 00 04 D0 */	b lbl_805BBF74
lbl_805BBAA8:
/* 805BBAA8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBAAC  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBAB0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BBAB4  4B D6 C9 78 */	b checkPass__12J3DFrameCtrlFf
/* 805BBAB8  2C 03 00 00 */	cmpwi r3, 0
/* 805BBABC  41 82 04 B8 */	beq lbl_805BBF74
/* 805BBAC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047F@ha */
/* 805BBAC4  38 03 04 7F */	addi r0, r3, 0x047F /* 0x0007047F@l */
/* 805BBAC8  90 01 00 28 */	stw r0, 0x28(r1)
/* 805BBACC  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BBAD0  38 81 00 28 */	addi r4, r1, 0x28
/* 805BBAD4  38 A0 FF FF */	li r5, -1
/* 805BBAD8  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BBADC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805BBAE0  7D 89 03 A6 */	mtctr r12
/* 805BBAE4  4E 80 04 21 */	bctrl 
/* 805BBAE8  48 00 04 8C */	b lbl_805BBF74
lbl_805BBAEC:
/* 805BBAEC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBAF0  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBAF4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BBAF8  4B D6 C9 34 */	b checkPass__12J3DFrameCtrlFf
/* 805BBAFC  2C 03 00 00 */	cmpwi r3, 0
/* 805BBB00  41 82 04 74 */	beq lbl_805BBF74
/* 805BBB04  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070480@ha */
/* 805BBB08  38 03 04 80 */	addi r0, r3, 0x0480 /* 0x00070480@l */
/* 805BBB0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BBB10  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BBB14  38 81 00 24 */	addi r4, r1, 0x24
/* 805BBB18  38 A0 FF FF */	li r5, -1
/* 805BBB1C  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BBB20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805BBB24  7D 89 03 A6 */	mtctr r12
/* 805BBB28  4E 80 04 21 */	bctrl 
/* 805BBB2C  48 00 04 48 */	b lbl_805BBF74
lbl_805BBB30:
/* 805BBB30  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070482@ha */
/* 805BBB34  38 03 04 82 */	addi r0, r3, 0x0482 /* 0x00070482@l */
/* 805BBB38  90 01 00 20 */	stw r0, 0x20(r1)
/* 805BBB3C  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BBB40  38 81 00 20 */	addi r4, r1, 0x20
/* 805BBB44  38 A0 00 00 */	li r5, 0
/* 805BBB48  38 C0 FF FF */	li r6, -1
/* 805BBB4C  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BBB50  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805BBB54  7D 89 03 A6 */	mtctr r12
/* 805BBB58  4E 80 04 21 */	bctrl 
/* 805BBB5C  48 00 04 18 */	b lbl_805BBF74
lbl_805BBB60:
/* 805BBB60  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047B@ha */
/* 805BBB64  38 03 04 7B */	addi r0, r3, 0x047B /* 0x0007047B@l */
/* 805BBB68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805BBB6C  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BBB70  38 81 00 1C */	addi r4, r1, 0x1c
/* 805BBB74  38 A0 00 00 */	li r5, 0
/* 805BBB78  38 C0 FF FF */	li r6, -1
/* 805BBB7C  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BBB80  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805BBB84  7D 89 03 A6 */	mtctr r12
/* 805BBB88  4E 80 04 21 */	bctrl 
/* 805BBB8C  48 00 03 E8 */	b lbl_805BBF74
lbl_805BBB90:
/* 805BBB90  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBB94  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBB98  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805BBB9C  4B D6 C8 90 */	b checkPass__12J3DFrameCtrlFf
/* 805BBBA0  2C 03 00 00 */	cmpwi r3, 0
/* 805BBBA4  41 82 00 20 */	beq lbl_805BBBC4
/* 805BBBA8  88 1D 07 DA */	lbz r0, 0x7da(r29)
/* 805BBBAC  28 00 00 00 */	cmplwi r0, 0
/* 805BBBB0  40 82 03 C4 */	bne lbl_805BBF74
/* 805BBBB4  3B C0 00 01 */	li r30, 1
/* 805BBBB8  38 00 00 01 */	li r0, 1
/* 805BBBBC  98 1D 07 DA */	stb r0, 0x7da(r29)
/* 805BBBC0  48 00 03 B4 */	b lbl_805BBF74
lbl_805BBBC4:
/* 805BBBC4  38 00 00 00 */	li r0, 0
/* 805BBBC8  98 1D 07 DA */	stb r0, 0x7da(r29)
/* 805BBBCC  48 00 03 A8 */	b lbl_805BBF74
lbl_805BBBD0:
/* 805BBBD0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBBD4  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBBD8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BBBDC  4B D6 C8 50 */	b checkPass__12J3DFrameCtrlFf
/* 805BBBE0  2C 03 00 00 */	cmpwi r3, 0
/* 805BBBE4  41 82 00 2C */	beq lbl_805BBC10
/* 805BBBE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704DD@ha */
/* 805BBBEC  38 03 04 DD */	addi r0, r3, 0x04DD /* 0x000704DD@l */
/* 805BBBF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BBBF4  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BBBF8  38 81 00 18 */	addi r4, r1, 0x18
/* 805BBBFC  38 A0 FF FF */	li r5, -1
/* 805BBC00  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BBC04  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805BBC08  7D 89 03 A6 */	mtctr r12
/* 805BBC0C  4E 80 04 21 */	bctrl 
lbl_805BBC10:
/* 805BBC10  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBC14  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBC18  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805BBC1C  4B D6 C8 10 */	b checkPass__12J3DFrameCtrlFf
/* 805BBC20  2C 03 00 00 */	cmpwi r3, 0
/* 805BBC24  41 82 03 50 */	beq lbl_805BBF74
/* 805BBC28  3B C0 00 01 */	li r30, 1
/* 805BBC2C  48 00 03 48 */	b lbl_805BBF74
lbl_805BBC30:
/* 805BBC30  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBC34  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBC38  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 805BBC3C  4B D6 C7 F0 */	b checkPass__12J3DFrameCtrlFf
/* 805BBC40  2C 03 00 00 */	cmpwi r3, 0
/* 805BBC44  41 82 00 2C */	beq lbl_805BBC70
/* 805BBC48  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704DD@ha */
/* 805BBC4C  38 03 04 DD */	addi r0, r3, 0x04DD /* 0x000704DD@l */
/* 805BBC50  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BBC54  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BBC58  38 81 00 14 */	addi r4, r1, 0x14
/* 805BBC5C  38 A0 FF FF */	li r5, -1
/* 805BBC60  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BBC64  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805BBC68  7D 89 03 A6 */	mtctr r12
/* 805BBC6C  4E 80 04 21 */	bctrl 
lbl_805BBC70:
/* 805BBC70  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBC74  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBC78  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 805BBC7C  4B D6 C7 B0 */	b checkPass__12J3DFrameCtrlFf
/* 805BBC80  2C 03 00 00 */	cmpwi r3, 0
/* 805BBC84  40 82 00 34 */	bne lbl_805BBCB8
/* 805BBC88  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBC8C  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBC90  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 805BBC94  4B D6 C7 98 */	b checkPass__12J3DFrameCtrlFf
/* 805BBC98  2C 03 00 00 */	cmpwi r3, 0
/* 805BBC9C  40 82 00 1C */	bne lbl_805BBCB8
/* 805BBCA0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBCA4  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBCA8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 805BBCAC  4B D6 C7 80 */	b checkPass__12J3DFrameCtrlFf
/* 805BBCB0  2C 03 00 00 */	cmpwi r3, 0
/* 805BBCB4  41 82 00 2C */	beq lbl_805BBCE0
lbl_805BBCB8:
/* 805BBCB8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704DE@ha */
/* 805BBCBC  38 03 04 DE */	addi r0, r3, 0x04DE /* 0x000704DE@l */
/* 805BBCC0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BBCC4  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BBCC8  38 81 00 10 */	addi r4, r1, 0x10
/* 805BBCCC  38 A0 FF FF */	li r5, -1
/* 805BBCD0  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BBCD4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805BBCD8  7D 89 03 A6 */	mtctr r12
/* 805BBCDC  4E 80 04 21 */	bctrl 
lbl_805BBCE0:
/* 805BBCE0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBCE4  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBCE8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 805BBCEC  4B D6 C7 40 */	b checkPass__12J3DFrameCtrlFf
/* 805BBCF0  2C 03 00 00 */	cmpwi r3, 0
/* 805BBCF4  40 82 00 64 */	bne lbl_805BBD58
/* 805BBCF8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBCFC  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBD00  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 805BBD04  4B D6 C7 28 */	b checkPass__12J3DFrameCtrlFf
/* 805BBD08  2C 03 00 00 */	cmpwi r3, 0
/* 805BBD0C  40 82 00 4C */	bne lbl_805BBD58
/* 805BBD10  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBD14  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBD18  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 805BBD1C  4B D6 C7 10 */	b checkPass__12J3DFrameCtrlFf
/* 805BBD20  2C 03 00 00 */	cmpwi r3, 0
/* 805BBD24  40 82 00 34 */	bne lbl_805BBD58
/* 805BBD28  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBD2C  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBD30  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 805BBD34  4B D6 C6 F8 */	b checkPass__12J3DFrameCtrlFf
/* 805BBD38  2C 03 00 00 */	cmpwi r3, 0
/* 805BBD3C  40 82 00 1C */	bne lbl_805BBD58
/* 805BBD40  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBD44  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBD48  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 805BBD4C  4B D6 C6 E0 */	b checkPass__12J3DFrameCtrlFf
/* 805BBD50  2C 03 00 00 */	cmpwi r3, 0
/* 805BBD54  41 82 02 20 */	beq lbl_805BBF74
lbl_805BBD58:
/* 805BBD58  3B C0 00 01 */	li r30, 1
/* 805BBD5C  48 00 02 18 */	b lbl_805BBF74
lbl_805BBD60:
/* 805BBD60  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBD64  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBD68  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BBD6C  4B D6 C6 C0 */	b checkPass__12J3DFrameCtrlFf
/* 805BBD70  2C 03 00 00 */	cmpwi r3, 0
/* 805BBD74  41 82 00 2C */	beq lbl_805BBDA0
/* 805BBD78  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704DE@ha */
/* 805BBD7C  38 03 04 DE */	addi r0, r3, 0x04DE /* 0x000704DE@l */
/* 805BBD80  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BBD84  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BBD88  38 81 00 0C */	addi r4, r1, 0xc
/* 805BBD8C  38 A0 FF FF */	li r5, -1
/* 805BBD90  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BBD94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805BBD98  7D 89 03 A6 */	mtctr r12
/* 805BBD9C  4E 80 04 21 */	bctrl 
lbl_805BBDA0:
/* 805BBDA0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBDA4  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBDA8  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 805BBDAC  4B D6 C6 80 */	b checkPass__12J3DFrameCtrlFf
/* 805BBDB0  2C 03 00 00 */	cmpwi r3, 0
/* 805BBDB4  40 82 00 1C */	bne lbl_805BBDD0
/* 805BBDB8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBDBC  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBDC0  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 805BBDC4  4B D6 C6 68 */	b checkPass__12J3DFrameCtrlFf
/* 805BBDC8  2C 03 00 00 */	cmpwi r3, 0
/* 805BBDCC  41 82 01 A8 */	beq lbl_805BBF74
lbl_805BBDD0:
/* 805BBDD0  3B C0 00 01 */	li r30, 1
/* 805BBDD4  48 00 01 A0 */	b lbl_805BBF74
lbl_805BBDD8:
/* 805BBDD8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBDDC  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBDE0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805BBDE4  4B D6 C6 48 */	b checkPass__12J3DFrameCtrlFf
/* 805BBDE8  2C 03 00 00 */	cmpwi r3, 0
/* 805BBDEC  41 82 01 88 */	beq lbl_805BBF74
/* 805BBDF0  3B C0 00 01 */	li r30, 1
/* 805BBDF4  48 00 01 80 */	b lbl_805BBF74
lbl_805BBDF8:
/* 805BBDF8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBDFC  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBE00  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 805BBE04  4B D6 C6 28 */	b checkPass__12J3DFrameCtrlFf
/* 805BBE08  2C 03 00 00 */	cmpwi r3, 0
/* 805BBE0C  41 82 01 68 */	beq lbl_805BBF74
/* 805BBE10  3B C0 00 01 */	li r30, 1
/* 805BBE14  48 00 01 60 */	b lbl_805BBF74
lbl_805BBE18:
/* 805BBE18  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBE1C  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBE20  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 805BBE24  4B D6 C6 08 */	b checkPass__12J3DFrameCtrlFf
/* 805BBE28  2C 03 00 00 */	cmpwi r3, 0
/* 805BBE2C  40 82 00 1C */	bne lbl_805BBE48
/* 805BBE30  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBE34  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBE38  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 805BBE3C  4B D6 C5 F0 */	b checkPass__12J3DFrameCtrlFf
/* 805BBE40  2C 03 00 00 */	cmpwi r3, 0
/* 805BBE44  41 82 01 30 */	beq lbl_805BBF74
lbl_805BBE48:
/* 805BBE48  3B C0 00 01 */	li r30, 1
/* 805BBE4C  48 00 01 28 */	b lbl_805BBF74
lbl_805BBE50:
/* 805BBE50  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBE54  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBE58  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 805BBE5C  4B D6 C5 D0 */	b checkPass__12J3DFrameCtrlFf
/* 805BBE60  2C 03 00 00 */	cmpwi r3, 0
/* 805BBE64  41 82 01 10 */	beq lbl_805BBF74
/* 805BBE68  3B C0 00 01 */	li r30, 1
/* 805BBE6C  48 00 01 08 */	b lbl_805BBF74
lbl_805BBE70:
/* 805BBE70  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBE74  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBE78  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 805BBE7C  4B D6 C5 B0 */	b checkPass__12J3DFrameCtrlFf
/* 805BBE80  2C 03 00 00 */	cmpwi r3, 0
/* 805BBE84  41 82 00 F0 */	beq lbl_805BBF74
/* 805BBE88  3B C0 00 01 */	li r30, 1
/* 805BBE8C  48 00 00 E8 */	b lbl_805BBF74
lbl_805BBE90:
/* 805BBE90  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBE94  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBE98  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 805BBE9C  4B D6 C5 90 */	b checkPass__12J3DFrameCtrlFf
/* 805BBEA0  2C 03 00 00 */	cmpwi r3, 0
/* 805BBEA4  41 82 00 D0 */	beq lbl_805BBF74
/* 805BBEA8  3B C0 00 01 */	li r30, 1
/* 805BBEAC  48 00 00 C8 */	b lbl_805BBF74
lbl_805BBEB0:
/* 805BBEB0  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBEB4  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBEB8  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805BBEBC  4B D6 C5 70 */	b checkPass__12J3DFrameCtrlFf
/* 805BBEC0  2C 03 00 00 */	cmpwi r3, 0
/* 805BBEC4  40 82 00 1C */	bne lbl_805BBEE0
/* 805BBEC8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBECC  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBED0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 805BBED4  4B D6 C5 58 */	b checkPass__12J3DFrameCtrlFf
/* 805BBED8  2C 03 00 00 */	cmpwi r3, 0
/* 805BBEDC  41 82 00 98 */	beq lbl_805BBF74
lbl_805BBEE0:
/* 805BBEE0  3B C0 00 01 */	li r30, 1
/* 805BBEE4  48 00 00 90 */	b lbl_805BBF74
lbl_805BBEE8:
/* 805BBEE8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBEEC  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBEF0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805BBEF4  4B D6 C5 38 */	b checkPass__12J3DFrameCtrlFf
/* 805BBEF8  2C 03 00 00 */	cmpwi r3, 0
/* 805BBEFC  40 82 00 1C */	bne lbl_805BBF18
/* 805BBF00  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBF04  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBF08  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 805BBF0C  4B D6 C5 20 */	b checkPass__12J3DFrameCtrlFf
/* 805BBF10  2C 03 00 00 */	cmpwi r3, 0
/* 805BBF14  41 82 00 60 */	beq lbl_805BBF74
lbl_805BBF18:
/* 805BBF18  3B C0 00 01 */	li r30, 1
/* 805BBF1C  48 00 00 58 */	b lbl_805BBF74
lbl_805BBF20:
/* 805BBF20  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBF24  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBF28  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 805BBF2C  4B D6 C5 00 */	b checkPass__12J3DFrameCtrlFf
/* 805BBF30  2C 03 00 00 */	cmpwi r3, 0
/* 805BBF34  40 82 00 1C */	bne lbl_805BBF50
/* 805BBF38  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBF3C  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBF40  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 805BBF44  4B D6 C4 E8 */	b checkPass__12J3DFrameCtrlFf
/* 805BBF48  2C 03 00 00 */	cmpwi r3, 0
/* 805BBF4C  41 82 00 28 */	beq lbl_805BBF74
lbl_805BBF50:
/* 805BBF50  3B C0 00 01 */	li r30, 1
/* 805BBF54  48 00 00 20 */	b lbl_805BBF74
lbl_805BBF58:
/* 805BBF58  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BBF5C  38 63 00 0C */	addi r3, r3, 0xc
/* 805BBF60  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 805BBF64  4B D6 C4 C8 */	b checkPass__12J3DFrameCtrlFf
/* 805BBF68  2C 03 00 00 */	cmpwi r3, 0
/* 805BBF6C  41 82 00 08 */	beq lbl_805BBF74
/* 805BBF70  3B C0 00 01 */	li r30, 1
lbl_805BBF74:
/* 805BBF74  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 805BBF78  41 82 00 30 */	beq lbl_805BBFA8
/* 805BBF7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047A@ha */
/* 805BBF80  38 03 04 7A */	addi r0, r3, 0x047A /* 0x0007047A@l */
/* 805BBF84  90 01 00 08 */	stw r0, 8(r1)
/* 805BBF88  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BBF8C  38 81 00 08 */	addi r4, r1, 8
/* 805BBF90  38 A0 00 00 */	li r5, 0
/* 805BBF94  38 C0 FF FF */	li r6, -1
/* 805BBF98  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BBF9C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805BBFA0  7D 89 03 A6 */	mtctr r12
/* 805BBFA4  4E 80 04 21 */	bctrl 
lbl_805BBFA8:
/* 805BBFA8  39 61 00 50 */	addi r11, r1, 0x50
/* 805BBFAC  4B DA 62 7C */	b _restgpr_29
/* 805BBFB0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805BBFB4  7C 08 03 A6 */	mtlr r0
/* 805BBFB8  38 21 00 50 */	addi r1, r1, 0x50
/* 805BBFBC  4E 80 00 20 */	blr 
