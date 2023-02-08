lbl_806AD3B8:
/* 806AD3B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AD3BC  7C 08 02 A6 */	mflr r0
/* 806AD3C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AD3C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AD3C8  93 C1 00 08 */	stw r30, 8(r1)
/* 806AD3CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 806AD3D0  7C 9F 23 78 */	mr r31, r4
/* 806AD3D4  41 82 00 38 */	beq lbl_806AD40C
/* 806AD3D8  3C 60 80 6B */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x806AD774@ha */
/* 806AD3DC  38 03 D7 74 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x806AD774@l */
/* 806AD3E0  90 1E 00 0C */	stw r0, 0xc(r30)
/* 806AD3E4  38 7E 00 14 */	addi r3, r30, 0x14
/* 806AD3E8  38 80 FF FF */	li r4, -1
/* 806AD3EC  4B BC 1B 2D */	bl __dt__8cM3dGCirFv
/* 806AD3F0  7F C3 F3 78 */	mr r3, r30
/* 806AD3F4  38 80 00 00 */	li r4, 0
/* 806AD3F8  4B BB AC B9 */	bl __dt__13cBgS_PolyInfoFv
/* 806AD3FC  7F E0 07 35 */	extsh. r0, r31
/* 806AD400  40 81 00 0C */	ble lbl_806AD40C
/* 806AD404  7F C3 F3 78 */	mr r3, r30
/* 806AD408  4B C2 19 35 */	bl __dl__FPv
lbl_806AD40C:
/* 806AD40C  7F C3 F3 78 */	mr r3, r30
/* 806AD410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AD414  83 C1 00 08 */	lwz r30, 8(r1)
/* 806AD418  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AD41C  7C 08 03 A6 */	mtlr r0
/* 806AD420  38 21 00 10 */	addi r1, r1, 0x10
/* 806AD424  4E 80 00 20 */	blr 
