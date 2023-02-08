lbl_801C084C:
/* 801C084C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0850  7C 08 02 A6 */	mflr r0
/* 801C0854  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0858  4B E7 E4 81 */	bl chkGetMap__10dMapInfo_nFv
/* 801C085C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0860  7C 08 03 A6 */	mtlr r0
/* 801C0864  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0868  4E 80 00 20 */	blr 
