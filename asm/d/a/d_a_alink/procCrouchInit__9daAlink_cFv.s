lbl_800C7690:
/* 800C7690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C7694  7C 08 02 A6 */	mflr r0
/* 800C7698  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C769C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C76A0  7C 7F 1B 78 */	mr r31, r3
/* 800C76A4  38 80 00 1C */	li r4, 0x1c
/* 800C76A8  4B FF B6 FD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C76AC  2C 03 00 00 */	cmpwi r3, 0
/* 800C76B0  40 82 00 0C */	bne lbl_800C76BC
/* 800C76B4  38 60 00 00 */	li r3, 0
/* 800C76B8  48 00 00 2C */	b lbl_800C76E4
lbl_800C76BC:
/* 800C76BC  7F E3 FB 78 */	mr r3, r31
/* 800C76C0  38 80 00 29 */	li r4, 0x29
/* 800C76C4  3C A0 80 39 */	lis r5, m__20daAlinkHIO_crouch_c0@ha
/* 800C76C8  38 A5 E0 1C */	addi r5, r5, m__20daAlinkHIO_crouch_c0@l
/* 800C76CC  C0 25 00 30 */	lfs f1, 0x30(r5)
/* 800C76D0  C0 45 00 34 */	lfs f2, 0x34(r5)
/* 800C76D4  4B FE 59 0D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800C76D8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C76DC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C76E0  38 60 00 01 */	li r3, 1
lbl_800C76E4:
/* 800C76E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C76E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C76EC  7C 08 03 A6 */	mtlr r0
/* 800C76F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800C76F4  4E 80 00 20 */	blr 
