lbl_8013C3E4:
/* 8013C3E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013C3E8  7C 08 02 A6 */	mflr r0
/* 8013C3EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8013C3F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8013C3F4  48 22 5D E5 */	bl _savegpr_28
/* 8013C3F8  7C 7F 1B 78 */	mr r31, r3
/* 8013C3FC  3B A0 00 00 */	li r29, 0
/* 8013C400  3B 80 00 00 */	li r28, 0
/* 8013C404  3B C0 00 00 */	li r30, 0
lbl_8013C408:
/* 8013C408  7F E3 FB 78 */	mr r3, r31
/* 8013C40C  38 9E 08 50 */	addi r4, r30, 0x850
/* 8013C410  7C 9F 22 14 */	add r4, r31, r4
/* 8013C414  4B F9 55 0D */	bl checkAtShieldHit__9daAlink_cFR12dCcD_GObjInf
/* 8013C418  2C 03 00 00 */	cmpwi r3, 0
/* 8013C41C  41 82 00 0C */	beq lbl_8013C428
/* 8013C420  3B A0 00 01 */	li r29, 1
/* 8013C424  48 00 00 14 */	b lbl_8013C438
lbl_8013C428:
/* 8013C428  3B 9C 00 01 */	addi r28, r28, 1
/* 8013C42C  2C 1C 00 03 */	cmpwi r28, 3
/* 8013C430  3B DE 01 3C */	addi r30, r30, 0x13c
/* 8013C434  41 80 FF D4 */	blt lbl_8013C408
lbl_8013C438:
/* 8013C438  2C 1D 00 00 */	cmpwi r29, 0
/* 8013C43C  40 82 00 40 */	bne lbl_8013C47C
/* 8013C440  7F E3 FB 78 */	mr r3, r31
/* 8013C444  38 9F 10 F0 */	addi r4, r31, 0x10f0
/* 8013C448  4B F9 54 D9 */	bl checkAtShieldHit__9daAlink_cFR12dCcD_GObjInf
/* 8013C44C  2C 03 00 00 */	cmpwi r3, 0
/* 8013C450  41 82 00 50 */	beq lbl_8013C4A0
/* 8013C454  3B DF 11 48 */	addi r30, r31, 0x1148
/* 8013C458  7F C3 F3 78 */	mr r3, r30
/* 8013C45C  4B F4 72 2D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8013C460  28 03 00 00 */	cmplwi r3, 0
/* 8013C464  41 82 00 18 */	beq lbl_8013C47C
/* 8013C468  7F C3 F3 78 */	mr r3, r30
/* 8013C46C  4B F4 72 1D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 8013C470  A8 03 00 08 */	lha r0, 8(r3)
/* 8013C474  2C 00 01 E5 */	cmpwi r0, 0x1e5
/* 8013C478  41 82 00 28 */	beq lbl_8013C4A0
lbl_8013C47C:
/* 8013C47C  7F E3 FB 78 */	mr r3, r31
/* 8013C480  38 80 FF FC */	li r4, -4
/* 8013C484  38 A0 00 01 */	li r5, 1
/* 8013C488  38 C0 00 00 */	li r6, 0
/* 8013C48C  38 E0 00 00 */	li r7, 0
/* 8013C490  39 00 00 00 */	li r8, 0
/* 8013C494  39 20 00 02 */	li r9, 2
/* 8013C498  4B F9 D2 45 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 8013C49C  48 00 01 7C */	b lbl_8013C618
lbl_8013C4A0:
/* 8013C4A0  7F E3 FB 78 */	mr r3, r31
/* 8013C4A4  38 80 00 01 */	li r4, 1
/* 8013C4A8  4B FE DD 81 */	bl checkWolfAttackReverse__9daAlink_cFi
/* 8013C4AC  2C 03 00 00 */	cmpwi r3, 0
/* 8013C4B0  41 82 00 0C */	beq lbl_8013C4BC
/* 8013C4B4  38 60 00 01 */	li r3, 1
/* 8013C4B8  48 00 01 60 */	b lbl_8013C618
lbl_8013C4BC:
/* 8013C4BC  A8 7F 30 08 */	lha r3, 0x3008(r31)
/* 8013C4C0  2C 03 00 00 */	cmpwi r3, 0
/* 8013C4C4  41 82 00 38 */	beq lbl_8013C4FC
/* 8013C4C8  38 03 FF FF */	addi r0, r3, -1
/* 8013C4CC  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8013C4D0  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 8013C4D4  2C 00 00 00 */	cmpwi r0, 0
/* 8013C4D8  40 82 00 48 */	bne lbl_8013C520
/* 8013C4DC  7F E3 FB 78 */	mr r3, r31
/* 8013C4E0  3C 80 80 39 */	lis r4, m__22daAlinkHIO_wlAtLock_c0@ha
/* 8013C4E4  38 84 F6 F4 */	addi r4, r4, m__22daAlinkHIO_wlAtLock_c0@l
/* 8013C4E8  C0 24 00 48 */	lfs f1, 0x48(r4)
/* 8013C4EC  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8013C4F0  38 80 00 00 */	li r4, 0
/* 8013C4F4  4B F7 F2 7D */	bl setSpecialGravity__9daAlink_cFffi
/* 8013C4F8  48 00 00 28 */	b lbl_8013C520
lbl_8013C4FC:
/* 8013C4FC  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 8013C500  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 8013C504  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8013C508  40 81 00 18 */	ble lbl_8013C520
/* 8013C50C  38 7F 33 98 */	addi r3, r31, 0x3398
/* 8013C510  C0 42 94 A8 */	lfs f2, lit_16570(r2)
/* 8013C514  C0 62 93 3C */	lfs f3, lit_7808(r2)
/* 8013C518  C0 82 92 B8 */	lfs f4, lit_6040(r2)
/* 8013C51C  48 13 34 61 */	bl cLib_addCalc__FPfffff
lbl_8013C520:
/* 8013C520  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8013C524  48 02 1F A9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013C528  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013C52C  41 82 00 34 */	beq lbl_8013C560
/* 8013C530  7F E3 FB 78 */	mr r3, r31
/* 8013C534  38 80 00 50 */	li r4, 0x50
/* 8013C538  4B FE C2 D5 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8013C53C  2C 03 00 00 */	cmpwi r3, 0
/* 8013C540  41 82 00 20 */	beq lbl_8013C560
/* 8013C544  7F E3 FB 78 */	mr r3, r31
/* 8013C548  38 80 00 51 */	li r4, 0x51
/* 8013C54C  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlAtNjump_c0@ha
/* 8013C550  38 A5 F5 78 */	addi r5, r5, m__23daAlinkHIO_wlAtNjump_c0@l
/* 8013C554  C0 25 00 24 */	lfs f1, 0x24(r5)
/* 8013C558  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 8013C55C  4B FE D1 7D */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
lbl_8013C560:
/* 8013C560  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8013C564  54 03 06 B5 */	rlwinm. r3, r0, 0, 0x1a, 0x1a
/* 8013C568  40 82 00 20 */	bne lbl_8013C588
/* 8013C56C  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8013C570  2C 00 00 00 */	cmpwi r0, 0
/* 8013C574  41 82 00 74 */	beq lbl_8013C5E8
/* 8013C578  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8013C57C  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 8013C580  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013C584  40 80 00 64 */	bge lbl_8013C5E8
lbl_8013C588:
/* 8013C588  28 03 00 00 */	cmplwi r3, 0
/* 8013C58C  40 82 00 0C */	bne lbl_8013C598
/* 8013C590  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 8013C594  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_8013C598:
/* 8013C598  88 1F 2F B1 */	lbz r0, 0x2fb1(r31)
/* 8013C59C  28 00 00 00 */	cmplwi r0, 0
/* 8013C5A0  41 82 00 14 */	beq lbl_8013C5B4
/* 8013C5A4  7F E3 FB 78 */	mr r3, r31
/* 8013C5A8  A8 9F 30 0A */	lha r4, 0x300a(r31)
/* 8013C5AC  48 00 00 85 */	bl procWolfLockAttackTurnInit__9daAlink_cFi
/* 8013C5B0  48 00 00 64 */	b lbl_8013C614
lbl_8013C5B4:
/* 8013C5B4  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 8013C5B8  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlAtNjump_c0@ha
/* 8013C5BC  38 63 F5 78 */	addi r3, r3, m__23daAlinkHIO_wlAtNjump_c0@l
/* 8013C5C0  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8013C5C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8013C5C8  40 81 00 08 */	ble lbl_8013C5D0
/* 8013C5CC  D0 3F 33 98 */	stfs f1, 0x3398(r31)
lbl_8013C5D0:
/* 8013C5D0  7F E3 FB 78 */	mr r3, r31
/* 8013C5D4  38 80 00 00 */	li r4, 0
/* 8013C5D8  38 A0 00 00 */	li r5, 0
/* 8013C5DC  38 C0 00 00 */	li r6, 0
/* 8013C5E0  4B FF E3 1D */	bl procWolfJumpAttackSlideLandInit__9daAlink_cFiii
/* 8013C5E4  48 00 00 30 */	b lbl_8013C614
lbl_8013C5E8:
/* 8013C5E8  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020017@ha */
/* 8013C5EC  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00020017@l */
/* 8013C5F0  90 01 00 08 */	stw r0, 8(r1)
/* 8013C5F4  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 8013C5F8  38 81 00 08 */	addi r4, r1, 8
/* 8013C5FC  88 BF 05 69 */	lbz r5, 0x569(r31)
/* 8013C600  88 DF 2F 9A */	lbz r6, 0x2f9a(r31)
/* 8013C604  48 18 78 65 */	bl startLinkSoundLevel__14Z2CreatureLinkF10JAISoundIDUlSc
/* 8013C608  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 8013C60C  60 00 00 02 */	ori r0, r0, 2
/* 8013C610  90 1F 05 80 */	stw r0, 0x580(r31)
lbl_8013C614:
/* 8013C614  38 60 00 01 */	li r3, 1
lbl_8013C618:
/* 8013C618  39 61 00 20 */	addi r11, r1, 0x20
/* 8013C61C  48 22 5C 09 */	bl _restgpr_28
/* 8013C620  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013C624  7C 08 03 A6 */	mtlr r0
/* 8013C628  38 21 00 20 */	addi r1, r1, 0x20
/* 8013C62C  4E 80 00 20 */	blr 
