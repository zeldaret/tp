lbl_80B457E0:
/* 80B457E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B457E4  7C 08 02 A6 */	mflr r0
/* 80B457E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B457EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B457F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B457F4  41 82 00 1C */	beq lbl_80B45810
/* 80B457F8  3C A0 80 B4 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80B457FC  38 05 63 5C */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80B45800  90 1F 00 04 */	stw r0, 4(r31)
/* 80B45804  7C 80 07 35 */	extsh. r0, r4
/* 80B45808  40 81 00 08 */	ble lbl_80B45810
/* 80B4580C  4B 78 95 30 */	b __dl__FPv
lbl_80B45810:
/* 80B45810  7F E3 FB 78 */	mr r3, r31
/* 80B45814  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B45818  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4581C  7C 08 03 A6 */	mtlr r0
/* 80B45820  38 21 00 10 */	addi r1, r1, 0x10
/* 80B45824  4E 80 00 20 */	blr 
