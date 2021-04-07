lbl_80A862BC:
/* 80A862BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A862C0  7C 08 02 A6 */	mflr r0
/* 80A862C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A862C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A862CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A862D0  7C 7F 1B 78 */	mr r31, r3
/* 80A862D4  A0 03 0E 0A */	lhz r0, 0xe0a(r3)
/* 80A862D8  2C 00 00 02 */	cmpwi r0, 2
/* 80A862DC  41 82 00 58 */	beq lbl_80A86334
/* 80A862E0  40 80 01 04 */	bge lbl_80A863E4
/* 80A862E4  2C 00 00 00 */	cmpwi r0, 0
/* 80A862E8  41 82 00 0C */	beq lbl_80A862F4
/* 80A862EC  48 00 00 F8 */	b lbl_80A863E4
/* 80A862F0  48 00 00 F4 */	b lbl_80A863E4
lbl_80A862F4:
/* 80A862F4  38 80 00 07 */	li r4, 7
/* 80A862F8  3C A0 80 A9 */	lis r5, lit_4982@ha /* 0x80A885C0@ha */
/* 80A862FC  C0 25 85 C0 */	lfs f1, lit_4982@l(r5)  /* 0x80A885C0@l */
/* 80A86300  38 A0 00 00 */	li r5, 0
/* 80A86304  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A86308  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A8630C  7D 89 03 A6 */	mtctr r12
/* 80A86310  4E 80 04 21 */	bctrl 
/* 80A86314  7F E3 FB 78 */	mr r3, r31
/* 80A86318  38 80 00 00 */	li r4, 0
/* 80A8631C  4B FF F8 89 */	bl setLookMode__13daNpc_myna2_cFi
/* 80A86320  38 00 00 00 */	li r0, 0
/* 80A86324  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80A86328  38 00 00 02 */	li r0, 2
/* 80A8632C  B0 1F 0E 0A */	sth r0, 0xe0a(r31)
/* 80A86330  48 00 00 B4 */	b lbl_80A863E4
lbl_80A86334:
/* 80A86334  38 7F 0B E8 */	addi r3, r31, 0xbe8
/* 80A86338  38 80 00 00 */	li r4, 0
/* 80A8633C  4B 83 B8 E9 */	bl playSumomoBgm__16Z2CreatureSumomoFUl
/* 80A86340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A86344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A86348  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80A8634C  88 04 05 6A */	lbz r0, 0x56a(r4)
/* 80A86350  28 00 00 2C */	cmplwi r0, 0x2c
/* 80A86354  41 82 00 90 */	beq lbl_80A863E4
/* 80A86358  38 00 00 00 */	li r0, 0
/* 80A8635C  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 80A86360  28 03 00 00 */	cmplwi r3, 0
/* 80A86364  41 82 00 0C */	beq lbl_80A86370
/* 80A86368  28 03 00 02 */	cmplwi r3, 2
/* 80A8636C  40 82 00 08 */	bne lbl_80A86374
lbl_80A86370:
/* 80A86370  38 00 00 01 */	li r0, 1
lbl_80A86374:
/* 80A86374  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A86378  41 82 00 6C */	beq lbl_80A863E4
/* 80A8637C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A86380  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A86384  80 1E 5E 0C */	lwz r0, 0x5e0c(r30)
/* 80A86388  2C 00 27 10 */	cmpwi r0, 0x2710
/* 80A8638C  41 80 00 48 */	blt lbl_80A863D4
/* 80A86390  38 60 01 1E */	li r3, 0x11e
/* 80A86394  4B 6C F2 A1 */	bl daNpcF_chkEvtBit__FUl
/* 80A86398  2C 03 00 00 */	cmpwi r3, 0
/* 80A8639C  41 82 00 2C */	beq lbl_80A863C8
/* 80A863A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A863A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A863A8  80 03 09 48 */	lwz r0, 0x948(r3)
/* 80A863AC  80 9E 5E 0C */	lwz r4, 0x5e0c(r30)
/* 80A863B0  7C 04 00 40 */	cmplw r4, r0
/* 80A863B4  41 81 00 14 */	bgt lbl_80A863C8
/* 80A863B8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F00E@ha */
/* 80A863BC  38 03 F0 0E */	addi r0, r3, 0xF00E /* 0x0000F00E@l */
/* 80A863C0  7C 04 00 00 */	cmpw r4, r0
/* 80A863C4  41 80 00 10 */	blt lbl_80A863D4
lbl_80A863C8:
/* 80A863C8  38 00 00 04 */	li r0, 4
/* 80A863CC  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80A863D0  48 00 00 0C */	b lbl_80A863DC
lbl_80A863D4:
/* 80A863D4  38 00 00 03 */	li r0, 3
/* 80A863D8  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
lbl_80A863DC:
/* 80A863DC  38 00 00 01 */	li r0, 1
/* 80A863E0  98 1F 09 ED */	stb r0, 0x9ed(r31)
lbl_80A863E4:
/* 80A863E4  38 60 00 01 */	li r3, 1
/* 80A863E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A863EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A863F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A863F4  7C 08 03 A6 */	mtlr r0
/* 80A863F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A863FC  4E 80 00 20 */	blr 
