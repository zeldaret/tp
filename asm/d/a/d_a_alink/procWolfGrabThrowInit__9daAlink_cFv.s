lbl_8013D818:
/* 8013D818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013D81C  7C 08 02 A6 */	mflr r0
/* 8013D820  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013D824  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013D828  7C 7F 1B 78 */	mr r31, r3
/* 8013D82C  38 80 01 2D */	li r4, 0x12d
/* 8013D830  4B F8 47 3D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013D834  7F E3 FB 78 */	mr r3, r31
/* 8013D838  38 80 00 4F */	li r4, 0x4f
/* 8013D83C  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlGrab_c0@ha /* 0x8038F95C@ha */
/* 8013D840  38 A5 F9 5C */	addi r5, r5, m__20daAlinkHIO_wlGrab_c0@l /* 0x8038F95C@l */
/* 8013D844  38 A5 00 50 */	addi r5, r5, 0x50
/* 8013D848  4B FE C0 01 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013D84C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013D850  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013D854  38 60 00 01 */	li r3, 1
/* 8013D858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013D85C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013D860  7C 08 03 A6 */	mtlr r0
/* 8013D864  38 21 00 10 */	addi r1, r1, 0x10
/* 8013D868  4E 80 00 20 */	blr 
