lbl_80020AE8:
/* 80020AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020AEC  7C 08 02 A6 */	mflr r0
/* 80020AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020AF4  90 61 00 08 */	stw r3, 8(r1)
/* 80020AF8  3C 60 80 02 */	lis r3, fpcCtRq_isCreatingByID__FP10create_tagPUi@ha
/* 80020AFC  38 63 0A CC */	addi r3, r3, fpcCtRq_isCreatingByID__FP10create_tagPUi@l
/* 80020B00  38 81 00 08 */	addi r4, r1, 8
/* 80020B04  4B FF FF 01 */	bl fpcCtIt_Judge__FPFPvPv_PvPv
/* 80020B08  30 03 FF FF */	addic r0, r3, -1
/* 80020B0C  7C 60 19 10 */	subfe r3, r0, r3
/* 80020B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020B14  7C 08 03 A6 */	mtlr r0
/* 80020B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80020B1C  4E 80 00 20 */	blr 
