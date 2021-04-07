lbl_80B92924:
/* 80B92924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B92928  7C 08 02 A6 */	mflr r0
/* 80B9292C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B92930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B92934  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B92938  41 82 00 1C */	beq lbl_80B92954
/* 80B9293C  3C A0 80 B9 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B93BCC@ha */
/* 80B92940  38 05 3B CC */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80B93BCC@l */
/* 80B92944  90 1F 00 04 */	stw r0, 4(r31)
/* 80B92948  7C 80 07 35 */	extsh. r0, r4
/* 80B9294C  40 81 00 08 */	ble lbl_80B92954
/* 80B92950  4B 73 C3 ED */	bl __dl__FPv
lbl_80B92954:
/* 80B92954  7F E3 FB 78 */	mr r3, r31
/* 80B92958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9295C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B92960  7C 08 03 A6 */	mtlr r0
/* 80B92964  38 21 00 10 */	addi r1, r1, 0x10
/* 80B92968  4E 80 00 20 */	blr 
