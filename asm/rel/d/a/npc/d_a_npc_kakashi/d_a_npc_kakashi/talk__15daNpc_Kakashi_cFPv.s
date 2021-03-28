lbl_8054D8BC:
/* 8054D8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D8C0  7C 08 02 A6 */	mflr r0
/* 8054D8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D8C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D8CC  7C 7F 1B 78 */	mr r31, r3
/* 8054D8D0  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8054D8D4  2C 00 00 02 */	cmpwi r0, 2
/* 8054D8D8  41 82 00 38 */	beq lbl_8054D910
/* 8054D8DC  40 80 00 84 */	bge lbl_8054D960
/* 8054D8E0  2C 00 00 00 */	cmpwi r0, 0
/* 8054D8E4  40 80 00 0C */	bge lbl_8054D8F0
/* 8054D8E8  48 00 00 78 */	b lbl_8054D960
/* 8054D8EC  48 00 00 74 */	b lbl_8054D960
lbl_8054D8F0:
/* 8054D8F0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8054D8F4  2C 00 00 00 */	cmpwi r0, 0
/* 8054D8F8  40 82 00 18 */	bne lbl_8054D910
/* 8054D8FC  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 8054D900  38 A0 00 00 */	li r5, 0
/* 8054D904  4B BF E2 EC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8054D908  38 00 00 02 */	li r0, 2
/* 8054D90C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8054D910:
/* 8054D910  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8054D914  2C 00 00 00 */	cmpwi r0, 0
/* 8054D918  40 82 00 48 */	bne lbl_8054D960
/* 8054D91C  7F E3 FB 78 */	mr r3, r31
/* 8054D920  38 80 00 00 */	li r4, 0
/* 8054D924  38 A0 00 00 */	li r5, 0
/* 8054D928  38 C0 00 00 */	li r6, 0
/* 8054D92C  38 E0 00 00 */	li r7, 0
/* 8054D930  4B BF E3 48 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8054D934  2C 03 00 00 */	cmpwi r3, 0
/* 8054D938  41 82 00 28 */	beq lbl_8054D960
/* 8054D93C  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 8054D940  28 00 00 01 */	cmplwi r0, 1
/* 8054D944  40 82 00 1C */	bne lbl_8054D960
/* 8054D948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8054D94C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054D950  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8054D954  4B AF 4B 14 */	b reset__14dEvt_control_cFv
/* 8054D958  38 00 00 03 */	li r0, 3
/* 8054D95C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8054D960:
/* 8054D960  38 60 00 00 */	li r3, 0
/* 8054D964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D96C  7C 08 03 A6 */	mtlr r0
/* 8054D970  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D974  4E 80 00 20 */	blr 
