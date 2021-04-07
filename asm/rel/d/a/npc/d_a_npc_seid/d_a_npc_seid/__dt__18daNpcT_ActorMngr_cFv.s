lbl_80ACAF1C:
/* 80ACAF1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACAF20  7C 08 02 A6 */	mflr r0
/* 80ACAF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACAF28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACAF2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACAF30  41 82 00 1C */	beq lbl_80ACAF4C
/* 80ACAF34  3C A0 80 AD */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80ACB5D0@ha */
/* 80ACAF38  38 05 B5 D0 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80ACB5D0@l */
/* 80ACAF3C  90 1F 00 04 */	stw r0, 4(r31)
/* 80ACAF40  7C 80 07 35 */	extsh. r0, r4
/* 80ACAF44  40 81 00 08 */	ble lbl_80ACAF4C
/* 80ACAF48  4B 80 3D F5 */	bl __dl__FPv
lbl_80ACAF4C:
/* 80ACAF4C  7F E3 FB 78 */	mr r3, r31
/* 80ACAF50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACAF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACAF58  7C 08 03 A6 */	mtlr r0
/* 80ACAF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACAF60  4E 80 00 20 */	blr 
