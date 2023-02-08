lbl_80C802C0:
/* 80C802C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C802C4  7C 08 02 A6 */	mflr r0
/* 80C802C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C802CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C802D0  7C 7F 1B 78 */	mr r31, r3
/* 80C802D4  38 00 01 F4 */	li r0, 0x1f4
/* 80C802D8  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80C802DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C802E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C802E4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C802E8  4B 39 A4 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C802EC  88 1F 0A 16 */	lbz r0, 0xa16(r31)
/* 80C802F0  2C 00 00 01 */	cmpwi r0, 1
/* 80C802F4  41 82 00 20 */	beq lbl_80C80314
/* 80C802F8  40 80 00 64 */	bge lbl_80C8035C
/* 80C802FC  2C 00 00 00 */	cmpwi r0, 0
/* 80C80300  40 80 00 08 */	bge lbl_80C80308
/* 80C80304  48 00 00 58 */	b lbl_80C8035C
lbl_80C80308:
/* 80C80308  38 00 00 01 */	li r0, 1
/* 80C8030C  98 1F 0A 16 */	stb r0, 0xa16(r31)
/* 80C80310  48 00 00 4C */	b lbl_80C8035C
lbl_80C80314:
/* 80C80314  38 7F 0A 30 */	addi r3, r31, 0xa30
/* 80C80318  48 00 18 99 */	bl func_80C81BB0
/* 80C8031C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80C80320  40 82 00 3C */	bne lbl_80C8035C
/* 80C80324  7F E3 FB 78 */	mr r3, r31
/* 80C80328  4B FF F5 DD */	bl checkFindPlayer__12daObjLv6Bm_cFv
/* 80C8032C  98 7F 0A 14 */	stb r3, 0xa14(r31)
/* 80C80330  88 1F 0A 14 */	lbz r0, 0xa14(r31)
/* 80C80334  7C 00 07 74 */	extsb r0, r0
/* 80C80338  2C 00 FF FF */	cmpwi r0, -1
/* 80C8033C  41 82 00 20 */	beq lbl_80C8035C
/* 80C80340  88 1F 0A 15 */	lbz r0, 0xa15(r31)
/* 80C80344  28 00 00 00 */	cmplwi r0, 0
/* 80C80348  40 82 00 14 */	bne lbl_80C8035C
/* 80C8034C  38 00 00 00 */	li r0, 0
/* 80C80350  98 1F 0A 11 */	stb r0, 0xa11(r31)
/* 80C80354  7F E3 FB 78 */	mr r3, r31
/* 80C80358  48 00 00 81 */	bl initActionFindPlayer__12daObjLv6Bm_cFv
lbl_80C8035C:
/* 80C8035C  A8 7F 09 D8 */	lha r3, 0x9d8(r31)
/* 80C80360  38 03 00 64 */	addi r0, r3, 0x64
/* 80C80364  B0 1F 09 DC */	sth r0, 0x9dc(r31)
/* 80C80368  88 1F 0A 16 */	lbz r0, 0xa16(r31)
/* 80C8036C  28 00 00 05 */	cmplwi r0, 5
/* 80C80370  41 82 00 14 */	beq lbl_80C80384
/* 80C80374  A8 7F 09 C2 */	lha r3, 0x9c2(r31)
/* 80C80378  A8 1F 09 D6 */	lha r0, 0x9d6(r31)
/* 80C8037C  7C 03 02 14 */	add r0, r3, r0
/* 80C80380  B0 1F 09 C4 */	sth r0, 0x9c4(r31)
lbl_80C80384:
/* 80C80384  A8 7F 09 DA */	lha r3, 0x9da(r31)
/* 80C80388  A8 1F 09 C6 */	lha r0, 0x9c6(r31)
/* 80C8038C  7C 03 00 50 */	subf r0, r3, r0
/* 80C80390  B0 1F 09 C8 */	sth r0, 0x9c8(r31)
/* 80C80394  A8 7F 09 CA */	lha r3, 0x9ca(r31)
/* 80C80398  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80C8039C  7C 03 02 14 */	add r0, r3, r0
/* 80C803A0  B0 1F 09 CC */	sth r0, 0x9cc(r31)
/* 80C803A4  A8 7F 09 CE */	lha r3, 0x9ce(r31)
/* 80C803A8  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80C803AC  7C 03 02 14 */	add r0, r3, r0
/* 80C803B0  B0 1F 09 D0 */	sth r0, 0x9d0(r31)
/* 80C803B4  A8 7F 09 D2 */	lha r3, 0x9d2(r31)
/* 80C803B8  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 80C803BC  7C 03 02 14 */	add r0, r3, r0
/* 80C803C0  B0 1F 09 D4 */	sth r0, 0x9d4(r31)
/* 80C803C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C803C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C803CC  7C 08 03 A6 */	mtlr r0
/* 80C803D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C803D4  4E 80 00 20 */	blr 
