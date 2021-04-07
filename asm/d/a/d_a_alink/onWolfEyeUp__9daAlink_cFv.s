lbl_80127C54:
/* 80127C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80127C58  7C 08 02 A6 */	mflr r0
/* 80127C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80127C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80127C64  7C 7F 1B 78 */	mr r31, r3
/* 80127C68  A8 03 30 AC */	lha r0, 0x30ac(r3)
/* 80127C6C  2C 00 00 00 */	cmpwi r0, 0
/* 80127C70  40 82 00 28 */	bne lbl_80127C98
/* 80127C74  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 80127C78  38 80 00 01 */	li r4, 1
/* 80127C7C  48 19 BE 81 */	bl setWolfEyeOpen__14Z2CreatureLinkFb
/* 80127C80  3C 60 80 39 */	lis r3, m__18daAlinkHIO_wolf_c0@ha /* 0x8038F9F8@ha */
/* 80127C84  38 63 F9 F8 */	addi r3, r3, m__18daAlinkHIO_wolf_c0@l /* 0x8038F9F8@l */
/* 80127C88  A8 03 00 0C */	lha r0, 0xc(r3)
/* 80127C8C  B0 1F 30 AC */	sth r0, 0x30ac(r31)
/* 80127C90  38 00 00 14 */	li r0, 0x14
/* 80127C94  98 1F 2F D2 */	stb r0, 0x2fd2(r31)
lbl_80127C98:
/* 80127C98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80127C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80127CA0  7C 08 03 A6 */	mtlr r0
/* 80127CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80127CA8  4E 80 00 20 */	blr 
