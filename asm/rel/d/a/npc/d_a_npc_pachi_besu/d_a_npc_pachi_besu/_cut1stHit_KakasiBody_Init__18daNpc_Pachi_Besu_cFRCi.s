lbl_80A95150:
/* 80A95150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A95154  7C 08 02 A6 */	mflr r0
/* 80A95158  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9515C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A95160  7C 7F 1B 78 */	mr r31, r3
/* 80A95164  80 04 00 00 */	lwz r0, 0(r4)
/* 80A95168  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9516C  41 82 00 58 */	beq lbl_80A951C4
/* 80A95170  40 80 00 10 */	bge lbl_80A95180
/* 80A95174  2C 00 00 05 */	cmpwi r0, 5
/* 80A95178  41 82 00 14 */	beq lbl_80A9518C
/* 80A9517C  48 00 00 48 */	b lbl_80A951C4
lbl_80A95180:
/* 80A95180  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A95184  41 82 00 40 */	beq lbl_80A951C4
/* 80A95188  48 00 00 3C */	b lbl_80A951C4
lbl_80A9518C:
/* 80A9518C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A95190  2C 00 00 00 */	cmpwi r0, 0
/* 80A95194  41 82 00 28 */	beq lbl_80A951BC
/* 80A95198  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9519C  4B 6B 05 61 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A951A0  38 00 00 00 */	li r0, 0
/* 80A951A4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A951A8  3C 60 80 A9 */	lis r3, lit_4347@ha /* 0x80A96B0C@ha */
/* 80A951AC  C0 03 6B 0C */	lfs f0, lit_4347@l(r3)  /* 0x80A96B0C@l */
/* 80A951B0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A951B4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A951B8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A951BC:
/* 80A951BC  38 00 00 00 */	li r0, 0
/* 80A951C0  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A951C4:
/* 80A951C4  38 60 00 01 */	li r3, 1
/* 80A951C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A951CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A951D0  7C 08 03 A6 */	mtlr r0
/* 80A951D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A951D8  4E 80 00 20 */	blr 
