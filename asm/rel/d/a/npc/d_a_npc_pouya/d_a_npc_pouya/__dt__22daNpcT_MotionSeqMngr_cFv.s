lbl_80AB1824:
/* 80AB1824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB1828  7C 08 02 A6 */	mflr r0
/* 80AB182C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB1830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB1834  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB1838  41 82 00 1C */	beq lbl_80AB1854
/* 80AB183C  3C A0 80 AB */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AB2BCC@ha */
/* 80AB1840  38 05 2B CC */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AB2BCC@l */
/* 80AB1844  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80AB1848  7C 80 07 35 */	extsh. r0, r4
/* 80AB184C  40 81 00 08 */	ble lbl_80AB1854
/* 80AB1850  4B 81 D4 ED */	bl __dl__FPv
lbl_80AB1854:
/* 80AB1854  7F E3 FB 78 */	mr r3, r31
/* 80AB1858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB185C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB1860  7C 08 03 A6 */	mtlr r0
/* 80AB1864  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB1868  4E 80 00 20 */	blr 
