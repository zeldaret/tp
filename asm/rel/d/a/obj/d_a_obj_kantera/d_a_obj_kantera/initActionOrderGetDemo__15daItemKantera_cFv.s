lbl_80C39234:
/* 80C39234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39238  7C 08 02 A6 */	mflr r0
/* 80C3923C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C39240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C39244  7C 7F 1B 78 */	mr r31, r3
/* 80C39248  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80C3924C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80C39250  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80C39254  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80C39258  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C3925C  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80C39260  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80C39264  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C39268  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80C3926C  4B 3F E7 F9 */	bl hide__12daItemBase_cFv
/* 80C39270  7F E3 FB 78 */	mr r3, r31
/* 80C39274  38 80 00 00 */	li r4, 0
/* 80C39278  38 A0 00 00 */	li r5, 0
/* 80C3927C  4B 3E 27 55 */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 80C39280  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80C39284  60 00 00 08 */	ori r0, r0, 8
/* 80C39288  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80C3928C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C39290  88 9F 09 2A */	lbz r4, 0x92a(r31)
/* 80C39294  38 A0 FF FF */	li r5, -1
/* 80C39298  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C3929C  7C 06 07 74 */	extsb r6, r0
/* 80C392A0  38 E0 00 00 */	li r7, 0
/* 80C392A4  39 00 00 00 */	li r8, 0
/* 80C392A8  4B 3E 29 CD */	bl fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 80C392AC  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 80C392B0  38 00 00 02 */	li r0, 2
/* 80C392B4  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80C392B8  38 60 00 01 */	li r3, 1
/* 80C392BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C392C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C392C4  7C 08 03 A6 */	mtlr r0
/* 80C392C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C392CC  4E 80 00 20 */	blr 
