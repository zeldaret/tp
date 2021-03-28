lbl_8007EB70:
/* 8007EB70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007EB74  7C 08 02 A6 */	mflr r0
/* 8007EB78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007EB7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8007EB80  7C BF 2B 78 */	mr r31, r5
/* 8007EB84  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 8007EB88  80 A5 00 08 */	lwz r5, 8(r5)
/* 8007EB8C  54 80 20 36 */	slwi r0, r4, 4
/* 8007EB90  7C 85 02 14 */	add r4, r5, r0
/* 8007EB94  A0 84 00 0E */	lhz r4, 0xe(r4)
/* 8007EB98  38 A1 00 08 */	addi r5, r1, 8
/* 8007EB9C  38 63 00 1C */	addi r3, r3, 0x1c
/* 8007EBA0  4B FF 55 25 */	bl getCode__6dBgPlcCFiPP5sBgPc
/* 8007EBA4  7F E3 FB 78 */	mr r3, r31
/* 8007EBA8  80 81 00 08 */	lwz r4, 8(r1)
/* 8007EBAC  4B FF 54 9D */	bl setCode__5dBgPcFR5sBgPc
/* 8007EBB0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8007EBB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007EBB8  7C 08 03 A6 */	mtlr r0
/* 8007EBBC  38 21 00 20 */	addi r1, r1, 0x20
/* 8007EBC0  4E 80 00 20 */	blr 
