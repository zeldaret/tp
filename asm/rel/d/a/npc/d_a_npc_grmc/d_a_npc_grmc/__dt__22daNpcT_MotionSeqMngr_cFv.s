lbl_809D9728:
/* 809D9728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D972C  7C 08 02 A6 */	mflr r0
/* 809D9730  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D9734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D9738  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D973C  41 82 00 1C */	beq lbl_809D9758
/* 809D9740  3C A0 80 9E */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809D9744  38 05 A3 3C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809D9748  90 1F 00 20 */	stw r0, 0x20(r31)
/* 809D974C  7C 80 07 35 */	extsh. r0, r4
/* 809D9750  40 81 00 08 */	ble lbl_809D9758
/* 809D9754  4B 8F 55 E8 */	b __dl__FPv
lbl_809D9758:
/* 809D9758  7F E3 FB 78 */	mr r3, r31
/* 809D975C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D9760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D9764  7C 08 03 A6 */	mtlr r0
/* 809D9768  38 21 00 10 */	addi r1, r1, 0x10
/* 809D976C  4E 80 00 20 */	blr 
