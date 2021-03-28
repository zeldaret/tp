lbl_802F1940:
/* 802F1940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F1944  7C 08 02 A6 */	mflr r0
/* 802F1948  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F194C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F1950  7C 7F 1B 78 */	mr r31, r3
/* 802F1954  3C 80 80 3A */	lis r4, j2dDefaultTevStageInfo@ha
/* 802F1958  38 84 1B E0 */	addi r4, r4, j2dDefaultTevStageInfo@l
/* 802F195C  48 00 00 4D */	bl setTevStageInfo__11J2DTevStageFRC15J2DTevStageInfo
/* 802F1960  88 1F 00 07 */	lbz r0, 7(r31)
/* 802F1964  54 04 07 B6 */	rlwinm r4, r0, 0, 0x1e, 0x1b
/* 802F1968  38 62 C7 98 */	la r3, j2dDefaultTevSwapMode(r2) /* 80456198-_SDA2_BASE_ */
/* 802F196C  88 03 00 01 */	lbz r0, 1(r3)
/* 802F1970  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802F1974  7C 80 03 78 */	or r0, r4, r0
/* 802F1978  98 1F 00 07 */	stb r0, 7(r31)
/* 802F197C  88 1F 00 07 */	lbz r0, 7(r31)
/* 802F1980  54 03 00 3A */	rlwinm r3, r0, 0, 0, 0x1d
/* 802F1984  88 02 C7 98 */	lbz r0, j2dDefaultTevSwapMode(r2)
/* 802F1988  7C 60 03 78 */	or r0, r3, r0
/* 802F198C  98 1F 00 07 */	stb r0, 7(r31)
/* 802F1990  7F E3 FB 78 */	mr r3, r31
/* 802F1994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F1998  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F199C  7C 08 03 A6 */	mtlr r0
/* 802F19A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802F19A4  4E 80 00 20 */	blr 
