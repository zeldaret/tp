lbl_809C69B8:
/* 809C69B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C69BC  7C 08 02 A6 */	mflr r0
/* 809C69C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C69C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C69C8  7C 7F 1B 78 */	mr r31, r3
/* 809C69CC  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C69D0  2C 00 00 02 */	cmpwi r0, 2
/* 809C69D4  41 82 00 74 */	beq lbl_809C6A48
/* 809C69D8  40 80 00 BC */	bge lbl_809C6A94
/* 809C69DC  2C 00 00 00 */	cmpwi r0, 0
/* 809C69E0  41 82 00 0C */	beq lbl_809C69EC
/* 809C69E4  48 00 00 B0 */	b lbl_809C6A94
/* 809C69E8  48 00 00 AC */	b lbl_809C6A94
lbl_809C69EC:
/* 809C69EC  38 80 00 17 */	li r4, 0x17
/* 809C69F0  3C A0 80 9D */	lis r5, lit_6106@ha /* 0x809CA408@ha */
/* 809C69F4  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)  /* 0x809CA408@l */
/* 809C69F8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C69FC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C6A00  7D 89 03 A6 */	mtctr r12
/* 809C6A04  4E 80 04 21 */	bctrl 
/* 809C6A08  7F E3 FB 78 */	mr r3, r31
/* 809C6A0C  38 80 00 00 */	li r4, 0
/* 809C6A10  3C A0 80 9D */	lis r5, lit_4611@ha /* 0x809C9E34@ha */
/* 809C6A14  C0 25 9E 34 */	lfs f1, lit_4611@l(r5)  /* 0x809C9E34@l */
/* 809C6A18  38 A0 00 00 */	li r5, 0
/* 809C6A1C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C6A20  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C6A24  7D 89 03 A6 */	mtctr r12
/* 809C6A28  4E 80 04 21 */	bctrl 
/* 809C6A2C  7F E3 FB 78 */	mr r3, r31
/* 809C6A30  38 80 00 00 */	li r4, 0
/* 809C6A34  4B FF C6 3D */	bl setLookMode__11daNpc_grA_cFi
/* 809C6A38  38 00 00 00 */	li r0, 0
/* 809C6A3C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C6A40  38 00 00 02 */	li r0, 2
/* 809C6A44  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C6A48:
/* 809C6A48  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809C6A4C  28 00 00 00 */	cmplwi r0, 0
/* 809C6A50  40 82 00 44 */	bne lbl_809C6A94
/* 809C6A54  7F E3 FB 78 */	mr r3, r31
/* 809C6A58  38 80 00 00 */	li r4, 0
/* 809C6A5C  4B FF C6 15 */	bl setLookMode__11daNpc_grA_cFi
/* 809C6A60  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C6A64  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C6A68  7C 04 00 00 */	cmpw r4, r0
/* 809C6A6C  41 82 00 28 */	beq lbl_809C6A94
/* 809C6A70  7F E3 FB 78 */	mr r3, r31
/* 809C6A74  38 A0 FF FF */	li r5, -1
/* 809C6A78  38 C0 FF FF */	li r6, -1
/* 809C6A7C  38 E0 00 0F */	li r7, 0xf
/* 809C6A80  4B 78 D6 25 */	bl step__8daNpcF_cFsiii
/* 809C6A84  2C 03 00 00 */	cmpwi r3, 0
/* 809C6A88  41 82 00 0C */	beq lbl_809C6A94
/* 809C6A8C  38 00 00 00 */	li r0, 0
/* 809C6A90  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C6A94:
/* 809C6A94  38 60 00 01 */	li r3, 1
/* 809C6A98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C6A9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C6AA0  7C 08 03 A6 */	mtlr r0
/* 809C6AA4  38 21 00 10 */	addi r1, r1, 0x10
/* 809C6AA8  4E 80 00 20 */	blr 
