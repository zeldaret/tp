lbl_801AED1C:
/* 801AED1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AED20  7C 08 02 A6 */	mflr r0
/* 801AED24  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AED28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AED2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 801AED30  41 82 00 1C */	beq lbl_801AED4C
/* 801AED34  3C A0 80 3C */	lis r5, __vt__19dDlst_KanteraIcon_c@ha /* 0x803BC218@ha */
/* 801AED38  38 05 C2 18 */	addi r0, r5, __vt__19dDlst_KanteraIcon_c@l /* 0x803BC218@l */
/* 801AED3C  90 1F 00 00 */	stw r0, 0(r31)
/* 801AED40  7C 80 07 35 */	extsh. r0, r4
/* 801AED44  40 81 00 08 */	ble lbl_801AED4C
/* 801AED48  48 11 FF F5 */	bl __dl__FPv
lbl_801AED4C:
/* 801AED4C  7F E3 FB 78 */	mr r3, r31
/* 801AED50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AED54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AED58  7C 08 03 A6 */	mtlr r0
/* 801AED5C  38 21 00 10 */	addi r1, r1, 0x10
/* 801AED60  4E 80 00 20 */	blr 
