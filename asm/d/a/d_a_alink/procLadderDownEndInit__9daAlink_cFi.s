lbl_800FDC18:
/* 800FDC18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FDC1C  7C 08 02 A6 */	mflr r0
/* 800FDC20  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FDC24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FDC28  93 C1 00 08 */	stw r30, 8(r1)
/* 800FDC2C  7C 7E 1B 78 */	mr r30, r3
/* 800FDC30  7C 9F 23 78 */	mr r31, r4
/* 800FDC34  38 80 00 6A */	li r4, 0x6a
/* 800FDC38  4B FC 43 35 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FDC3C  7F C3 F3 78 */	mr r3, r30
/* 800FDC40  2C 1F 00 00 */	cmpwi r31, 0
/* 800FDC44  38 80 00 9E */	li r4, 0x9e
/* 800FDC48  41 82 00 08 */	beq lbl_800FDC50
/* 800FDC4C  38 80 00 9D */	li r4, 0x9d
lbl_800FDC50:
/* 800FDC50  3C A0 80 39 */	lis r5, m__20daAlinkHIO_ladder_c0@ha
/* 800FDC54  38 A5 EB 8C */	addi r5, r5, m__20daAlinkHIO_ladder_c0@l
/* 800FDC58  C0 25 00 40 */	lfs f1, 0x40(r5)
/* 800FDC5C  C0 45 00 44 */	lfs f2, 0x44(r5)
/* 800FDC60  4B FA F3 81 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800FDC64  38 00 00 0E */	li r0, 0xe
/* 800FDC68  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800FDC6C  7F C3 F3 78 */	mr r3, r30
/* 800FDC70  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FDC74  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 800FDC78  38 80 00 00 */	li r4, 0
/* 800FDC7C  4B FB DA F5 */	bl setSpecialGravity__9daAlink_cFffi
/* 800FDC80  38 00 28 00 */	li r0, 0x2800
/* 800FDC84  B0 1E 30 A0 */	sth r0, 0x30a0(r30)
/* 800FDC88  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800FDC8C  D0 1E 33 F4 */	stfs f0, 0x33f4(r30)
/* 800FDC90  38 00 00 00 */	li r0, 0
/* 800FDC94  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800FDC98  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800FDC9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800FDCA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800FDCA4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800FDCA8  64 00 02 00 */	oris r0, r0, 0x200
/* 800FDCAC  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800FDCB0  38 60 00 01 */	li r3, 1
/* 800FDCB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FDCB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FDCBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FDCC0  7C 08 03 A6 */	mtlr r0
/* 800FDCC4  38 21 00 10 */	addi r1, r1, 0x10
/* 800FDCC8  4E 80 00 20 */	blr 
