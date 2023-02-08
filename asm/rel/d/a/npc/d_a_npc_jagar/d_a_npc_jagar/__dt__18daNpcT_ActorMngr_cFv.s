lbl_80A19428:
/* 80A19428  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1942C  7C 08 02 A6 */	mflr r0
/* 80A19430  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A19434  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A19438  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A1943C  41 82 00 1C */	beq lbl_80A19458
/* 80A19440  3C A0 80 A2 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A1ACCC@ha */
/* 80A19444  38 05 AC CC */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80A1ACCC@l */
/* 80A19448  90 1F 00 04 */	stw r0, 4(r31)
/* 80A1944C  7C 80 07 35 */	extsh. r0, r4
/* 80A19450  40 81 00 08 */	ble lbl_80A19458
/* 80A19454  4B 8B 58 E9 */	bl __dl__FPv
lbl_80A19458:
/* 80A19458  7F E3 FB 78 */	mr r3, r31
/* 80A1945C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A19460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A19464  7C 08 03 A6 */	mtlr r0
/* 80A19468  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1946C  4E 80 00 20 */	blr 
