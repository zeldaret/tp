lbl_80C69870:
/* 80C69870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69874  7C 08 02 A6 */	mflr r0
/* 80C69878  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6987C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C69880  93 C1 00 08 */	stw r30, 8(r1)
/* 80C69884  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C69888  7C 9F 23 78 */	mr r31, r4
/* 80C6988C  41 82 00 38 */	beq lbl_80C698C4
/* 80C69890  3C 80 80 C7 */	lis r4, __vt__16daObjLv4PRwall_c@ha /* 0x80C699EC@ha */
/* 80C69894  38 04 99 EC */	addi r0, r4, __vt__16daObjLv4PRwall_c@l /* 0x80C699EC@l */
/* 80C69898  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C6989C  41 82 00 18 */	beq lbl_80C698B4
/* 80C698A0  3C 80 80 3B */	lis r4, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80C698A4  38 04 B9 A0 */	addi r0, r4, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80C698A8  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C698AC  38 80 00 00 */	li r4, 0
/* 80C698B0  4B 3A F3 DD */	bl __dt__10fopAc_ac_cFv
lbl_80C698B4:
/* 80C698B4  7F E0 07 35 */	extsh. r0, r31
/* 80C698B8  40 81 00 0C */	ble lbl_80C698C4
/* 80C698BC  7F C3 F3 78 */	mr r3, r30
/* 80C698C0  4B 66 54 7D */	bl __dl__FPv
lbl_80C698C4:
/* 80C698C4  7F C3 F3 78 */	mr r3, r30
/* 80C698C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C698CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C698D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C698D4  7C 08 03 A6 */	mtlr r0
/* 80C698D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C698DC  4E 80 00 20 */	blr 
