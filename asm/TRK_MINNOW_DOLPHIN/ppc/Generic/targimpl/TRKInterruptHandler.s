lbl_8036F684:
/* 8036F684  7C 5A 03 A6 */	mtspr 0x1a, r2
/* 8036F688  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 8036F68C  7C 93 42 A6 */	mfspr r4, 0x113
/* 8036F690  7C 40 00 26 */	mfcr r2
/* 8036F694  7C 53 43 A6 */	mtspr 0x113, r2
/* 8036F698  3C 40 80 44 */	lis r2, gTRKState@h
/* 8036F69C  60 42 F2 94 */	ori r2, r2, gTRKState@l
/* 8036F6A0  80 42 00 8C */	lwz r2, 0x8c(r2)
/* 8036F6A4  60 42 80 02 */	ori r2, r2, 0x8002
/* 8036F6A8  68 42 80 02 */	xori r2, r2, 0x8002
/* 8036F6AC  7C 00 04 AC */	sync
/* 8036F6B0  7C 40 01 24 */	mtmsr r2
/* 8036F6B4  7C 00 04 AC */	sync
/* 8036F6B8  3C 40 80 44 */	lis r2, TRK_saved_exceptionID@h
/* 8036F6BC  60 42 F2 90 */	ori r2, r2, TRK_saved_exceptionID@l
/* 8036F6C0  B0 62 00 00 */	sth r3, 0(r2)
/* 8036F6C4  2C 03 05 00 */	cmpwi r3, 0x500
/* 8036F6C8  40 82 00 84 */	bne lbl_8036F74C
/* 8036F6CC  3C 40 80 44 */	lis r2, gTRKCPUState@h
/* 8036F6D0  60 42 F3 38 */	ori r2, r2, gTRKCPUState@l
/* 8036F6D4  7C 68 02 A6 */	mflr r3
/* 8036F6D8  90 62 04 2C */	stw r3, 0x42c(r2)
/* 8036F6DC  48 00 25 A1 */	bl TRKUARTInterruptHandler
/* 8036F6E0  3C 40 80 44 */	lis r2, gTRKCPUState@h
/* 8036F6E4  60 42 F3 38 */	ori r2, r2, gTRKCPUState@l
/* 8036F6E8  80 62 04 2C */	lwz r3, 0x42c(r2)
/* 8036F6EC  7C 68 03 A6 */	mtlr r3
/* 8036F6F0  3C 40 80 44 */	lis r2, gTRKState@h
/* 8036F6F4  60 42 F2 94 */	ori r2, r2, gTRKState@l
/* 8036F6F8  80 42 00 A0 */	lwz r2, 0xa0(r2)
/* 8036F6FC  88 42 00 00 */	lbz r2, 0(r2)
/* 8036F700  2C 02 00 00 */	cmpwi r2, 0
/* 8036F704  41 82 00 2C */	beq lbl_8036F730
/* 8036F708  3C 40 80 3D */	lis r2, gTRKExceptionStatus@h
/* 8036F70C  60 42 32 44 */	ori r2, r2, gTRKExceptionStatus@l
/* 8036F710  88 42 00 0C */	lbz r2, 0xc(r2)
/* 8036F714  2C 02 00 01 */	cmpwi r2, 1
/* 8036F718  41 82 00 18 */	beq lbl_8036F730
/* 8036F71C  3C 40 80 44 */	lis r2, gTRKState@h
/* 8036F720  60 42 F2 94 */	ori r2, r2, gTRKState@l
/* 8036F724  38 60 00 01 */	li r3, 1
/* 8036F728  98 62 00 9C */	stb r3, 0x9c(r2)
/* 8036F72C  48 00 00 20 */	b lbl_8036F74C
lbl_8036F730:
/* 8036F730  3C 40 80 44 */	lis r2, gTRKSaveState@h
/* 8036F734  60 42 F7 68 */	ori r2, r2, gTRKSaveState@l
/* 8036F738  80 62 00 88 */	lwz r3, 0x88(r2)
/* 8036F73C  7C 6F F1 20 */	mtcrf 0xff, r3
/* 8036F740  80 62 00 0C */	lwz r3, 0xc(r2)
/* 8036F744  80 42 00 08 */	lwz r2, 8(r2)
/* 8036F748  4C 00 00 64 */	rfi 
lbl_8036F74C:
/* 8036F74C  3C 40 80 44 */	lis r2, TRK_saved_exceptionID@h
/* 8036F750  60 42 F2 90 */	ori r2, r2, TRK_saved_exceptionID@l
/* 8036F754  A0 62 00 00 */	lhz r3, 0(r2)
/* 8036F758  3C 40 80 3D */	lis r2, gTRKExceptionStatus@h
/* 8036F75C  60 42 32 44 */	ori r2, r2, gTRKExceptionStatus@l
/* 8036F760  88 42 00 0C */	lbz r2, 0xc(r2)
/* 8036F764  2C 02 00 00 */	cmpwi r2, 0
/* 8036F768  40 82 00 B0 */	bne TRKExceptionHandler
/* 8036F76C  3C 40 80 44 */	lis r2, gTRKCPUState@h
/* 8036F770  60 42 F3 38 */	ori r2, r2, gTRKCPUState@l
/* 8036F774  90 02 00 00 */	stw r0, 0(r2)
/* 8036F778  90 22 00 04 */	stw r1, 4(r2)
/* 8036F77C  7C 11 42 A6 */	mfspr r0, 0x111
/* 8036F780  90 02 00 08 */	stw r0, 8(r2)
/* 8036F784  B0 62 02 F8 */	sth r3, 0x2f8(r2)
/* 8036F788  B0 62 02 FA */	sth r3, 0x2fa(r2)
/* 8036F78C  7C 12 42 A6 */	mfspr r0, 0x112
/* 8036F790  90 02 00 0C */	stw r0, 0xc(r2)
/* 8036F794  BC 82 00 10 */	stmw r4, 0x10(r2)
/* 8036F798  7F 7A 02 A6 */	mfspr r27, 0x1a
/* 8036F79C  7F 88 02 A6 */	mflr r28
/* 8036F7A0  7F B3 42 A6 */	mfspr r29, 0x113
/* 8036F7A4  7F C9 02 A6 */	mfctr r30
/* 8036F7A8  7F E1 02 A6 */	mfxer r31
/* 8036F7AC  BF 62 00 80 */	stmw r27, 0x80(r2)
/* 8036F7B0  48 00 1A 41 */	bl TRKSaveExtended1Block
/* 8036F7B4  3C 40 80 3D */	lis r2, gTRKExceptionStatus@h
/* 8036F7B8  60 42 32 44 */	ori r2, r2, gTRKExceptionStatus@l
/* 8036F7BC  38 60 00 01 */	li r3, 1
/* 8036F7C0  98 62 00 0C */	stb r3, 0xc(r2)
/* 8036F7C4  3C 40 80 44 */	lis r2, gTRKState@h
/* 8036F7C8  60 42 F2 94 */	ori r2, r2, gTRKState@l
/* 8036F7CC  80 02 00 8C */	lwz r0, 0x8c(r2)
/* 8036F7D0  7C 00 04 AC */	sync
/* 8036F7D4  7C 00 01 24 */	mtmsr r0
/* 8036F7D8  7C 00 04 AC */	sync
/* 8036F7DC  80 02 00 80 */	lwz r0, 0x80(r2)
/* 8036F7E0  7C 08 03 A6 */	mtlr r0
/* 8036F7E4  80 02 00 84 */	lwz r0, 0x84(r2)
/* 8036F7E8  7C 09 03 A6 */	mtctr r0
/* 8036F7EC  80 02 00 88 */	lwz r0, 0x88(r2)
/* 8036F7F0  7C 01 03 A6 */	mtxer r0
/* 8036F7F4  80 02 00 94 */	lwz r0, 0x94(r2)
/* 8036F7F8  7C 12 03 A6 */	mtdsisr r0
/* 8036F7FC  80 02 00 90 */	lwz r0, 0x90(r2)
/* 8036F800  7C 13 03 A6 */	mtdar r0
/* 8036F804  B8 62 00 0C */	lmw r3, 0xc(r2)
/* 8036F808  80 02 00 00 */	lwz r0, 0(r2)
/* 8036F80C  80 22 00 04 */	lwz r1, 4(r2)
/* 8036F810  80 42 00 08 */	lwz r2, 8(r2)
/* 8036F814  48 00 09 20 */	b TRKPostInterruptEvent
