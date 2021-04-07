lbl_809B17A0:
/* 809B17A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B17A4  7C 08 02 A6 */	mflr r0
/* 809B17A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B17AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B17B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B17B4  41 82 00 1C */	beq lbl_809B17D0
/* 809B17B8  3C A0 80 9B */	lis r5, __vt__14daNpc_Du_HIO_c@ha /* 0x809B19D4@ha */
/* 809B17BC  38 05 19 D4 */	addi r0, r5, __vt__14daNpc_Du_HIO_c@l /* 0x809B19D4@l */
/* 809B17C0  90 1F 00 00 */	stw r0, 0(r31)
/* 809B17C4  7C 80 07 35 */	extsh. r0, r4
/* 809B17C8  40 81 00 08 */	ble lbl_809B17D0
/* 809B17CC  4B 91 D5 71 */	bl __dl__FPv
lbl_809B17D0:
/* 809B17D0  7F E3 FB 78 */	mr r3, r31
/* 809B17D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B17D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B17DC  7C 08 03 A6 */	mtlr r0
/* 809B17E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809B17E4  4E 80 00 20 */	blr 
