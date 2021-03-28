lbl_800E02B8:
/* 800E02B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E02BC  7C 08 02 A6 */	mflr r0
/* 800E02C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E02C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E02C8  93 C1 00 08 */	stw r30, 8(r1)
/* 800E02CC  7C 7E 1B 78 */	mr r30, r3
/* 800E02D0  7C 9F 23 78 */	mr r31, r4
/* 800E02D4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800E02D8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800E02DC  41 82 00 D8 */	beq lbl_800E03B4
/* 800E02E0  48 03 59 41 */	bl checkEventRun__9daAlink_cCFv
/* 800E02E4  2C 03 00 00 */	cmpwi r3, 0
/* 800E02E8  40 82 00 CC */	bne lbl_800E03B4
/* 800E02EC  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800E02F0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E02F4  40 82 00 C0 */	bne lbl_800E03B4
/* 800E02F8  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800E02FC  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 800E0300  41 82 00 B4 */	beq lbl_800E03B4
/* 800E0304  7F C3 F3 78 */	mr r3, r30
/* 800E0308  48 00 CD 6D */	bl checkHorseNoUpperAnime__9daAlink_cCFv
/* 800E030C  2C 03 00 00 */	cmpwi r3, 0
/* 800E0310  40 82 00 3C */	bne lbl_800E034C
/* 800E0314  38 60 00 00 */	li r3, 0
/* 800E0318  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800E031C  28 00 02 4C */	cmplwi r0, 0x24c
/* 800E0320  41 82 00 10 */	beq lbl_800E0330
/* 800E0324  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800E0328  28 00 02 4D */	cmplwi r0, 0x24d
/* 800E032C  40 82 00 08 */	bne lbl_800E0334
lbl_800E0330:
/* 800E0330  38 60 00 01 */	li r3, 1
lbl_800E0334:
/* 800E0334  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E0338  40 82 00 14 */	bne lbl_800E034C
/* 800E033C  7F C3 F3 78 */	mr r3, r30
/* 800E0340  48 00 01 6D */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800E0344  2C 03 00 00 */	cmpwi r3, 0
/* 800E0348  41 82 00 6C */	beq lbl_800E03B4
lbl_800E034C:
/* 800E034C  7F C3 F3 78 */	mr r3, r30
/* 800E0350  38 80 00 00 */	li r4, 0
/* 800E0354  38 A0 00 00 */	li r5, 0
/* 800E0358  4B FE 0F 85 */	bl deleteEquipItem__9daAlink_cFii
/* 800E035C  7F C3 F3 78 */	mr r3, r30
/* 800E0360  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002002F@ha */
/* 800E0364  38 84 00 2F */	addi r4, r4, 0x002F /* 0x0002002F@l */
/* 800E0368  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800E036C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800E0370  7D 89 03 A6 */	mtctr r12
/* 800E0374  4E 80 04 21 */	bctrl 
/* 800E0378  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800E037C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800E0380  90 1E 05 70 */	stw r0, 0x570(r30)
/* 800E0384  7F C3 F3 78 */	mr r3, r30
/* 800E0388  7F E4 FB 78 */	mr r4, r31
/* 800E038C  48 00 58 29 */	bl setGrabItemActor__9daAlink_cFP10fopAc_ac_c
/* 800E0390  C0 02 93 94 */	lfs f0, lit_8785(r2)
/* 800E0394  D0 1E 33 E4 */	stfs f0, 0x33e4(r30)
/* 800E0398  7F C3 F3 78 */	mr r3, r30
/* 800E039C  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 800E03A0  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 800E03A4  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800E03A8  48 00 3A 15 */	bl setGrabUpperAnime__9daAlink_cFf
/* 800E03AC  38 60 00 01 */	li r3, 1
/* 800E03B0  48 00 00 08 */	b lbl_800E03B8
lbl_800E03B4:
/* 800E03B4  38 60 00 00 */	li r3, 0
lbl_800E03B8:
/* 800E03B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E03BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800E03C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E03C4  7C 08 03 A6 */	mtlr r0
/* 800E03C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E03CC  4E 80 00 20 */	blr 
