lbl_80A28C40:
/* 80A28C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A28C44  7C 08 02 A6 */	mflr r0
/* 80A28C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A28C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A28C50  7C 7F 1B 78 */	mr r31, r3
/* 80A28C54  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A28C58  2C 00 00 00 */	cmpwi r0, 0
/* 80A28C5C  41 82 00 10 */	beq lbl_80A28C6C
/* 80A28C60  40 80 00 40 */	bge lbl_80A28CA0
/* 80A28C64  48 00 00 3C */	b lbl_80A28CA0
/* 80A28C68  48 00 00 38 */	b lbl_80A28CA0
lbl_80A28C6C:
/* 80A28C6C  38 80 00 00 */	li r4, 0
/* 80A28C70  3C A0 80 A3 */	lis r5, lit_4249@ha /* 0x80A2A0D8@ha */
/* 80A28C74  C0 25 A0 D8 */	lfs f1, lit_4249@l(r5)  /* 0x80A2A0D8@l */
/* 80A28C78  38 A0 00 00 */	li r5, 0
/* 80A28C7C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A28C80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A28C84  7D 89 03 A6 */	mtctr r12
/* 80A28C88  4E 80 04 21 */	bctrl 
/* 80A28C8C  3C 60 80 A3 */	lis r3, lit_4449@ha /* 0x80A2A0F0@ha */
/* 80A28C90  C0 03 A0 F0 */	lfs f0, lit_4449@l(r3)  /* 0x80A2A0F0@l */
/* 80A28C94  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A28C98  38 00 00 01 */	li r0, 1
/* 80A28C9C  B0 1F 14 04 */	sth r0, 0x1404(r31)
lbl_80A28CA0:
/* 80A28CA0  38 60 00 01 */	li r3, 1
/* 80A28CA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A28CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A28CAC  7C 08 03 A6 */	mtlr r0
/* 80A28CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A28CB4  4E 80 00 20 */	blr 
