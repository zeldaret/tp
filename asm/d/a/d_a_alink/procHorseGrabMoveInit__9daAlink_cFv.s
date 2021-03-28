lbl_800F2334:
/* 800F2334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2338  7C 08 02 A6 */	mflr r0
/* 800F233C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2344  7C 7F 1B 78 */	mr r31, r3
/* 800F2348  38 80 00 47 */	li r4, 0x47
/* 800F234C  4B FD 0A 59 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F2350  2C 03 00 00 */	cmpwi r3, 0
/* 800F2354  40 82 00 0C */	bne lbl_800F2360
/* 800F2358  38 60 00 00 */	li r3, 0
/* 800F235C  48 00 00 20 */	b lbl_800F237C
lbl_800F2360:
/* 800F2360  7F E3 FB 78 */	mr r3, r31
/* 800F2364  4B FF B6 C1 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2368  7F E3 FB 78 */	mr r3, r31
/* 800F236C  4B FF CA 2D */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2370  38 00 00 00 */	li r0, 0
/* 800F2374  B0 1F 30 04 */	sth r0, 0x3004(r31)
/* 800F2378  38 60 00 01 */	li r3, 1
lbl_800F237C:
/* 800F237C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2384  7C 08 03 A6 */	mtlr r0
/* 800F2388  38 21 00 10 */	addi r1, r1, 0x10
/* 800F238C  4E 80 00 20 */	blr 
