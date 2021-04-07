lbl_801047B8:
/* 801047B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801047BC  7C 08 02 A6 */	mflr r0
/* 801047C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801047C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801047C8  7C 7F 1B 78 */	mr r31, r3
/* 801047CC  4B FF DC 19 */	bl setSpeedAndAngleSwim__9daAlink_cFv
/* 801047D0  7F E3 FB 78 */	mr r3, r31
/* 801047D4  4B FF F7 35 */	bl checkUpSwimButtonAccept__9daAlink_cFv
/* 801047D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801047DC  41 82 00 18 */	beq lbl_801047F4
/* 801047E0  88 1F 2F 8E */	lbz r0, 0x2f8e(r31)
/* 801047E4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801047E8  41 82 00 0C */	beq lbl_801047F4
/* 801047EC  38 00 00 1E */	li r0, 0x1e
/* 801047F0  B0 1F 30 00 */	sth r0, 0x3000(r31)
lbl_801047F4:
/* 801047F4  7F E3 FB 78 */	mr r3, r31
/* 801047F8  4B FF EE A1 */	bl setSwimMoveAnime__9daAlink_cFv
/* 801047FC  7F E3 FB 78 */	mr r3, r31
/* 80104800  4B FF E8 59 */	bl checkSwimUpAction__9daAlink_cFv
/* 80104804  2C 03 00 00 */	cmpwi r3, 0
/* 80104808  41 82 00 0C */	beq lbl_80104814
/* 8010480C  38 60 00 01 */	li r3, 1
/* 80104810  48 00 01 34 */	b lbl_80104944
lbl_80104814:
/* 80104814  7F E3 FB 78 */	mr r3, r31
/* 80104818  4B FF E1 B1 */	bl checkNextActionSwim__9daAlink_cFv
/* 8010481C  2C 03 00 00 */	cmpwi r3, 0
/* 80104820  41 82 00 0C */	beq lbl_8010482C
/* 80104824  38 60 00 01 */	li r3, 1
/* 80104828  48 00 01 1C */	b lbl_80104944
lbl_8010482C:
/* 8010482C  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 80104830  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80104834  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80104838  40 81 00 28 */	ble lbl_80104860
/* 8010483C  7F E3 FB 78 */	mr r3, r31
/* 80104840  4B FB 21 F1 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 80104844  2C 03 00 00 */	cmpwi r3, 0
/* 80104848  41 82 00 18 */	beq lbl_80104860
/* 8010484C  7F E3 FB 78 */	mr r3, r31
/* 80104850  38 80 00 01 */	li r4, 1
/* 80104854  4B FF EA 75 */	bl swimOutAfter__9daAlink_cFi
/* 80104858  38 60 00 01 */	li r3, 1
/* 8010485C  48 00 00 E8 */	b lbl_80104944
lbl_80104860:
/* 80104860  7F E3 FB 78 */	mr r3, r31
/* 80104864  4B FF F6 7D */	bl checkSwimButtonAccept__9daAlink_cFv
/* 80104868  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010486C  41 82 00 2C */	beq lbl_80104898
/* 80104870  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 80104874  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80104878  41 82 00 20 */	beq lbl_80104898
/* 8010487C  7F E3 FB 78 */	mr r3, r31
/* 80104880  4B FF D1 39 */	bl getZoraSwim__9daAlink_cCFv
/* 80104884  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80104888  40 82 00 10 */	bne lbl_80104898
/* 8010488C  7F E3 FB 78 */	mr r3, r31
/* 80104890  48 00 00 C9 */	bl procSwimDiveInit__9daAlink_cFv
/* 80104894  48 00 00 AC */	b lbl_80104940
lbl_80104898:
/* 80104898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010489C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801048A0  88 03 5E 24 */	lbz r0, 0x5e24(r3)
/* 801048A4  28 00 00 09 */	cmplwi r0, 9
/* 801048A8  40 82 00 48 */	bne lbl_801048F0
/* 801048AC  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 801048B0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801048B4  41 82 00 3C */	beq lbl_801048F0
/* 801048B8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 801048BC  64 00 00 40 */	oris r0, r0, 0x40
/* 801048C0  90 1F 05 74 */	stw r0, 0x574(r31)
/* 801048C4  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 801048C8  38 A3 ED 2C */	addi r5, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 801048CC  A8 05 00 5C */	lha r0, 0x5c(r5)
/* 801048D0  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
/* 801048D4  7F E3 FB 78 */	mr r3, r31
/* 801048D8  38 80 00 C6 */	li r4, 0xc6
/* 801048DC  38 A5 00 3C */	addi r5, r5, 0x3c
/* 801048E0  4B FA 88 15 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 801048E4  38 00 00 C6 */	li r0, 0xc6
/* 801048E8  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 801048EC  48 00 00 54 */	b lbl_80104940
lbl_801048F0:
/* 801048F0  7F E3 FB 78 */	mr r3, r31
/* 801048F4  4B FF F6 A1 */	bl checkZoraSwimMove__9daAlink_cFv
/* 801048F8  2C 03 00 00 */	cmpwi r3, 0
/* 801048FC  40 82 00 44 */	bne lbl_80104940
/* 80104900  7F E3 FB 78 */	mr r3, r31
/* 80104904  4B FF F6 05 */	bl checkUpSwimButtonAccept__9daAlink_cFv
/* 80104908  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010490C  41 82 00 10 */	beq lbl_8010491C
/* 80104910  88 1F 2F 8E */	lbz r0, 0x2f8e(r31)
/* 80104914  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80104918  40 82 00 28 */	bne lbl_80104940
lbl_8010491C:
/* 8010491C  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 80104920  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 80104924  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80104928  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 8010492C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80104930  40 80 00 10 */	bge lbl_80104940
/* 80104934  7F E3 FB 78 */	mr r3, r31
/* 80104938  38 80 00 00 */	li r4, 0
/* 8010493C  4B FF F9 BD */	bl procSwimWaitInit__9daAlink_cFi
lbl_80104940:
/* 80104940  38 60 00 01 */	li r3, 1
lbl_80104944:
/* 80104944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80104948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010494C  7C 08 03 A6 */	mtlr r0
/* 80104950  38 21 00 10 */	addi r1, r1, 0x10
/* 80104954  4E 80 00 20 */	blr 
