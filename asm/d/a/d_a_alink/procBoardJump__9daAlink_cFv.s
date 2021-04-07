lbl_80107300:
/* 80107300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80107304  7C 08 02 A6 */	mflr r0
/* 80107308  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010730C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80107310  7C 7F 1B 78 */	mr r31, r3
/* 80107314  38 80 00 01 */	li r4, 1
/* 80107318  4B FF E8 41 */	bl boardCommon__9daAlink_cFi
/* 8010731C  2C 03 00 00 */	cmpwi r3, 0
/* 80107320  41 82 00 0C */	beq lbl_8010732C
/* 80107324  38 60 00 01 */	li r3, 1
/* 80107328  48 00 00 94 */	b lbl_801073BC
lbl_8010732C:
/* 8010732C  7F E3 FB 78 */	mr r3, r31
/* 80107330  4B FF F2 5D */	bl checkNextActionBoard__9daAlink_cFv
/* 80107334  2C 03 00 00 */	cmpwi r3, 0
/* 80107338  40 82 00 80 */	bne lbl_801073B8
/* 8010733C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80107340  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80107344  40 82 00 1C */	bne lbl_80107360
/* 80107348  7F E3 FB 78 */	mr r3, r31
/* 8010734C  4B FF F3 A1 */	bl setBoardLandAnime__9daAlink_cFv
/* 80107350  7F E3 FB 78 */	mr r3, r31
/* 80107354  38 80 00 00 */	li r4, 0
/* 80107358  4B FF F6 E1 */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
/* 8010735C  48 00 00 5C */	b lbl_801073B8
lbl_80107360:
/* 80107360  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 80107364  2C 00 00 00 */	cmpwi r0, 0
/* 80107368  41 82 00 50 */	beq lbl_801073B8
/* 8010736C  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 80107370  2C 00 00 00 */	cmpwi r0, 0
/* 80107374  40 82 00 44 */	bne lbl_801073B8
/* 80107378  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 8010737C  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80107380  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 80107384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80107388  40 80 00 30 */	bge lbl_801073B8
/* 8010738C  7F E3 FB 78 */	mr r3, r31
/* 80107390  38 80 00 F7 */	li r4, 0xf7
/* 80107394  3C A0 80 39 */	lis r5, m__19daAlinkHIO_board_c0@ha /* 0x8038E870@ha */
/* 80107398  38 A5 E8 70 */	addi r5, r5, m__19daAlinkHIO_board_c0@l /* 0x8038E870@l */
/* 8010739C  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 801073A0  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 801073A4  A8 A5 00 14 */	lha r5, 0x14(r5)
/* 801073A8  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 801073AC  4B FA 5C 61 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 801073B0  38 00 00 01 */	li r0, 1
/* 801073B4  B0 1F 30 10 */	sth r0, 0x3010(r31)
lbl_801073B8:
/* 801073B8  38 60 00 01 */	li r3, 1
lbl_801073BC:
/* 801073BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801073C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801073C4  7C 08 03 A6 */	mtlr r0
/* 801073C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801073CC  4E 80 00 20 */	blr 
