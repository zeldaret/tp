lbl_809D8924:
/* 809D8924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D8928  7C 08 02 A6 */	mflr r0
/* 809D892C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D8930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D8934  93 C1 00 08 */	stw r30, 8(r1)
/* 809D8938  7C 7F 1B 78 */	mr r31, r3
/* 809D893C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 809D8940  2C 00 00 02 */	cmpwi r0, 2
/* 809D8944  41 82 00 8C */	beq lbl_809D89D0
/* 809D8948  40 80 01 84 */	bge lbl_809D8ACC
/* 809D894C  2C 00 00 00 */	cmpwi r0, 0
/* 809D8950  40 80 00 0C */	bge lbl_809D895C
/* 809D8954  48 00 01 78 */	b lbl_809D8ACC
/* 809D8958  48 00 01 74 */	b lbl_809D8ACC
lbl_809D895C:
/* 809D895C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809D8960  2C 00 00 05 */	cmpwi r0, 5
/* 809D8964  41 82 00 64 */	beq lbl_809D89C8
/* 809D8968  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 809D896C  2C 00 00 0D */	cmpwi r0, 0xd
/* 809D8970  41 82 00 28 */	beq lbl_809D8998
/* 809D8974  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 809D8978  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809D897C  4B 76 CF 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D8980  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 809D8984  38 00 00 0D */	li r0, 0xd
/* 809D8988  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 809D898C  3C 60 80 9E */	lis r3, lit_4385@ha /* 0x809D9E30@ha */
/* 809D8990  C0 03 9E 30 */	lfs f0, lit_4385@l(r3)  /* 0x809D9E30@l */
/* 809D8994  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_809D8998:
/* 809D8998  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 809D899C  2C 00 00 04 */	cmpwi r0, 4
/* 809D89A0  41 82 00 28 */	beq lbl_809D89C8
/* 809D89A4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 809D89A8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809D89AC  4B 76 CE ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D89B0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 809D89B4  38 00 00 04 */	li r0, 4
/* 809D89B8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809D89BC  3C 60 80 9E */	lis r3, lit_4385@ha /* 0x809D9E30@ha */
/* 809D89C0  C0 03 9E 30 */	lfs f0, lit_4385@l(r3)  /* 0x809D9E30@l */
/* 809D89C4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809D89C8:
/* 809D89C8  38 00 00 02 */	li r0, 2
/* 809D89CC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809D89D0:
/* 809D89D0  80 1F 10 D8 */	lwz r0, 0x10d8(r31)
/* 809D89D4  2C 00 00 02 */	cmpwi r0, 2
/* 809D89D8  40 82 00 10 */	bne lbl_809D89E8
/* 809D89DC  38 00 00 01 */	li r0, 1
/* 809D89E0  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 809D89E4  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_809D89E8:
/* 809D89E8  7F E3 FB 78 */	mr r3, r31
/* 809D89EC  4B 77 29 4D */	bl srchPlayerActor__8daNpcT_cFv
/* 809D89F0  2C 03 00 00 */	cmpwi r3, 0
/* 809D89F4  41 82 00 54 */	beq lbl_809D8A48
/* 809D89F8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809D89FC  2C 00 00 01 */	cmpwi r0, 1
/* 809D8A00  41 82 00 2C */	beq lbl_809D8A2C
/* 809D8A04  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809D8A08  4B 76 CC F5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809D8A0C  38 00 00 00 */	li r0, 0
/* 809D8A10  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809D8A14  3C 60 80 9E */	lis r3, lit_4008@ha /* 0x809D9E18@ha */
/* 809D8A18  C0 03 9E 18 */	lfs f0, lit_4008@l(r3)  /* 0x809D9E18@l */
/* 809D8A1C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809D8A20  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809D8A24  38 00 00 01 */	li r0, 1
/* 809D8A28  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809D8A2C:
/* 809D8A2C  38 00 00 00 */	li r0, 0
/* 809D8A30  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809D8A34  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 809D8A38  20 00 00 01 */	subfic r0, r0, 1
/* 809D8A3C  7C 00 00 34 */	cntlzw r0, r0
/* 809D8A40  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 809D8A44  48 00 00 54 */	b lbl_809D8A98
lbl_809D8A48:
/* 809D8A48  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809D8A4C  2C 00 00 00 */	cmpwi r0, 0
/* 809D8A50  41 82 00 28 */	beq lbl_809D8A78
/* 809D8A54  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809D8A58  4B 76 CC A5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809D8A5C  38 00 00 00 */	li r0, 0
/* 809D8A60  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809D8A64  3C 60 80 9E */	lis r3, lit_4008@ha /* 0x809D9E18@ha */
/* 809D8A68  C0 03 9E 18 */	lfs f0, lit_4008@l(r3)  /* 0x809D9E18@l */
/* 809D8A6C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809D8A70  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809D8A74  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809D8A78:
/* 809D8A78  38 00 00 00 */	li r0, 0
/* 809D8A7C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809D8A80  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809D8A84  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809D8A88  7C 63 00 50 */	subf r3, r3, r0
/* 809D8A8C  30 03 FF FF */	addic r0, r3, -1
/* 809D8A90  7C 00 19 10 */	subfe r0, r0, r3
/* 809D8A94  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_809D8A98:
/* 809D8A98  2C 00 00 00 */	cmpwi r0, 0
/* 809D8A9C  41 82 00 30 */	beq lbl_809D8ACC
/* 809D8AA0  7F E3 FB 78 */	mr r3, r31
/* 809D8AA4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809D8AA8  38 A0 FF FF */	li r5, -1
/* 809D8AAC  38 C0 FF FF */	li r6, -1
/* 809D8AB0  38 E0 00 0F */	li r7, 0xf
/* 809D8AB4  39 00 00 00 */	li r8, 0
/* 809D8AB8  4B 77 2B 91 */	bl step__8daNpcT_cFsiiii
/* 809D8ABC  2C 03 00 00 */	cmpwi r3, 0
/* 809D8AC0  41 82 00 0C */	beq lbl_809D8ACC
/* 809D8AC4  38 00 00 01 */	li r0, 1
/* 809D8AC8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_809D8ACC:
/* 809D8ACC  38 60 00 01 */	li r3, 1
/* 809D8AD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D8AD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D8AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D8ADC  7C 08 03 A6 */	mtlr r0
/* 809D8AE0  38 21 00 10 */	addi r1, r1, 0x10
/* 809D8AE4  4E 80 00 20 */	blr 
