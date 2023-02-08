lbl_800F2D84:
/* 800F2D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2D88  7C 08 02 A6 */	mflr r0
/* 800F2D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2D94  7C 7F 1B 78 */	mr r31, r3
/* 800F2D98  38 80 00 4D */	li r4, 0x4d
/* 800F2D9C  4B FD 00 09 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F2DA0  2C 03 00 00 */	cmpwi r3, 0
/* 800F2DA4  40 82 00 0C */	bne lbl_800F2DB0
/* 800F2DA8  38 60 00 00 */	li r3, 0
/* 800F2DAC  48 00 00 24 */	b lbl_800F2DD0
lbl_800F2DB0:
/* 800F2DB0  7F E3 FB 78 */	mr r3, r31
/* 800F2DB4  38 80 00 53 */	li r4, 0x53
/* 800F2DB8  4B FB A1 C9 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F2DBC  38 00 00 00 */	li r0, 0
/* 800F2DC0  98 1F 2F AB */	stb r0, 0x2fab(r31)
/* 800F2DC4  7F E3 FB 78 */	mr r3, r31
/* 800F2DC8  4B FF AC 5D */	bl setSyncRidePos__9daAlink_cFv
/* 800F2DCC  38 60 00 01 */	li r3, 1
lbl_800F2DD0:
/* 800F2DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2DD8  7C 08 03 A6 */	mtlr r0
/* 800F2DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2DE0  4E 80 00 20 */	blr 
