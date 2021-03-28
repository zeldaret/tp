lbl_80B495D8:
/* 80B495D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B495DC  7C 08 02 A6 */	mflr r0
/* 80B495E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B495E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B495E8  7C 7F 1B 78 */	mr r31, r3
/* 80B495EC  80 03 0C E0 */	lwz r0, 0xce0(r3)
/* 80B495F0  2C 00 00 00 */	cmpwi r0, 0
/* 80B495F4  41 82 00 28 */	beq lbl_80B4961C
/* 80B495F8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B495FC  4B 5F C1 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B49600  38 00 00 00 */	li r0, 0
/* 80B49604  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B49608  3C 60 80 B5 */	lis r3, lit_4194@ha
/* 80B4960C  C0 03 97 54 */	lfs f0, lit_4194@l(r3)
/* 80B49610  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B49614  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B49618  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B4961C:
/* 80B4961C  38 00 00 00 */	li r0, 0
/* 80B49620  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B49624  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80B49628  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B4962C  38 60 00 01 */	li r3, 1
/* 80B49630  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B49634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B49638  7C 08 03 A6 */	mtlr r0
/* 80B4963C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B49640  4E 80 00 20 */	blr 
