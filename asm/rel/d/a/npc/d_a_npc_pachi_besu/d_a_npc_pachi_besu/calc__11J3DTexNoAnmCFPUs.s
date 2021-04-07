lbl_80A95740:
/* 80A95740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95744  7C 08 02 A6 */	mflr r0
/* 80A95748  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9574C  7C 66 1B 78 */	mr r6, r3
/* 80A95750  7C 85 23 78 */	mr r5, r4
/* 80A95754  80 63 00 08 */	lwz r3, 8(r3)
/* 80A95758  A0 86 00 04 */	lhz r4, 4(r6)
/* 80A9575C  4B 89 57 F5 */	bl getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80A95760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A95764  7C 08 03 A6 */	mtlr r0
/* 80A95768  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9576C  4E 80 00 20 */	blr 
