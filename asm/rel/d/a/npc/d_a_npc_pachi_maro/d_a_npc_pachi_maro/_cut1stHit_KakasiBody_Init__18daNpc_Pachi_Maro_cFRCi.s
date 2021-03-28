lbl_80A99FD0:
/* 80A99FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A99FD4  7C 08 02 A6 */	mflr r0
/* 80A99FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A99FDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A99FE0  7C 7F 1B 78 */	mr r31, r3
/* 80A99FE4  80 04 00 00 */	lwz r0, 0(r4)
/* 80A99FE8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A99FEC  41 82 00 58 */	beq lbl_80A9A044
/* 80A99FF0  40 80 00 10 */	bge lbl_80A9A000
/* 80A99FF4  2C 00 00 05 */	cmpwi r0, 5
/* 80A99FF8  41 82 00 14 */	beq lbl_80A9A00C
/* 80A99FFC  48 00 00 48 */	b lbl_80A9A044
lbl_80A9A000:
/* 80A9A000  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A9A004  41 82 00 40 */	beq lbl_80A9A044
/* 80A9A008  48 00 00 3C */	b lbl_80A9A044
lbl_80A9A00C:
/* 80A9A00C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A9A010  2C 00 00 00 */	cmpwi r0, 0
/* 80A9A014  41 82 00 28 */	beq lbl_80A9A03C
/* 80A9A018  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A9A01C  4B 6A B6 E0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A9A020  38 00 00 00 */	li r0, 0
/* 80A9A024  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A9A028  3C 60 80 AA */	lis r3, lit_4346@ha
/* 80A9A02C  C0 03 B9 30 */	lfs f0, lit_4346@l(r3)
/* 80A9A030  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A9A034  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A9A038  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A9A03C:
/* 80A9A03C  38 00 00 00 */	li r0, 0
/* 80A9A040  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80A9A044:
/* 80A9A044  38 60 00 01 */	li r3, 1
/* 80A9A048  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9A04C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9A050  7C 08 03 A6 */	mtlr r0
/* 80A9A054  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9A058  4E 80 00 20 */	blr 
