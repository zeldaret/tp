lbl_8019A020:
/* 8019A020  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019A024  7C 08 02 A6 */	mflr r0
/* 8019A028  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019A02C  39 61 00 20 */	addi r11, r1, 0x20
/* 8019A030  48 1C 81 AD */	bl _savegpr_29
/* 8019A034  7C 7D 1B 78 */	mr r29, r3
/* 8019A038  7C 9E 23 78 */	mr r30, r4
/* 8019A03C  7C BF 2B 78 */	mr r31, r5
/* 8019A040  88 03 0F 75 */	lbz r0, 0xf75(r3)
/* 8019A044  28 00 00 01 */	cmplwi r0, 1
/* 8019A048  40 82 00 2C */	bne lbl_8019A074
/* 8019A04C  7F E4 FB 78 */	mr r4, r31
/* 8019A050  80 BD 0F 5C */	lwz r5, 0xf5c(r29)
/* 8019A054  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 8019A058  81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 8019A05C  7D 89 03 A6 */	mtctr r12
/* 8019A060  4E 80 04 21 */	bctrl 
/* 8019A064  2C 03 00 00 */	cmpwi r3, 0
/* 8019A068  40 82 00 0C */	bne lbl_8019A074
/* 8019A06C  38 60 00 00 */	li r3, 0
/* 8019A070  48 00 00 38 */	b lbl_8019A0A8
lbl_8019A074:
/* 8019A074  7F E3 FB 78 */	mr r3, r31
/* 8019A078  7F C4 F3 78 */	mr r4, r30
/* 8019A07C  38 A0 00 00 */	li r5, 0
/* 8019A080  38 C0 00 00 */	li r6, 0
/* 8019A084  48 0B 02 55 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8019A088  2C 03 00 00 */	cmpwi r3, 0
/* 8019A08C  41 82 00 18 */	beq lbl_8019A0A4
/* 8019A090  7F A3 EB 78 */	mr r3, r29
/* 8019A094  38 80 00 00 */	li r4, 0
/* 8019A098  48 00 02 AD */	bl setSeq__13dShopSystem_cFUc
/* 8019A09C  38 60 00 01 */	li r3, 1
/* 8019A0A0  48 00 00 08 */	b lbl_8019A0A8
lbl_8019A0A4:
/* 8019A0A4  38 60 00 00 */	li r3, 0
lbl_8019A0A8:
/* 8019A0A8  39 61 00 20 */	addi r11, r1, 0x20
/* 8019A0AC  48 1C 81 7D */	bl _restgpr_29
/* 8019A0B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019A0B4  7C 08 03 A6 */	mtlr r0
/* 8019A0B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8019A0BC  4E 80 00 20 */	blr 
