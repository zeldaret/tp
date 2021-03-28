lbl_809B88E8:
/* 809B88E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B88EC  7C 08 02 A6 */	mflr r0
/* 809B88F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B88F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B88F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B88FC  41 82 00 1C */	beq lbl_809B8918
/* 809B8900  3C A0 80 9C */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809B8904  38 05 A2 F8 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809B8908  90 1F 00 20 */	stw r0, 0x20(r31)
/* 809B890C  7C 80 07 35 */	extsh. r0, r4
/* 809B8910  40 81 00 08 */	ble lbl_809B8918
/* 809B8914  4B 91 64 28 */	b __dl__FPv
lbl_809B8918:
/* 809B8918  7F E3 FB 78 */	mr r3, r31
/* 809B891C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B8920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B8924  7C 08 03 A6 */	mtlr r0
/* 809B8928  38 21 00 10 */	addi r1, r1, 0x10
/* 809B892C  4E 80 00 20 */	blr 
