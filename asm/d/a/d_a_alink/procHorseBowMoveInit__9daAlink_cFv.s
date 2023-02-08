lbl_800F224C:
/* 800F224C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2250  7C 08 02 A6 */	mflr r0
/* 800F2254  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F225C  7C 7F 1B 78 */	mr r31, r3
/* 800F2260  38 80 00 46 */	li r4, 0x46
/* 800F2264  4B FD 0B 41 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F2268  2C 03 00 00 */	cmpwi r3, 0
/* 800F226C  40 82 00 0C */	bne lbl_800F2278
/* 800F2270  38 60 00 00 */	li r3, 0
/* 800F2274  48 00 00 20 */	b lbl_800F2294
lbl_800F2278:
/* 800F2278  7F E3 FB 78 */	mr r3, r31
/* 800F227C  4B FF B7 A9 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2280  7F E3 FB 78 */	mr r3, r31
/* 800F2284  4B FF CB 15 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2288  7F E3 FB 78 */	mr r3, r31
/* 800F228C  4B FE C9 01 */	bl setBowOrSlingStatus__9daAlink_cFv
/* 800F2290  38 60 00 01 */	li r3, 1
lbl_800F2294:
/* 800F2294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F229C  7C 08 03 A6 */	mtlr r0
/* 800F22A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800F22A4  4E 80 00 20 */	blr 
