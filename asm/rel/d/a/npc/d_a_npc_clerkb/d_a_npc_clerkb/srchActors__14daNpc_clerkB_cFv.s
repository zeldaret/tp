lbl_80997360:
/* 80997360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80997364  7C 08 02 A6 */	mflr r0
/* 80997368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099736C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80997370  7C 7F 1B 78 */	mr r31, r3
/* 80997374  88 03 10 D4 */	lbz r0, 0x10d4(r3)
/* 80997378  2C 00 00 00 */	cmpwi r0, 0
/* 8099737C  41 82 00 08 */	beq lbl_80997384
/* 80997380  48 00 00 28 */	b lbl_809973A8
lbl_80997384:
/* 80997384  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 80997388  4B 7A E3 81 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8099738C  28 03 00 00 */	cmplwi r3, 0
/* 80997390  40 82 00 18 */	bne lbl_809973A8
/* 80997394  7F E3 FB 78 */	mr r3, r31
/* 80997398  4B 7B 4C 19 */	bl getShopItemTagP__8daNpcT_cFv
/* 8099739C  7C 64 1B 78 */	mr r4, r3
/* 809973A0  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 809973A4  4B 7A E3 3D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_809973A8:
/* 809973A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809973AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809973B0  7C 08 03 A6 */	mtlr r0
/* 809973B4  38 21 00 10 */	addi r1, r1, 0x10
/* 809973B8  4E 80 00 20 */	blr 
