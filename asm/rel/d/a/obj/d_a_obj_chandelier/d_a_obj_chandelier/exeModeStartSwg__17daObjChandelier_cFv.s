lbl_80BC834C:
/* 80BC834C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8350  7C 08 02 A6 */	mflr r0
/* 80BC8354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC835C  7C 7F 1B 78 */	mr r31, r3
/* 80BC8360  3C 80 80 BD */	lis r4, lit_3731@ha
/* 80BC8364  38 84 8C DC */	addi r4, r4, lit_3731@l
/* 80BC8368  C0 24 00 08 */	lfs f1, 8(r4)
/* 80BC836C  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80BC8370  C0 64 00 10 */	lfs f3, 0x10(r4)
/* 80BC8374  C0 84 00 14 */	lfs f4, 0x14(r4)
/* 80BC8378  48 00 04 09 */	bl moveSwing__17daObjChandelier_cFffff
/* 80BC837C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 80BC8380  2C 03 00 5A */	cmpwi r3, 0x5a
/* 80BC8384  41 80 00 44 */	blt lbl_80BC83C8
/* 80BC8388  38 00 00 02 */	li r0, 2
/* 80BC838C  98 1F 06 09 */	stb r0, 0x609(r31)
/* 80BC8390  38 00 00 00 */	li r0, 0
/* 80BC8394  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80BC8398  90 1F 06 00 */	stw r0, 0x600(r31)
/* 80BC839C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80BC83A0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80BC83A4  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80BC83A8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80BC83AC  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 80BC83B0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80BC83B4  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 80BC83B8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80BC83BC  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 80BC83C0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80BC83C4  48 00 00 0C */	b lbl_80BC83D0
lbl_80BC83C8:
/* 80BC83C8  38 03 00 01 */	addi r0, r3, 1
/* 80BC83CC  90 1F 06 00 */	stw r0, 0x600(r31)
lbl_80BC83D0:
/* 80BC83D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC83D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC83D8  7C 08 03 A6 */	mtlr r0
/* 80BC83DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC83E0  4E 80 00 20 */	blr 
