lbl_809EE7DC:
/* 809EE7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EE7E0  7C 08 02 A6 */	mflr r0
/* 809EE7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EE7E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EE7EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809EE7F0  41 82 00 1C */	beq lbl_809EE80C
/* 809EE7F4  3C A0 80 9F */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 809EE7F8  38 05 FB A0 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 809EE7FC  90 1F 00 04 */	stw r0, 4(r31)
/* 809EE800  7C 80 07 35 */	extsh. r0, r4
/* 809EE804  40 81 00 08 */	ble lbl_809EE80C
/* 809EE808  4B 8E 05 34 */	b __dl__FPv
lbl_809EE80C:
/* 809EE80C  7F E3 FB 78 */	mr r3, r31
/* 809EE810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EE814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EE818  7C 08 03 A6 */	mtlr r0
/* 809EE81C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EE820  4E 80 00 20 */	blr 
