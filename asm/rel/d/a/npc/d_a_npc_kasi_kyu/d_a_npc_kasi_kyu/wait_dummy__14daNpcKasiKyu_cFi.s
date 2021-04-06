lbl_80A24A54:
/* 80A24A54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A24A58  7C 08 02 A6 */	mflr r0
/* 80A24A5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A24A60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A24A64  7C 7F 1B 78 */	mr r31, r3
/* 80A24A68  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A24A6C  2C 00 00 00 */	cmpwi r0, 0
/* 80A24A70  41 82 00 10 */	beq lbl_80A24A80
/* 80A24A74  40 80 00 4C */	bge lbl_80A24AC0
/* 80A24A78  48 00 00 48 */	b lbl_80A24AC0
/* 80A24A7C  48 00 00 44 */	b lbl_80A24AC0
lbl_80A24A80:
/* 80A24A80  38 80 00 04 */	li r4, 4
/* 80A24A84  3C A0 80 A2 */	lis r5, lit_4249@ha /* 0x80A25944@ha */
/* 80A24A88  C0 25 59 44 */	lfs f1, lit_4249@l(r5)  /* 0x80A25944@l */
/* 80A24A8C  38 A0 00 00 */	li r5, 0
/* 80A24A90  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A24A94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A24A98  7D 89 03 A6 */	mtctr r12
/* 80A24A9C  4E 80 04 21 */	bctrl 
/* 80A24AA0  3C 60 80 A2 */	lis r3, lit_4449@ha /* 0x80A2595C@ha */
/* 80A24AA4  C0 03 59 5C */	lfs f0, lit_4449@l(r3)  /* 0x80A2595C@l */
/* 80A24AA8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A24AAC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A24AB0  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A24AB4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A24AB8  38 00 00 01 */	li r0, 1
/* 80A24ABC  B0 1F 14 04 */	sth r0, 0x1404(r31)
lbl_80A24AC0:
/* 80A24AC0  38 60 00 01 */	li r3, 1
/* 80A24AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A24AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A24ACC  7C 08 03 A6 */	mtlr r0
/* 80A24AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A24AD4  4E 80 00 20 */	blr 
