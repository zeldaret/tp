lbl_804CD8C0:
/* 804CD8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD8C4  7C 08 02 A6 */	mflr r0
/* 804CD8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD8CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD8D0  7C 7F 1B 78 */	mr r31, r3
/* 804CD8D4  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 804CD8D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804CD8DC  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 804CD8E0  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 804CD8E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804CD8E8  90 03 08 0C */	stw r0, 0x80c(r3)
/* 804CD8EC  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 804CD8F0  81 9F 08 1C */	lwz r12, 0x81c(r31)
/* 804CD8F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804CD8F8  7D 89 03 A6 */	mtctr r12
/* 804CD8FC  4E 80 04 21 */	bctrl 
/* 804CD900  38 7F 07 E0 */	addi r3, r31, 0x7e0
/* 804CD904  81 9F 08 1C */	lwz r12, 0x81c(r31)
/* 804CD908  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 804CD90C  7D 89 03 A6 */	mtctr r12
/* 804CD910  4E 80 04 21 */	bctrl 
/* 804CD914  7F E3 FB 78 */	mr r3, r31
/* 804CD918  4B FF F6 45 */	bl endEffect00__11daObjLife_cFv
/* 804CD91C  7F E3 FB 78 */	mr r3, r31
/* 804CD920  4B FF F6 8D */	bl endEffect02__11daObjLife_cFv
/* 804CD924  7F E3 FB 78 */	mr r3, r31
/* 804CD928  4B B6 A1 3D */	bl hide__12daItemBase_cFv
/* 804CD92C  7F E3 FB 78 */	mr r3, r31
/* 804CD930  38 80 00 00 */	li r4, 0
/* 804CD934  38 A0 00 00 */	li r5, 0
/* 804CD938  4B B4 E0 99 */	bl fopAcM_orderItemEvent__FP10fopAc_ac_cUsUs
/* 804CD93C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 804CD940  60 00 00 08 */	ori r0, r0, 8
/* 804CD944  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 804CD948  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804CD94C  88 9F 09 2A */	lbz r4, 0x92a(r31)
/* 804CD950  38 A0 FF FF */	li r5, -1
/* 804CD954  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804CD958  7C 06 07 74 */	extsb r6, r0
/* 804CD95C  38 E0 00 00 */	li r7, 0
/* 804CD960  39 00 00 00 */	li r8, 0
/* 804CD964  4B B4 E3 11 */	bl fopAcM_createItemForTrBoxDemo__FPC4cXyziiiPC5csXyzPC4cXyz
/* 804CD968  90 7F 09 2C */	stw r3, 0x92c(r31)
/* 804CD96C  38 00 00 01 */	li r0, 1
/* 804CD970  98 1F 09 34 */	stb r0, 0x934(r31)
/* 804CD974  38 60 00 01 */	li r3, 1
/* 804CD978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CD97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD980  7C 08 03 A6 */	mtlr r0
/* 804CD984  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD988  4E 80 00 20 */	blr 
