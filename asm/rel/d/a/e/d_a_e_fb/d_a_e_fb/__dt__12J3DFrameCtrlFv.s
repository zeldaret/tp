lbl_806B8878:
/* 806B8878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B887C  7C 08 02 A6 */	mflr r0
/* 806B8880  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B8884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B8888  7C 7F 1B 79 */	or. r31, r3, r3
/* 806B888C  41 82 00 1C */	beq lbl_806B88A8
/* 806B8890  3C A0 80 6C */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x806B918C@ha */
/* 806B8894  38 05 91 8C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x806B918C@l */
/* 806B8898  90 1F 00 00 */	stw r0, 0(r31)
/* 806B889C  7C 80 07 35 */	extsh. r0, r4
/* 806B88A0  40 81 00 08 */	ble lbl_806B88A8
/* 806B88A4  4B C1 64 99 */	bl __dl__FPv
lbl_806B88A8:
/* 806B88A8  7F E3 FB 78 */	mr r3, r31
/* 806B88AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B88B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B88B4  7C 08 03 A6 */	mtlr r0
/* 806B88B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806B88BC  4E 80 00 20 */	blr 
