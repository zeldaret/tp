lbl_80A24FE0:
/* 80A24FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A24FE4  7C 08 02 A6 */	mflr r0
/* 80A24FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A24FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A24FF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A24FF4  41 82 00 1C */	beq lbl_80A25010
/* 80A24FF8  3C A0 80 A2 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A25FB0@ha */
/* 80A24FFC  38 05 5F B0 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80A25FB0@l */
/* 80A25000  90 1F 00 04 */	stw r0, 4(r31)
/* 80A25004  7C 80 07 35 */	extsh. r0, r4
/* 80A25008  40 81 00 08 */	ble lbl_80A25010
/* 80A2500C  4B 8A 9D 31 */	bl __dl__FPv
lbl_80A25010:
/* 80A25010  7F E3 FB 78 */	mr r3, r31
/* 80A25014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A25018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2501C  7C 08 03 A6 */	mtlr r0
/* 80A25020  38 21 00 10 */	addi r1, r1, 0x10
/* 80A25024  4E 80 00 20 */	blr 
