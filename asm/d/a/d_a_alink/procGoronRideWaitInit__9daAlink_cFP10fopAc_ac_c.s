lbl_800C854C:
/* 800C854C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C8550  7C 08 02 A6 */	mflr r0
/* 800C8554  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C8558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C855C  93 C1 00 08 */	stw r30, 8(r1)
/* 800C8560  7C 7E 1B 78 */	mr r30, r3
/* 800C8564  7C 9F 23 78 */	mr r31, r4
/* 800C8568  38 80 00 BE */	li r4, 0xbe
/* 800C856C  4B FF A8 39 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C8570  2C 03 00 00 */	cmpwi r3, 0
/* 800C8574  40 82 00 0C */	bne lbl_800C8580
/* 800C8578  38 60 00 00 */	li r3, 0
/* 800C857C  48 00 00 44 */	b lbl_800C85C0
lbl_800C8580:
/* 800C8580  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C8584  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C8588  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800C858C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800C8590  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800C8594  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800C8598  38 00 00 50 */	li r0, 0x50
/* 800C859C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800C85A0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C85A4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800C85A8  7F C3 F3 78 */	mr r3, r30
/* 800C85AC  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 800C85B0  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 800C85B4  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800C85B8  4B FE 58 5D */	bl setBlendMoveAnime__9daAlink_cFf
/* 800C85BC  38 60 00 01 */	li r3, 1
lbl_800C85C0:
/* 800C85C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C85C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C85C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C85CC  7C 08 03 A6 */	mtlr r0
/* 800C85D0  38 21 00 10 */	addi r1, r1, 0x10
/* 800C85D4  4E 80 00 20 */	blr 
