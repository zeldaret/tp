lbl_80AEDBE4:
/* 80AEDBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEDBE8  7C 08 02 A6 */	mflr r0
/* 80AEDBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEDBF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEDBF4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEDBF8  7C 7F 1B 78 */	mr r31, r3
/* 80AEDBFC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AEDC00  2C 00 00 02 */	cmpwi r0, 2
/* 80AEDC04  41 82 00 80 */	beq lbl_80AEDC84
/* 80AEDC08  40 80 01 3C */	bge lbl_80AEDD44
/* 80AEDC0C  2C 00 00 00 */	cmpwi r0, 0
/* 80AEDC10  40 80 00 0C */	bge lbl_80AEDC1C
/* 80AEDC14  48 00 01 30 */	b lbl_80AEDD44
/* 80AEDC18  48 00 01 2C */	b lbl_80AEDD44
lbl_80AEDC1C:
/* 80AEDC1C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AEDC20  2C 00 00 00 */	cmpwi r0, 0
/* 80AEDC24  41 82 00 28 */	beq lbl_80AEDC4C
/* 80AEDC28  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AEDC2C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AEDC30  4B 65 7C 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AEDC34  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AEDC38  38 00 00 00 */	li r0, 0
/* 80AEDC3C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AEDC40  3C 60 80 AF */	lis r3, lit_4568@ha /* 0x80AEF1B0@ha */
/* 80AEDC44  C0 03 F1 B0 */	lfs f0, lit_4568@l(r3)  /* 0x80AEF1B0@l */
/* 80AEDC48  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AEDC4C:
/* 80AEDC4C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AEDC50  2C 00 00 00 */	cmpwi r0, 0
/* 80AEDC54  41 82 00 28 */	beq lbl_80AEDC7C
/* 80AEDC58  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AEDC5C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AEDC60  4B 65 7C 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AEDC64  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AEDC68  38 00 00 00 */	li r0, 0
/* 80AEDC6C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AEDC70  3C 60 80 AF */	lis r3, lit_4568@ha /* 0x80AEF1B0@ha */
/* 80AEDC74  C0 03 F1 B0 */	lfs f0, lit_4568@l(r3)  /* 0x80AEF1B0@l */
/* 80AEDC78  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AEDC7C:
/* 80AEDC7C  38 00 00 02 */	li r0, 2
/* 80AEDC80  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AEDC84:
/* 80AEDC84  7F E3 FB 78 */	mr r3, r31
/* 80AEDC88  4B 65 D6 B1 */	bl srchPlayerActor__8daNpcT_cFv
/* 80AEDC8C  2C 03 00 00 */	cmpwi r3, 0
/* 80AEDC90  41 82 00 44 */	beq lbl_80AEDCD4
/* 80AEDC94  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AEDC98  2C 00 00 01 */	cmpwi r0, 1
/* 80AEDC9C  41 82 00 2C */	beq lbl_80AEDCC8
/* 80AEDCA0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AEDCA4  4B 65 7A 59 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AEDCA8  38 00 00 00 */	li r0, 0
/* 80AEDCAC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AEDCB0  3C 60 80 AF */	lis r3, lit_4295@ha /* 0x80AEF19C@ha */
/* 80AEDCB4  C0 03 F1 9C */	lfs f0, lit_4295@l(r3)  /* 0x80AEF19C@l */
/* 80AEDCB8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AEDCBC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AEDCC0  38 00 00 01 */	li r0, 1
/* 80AEDCC4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AEDCC8:
/* 80AEDCC8  38 00 00 00 */	li r0, 0
/* 80AEDCCC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AEDCD0  48 00 00 74 */	b lbl_80AEDD44
lbl_80AEDCD4:
/* 80AEDCD4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AEDCD8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AEDCDC  7C 04 00 00 */	cmpw r4, r0
/* 80AEDCE0  41 82 00 2C */	beq lbl_80AEDD0C
/* 80AEDCE4  7F E3 FB 78 */	mr r3, r31
/* 80AEDCE8  38 A0 FF FF */	li r5, -1
/* 80AEDCEC  38 C0 FF FF */	li r6, -1
/* 80AEDCF0  38 E0 00 0F */	li r7, 0xf
/* 80AEDCF4  39 00 00 00 */	li r8, 0
/* 80AEDCF8  4B 65 D9 51 */	bl step__8daNpcT_cFsiiii
/* 80AEDCFC  2C 03 00 00 */	cmpwi r3, 0
/* 80AEDD00  41 82 00 0C */	beq lbl_80AEDD0C
/* 80AEDD04  38 00 00 01 */	li r0, 1
/* 80AEDD08  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AEDD0C:
/* 80AEDD0C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AEDD10  2C 00 00 00 */	cmpwi r0, 0
/* 80AEDD14  41 82 00 28 */	beq lbl_80AEDD3C
/* 80AEDD18  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AEDD1C  4B 65 79 E1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AEDD20  38 00 00 00 */	li r0, 0
/* 80AEDD24  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AEDD28  3C 60 80 AF */	lis r3, lit_4295@ha /* 0x80AEF19C@ha */
/* 80AEDD2C  C0 03 F1 9C */	lfs f0, lit_4295@l(r3)  /* 0x80AEF19C@l */
/* 80AEDD30  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AEDD34  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AEDD38  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AEDD3C:
/* 80AEDD3C  38 00 00 00 */	li r0, 0
/* 80AEDD40  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80AEDD44:
/* 80AEDD44  38 60 00 01 */	li r3, 1
/* 80AEDD48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEDD4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEDD50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEDD54  7C 08 03 A6 */	mtlr r0
/* 80AEDD58  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEDD5C  4E 80 00 20 */	blr 
