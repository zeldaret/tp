lbl_804BC6FC:
/* 804BC6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BC700  7C 08 02 A6 */	mflr r0
/* 804BC704  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BC708  A0 03 00 14 */	lhz r0, 0x14(r3)
/* 804BC70C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 804BC710  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 804BC714  80 63 00 38 */	lwz r3, 0x38(r3)
/* 804BC718  80 63 00 14 */	lwz r3, 0x14(r3)
/* 804BC71C  2C 04 00 00 */	cmpwi r4, 0
/* 804BC720  40 82 00 0C */	bne lbl_804BC72C
/* 804BC724  7C 04 03 78 */	mr r4, r0
/* 804BC728  4B FF FF 49 */	bl baseModelCallBack__9daMidna_cFi
lbl_804BC72C:
/* 804BC72C  38 60 00 01 */	li r3, 1
/* 804BC730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BC734  7C 08 03 A6 */	mtlr r0
/* 804BC738  38 21 00 10 */	addi r1, r1, 0x10
/* 804BC73C  4E 80 00 20 */	blr 
