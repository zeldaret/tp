lbl_8035A8EC:
/* 8035A8EC  7C 08 02 A6 */	mflr r0
/* 8035A8F0  90 01 00 04 */	stw r0, 4(r1)
/* 8035A8F4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035A8F8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035A8FC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035A900  7C 7E 1B 78 */	mr r30, r3
/* 8035A904  4B FE 2D F1 */	bl OSDisableInterrupts
/* 8035A908  7C 7F 1B 78 */	mr r31, r3
/* 8035A90C  48 00 03 91 */	bl __GXFifoReadDisable
/* 8035A910  38 60 00 00 */	li r3, 0
/* 8035A914  38 80 00 00 */	li r4, 0
/* 8035A918  48 00 03 DD */	bl __GXWriteFifoIntEnable
/* 8035A91C  93 CD 93 CC */	stw r30, GPFifo(r13)
/* 8035A920  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A924  80 1E 00 00 */	lwz r0, 0(r30)
/* 8035A928  B0 03 00 20 */	sth r0, 0x20(r3)
/* 8035A92C  80 1E 00 04 */	lwz r0, 4(r30)
/* 8035A930  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A934  B0 03 00 24 */	sth r0, 0x24(r3)
/* 8035A938  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8035A93C  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A940  B0 03 00 30 */	sth r0, 0x30(r3)
/* 8035A944  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8035A948  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A94C  B0 03 00 34 */	sth r0, 0x34(r3)
/* 8035A950  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8035A954  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A958  B0 03 00 38 */	sth r0, 0x38(r3)
/* 8035A95C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8035A960  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A964  B0 03 00 28 */	sth r0, 0x28(r3)
/* 8035A968  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8035A96C  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A970  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 8035A974  80 1E 00 00 */	lwz r0, 0(r30)
/* 8035A978  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A97C  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 8035A980  B0 03 00 22 */	sth r0, 0x22(r3)
/* 8035A984  80 1E 00 04 */	lwz r0, 4(r30)
/* 8035A988  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A98C  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 8035A990  B0 03 00 26 */	sth r0, 0x26(r3)
/* 8035A994  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8035A998  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A99C  7C 00 86 70 */	srawi r0, r0, 0x10
/* 8035A9A0  B0 03 00 32 */	sth r0, 0x32(r3)
/* 8035A9A4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 8035A9A8  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A9AC  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 8035A9B0  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8035A9B4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8035A9B8  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A9BC  54 00 84 BE */	rlwinm r0, r0, 0x10, 0x12, 0x1f
/* 8035A9C0  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 8035A9C4  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8035A9C8  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A9CC  54 00 84 3E */	srwi r0, r0, 0x10
/* 8035A9D0  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 8035A9D4  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8035A9D8  80 6D 93 A4 */	lwz r3, __cpReg(r13)
/* 8035A9DC  54 00 84 3E */	srwi r0, r0, 0x10
/* 8035A9E0  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 8035A9E4  4B FD F3 15 */	bl PPCSync
/* 8035A9E8  80 6D 93 C8 */	lwz r3, CPUFifo(r13)
/* 8035A9EC  80 0D 93 CC */	lwz r0, GPFifo(r13)
/* 8035A9F0  7C 03 00 40 */	cmplw r3, r0
/* 8035A9F4  40 82 00 24 */	bne lbl_8035AA18
/* 8035A9F8  38 00 00 01 */	li r0, 1
/* 8035A9FC  98 0D 93 D4 */	stb r0, data_80451954(r13)
/* 8035AA00  38 60 00 01 */	li r3, 1
/* 8035AA04  38 80 00 00 */	li r4, 0
/* 8035AA08  48 00 02 ED */	bl __GXWriteFifoIntEnable
/* 8035AA0C  38 60 00 01 */	li r3, 1
/* 8035AA10  48 00 02 B1 */	bl __GXFifoLink
/* 8035AA14  48 00 00 20 */	b lbl_8035AA34
lbl_8035AA18:
/* 8035AA18  38 00 00 00 */	li r0, 0
/* 8035AA1C  98 0D 93 D4 */	stb r0, data_80451954(r13)
/* 8035AA20  38 60 00 00 */	li r3, 0
/* 8035AA24  38 80 00 00 */	li r4, 0
/* 8035AA28  48 00 02 CD */	bl __GXWriteFifoIntEnable
/* 8035AA2C  38 60 00 00 */	li r3, 0
/* 8035AA30  48 00 02 91 */	bl __GXFifoLink
lbl_8035AA34:
/* 8035AA34  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 8035AA38  38 00 00 00 */	li r0, 0
/* 8035AA3C  80 8D 93 A4 */	lwz r4, __cpReg(r13)
/* 8035AA40  38 60 00 01 */	li r3, 1
/* 8035AA44  80 C5 00 08 */	lwz r6, 8(r5)
/* 8035AA48  50 06 0F BC */	rlwimi r6, r0, 1, 0x1e, 0x1e
/* 8035AA4C  50 06 2E B4 */	rlwimi r6, r0, 5, 0x1a, 0x1a
/* 8035AA50  B0 C4 00 02 */	sth r6, 2(r4)
/* 8035AA54  38 80 00 01 */	li r4, 1
/* 8035AA58  80 05 00 08 */	lwz r0, 8(r5)
/* 8035AA5C  80 AD 93 A4 */	lwz r5, __cpReg(r13)
/* 8035AA60  B0 05 00 02 */	sth r0, 2(r5)
/* 8035AA64  48 00 02 C1 */	bl __GXWriteFifoIntReset
/* 8035AA68  48 00 02 11 */	bl __GXFifoReadEnable
/* 8035AA6C  7F E3 FB 78 */	mr r3, r31
/* 8035AA70  4B FE 2C AD */	bl OSRestoreInterrupts
/* 8035AA74  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035AA78  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035AA7C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035AA80  38 21 00 18 */	addi r1, r1, 0x18
/* 8035AA84  7C 08 03 A6 */	mtlr r0
/* 8035AA88  4E 80 00 20 */	blr 
