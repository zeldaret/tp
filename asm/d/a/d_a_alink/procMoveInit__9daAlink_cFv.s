lbl_800C36CC:
/* 800C36CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C36D0  7C 08 02 A6 */	mflr r0
/* 800C36D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C36D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C36DC  7C 7F 1B 78 */	mr r31, r3
/* 800C36E0  38 80 00 04 */	li r4, 4
/* 800C36E4  4B FF F6 C1 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C36E8  2C 03 00 00 */	cmpwi r3, 0
/* 800C36EC  40 82 00 0C */	bne lbl_800C36F8
/* 800C36F0  38 60 00 00 */	li r3, 0
/* 800C36F4  48 00 00 28 */	b lbl_800C371C
lbl_800C36F8:
/* 800C36F8  7F E3 FB 78 */	mr r3, r31
/* 800C36FC  3C 80 80 39 */	lis r4, m__19daAlinkHIO_basic_c0@ha
/* 800C3700  38 84 D6 64 */	addi r4, r4, m__19daAlinkHIO_basic_c0@l
/* 800C3704  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 800C3708  4B FE A7 0D */	bl setBlendMoveAnime__9daAlink_cFf
/* 800C370C  7F E3 FB 78 */	mr r3, r31
/* 800C3710  38 80 00 03 */	li r4, 3
/* 800C3714  48 05 DA AD */	bl setFootEffectProcType__9daAlink_cFi
/* 800C3718  38 60 00 01 */	li r3, 1
lbl_800C371C:
/* 800C371C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C3720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C3724  7C 08 03 A6 */	mtlr r0
/* 800C3728  38 21 00 10 */	addi r1, r1, 0x10
/* 800C372C  4E 80 00 20 */	blr 
