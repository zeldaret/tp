lbl_80115254:
/* 80115254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80115258  7C 08 02 A6 */	mflr r0
/* 8011525C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80115260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80115264  93 C1 00 08 */	stw r30, 8(r1)
/* 80115268  7C 7F 1B 78 */	mr r31, r3
/* 8011526C  4B F9 D3 99 */	bl itemButton__9daAlink_cFv
/* 80115270  2C 03 00 00 */	cmpwi r3, 0
/* 80115274  40 82 00 1C */	bne lbl_80115290
/* 80115278  7F E3 FB 78 */	mr r3, r31
/* 8011527C  4B FA 36 B5 */	bl checkReadyItem__9daAlink_cFv
/* 80115280  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80115284  41 82 00 0C */	beq lbl_80115290
/* 80115288  38 00 00 01 */	li r0, 1
/* 8011528C  B0 1F 30 20 */	sth r0, 0x3020(r31)
lbl_80115290:
/* 80115290  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 80115294  28 00 01 9A */	cmplwi r0, 0x19a
/* 80115298  40 82 00 DC */	bne lbl_80115374
/* 8011529C  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 801152A0  A8 1F 30 20 */	lha r0, 0x3020(r31)
/* 801152A4  2C 00 00 00 */	cmpwi r0, 0
/* 801152A8  41 82 00 24 */	beq lbl_801152CC
/* 801152AC  7F C3 F3 78 */	mr r3, r30
/* 801152B0  C0 22 93 C8 */	lfs f1, lit_10286(r2)
/* 801152B4  48 21 31 79 */	bl checkPass__12J3DFrameCtrlFf
/* 801152B8  2C 03 00 00 */	cmpwi r3, 0
/* 801152BC  41 82 00 10 */	beq lbl_801152CC
/* 801152C0  7F E3 FB 78 */	mr r3, r31
/* 801152C4  48 00 04 B9 */	bl procIronBallThrowInit__9daAlink_cFv
/* 801152C8  48 00 01 18 */	b lbl_801153E0
lbl_801152CC:
/* 801152CC  7F C3 F3 78 */	mr r3, r30
/* 801152D0  48 04 91 FD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 801152D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801152D8  41 82 00 80 */	beq lbl_80115358
/* 801152DC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 801152E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 801152E4  41 82 00 20 */	beq lbl_80115304
/* 801152E8  7F E3 FB 78 */	mr r3, r31
/* 801152EC  38 80 01 63 */	li r4, 0x163
/* 801152F0  3C A0 80 39 */	lis r5, m__22daAlinkHIO_ironBall_c0@ha
/* 801152F4  38 A5 EA 70 */	addi r5, r5, m__22daAlinkHIO_ironBall_c0@l
/* 801152F8  C0 25 00 24 */	lfs f1, 0x24(r5)
/* 801152FC  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 80115300  4B F9 7C E1 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_80115304:
/* 80115304  7F E3 FB 78 */	mr r3, r31
/* 80115308  38 80 01 63 */	li r4, 0x163
/* 8011530C  4B F9 71 45 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80115310  A0 83 00 02 */	lhz r4, 2(r3)
/* 80115314  7F E3 FB 78 */	mr r3, r31
/* 80115318  3C A0 80 39 */	lis r5, m__22daAlinkHIO_ironBall_c0@ha
/* 8011531C  38 A5 EA 70 */	addi r5, r5, m__22daAlinkHIO_ironBall_c0@l
/* 80115320  C0 25 00 24 */	lfs f1, 0x24(r5)
/* 80115324  C0 45 00 28 */	lfs f2, 0x28(r5)
/* 80115328  4B F9 80 81 */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 8011532C  38 00 00 02 */	li r0, 2
/* 80115330  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80115334  7F E3 FB 78 */	mr r3, r31
/* 80115338  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020031@ha */
/* 8011533C  38 84 00 31 */	addi r4, r4, 0x0031 /* 0x00020031@l */
/* 80115340  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80115344  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80115348  7D 89 03 A6 */	mtctr r12
/* 8011534C  4E 80 04 21 */	bctrl 
/* 80115350  38 60 00 01 */	li r3, 1
/* 80115354  48 00 00 8C */	b lbl_801153E0
lbl_80115358:
/* 80115358  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8011535C  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 80115360  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80115364  40 81 00 70 */	ble lbl_801153D4
/* 80115368  38 00 00 01 */	li r0, 1
/* 8011536C  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 80115370  48 00 00 64 */	b lbl_801153D4
lbl_80115374:
/* 80115374  3B DF 20 48 */	addi r30, r31, 0x2048
/* 80115378  A8 1F 30 20 */	lha r0, 0x3020(r31)
/* 8011537C  2C 00 00 00 */	cmpwi r0, 0
/* 80115380  41 82 00 24 */	beq lbl_801153A4
/* 80115384  7F C3 F3 78 */	mr r3, r30
/* 80115388  C0 22 93 C0 */	lfs f1, lit_10193(r2)
/* 8011538C  48 21 30 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 80115390  2C 03 00 00 */	cmpwi r3, 0
/* 80115394  41 82 00 10 */	beq lbl_801153A4
/* 80115398  7F E3 FB 78 */	mr r3, r31
/* 8011539C  48 00 03 E1 */	bl procIronBallThrowInit__9daAlink_cFv
/* 801153A0  48 00 00 40 */	b lbl_801153E0
lbl_801153A4:
/* 801153A4  7F C3 F3 78 */	mr r3, r30
/* 801153A8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801153AC  48 21 30 81 */	bl checkPass__12J3DFrameCtrlFf
/* 801153B0  2C 03 00 00 */	cmpwi r3, 0
/* 801153B4  41 82 00 20 */	beq lbl_801153D4
/* 801153B8  7F E3 FB 78 */	mr r3, r31
/* 801153BC  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020031@ha */
/* 801153C0  38 84 00 31 */	addi r4, r4, 0x0031 /* 0x00020031@l */
/* 801153C4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 801153C8  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 801153CC  7D 89 03 A6 */	mtctr r12
/* 801153D0  4E 80 04 21 */	bctrl 
lbl_801153D4:
/* 801153D4  7F E3 FB 78 */	mr r3, r31
/* 801153D8  38 80 00 00 */	li r4, 0
/* 801153DC  4B FA 1E 11 */	bl cancelUpperItemReadyAnime__9daAlink_cFi
lbl_801153E0:
/* 801153E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801153E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801153E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801153EC  7C 08 03 A6 */	mtlr r0
/* 801153F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801153F4  4E 80 00 20 */	blr 
