lbl_801044B4:
/* 801044B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801044B8  7C 08 02 A6 */	mflr r0
/* 801044BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801044C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801044C4  7C 7F 1B 78 */	mr r31, r3
/* 801044C8  80 03 06 14 */	lwz r0, 0x614(r3)
/* 801044CC  28 00 00 06 */	cmplwi r0, 6
/* 801044D0  41 82 00 0C */	beq lbl_801044DC
/* 801044D4  28 00 00 08 */	cmplwi r0, 8
/* 801044D8  40 82 00 14 */	bne lbl_801044EC
lbl_801044DC:
/* 801044DC  7F E3 FB 78 */	mr r3, r31
/* 801044E0  48 01 40 8D */	bl setShapeAngleToTalkActor__9daAlink_cFv
/* 801044E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801044E8  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_801044EC:
/* 801044EC  7F E3 FB 78 */	mr r3, r31
/* 801044F0  4B FF D5 B9 */	bl getSwimMaxFallSpeed__9daAlink_cCFv
/* 801044F4  D0 3F 05 34 */	stfs f1, 0x534(r31)
/* 801044F8  7F E3 FB 78 */	mr r3, r31
/* 801044FC  4B FF D5 1D */	bl getSwimFrontMaxSpeed__9daAlink_cCFv
/* 80104500  D0 3F 05 94 */	stfs f1, 0x594(r31)
/* 80104504  7F E3 FB 78 */	mr r3, r31
/* 80104508  4B FF DE DD */	bl setSpeedAndAngleSwim__9daAlink_cFv
/* 8010450C  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 80104510  80 1F 32 CC */	lwz r0, 0x32cc(r31)
/* 80104514  7C 03 00 40 */	cmplw r3, r0
/* 80104518  41 82 00 24 */	beq lbl_8010453C
/* 8010451C  90 7F 32 CC */	stw r3, 0x32cc(r31)
/* 80104520  7F E3 FB 78 */	mr r3, r31
/* 80104524  38 80 00 14 */	li r4, 0x14
/* 80104528  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 8010452C  38 A5 ED 2C */	addi r5, r5, m__18daAlinkHIO_swim_c0@l
/* 80104530  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 80104534  C0 45 00 94 */	lfs f2, 0x94(r5)
/* 80104538  4B FA 8A A9 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_8010453C:
/* 8010453C  7F E3 FB 78 */	mr r3, r31
/* 80104540  4B FF FA F5 */	bl setSwimUpDownOffset__9daAlink_cFv
/* 80104544  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80104548  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8010454C  41 82 00 1C */	beq lbl_80104568
/* 80104550  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 80104554  28 00 00 FF */	cmplwi r0, 0xff
/* 80104558  41 82 00 10 */	beq lbl_80104568
/* 8010455C  7F E3 FB 78 */	mr r3, r31
/* 80104560  38 80 00 04 */	li r4, 4
/* 80104564  4B FA EC ED */	bl setDoStatus__9daAlink_cFUc
lbl_80104568:
/* 80104568  7F E3 FB 78 */	mr r3, r31
/* 8010456C  4B FF EA ED */	bl checkSwimUpAction__9daAlink_cFv
/* 80104570  2C 03 00 00 */	cmpwi r3, 0
/* 80104574  41 82 00 0C */	beq lbl_80104580
/* 80104578  38 60 00 01 */	li r3, 1
/* 8010457C  48 00 00 E0 */	b lbl_8010465C
lbl_80104580:
/* 80104580  7F E3 FB 78 */	mr r3, r31
/* 80104584  4B FF E4 45 */	bl checkNextActionSwim__9daAlink_cFv
/* 80104588  2C 03 00 00 */	cmpwi r3, 0
/* 8010458C  41 82 00 0C */	beq lbl_80104598
/* 80104590  38 60 00 01 */	li r3, 1
/* 80104594  48 00 00 C8 */	b lbl_8010465C
lbl_80104598:
/* 80104598  7F E3 FB 78 */	mr r3, r31
/* 8010459C  4B FB 24 95 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 801045A0  2C 03 00 00 */	cmpwi r3, 0
/* 801045A4  41 82 00 18 */	beq lbl_801045BC
/* 801045A8  7F E3 FB 78 */	mr r3, r31
/* 801045AC  38 80 00 01 */	li r4, 1
/* 801045B0  4B FF ED 19 */	bl swimOutAfter__9daAlink_cFi
/* 801045B4  38 60 00 01 */	li r3, 1
/* 801045B8  48 00 00 A4 */	b lbl_8010465C
lbl_801045BC:
/* 801045BC  7F E3 FB 78 */	mr r3, r31
/* 801045C0  4B FF F9 21 */	bl checkSwimButtonAccept__9daAlink_cFv
/* 801045C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801045C8  41 82 00 1C */	beq lbl_801045E4
/* 801045CC  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 801045D0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801045D4  41 82 00 10 */	beq lbl_801045E4
/* 801045D8  7F E3 FB 78 */	mr r3, r31
/* 801045DC  48 00 03 7D */	bl procSwimDiveInit__9daAlink_cFv
/* 801045E0  48 00 00 78 */	b lbl_80104658
lbl_801045E4:
/* 801045E4  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 801045E8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801045EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801045F0  40 81 00 20 */	ble lbl_80104610
/* 801045F4  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 801045F8  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 801045FC  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l
/* 80104600  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 80104604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80104608  4C 41 13 82 */	cror 2, 1, 2
/* 8010460C  41 82 00 20 */	beq lbl_8010462C
lbl_80104610:
/* 80104610  7F E3 FB 78 */	mr r3, r31
/* 80104614  4B FF F8 F5 */	bl checkUpSwimButtonAccept__9daAlink_cFv
/* 80104618  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010461C  41 82 00 3C */	beq lbl_80104658
/* 80104620  88 1F 2F 8E */	lbz r0, 0x2f8e(r31)
/* 80104624  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80104628  41 82 00 30 */	beq lbl_80104658
lbl_8010462C:
/* 8010462C  7F E3 FB 78 */	mr r3, r31
/* 80104630  4B FF F8 D9 */	bl checkUpSwimButtonAccept__9daAlink_cFv
/* 80104634  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80104638  41 82 00 18 */	beq lbl_80104650
/* 8010463C  88 1F 2F 8E */	lbz r0, 0x2f8e(r31)
/* 80104640  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80104644  41 82 00 0C */	beq lbl_80104650
/* 80104648  38 00 00 1E */	li r0, 0x1e
/* 8010464C  B0 1F 30 00 */	sth r0, 0x3000(r31)
lbl_80104650:
/* 80104650  7F E3 FB 78 */	mr r3, r31
/* 80104654  48 00 00 1D */	bl procSwimMoveInit__9daAlink_cFv
lbl_80104658:
/* 80104658  38 60 00 01 */	li r3, 1
lbl_8010465C:
/* 8010465C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80104660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80104664  7C 08 03 A6 */	mtlr r0
/* 80104668  38 21 00 10 */	addi r1, r1, 0x10
/* 8010466C  4E 80 00 20 */	blr 
