lbl_8053CF78:
/* 8053CF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053CF7C  7C 08 02 A6 */	mflr r0
/* 8053CF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053CF84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053CF88  93 C1 00 08 */	stw r30, 8(r1)
/* 8053CF8C  7C 7F 1B 78 */	mr r31, r3
/* 8053CF90  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8053CF94  2C 00 00 02 */	cmpwi r0, 2
/* 8053CF98  41 82 00 80 */	beq lbl_8053D018
/* 8053CF9C  40 80 00 C0 */	bge lbl_8053D05C
/* 8053CFA0  2C 00 00 00 */	cmpwi r0, 0
/* 8053CFA4  40 80 00 0C */	bge lbl_8053CFB0
/* 8053CFA8  48 00 00 B4 */	b lbl_8053D05C
/* 8053CFAC  48 00 00 B0 */	b lbl_8053D05C
lbl_8053CFB0:
/* 8053CFB0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8053CFB4  2C 00 00 09 */	cmpwi r0, 9
/* 8053CFB8  41 82 00 28 */	beq lbl_8053CFE0
/* 8053CFBC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 8053CFC0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8053CFC4  4B C0 88 D5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CFC8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 8053CFCC  38 00 00 09 */	li r0, 9
/* 8053CFD0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8053CFD4  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053CFD8  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053CFDC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8053CFE0:
/* 8053CFE0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8053CFE4  2C 00 00 05 */	cmpwi r0, 5
/* 8053CFE8  41 82 00 28 */	beq lbl_8053D010
/* 8053CFEC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 8053CFF0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053CFF4  4B C0 88 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053CFF8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 8053CFFC  38 00 00 05 */	li r0, 5
/* 8053D000  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8053D004  3C 60 80 54 */	lis r3, lit_4894@ha /* 0x8053E86C@ha */
/* 8053D008  C0 03 E8 6C */	lfs f0, lit_4894@l(r3)  /* 0x8053E86C@l */
/* 8053D00C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8053D010:
/* 8053D010  38 00 00 02 */	li r0, 2
/* 8053D014  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8053D018:
/* 8053D018  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8053D01C  2C 00 00 00 */	cmpwi r0, 0
/* 8053D020  41 82 00 28 */	beq lbl_8053D048
/* 8053D024  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8053D028  4B C0 86 D5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8053D02C  38 00 00 00 */	li r0, 0
/* 8053D030  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8053D034  3C 60 80 54 */	lis r3, lit_4337@ha /* 0x8053E844@ha */
/* 8053D038  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)  /* 0x8053E844@l */
/* 8053D03C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8053D040  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053D044  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8053D048:
/* 8053D048  38 00 00 00 */	li r0, 0
/* 8053D04C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8053D050  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 8053D054  60 00 00 04 */	ori r0, r0, 4
/* 8053D058  90 1F 06 B8 */	stw r0, 0x6b8(r31)
lbl_8053D05C:
/* 8053D05C  38 60 00 01 */	li r3, 1
/* 8053D060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D064  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053D068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D06C  7C 08 03 A6 */	mtlr r0
/* 8053D070  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D074  4E 80 00 20 */	blr 
