lbl_800E08C4:
/* 800E08C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E08C8  7C 08 02 A6 */	mflr r0
/* 800E08CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E08D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800E08D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800E08D8  7C 7F 1B 78 */	mr r31, r3
/* 800E08DC  7C 9E 23 78 */	mr r30, r4
/* 800E08E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E08E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E08E8  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 800E08EC  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 800E08F0  90 04 5F 18 */	stw r0, 0x5f18(r4)
/* 800E08F4  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800E08F8  28 00 00 FF */	cmplwi r0, 0xff
/* 800E08FC  40 82 01 7C */	bne lbl_800E0A78
/* 800E0900  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800E0904  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800E0908  40 82 01 70 */	bne lbl_800E0A78
/* 800E090C  80 1F 28 28 */	lwz r0, 0x2828(r31)
/* 800E0910  28 00 00 00 */	cmplwi r0, 0
/* 800E0914  40 82 01 64 */	bne lbl_800E0A78
/* 800E0918  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800E091C  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800E0920  7D 89 03 A6 */	mtctr r12
/* 800E0924  4E 80 04 21 */	bctrl 
/* 800E0928  28 03 00 00 */	cmplwi r3, 0
/* 800E092C  40 82 01 4C */	bne lbl_800E0A78
/* 800E0930  7F E3 FB 78 */	mr r3, r31
/* 800E0934  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800E0938  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 800E093C  7D 89 03 A6 */	mtctr r12
/* 800E0940  4E 80 04 21 */	bctrl 
/* 800E0944  28 03 00 00 */	cmplwi r3, 0
/* 800E0948  40 82 01 30 */	bne lbl_800E0A78
/* 800E094C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800E0950  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E0954  40 82 01 24 */	bne lbl_800E0A78
/* 800E0958  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800E095C  28 00 00 5C */	cmplwi r0, 0x5c
/* 800E0960  40 82 00 10 */	bne lbl_800E0970
/* 800E0964  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800E0968  2C 00 00 03 */	cmpwi r0, 3
/* 800E096C  41 82 01 0C */	beq lbl_800E0A78
lbl_800E0970:
/* 800E0970  7F E3 FB 78 */	mr r3, r31
/* 800E0974  48 03 52 AD */	bl checkEventRun__9daAlink_cCFv
/* 800E0978  2C 03 00 00 */	cmpwi r3, 0
/* 800E097C  41 82 00 0C */	beq lbl_800E0988
/* 800E0980  2C 1E 00 00 */	cmpwi r30, 0
/* 800E0984  41 82 00 F4 */	beq lbl_800E0A78
lbl_800E0988:
/* 800E0988  7F E3 FB 78 */	mr r3, r31
/* 800E098C  4B FD 88 C9 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800E0990  2C 03 00 00 */	cmpwi r3, 0
/* 800E0994  40 82 00 64 */	bne lbl_800E09F8
/* 800E0998  7F E3 FB 78 */	mr r3, r31
/* 800E099C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800E09A0  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 800E09A4  7D 89 03 A6 */	mtctr r12
/* 800E09A8  4E 80 04 21 */	bctrl 
/* 800E09AC  2C 03 00 00 */	cmpwi r3, 0
/* 800E09B0  40 82 00 48 */	bne lbl_800E09F8
/* 800E09B4  38 60 00 00 */	li r3, 0
/* 800E09B8  A0 9F 1F BC */	lhz r4, 0x1fbc(r31)
/* 800E09BC  28 04 02 4C */	cmplwi r4, 0x24c
/* 800E09C0  41 82 00 10 */	beq lbl_800E09D0
/* 800E09C4  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800E09C8  28 00 02 4D */	cmplwi r0, 0x24d
/* 800E09CC  40 82 00 08 */	bne lbl_800E09D4
lbl_800E09D0:
/* 800E09D0  38 60 00 01 */	li r3, 1
lbl_800E09D4:
/* 800E09D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E09D8  40 82 00 20 */	bne lbl_800E09F8
/* 800E09DC  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 800E09E0  28 00 00 AD */	cmplwi r0, 0xad
/* 800E09E4  41 82 00 14 */	beq lbl_800E09F8
/* 800E09E8  7F E3 FB 78 */	mr r3, r31
/* 800E09EC  4B FF FA 55 */	bl checkBoomerangAnime__9daAlink_cCFv
/* 800E09F0  2C 03 00 00 */	cmpwi r3, 0
/* 800E09F4  41 82 00 84 */	beq lbl_800E0A78
lbl_800E09F8:
/* 800E09F8  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800E09FC  3C 60 01 BD */	lis r3, 0x01BD /* 0x01BD0810@ha */
/* 800E0A00  38 03 08 10 */	addi r0, r3, 0x0810 /* 0x01BD0810@l */
/* 800E0A04  7C 80 00 39 */	and. r0, r4, r0
/* 800E0A08  40 82 00 70 */	bne lbl_800E0A78
/* 800E0A0C  80 1F 28 34 */	lwz r0, 0x2834(r31)
/* 800E0A10  90 1F 28 24 */	stw r0, 0x2824(r31)
/* 800E0A14  80 1F 28 38 */	lwz r0, 0x2838(r31)
/* 800E0A18  90 1F 28 28 */	stw r0, 0x2828(r31)
/* 800E0A1C  38 7F 28 34 */	addi r3, r31, 0x2834
/* 800E0A20  48 07 E2 DD */	bl clearData__16daPy_actorKeep_cFv
/* 800E0A24  38 00 00 40 */	li r0, 0x40
/* 800E0A28  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800E0A2C  38 00 00 02 */	li r0, 2
/* 800E0A30  98 1F 2F 94 */	stb r0, 0x2f94(r31)
/* 800E0A34  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800E0A38  60 00 00 20 */	ori r0, r0, 0x20
/* 800E0A3C  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800E0A40  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E0A44  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E0A48  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E0A4C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800E0A50  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800E0A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E0A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E0A5C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800E0A60  38 80 00 01 */	li r4, 1
/* 800E0A64  38 A0 00 01 */	li r5, 1
/* 800E0A68  38 C1 00 08 */	addi r6, r1, 8
/* 800E0A6C  4B F8 EF B9 */	bl StartShock__12dVibration_cFii4cXyz
/* 800E0A70  38 60 00 01 */	li r3, 1
/* 800E0A74  48 00 00 10 */	b lbl_800E0A84
lbl_800E0A78:
/* 800E0A78  38 7F 28 34 */	addi r3, r31, 0x2834
/* 800E0A7C  48 07 E2 81 */	bl clearData__16daPy_actorKeep_cFv
/* 800E0A80  38 60 00 00 */	li r3, 0
lbl_800E0A84:
/* 800E0A84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800E0A88  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800E0A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E0A90  7C 08 03 A6 */	mtlr r0
/* 800E0A94  38 21 00 20 */	addi r1, r1, 0x20
/* 800E0A98  4E 80 00 20 */	blr 
