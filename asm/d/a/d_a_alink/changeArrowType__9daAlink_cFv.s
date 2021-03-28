lbl_800DEBC8:
/* 800DEBC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DEBCC  7C 08 02 A6 */	mflr r0
/* 800DEBD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DEBD4  39 61 00 20 */	addi r11, r1, 0x20
/* 800DEBD8  48 28 36 05 */	bl _savegpr_29
/* 800DEBDC  7C 7F 1B 78 */	mr r31, r3
/* 800DEBE0  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 800DEBE4  28 00 00 2D */	cmplwi r0, 0x2d
/* 800DEBE8  41 82 01 88 */	beq lbl_800DED70
/* 800DEBEC  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800DEBF0  28 03 00 43 */	cmplwi r3, 0x43
/* 800DEBF4  40 82 00 10 */	bne lbl_800DEC04
/* 800DEBF8  A8 1F 30 1E */	lha r0, 0x301e(r31)
/* 800DEBFC  2C 00 00 00 */	cmpwi r0, 0
/* 800DEC00  41 82 01 70 */	beq lbl_800DED70
lbl_800DEC04:
/* 800DEC04  28 03 00 59 */	cmplwi r3, 0x59
/* 800DEC08  40 82 00 20 */	bne lbl_800DEC28
/* 800DEC0C  A8 1F 30 1E */	lha r0, 0x301e(r31)
/* 800DEC10  2C 00 00 00 */	cmpwi r0, 0
/* 800DEC14  40 82 00 14 */	bne lbl_800DEC28
/* 800DEC18  88 7F 2F 9C */	lbz r3, 0x2f9c(r31)
/* 800DEC1C  4B F4 F9 A5 */	bl dComIfGp_getSelectItemNum__Fi
/* 800DEC20  7C 60 07 35 */	extsh. r0, r3
/* 800DEC24  41 82 01 4C */	beq lbl_800DED70
lbl_800DEC28:
/* 800DEC28  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DEC2C  28 00 00 5A */	cmplwi r0, 0x5a
/* 800DEC30  40 82 00 38 */	bne lbl_800DEC68
/* 800DEC34  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 800DEC38  3B A0 00 01 */	li r29, 1
/* 800DEC3C  7F C3 F3 78 */	mr r3, r30
/* 800DEC40  4B F9 4B A5 */	bl LockonTruth__12dAttention_cFv
/* 800DEC44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DEC48  40 82 00 14 */	bne lbl_800DEC5C
/* 800DEC4C  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 800DEC50  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800DEC54  40 82 00 08 */	bne lbl_800DEC5C
/* 800DEC58  3B A0 00 00 */	li r29, 0
lbl_800DEC5C:
/* 800DEC5C  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800DEC60  41 82 00 08 */	beq lbl_800DEC68
/* 800DEC64  48 00 01 0C */	b lbl_800DED70
lbl_800DEC68:
/* 800DEC68  7F E3 FB 78 */	mr r3, r31
/* 800DEC6C  38 80 00 11 */	li r4, 0x11
/* 800DEC70  4B FD 3A 6D */	bl setItemActionButtonStatus__9daAlink_cFUc
/* 800DEC74  7F E3 FB 78 */	mr r3, r31
/* 800DEC78  4B FD 3A 85 */	bl itemActionTrigger__9daAlink_cFv
/* 800DEC7C  2C 03 00 00 */	cmpwi r3, 0
/* 800DEC80  41 82 00 F0 */	beq lbl_800DED70
/* 800DEC84  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800DEC88  28 00 00 5A */	cmplwi r0, 0x5a
/* 800DEC8C  40 82 00 A0 */	bne lbl_800DED2C
/* 800DEC90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DEC94  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800DEC98  80 64 5F 18 */	lwz r3, 0x5f18(r4)
/* 800DEC9C  54 60 02 95 */	rlwinm. r0, r3, 0, 0xa, 0xa
/* 800DECA0  41 82 00 48 */	beq lbl_800DECE8
/* 800DECA4  54 60 02 D2 */	rlwinm r0, r3, 0, 0xb, 9
/* 800DECA8  90 04 5F 18 */	stw r0, 0x5f18(r4)
/* 800DECAC  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200B6@ha */
/* 800DECB0  38 03 00 B6 */	addi r0, r3, 0x00B6 /* 0x000200B6@l */
/* 800DECB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 800DECB8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800DECBC  38 81 00 0C */	addi r4, r1, 0xc
/* 800DECC0  38 A0 00 00 */	li r5, 0
/* 800DECC4  38 C0 00 00 */	li r6, 0
/* 800DECC8  38 E0 00 00 */	li r7, 0
/* 800DECCC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800DECD0  FC 40 08 90 */	fmr f2, f1
/* 800DECD4  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800DECD8  FC 80 18 90 */	fmr f4, f3
/* 800DECDC  39 00 00 00 */	li r8, 0
/* 800DECE0  48 1C CC A5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 800DECE4  48 00 00 8C */	b lbl_800DED70
lbl_800DECE8:
/* 800DECE8  64 60 00 20 */	oris r0, r3, 0x20
/* 800DECEC  90 04 5F 18 */	stw r0, 0x5f18(r4)
/* 800DECF0  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200B5@ha */
/* 800DECF4  38 03 00 B5 */	addi r0, r3, 0x00B5 /* 0x000200B5@l */
/* 800DECF8  90 01 00 08 */	stw r0, 8(r1)
/* 800DECFC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800DED00  38 81 00 08 */	addi r4, r1, 8
/* 800DED04  38 A0 00 00 */	li r5, 0
/* 800DED08  38 C0 00 00 */	li r6, 0
/* 800DED0C  38 E0 00 00 */	li r7, 0
/* 800DED10  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800DED14  FC 40 08 90 */	fmr f2, f1
/* 800DED18  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800DED1C  FC 80 18 90 */	fmr f4, f3
/* 800DED20  39 00 00 00 */	li r8, 0
/* 800DED24  48 1C CC 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 800DED28  48 00 00 48 */	b lbl_800DED70
lbl_800DED2C:
/* 800DED2C  A8 1F 30 1E */	lha r0, 0x301e(r31)
/* 800DED30  2C 00 00 01 */	cmpwi r0, 1
/* 800DED34  40 82 00 10 */	bne lbl_800DED44
/* 800DED38  38 00 00 00 */	li r0, 0
/* 800DED3C  B0 1F 30 1E */	sth r0, 0x301e(r31)
/* 800DED40  48 00 00 0C */	b lbl_800DED4C
lbl_800DED44:
/* 800DED44  38 00 00 01 */	li r0, 1
/* 800DED48  B0 1F 30 1E */	sth r0, 0x301e(r31)
lbl_800DED4C:
/* 800DED4C  80 1F 28 28 */	lwz r0, 0x2828(r31)
/* 800DED50  28 00 00 00 */	cmplwi r0, 0
/* 800DED54  41 82 00 1C */	beq lbl_800DED70
/* 800DED58  7F E3 FB 78 */	mr r3, r31
/* 800DED5C  4B FF FD 89 */	bl deleteArrow__9daAlink_cFv
/* 800DED60  7F E3 FB 78 */	mr r3, r31
/* 800DED64  4B FF FC D9 */	bl makeArrow__9daAlink_cFv
/* 800DED68  7F E3 FB 78 */	mr r3, r31
/* 800DED6C  48 00 02 4D */	bl setBowReloadAnime__9daAlink_cFv
lbl_800DED70:
/* 800DED70  39 61 00 20 */	addi r11, r1, 0x20
/* 800DED74  48 28 34 B5 */	bl _restgpr_29
/* 800DED78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DED7C  7C 08 03 A6 */	mtlr r0
/* 800DED80  38 21 00 20 */	addi r1, r1, 0x20
/* 800DED84  4E 80 00 20 */	blr 
