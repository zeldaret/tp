lbl_807AC854:
/* 807AC854  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AC858  7C 08 02 A6 */	mflr r0
/* 807AC85C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AC860  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AC864  7C 7F 1B 79 */	or. r31, r3, r3
/* 807AC868  41 82 00 1C */	beq lbl_807AC884
/* 807AC86C  3C A0 80 7B */	lis r5, __vt__8cM3dGSph@ha /* 0x807B0168@ha */
/* 807AC870  38 05 01 68 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x807B0168@l */
/* 807AC874  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807AC878  7C 80 07 35 */	extsh. r0, r4
/* 807AC87C  40 81 00 08 */	ble lbl_807AC884
/* 807AC880  4B B2 24 BD */	bl __dl__FPv
lbl_807AC884:
/* 807AC884  7F E3 FB 78 */	mr r3, r31
/* 807AC888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AC88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AC890  7C 08 03 A6 */	mtlr r0
/* 807AC894  38 21 00 10 */	addi r1, r1, 0x10
/* 807AC898  4E 80 00 20 */	blr 
