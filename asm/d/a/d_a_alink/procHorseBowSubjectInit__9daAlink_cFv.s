lbl_800F2150:
/* 800F2150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2154  7C 08 02 A6 */	mflr r0
/* 800F2158  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F215C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2160  7C 7F 1B 78 */	mr r31, r3
/* 800F2164  38 80 00 45 */	li r4, 0x45
/* 800F2168  4B FD 0C 3D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F216C  2C 03 00 00 */	cmpwi r3, 0
/* 800F2170  40 82 00 0C */	bne lbl_800F217C
/* 800F2174  38 60 00 00 */	li r3, 0
/* 800F2178  48 00 00 28 */	b lbl_800F21A0
lbl_800F217C:
/* 800F217C  7F E3 FB 78 */	mr r3, r31
/* 800F2180  4B FF B8 A5 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2184  7F E3 FB 78 */	mr r3, r31
/* 800F2188  4B FF CC 11 */	bl setBaseRideAnime__9daAlink_cFv
/* 800F218C  38 00 00 00 */	li r0, 0
/* 800F2190  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F2194  7F E3 FB 78 */	mr r3, r31
/* 800F2198  4B FE C9 F5 */	bl setBowOrSlingStatus__9daAlink_cFv
/* 800F219C  38 60 00 01 */	li r3, 1
lbl_800F21A0:
/* 800F21A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F21A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F21A8  7C 08 03 A6 */	mtlr r0
/* 800F21AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F21B0  4E 80 00 20 */	blr 
