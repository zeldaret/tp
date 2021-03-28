lbl_80AEAFC0:
/* 80AEAFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEAFC4  7C 08 02 A6 */	mflr r0
/* 80AEAFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEAFCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEAFD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEAFD4  7C 7E 1B 78 */	mr r30, r3
/* 80AEAFD8  48 00 04 F1 */	bl checkEvent__13daNpc_Shop0_cFv
/* 80AEAFDC  7C 7F 1B 78 */	mr r31, r3
/* 80AEAFE0  3C 60 80 AF */	lis r3, lit_4023@ha
/* 80AEAFE4  C0 03 BC 28 */	lfs f0, lit_4023@l(r3)
/* 80AEAFE8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80AEAFEC  3C 60 80 AF */	lis r3, lit_4024@ha
/* 80AEAFF0  C0 23 BC 2C */	lfs f1, lit_4024@l(r3)
/* 80AEAFF4  D0 3E 06 78 */	stfs f1, 0x678(r30)
/* 80AEAFF8  38 7E 06 48 */	addi r3, r30, 0x648
/* 80AEAFFC  4B 58 AF 44 */	b SetWallR__12dBgS_AcchCirFf
/* 80AEB000  2C 1F 00 00 */	cmpwi r31, 0
/* 80AEB004  41 82 00 30 */	beq lbl_80AEB034
/* 80AEB008  38 7E 09 DC */	addi r3, r30, 0x9dc
/* 80AEB00C  4B 87 70 0C */	b __ptmf_test
/* 80AEB010  2C 03 00 00 */	cmpwi r3, 0
/* 80AEB014  41 82 00 18 */	beq lbl_80AEB02C
/* 80AEB018  7F C3 F3 78 */	mr r3, r30
/* 80AEB01C  38 80 00 00 */	li r4, 0
/* 80AEB020  39 9E 09 DC */	addi r12, r30, 0x9dc
/* 80AEB024  4B 87 70 60 */	b __ptmf_scall
/* 80AEB028  60 00 00 00 */	nop 
lbl_80AEB02C:
/* 80AEB02C  7F C3 F3 78 */	mr r3, r30
/* 80AEB030  48 00 05 B9 */	bl orderEvent__13daNpc_Shop0_cFv
lbl_80AEB034:
/* 80AEB034  38 7E 05 70 */	addi r3, r30, 0x570
/* 80AEB038  4B 52 23 F0 */	b play__14mDoExt_baseAnmFv
/* 80AEB03C  C0 1E 05 8C */	lfs f0, 0x58c(r30)
/* 80AEB040  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 80AEB044  7F C3 F3 78 */	mr r3, r30
/* 80AEB048  48 00 06 95 */	bl setRoomInf__13daNpc_Shop0_cFv
/* 80AEB04C  7F C3 F3 78 */	mr r3, r30
/* 80AEB050  48 00 04 0D */	bl setCollision__13daNpc_Shop0_cFv
/* 80AEB054  7F C3 F3 78 */	mr r3, r30
/* 80AEB058  48 00 05 DD */	bl setMtx__13daNpc_Shop0_cFv
/* 80AEB05C  38 60 00 01 */	li r3, 1
/* 80AEB060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEB064  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEB068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEB06C  7C 08 03 A6 */	mtlr r0
/* 80AEB070  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEB074  4E 80 00 20 */	blr 
