lbl_802F4110:
/* 802F4110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F4114  7C 08 02 A6 */	mflr r0
/* 802F4118  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F411C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F4120  7C 7F 1B 78 */	mr r31, r3
/* 802F4124  4B FF D8 85 */	bl setTevStageInfo__11J2DTevStageFRC15J2DTevStageInfo
/* 802F4128  88 1F 00 07 */	lbz r0, 7(r31)
/* 802F412C  54 04 07 B6 */	rlwinm r4, r0, 0, 0x1e, 0x1b
/* 802F4130  38 62 C7 98 */	la r3, j2dDefaultTevSwapMode(r2) /* 80456198-_SDA2_BASE_ */
/* 802F4134  88 03 00 01 */	lbz r0, 1(r3)
/* 802F4138  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 802F413C  7C 80 03 78 */	or r0, r4, r0
/* 802F4140  98 1F 00 07 */	stb r0, 7(r31)
/* 802F4144  88 1F 00 07 */	lbz r0, 7(r31)
/* 802F4148  54 03 00 3A */	rlwinm r3, r0, 0, 0, 0x1d
/* 802F414C  88 02 C7 98 */	lbz r0, j2dDefaultTevSwapMode(r2)
/* 802F4150  7C 60 03 78 */	or r0, r3, r0
/* 802F4154  98 1F 00 07 */	stb r0, 7(r31)
/* 802F4158  7F E3 FB 78 */	mr r3, r31
/* 802F415C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F4160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F4164  7C 08 03 A6 */	mtlr r0
/* 802F4168  38 21 00 10 */	addi r1, r1, 0x10
/* 802F416C  4E 80 00 20 */	blr 
