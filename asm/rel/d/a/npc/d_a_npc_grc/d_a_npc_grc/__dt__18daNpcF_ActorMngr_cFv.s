lbl_809CEC64:
/* 809CEC64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CEC68  7C 08 02 A6 */	mflr r0
/* 809CEC6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CEC70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CEC74  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CEC78  41 82 00 1C */	beq lbl_809CEC94
/* 809CEC7C  3C A0 80 9D */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 809CEC80  38 05 FB 20 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 809CEC84  90 1F 00 04 */	stw r0, 4(r31)
/* 809CEC88  7C 80 07 35 */	extsh. r0, r4
/* 809CEC8C  40 81 00 08 */	ble lbl_809CEC94
/* 809CEC90  4B 90 00 AC */	b __dl__FPv
lbl_809CEC94:
/* 809CEC94  7F E3 FB 78 */	mr r3, r31
/* 809CEC98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CEC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CECA0  7C 08 03 A6 */	mtlr r0
/* 809CECA4  38 21 00 10 */	addi r1, r1, 0x10
/* 809CECA8  4E 80 00 20 */	blr 
