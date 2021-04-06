lbl_80D318C0:
/* 80D318C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D318C4  7C 08 02 A6 */	mflr r0
/* 80D318C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D318CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D318D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D318D4  41 82 00 30 */	beq lbl_80D31904
/* 80D318D8  3C 60 80 D3 */	lis r3, __vt__19daObjWchain_shape_c@ha /* 0x80D31A34@ha */
/* 80D318DC  38 03 1A 34 */	addi r0, r3, __vt__19daObjWchain_shape_c@l /* 0x80D31A34@l */
/* 80D318E0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D318E4  41 82 00 10 */	beq lbl_80D318F4
/* 80D318E8  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80D318EC  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80D318F0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D318F4:
/* 80D318F4  7C 80 07 35 */	extsh. r0, r4
/* 80D318F8  40 81 00 0C */	ble lbl_80D31904
/* 80D318FC  7F E3 FB 78 */	mr r3, r31
/* 80D31900  4B 59 D4 3D */	bl __dl__FPv
lbl_80D31904:
/* 80D31904  7F E3 FB 78 */	mr r3, r31
/* 80D31908  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3190C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D31910  7C 08 03 A6 */	mtlr r0
/* 80D31914  38 21 00 10 */	addi r1, r1, 0x10
/* 80D31918  4E 80 00 20 */	blr 
