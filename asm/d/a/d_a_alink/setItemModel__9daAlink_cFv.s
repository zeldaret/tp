lbl_800BF8D0:
/* 800BF8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BF8D4  7C 08 02 A6 */	mflr r0
/* 800BF8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BF8DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BF8E0  7C 7F 1B 78 */	mr r31, r3
/* 800BF8E4  A0 63 2F DC */	lhz r3, 0x2fdc(r3)
/* 800BF8E8  48 09 F2 A9 */	bl checkBowItem__9daPy_py_cFi
/* 800BF8EC  2C 03 00 00 */	cmpwi r3, 0
/* 800BF8F0  41 82 00 14 */	beq lbl_800BF904
/* 800BF8F4  7F E3 FB 78 */	mr r3, r31
/* 800BF8F8  48 02 01 F1 */	bl setBowModel__9daAlink_cFv
/* 800BF8FC  38 60 00 01 */	li r3, 1
/* 800BF900  48 00 00 DC */	b lbl_800BF9DC
lbl_800BF904:
/* 800BF904  A0 9F 2F DC */	lhz r4, 0x2fdc(r31)
/* 800BF908  28 04 00 4B */	cmplwi r4, 0x4b
/* 800BF90C  40 82 00 14 */	bne lbl_800BF920
/* 800BF910  7F E3 FB 78 */	mr r3, r31
/* 800BF914  48 01 EE C1 */	bl setSlingModel__9daAlink_cFv
/* 800BF918  38 60 00 01 */	li r3, 1
/* 800BF91C  48 00 00 C0 */	b lbl_800BF9DC
lbl_800BF920:
/* 800BF920  28 04 00 46 */	cmplwi r4, 0x46
/* 800BF924  40 82 00 1C */	bne lbl_800BF940
/* 800BF928  7F E3 FB 78 */	mr r3, r31
/* 800BF92C  48 02 1E 1D */	bl setCopyRodModel__9daAlink_cFv
/* 800BF930  80 7F 28 40 */	lwz r3, 0x2840(r31)
/* 800BF934  30 03 FF FF */	addic r0, r3, -1
/* 800BF938  7C 60 19 10 */	subfe r3, r0, r3
/* 800BF93C  48 00 00 A0 */	b lbl_800BF9DC
lbl_800BF940:
/* 800BF940  28 04 00 48 */	cmplwi r4, 0x48
/* 800BF944  40 82 00 14 */	bne lbl_800BF958
/* 800BF948  7F E3 FB 78 */	mr r3, r31
/* 800BF94C  48 05 15 39 */	bl setKandelaarModel__9daAlink_cFv
/* 800BF950  38 60 00 01 */	li r3, 1
/* 800BF954  48 00 00 88 */	b lbl_800BF9DC
lbl_800BF958:
/* 800BF958  28 04 00 60 */	cmplwi r4, 0x60
/* 800BF95C  40 82 00 14 */	bne lbl_800BF970
/* 800BF960  7F E3 FB 78 */	mr r3, r31
/* 800BF964  48 04 EC 75 */	bl setBottleModel__9daAlink_cFUs
/* 800BF968  38 60 00 01 */	li r3, 1
/* 800BF96C  48 00 00 70 */	b lbl_800BF9DC
lbl_800BF970:
/* 800BF970  7C 83 23 78 */	mr r3, r4
/* 800BF974  48 09 F2 45 */	bl checkHookshotItem__9daPy_py_cFi
/* 800BF978  2C 03 00 00 */	cmpwi r3, 0
/* 800BF97C  41 82 00 14 */	beq lbl_800BF990
/* 800BF980  7F E3 FB 78 */	mr r3, r31
/* 800BF984  48 04 91 B1 */	bl setHookshotModel__9daAlink_cFv
/* 800BF988  38 60 00 01 */	li r3, 1
/* 800BF98C  48 00 00 50 */	b lbl_800BF9DC
lbl_800BF990:
/* 800BF990  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800BF994  28 00 01 03 */	cmplwi r0, 0x103
/* 800BF998  40 82 00 14 */	bne lbl_800BF9AC
/* 800BF99C  7F E3 FB 78 */	mr r3, r31
/* 800BF9A0  48 01 18 C9 */	bl setSwordModel__9daAlink_cFv
/* 800BF9A4  38 60 00 01 */	li r3, 1
/* 800BF9A8  48 00 00 34 */	b lbl_800BF9DC
lbl_800BF9AC:
/* 800BF9AC  28 00 00 42 */	cmplwi r0, 0x42
/* 800BF9B0  40 82 00 28 */	bne lbl_800BF9D8
/* 800BF9B4  7F E3 FB 78 */	mr r3, r31
/* 800BF9B8  48 05 2E 39 */	bl setIronBallModel__9daAlink_cFv
/* 800BF9BC  7F E3 FB 78 */	mr r3, r31
/* 800BF9C0  38 80 00 01 */	li r4, 1
/* 800BF9C4  48 05 2B A5 */	bl setIronBallWaitUpperAnime__9daAlink_cFi
/* 800BF9C8  80 7F 28 28 */	lwz r3, 0x2828(r31)
/* 800BF9CC  30 03 FF FF */	addic r0, r3, -1
/* 800BF9D0  7C 60 19 10 */	subfe r3, r0, r3
/* 800BF9D4  48 00 00 08 */	b lbl_800BF9DC
lbl_800BF9D8:
/* 800BF9D8  38 60 00 00 */	li r3, 0
lbl_800BF9DC:
/* 800BF9DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BF9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BF9E4  7C 08 03 A6 */	mtlr r0
/* 800BF9E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BF9EC  4E 80 00 20 */	blr 
