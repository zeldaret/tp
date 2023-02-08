lbl_809D66EC:
/* 809D66EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D66F0  7C 08 02 A6 */	mflr r0
/* 809D66F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D66F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D66FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D6700  41 82 00 1C */	beq lbl_809D671C
/* 809D6704  3C A0 80 9D */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809D71D4@ha */
/* 809D6708  38 05 71 D4 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809D71D4@l */
/* 809D670C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 809D6710  7C 80 07 35 */	extsh. r0, r4
/* 809D6714  40 81 00 08 */	ble lbl_809D671C
/* 809D6718  4B 8F 86 25 */	bl __dl__FPv
lbl_809D671C:
/* 809D671C  7F E3 FB 78 */	mr r3, r31
/* 809D6720  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D6724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D6728  7C 08 03 A6 */	mtlr r0
/* 809D672C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D6730  4E 80 00 20 */	blr 
