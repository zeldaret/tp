lbl_809AD0D0:
/* 809AD0D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD0D4  7C 08 02 A6 */	mflr r0
/* 809AD0D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD0DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD0E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AD0E4  41 82 00 1C */	beq lbl_809AD100
/* 809AD0E8  3C A0 80 9B */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 809AD0EC  38 05 DD 10 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 809AD0F0  90 1F 00 04 */	stw r0, 4(r31)
/* 809AD0F4  7C 80 07 35 */	extsh. r0, r4
/* 809AD0F8  40 81 00 08 */	ble lbl_809AD100
/* 809AD0FC  4B 92 1C 40 */	b __dl__FPv
lbl_809AD100:
/* 809AD100  7F E3 FB 78 */	mr r3, r31
/* 809AD104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD10C  7C 08 03 A6 */	mtlr r0
/* 809AD110  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD114  4E 80 00 20 */	blr 
