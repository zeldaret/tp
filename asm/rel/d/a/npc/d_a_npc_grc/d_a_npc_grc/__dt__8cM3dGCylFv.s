lbl_809CB650:
/* 809CB650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CB654  7C 08 02 A6 */	mflr r0
/* 809CB658  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CB65C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CB660  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CB664  41 82 00 1C */	beq lbl_809CB680
/* 809CB668  3C A0 80 9D */	lis r5, __vt__8cM3dGCyl@ha
/* 809CB66C  38 05 FB 2C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 809CB670  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809CB674  7C 80 07 35 */	extsh. r0, r4
/* 809CB678  40 81 00 08 */	ble lbl_809CB680
/* 809CB67C  4B 90 36 C0 */	b __dl__FPv
lbl_809CB680:
/* 809CB680  7F E3 FB 78 */	mr r3, r31
/* 809CB684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CB688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CB68C  7C 08 03 A6 */	mtlr r0
/* 809CB690  38 21 00 10 */	addi r1, r1, 0x10
/* 809CB694  4E 80 00 20 */	blr 
