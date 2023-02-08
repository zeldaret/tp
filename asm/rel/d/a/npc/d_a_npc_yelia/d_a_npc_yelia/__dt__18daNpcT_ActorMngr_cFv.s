lbl_80B513E0:
/* 80B513E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B513E4  7C 08 02 A6 */	mflr r0
/* 80B513E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B513EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B513F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B513F4  41 82 00 1C */	beq lbl_80B51410
/* 80B513F8  3C A0 80 B5 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B532DC@ha */
/* 80B513FC  38 05 32 DC */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80B532DC@l */
/* 80B51400  90 1F 00 04 */	stw r0, 4(r31)
/* 80B51404  7C 80 07 35 */	extsh. r0, r4
/* 80B51408  40 81 00 08 */	ble lbl_80B51410
/* 80B5140C  4B 77 D9 31 */	bl __dl__FPv
lbl_80B51410:
/* 80B51410  7F E3 FB 78 */	mr r3, r31
/* 80B51414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B51418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5141C  7C 08 03 A6 */	mtlr r0
/* 80B51420  38 21 00 10 */	addi r1, r1, 0x10
/* 80B51424  4E 80 00 20 */	blr 
