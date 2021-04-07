lbl_80B45F74:
/* 80B45F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B45F78  7C 08 02 A6 */	mflr r0
/* 80B45F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B45F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B45F84  7C 7F 1B 78 */	mr r31, r3
/* 80B45F88  80 03 0C E0 */	lwz r0, 0xce0(r3)
/* 80B45F8C  2C 00 00 00 */	cmpwi r0, 0
/* 80B45F90  41 82 00 28 */	beq lbl_80B45FB8
/* 80B45F94  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B45F98  4B 5F F7 65 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B45F9C  38 00 00 00 */	li r0, 0
/* 80B45FA0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B45FA4  3C 60 80 B4 */	lis r3, lit_4194@ha /* 0x80B460F0@ha */
/* 80B45FA8  C0 03 60 F0 */	lfs f0, lit_4194@l(r3)  /* 0x80B460F0@l */
/* 80B45FAC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B45FB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B45FB4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B45FB8:
/* 80B45FB8  38 00 00 00 */	li r0, 0
/* 80B45FBC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B45FC0  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80B45FC4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B45FC8  38 60 00 01 */	li r3, 1
/* 80B45FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B45FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B45FD4  7C 08 03 A6 */	mtlr r0
/* 80B45FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B45FDC  4E 80 00 20 */	blr 
