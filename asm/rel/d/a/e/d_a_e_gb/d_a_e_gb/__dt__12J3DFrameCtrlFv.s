lbl_806C6894:
/* 806C6894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C6898  7C 08 02 A6 */	mflr r0
/* 806C689C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C68A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C68A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C68A8  41 82 00 1C */	beq lbl_806C68C4
/* 806C68AC  3C A0 80 6C */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x806C7908@ha */
/* 806C68B0  38 05 79 08 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x806C7908@l */
/* 806C68B4  90 1F 00 00 */	stw r0, 0(r31)
/* 806C68B8  7C 80 07 35 */	extsh. r0, r4
/* 806C68BC  40 81 00 08 */	ble lbl_806C68C4
/* 806C68C0  4B C0 84 7D */	bl __dl__FPv
lbl_806C68C4:
/* 806C68C4  7F E3 FB 78 */	mr r3, r31
/* 806C68C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C68CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C68D0  7C 08 03 A6 */	mtlr r0
/* 806C68D4  38 21 00 10 */	addi r1, r1, 0x10
/* 806C68D8  4E 80 00 20 */	blr 
