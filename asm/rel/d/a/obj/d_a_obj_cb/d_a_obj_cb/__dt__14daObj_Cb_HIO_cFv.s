lbl_80BC573C:
/* 80BC573C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC5740  7C 08 02 A6 */	mflr r0
/* 80BC5744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC5748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC574C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC5750  41 82 00 1C */	beq lbl_80BC576C
/* 80BC5754  3C A0 80 BC */	lis r5, __vt__14daObj_Cb_HIO_c@ha
/* 80BC5758  38 05 58 E0 */	addi r0, r5, __vt__14daObj_Cb_HIO_c@l
/* 80BC575C  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC5760  7C 80 07 35 */	extsh. r0, r4
/* 80BC5764  40 81 00 08 */	ble lbl_80BC576C
/* 80BC5768  4B 70 95 D4 */	b __dl__FPv
lbl_80BC576C:
/* 80BC576C  7F E3 FB 78 */	mr r3, r31
/* 80BC5770  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC5774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC5778  7C 08 03 A6 */	mtlr r0
/* 80BC577C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC5780  4E 80 00 20 */	blr 
