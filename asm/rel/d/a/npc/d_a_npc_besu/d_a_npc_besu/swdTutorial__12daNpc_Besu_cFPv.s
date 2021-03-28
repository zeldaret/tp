lbl_8053CAA0:
/* 8053CAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053CAA4  7C 08 02 A6 */	mflr r0
/* 8053CAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053CAAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053CAB0  93 C1 00 08 */	stw r30, 8(r1)
/* 8053CAB4  7C 7F 1B 78 */	mr r31, r3
/* 8053CAB8  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8053CABC  2C 00 00 02 */	cmpwi r0, 2
/* 8053CAC0  41 82 00 8C */	beq lbl_8053CB4C
/* 8053CAC4  40 80 00 D8 */	bge lbl_8053CB9C
/* 8053CAC8  2C 00 00 00 */	cmpwi r0, 0
/* 8053CACC  40 80 00 0C */	bge lbl_8053CAD8
/* 8053CAD0  48 00 00 CC */	b lbl_8053CB9C
/* 8053CAD4  48 00 00 C8 */	b lbl_8053CB9C
lbl_8053CAD8:
/* 8053CAD8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8053CADC  2C 00 00 00 */	cmpwi r0, 0
/* 8053CAE0  40 82 00 6C */	bne lbl_8053CB4C
/* 8053CAE4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8053CAE8  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8053CAEC  41 82 00 28 */	beq lbl_8053CB14
/* 8053CAF0  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8053CAF4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8053CAF8  4B C0 8D A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CAFC  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8053CB00  38 00 00 1C */	li r0, 0x1c
/* 8053CB04  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8053CB08  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CB0C  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CB10  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8053CB14:
/* 8053CB14  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8053CB18  2C 00 00 00 */	cmpwi r0, 0
/* 8053CB1C  41 82 00 28 */	beq lbl_8053CB44
/* 8053CB20  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8053CB24  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053CB28  4B C0 8D 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CB2C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8053CB30  38 00 00 00 */	li r0, 0
/* 8053CB34  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8053CB38  3C 60 80 54 */	lis r3, lit_4894@ha
/* 8053CB3C  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)
/* 8053CB40  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8053CB44:
/* 8053CB44  38 00 00 02 */	li r0, 2
/* 8053CB48  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8053CB4C:
/* 8053CB4C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 8053CB50  2C 00 00 00 */	cmpwi r0, 0
/* 8053CB54  40 82 00 40 */	bne lbl_8053CB94
/* 8053CB58  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8053CB5C  2C 00 00 01 */	cmpwi r0, 1
/* 8053CB60  41 82 00 2C */	beq lbl_8053CB8C
/* 8053CB64  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8053CB68  4B C0 8B 94 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053CB6C  38 00 00 00 */	li r0, 0
/* 8053CB70  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8053CB74  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053CB78  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053CB7C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8053CB80  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053CB84  38 00 00 01 */	li r0, 1
/* 8053CB88  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8053CB8C:
/* 8053CB8C  38 00 00 00 */	li r0, 0
/* 8053CB90  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_8053CB94:
/* 8053CB94  38 00 00 00 */	li r0, 0
/* 8053CB98  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8053CB9C:
/* 8053CB9C  38 60 00 01 */	li r3, 1
/* 8053CBA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053CBA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053CBA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053CBAC  7C 08 03 A6 */	mtlr r0
/* 8053CBB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8053CBB4  4E 80 00 20 */	blr 
