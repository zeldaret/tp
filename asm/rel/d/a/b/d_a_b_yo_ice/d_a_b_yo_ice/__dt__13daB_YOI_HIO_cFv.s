lbl_8063DBD0:
/* 8063DBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063DBD4  7C 08 02 A6 */	mflr r0
/* 8063DBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063DBDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063DBE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8063DBE4  41 82 00 1C */	beq lbl_8063DC00
/* 8063DBE8  3C A0 80 64 */	lis r5, __vt__13daB_YOI_HIO_c@ha /* 0x8063DFD0@ha */
/* 8063DBEC  38 05 DF D0 */	addi r0, r5, __vt__13daB_YOI_HIO_c@l /* 0x8063DFD0@l */
/* 8063DBF0  90 1F 00 00 */	stw r0, 0(r31)
/* 8063DBF4  7C 80 07 35 */	extsh. r0, r4
/* 8063DBF8  40 81 00 08 */	ble lbl_8063DC00
/* 8063DBFC  4B C9 11 41 */	bl __dl__FPv
lbl_8063DC00:
/* 8063DC00  7F E3 FB 78 */	mr r3, r31
/* 8063DC04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063DC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063DC0C  7C 08 03 A6 */	mtlr r0
/* 8063DC10  38 21 00 10 */	addi r1, r1, 0x10
/* 8063DC14  4E 80 00 20 */	blr 
