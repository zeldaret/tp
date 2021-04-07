lbl_800C39EC:
/* 800C39EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C39F0  7C 08 02 A6 */	mflr r0
/* 800C39F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C39F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C39FC  7C 7F 1B 78 */	mr r31, r3
/* 800C3A00  38 80 00 07 */	li r4, 7
/* 800C3A04  4B FF F3 A1 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C3A08  2C 03 00 00 */	cmpwi r3, 0
/* 800C3A0C  40 82 00 0C */	bne lbl_800C3A18
/* 800C3A10  38 60 00 00 */	li r3, 0
/* 800C3A14  48 00 00 1C */	b lbl_800C3A30
lbl_800C3A18:
/* 800C3A18  7F E3 FB 78 */	mr r3, r31
/* 800C3A1C  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800C3A20  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800C3A24  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800C3A28  4B FE B0 49 */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 800C3A2C  38 60 00 01 */	li r3, 1
lbl_800C3A30:
/* 800C3A30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C3A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3A38  7C 08 03 A6 */	mtlr r0
/* 800C3A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C3A40  4E 80 00 20 */	blr 
