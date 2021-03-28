lbl_80C7A57C:
/* 80C7A57C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7A580  7C 08 02 A6 */	mflr r0
/* 80C7A584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7A588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7A58C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7A590  41 82 00 1C */	beq lbl_80C7A5AC
/* 80C7A594  3C A0 80 C8 */	lis r5, __vt__8cM3dGSph@ha
/* 80C7A598  38 05 C9 EC */	addi r0, r5, __vt__8cM3dGSph@l
/* 80C7A59C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C7A5A0  7C 80 07 35 */	extsh. r0, r4
/* 80C7A5A4  40 81 00 08 */	ble lbl_80C7A5AC
/* 80C7A5A8  4B 65 47 94 */	b __dl__FPv
lbl_80C7A5AC:
/* 80C7A5AC  7F E3 FB 78 */	mr r3, r31
/* 80C7A5B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7A5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7A5B8  7C 08 03 A6 */	mtlr r0
/* 80C7A5BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7A5C0  4E 80 00 20 */	blr 
