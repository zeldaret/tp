lbl_8036F8B4:
/* 8036F8B4  3C 60 80 44 */	lis r3, gTRKState@h
/* 8036F8B8  60 63 F2 94 */	ori r3, r3, gTRKState@l
/* 8036F8BC  BC 03 00 00 */	stmw r0, 0(r3)
/* 8036F8C0  7C 00 00 A6 */	mfmsr r0
/* 8036F8C4  90 03 00 8C */	stw r0, 0x8c(r3)
/* 8036F8C8  7C 08 02 A6 */	mflr r0
/* 8036F8CC  90 03 00 80 */	stw r0, 0x80(r3)
/* 8036F8D0  7C 09 02 A6 */	mfctr r0
/* 8036F8D4  90 03 00 84 */	stw r0, 0x84(r3)
/* 8036F8D8  7C 01 02 A6 */	mfxer r0
/* 8036F8DC  90 03 00 88 */	stw r0, 0x88(r3)
/* 8036F8E0  7C 12 02 A6 */	mfdsisr r0
/* 8036F8E4  90 03 00 94 */	stw r0, 0x94(r3)
/* 8036F8E8  7C 13 02 A6 */	mfdar r0
/* 8036F8EC  90 03 00 90 */	stw r0, 0x90(r3)
/* 8036F8F0  38 20 80 02 */	li r1, -32766
/* 8036F8F4  7C 21 08 F8 */	nor r1, r1, r1
/* 8036F8F8  7C 60 00 A6 */	mfmsr r3
/* 8036F8FC  7C 63 08 38 */	and r3, r3, r1
/* 8036F900  7C 60 01 24 */	mtmsr r3
/* 8036F904  3C 40 80 44 */	lis r2, gTRKState@h
/* 8036F908  60 42 F2 94 */	ori r2, r2, gTRKState@l
/* 8036F90C  80 42 00 A0 */	lwz r2, 0xa0(r2)
/* 8036F910  88 42 00 00 */	lbz r2, 0(r2)
/* 8036F914  2C 02 00 00 */	cmpwi r2, 0
/* 8036F918  41 82 00 18 */	beq lbl_8036F930
/* 8036F91C  3C 40 80 44 */	lis r2, gTRKState@h
/* 8036F920  60 42 F2 94 */	ori r2, r2, gTRKState@l
/* 8036F924  38 60 00 01 */	li r3, 1
/* 8036F928  98 62 00 9C */	stb r3, 0x9c(r2)
/* 8036F92C  48 00 00 4C */	b TRKInterruptHandlerEnableInterrupts
lbl_8036F930:
/* 8036F930  3C 40 80 3D */	lis r2, gTRKExceptionStatus@h
/* 8036F934  60 42 32 44 */	ori r2, r2, gTRKExceptionStatus@l
/* 8036F938  38 60 00 00 */	li r3, 0
/* 8036F93C  98 62 00 0C */	stb r3, 0xc(r2)
/* 8036F940  48 00 1A 69 */	bl TRKRestoreExtended1Block
/* 8036F944  3C 40 80 44 */	lis r2, gTRKCPUState@h
/* 8036F948  60 42 F3 38 */	ori r2, r2, gTRKCPUState@l
/* 8036F94C  BB 62 00 80 */	lmw r27, 0x80(r2)
/* 8036F950  7F 7A 03 A6 */	mtspr 0x1a, r27
/* 8036F954  7F 88 03 A6 */	mtlr r28
/* 8036F958  7F AF F1 20 */	mtcrf 0xff, r29
/* 8036F95C  7F C9 03 A6 */	mtctr r30
/* 8036F960  7F E1 03 A6 */	mtxer r31
/* 8036F964  B8 62 00 0C */	lmw r3, 0xc(r2)
/* 8036F968  80 02 00 00 */	lwz r0, 0(r2)
/* 8036F96C  80 22 00 04 */	lwz r1, 4(r2)
/* 8036F970  80 42 00 08 */	lwz r2, 8(r2)
/* 8036F974  4C 00 00 64 */	rfi 
