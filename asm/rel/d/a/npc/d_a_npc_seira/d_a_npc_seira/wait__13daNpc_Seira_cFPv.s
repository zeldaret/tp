lbl_80ACDD24:
/* 80ACDD24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACDD28  7C 08 02 A6 */	mflr r0
/* 80ACDD2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACDD30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACDD34  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACDD38  7C 7F 1B 78 */	mr r31, r3
/* 80ACDD3C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80ACDD40  2C 00 00 02 */	cmpwi r0, 2
/* 80ACDD44  41 82 00 80 */	beq lbl_80ACDDC4
/* 80ACDD48  40 80 01 10 */	bge lbl_80ACDE58
/* 80ACDD4C  2C 00 00 00 */	cmpwi r0, 0
/* 80ACDD50  40 80 00 0C */	bge lbl_80ACDD5C
/* 80ACDD54  48 00 01 04 */	b lbl_80ACDE58
/* 80ACDD58  48 00 01 00 */	b lbl_80ACDE58
lbl_80ACDD5C:
/* 80ACDD5C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80ACDD60  2C 00 00 0D */	cmpwi r0, 0xd
/* 80ACDD64  41 82 00 28 */	beq lbl_80ACDD8C
/* 80ACDD68  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80ACDD6C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACDD70  4B 67 7B 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACDD74  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80ACDD78  38 00 00 0D */	li r0, 0xd
/* 80ACDD7C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80ACDD80  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACDD84  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACDD88  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80ACDD8C:
/* 80ACDD8C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80ACDD90  2C 00 00 0D */	cmpwi r0, 0xd
/* 80ACDD94  41 82 00 28 */	beq lbl_80ACDDBC
/* 80ACDD98  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80ACDD9C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACDDA0  4B 67 7A F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACDDA4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80ACDDA8  38 00 00 0D */	li r0, 0xd
/* 80ACDDAC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80ACDDB0  3C 60 80 AD */	lis r3, lit_4716@ha /* 0x80ACFEB0@ha */
/* 80ACDDB4  C0 03 FE B0 */	lfs f0, lit_4716@l(r3)  /* 0x80ACFEB0@l */
/* 80ACDDB8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80ACDDBC:
/* 80ACDDBC  38 00 00 02 */	li r0, 2
/* 80ACDDC0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80ACDDC4:
/* 80ACDDC4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80ACDDC8  2C 00 00 00 */	cmpwi r0, 0
/* 80ACDDCC  40 82 00 8C */	bne lbl_80ACDE58
/* 80ACDDD0  7F E3 FB 78 */	mr r3, r31
/* 80ACDDD4  4B 67 D5 65 */	bl srchPlayerActor__8daNpcT_cFv
/* 80ACDDD8  2C 03 00 00 */	cmpwi r3, 0
/* 80ACDDDC  41 82 00 44 */	beq lbl_80ACDE20
/* 80ACDDE0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACDDE4  2C 00 00 01 */	cmpwi r0, 1
/* 80ACDDE8  41 82 00 2C */	beq lbl_80ACDE14
/* 80ACDDEC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACDDF0  4B 67 79 0D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACDDF4  38 00 00 00 */	li r0, 0
/* 80ACDDF8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACDDFC  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACDE00  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACDE04  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACDE08  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACDE0C  38 00 00 01 */	li r0, 1
/* 80ACDE10  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACDE14:
/* 80ACDE14  38 00 00 00 */	li r0, 0
/* 80ACDE18  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACDE1C  48 00 00 3C */	b lbl_80ACDE58
lbl_80ACDE20:
/* 80ACDE20  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80ACDE24  2C 00 00 00 */	cmpwi r0, 0
/* 80ACDE28  41 82 00 28 */	beq lbl_80ACDE50
/* 80ACDE2C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACDE30  4B 67 78 CD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80ACDE34  38 00 00 00 */	li r0, 0
/* 80ACDE38  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80ACDE3C  3C 60 80 AD */	lis r3, lit_4063@ha /* 0x80ACFE98@ha */
/* 80ACDE40  C0 03 FE 98 */	lfs f0, lit_4063@l(r3)  /* 0x80ACFE98@l */
/* 80ACDE44  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80ACDE48  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80ACDE4C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80ACDE50:
/* 80ACDE50  38 00 00 00 */	li r0, 0
/* 80ACDE54  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80ACDE58:
/* 80ACDE58  38 60 00 01 */	li r3, 1
/* 80ACDE5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACDE60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACDE64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACDE68  7C 08 03 A6 */	mtlr r0
/* 80ACDE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACDE70  4E 80 00 20 */	blr 
