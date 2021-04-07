lbl_80651FD0:
/* 80651FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80651FD4  7C 08 02 A6 */	mflr r0
/* 80651FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80651FDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80651FE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80651FE4  41 82 00 1C */	beq lbl_80652000
/* 80651FE8  3C A0 80 65 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x806528D4@ha */
/* 80651FEC  38 05 28 D4 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x806528D4@l */
/* 80651FF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80651FF4  7C 80 07 35 */	extsh. r0, r4
/* 80651FF8  40 81 00 08 */	ble lbl_80652000
/* 80651FFC  4B C7 CD 41 */	bl __dl__FPv
lbl_80652000:
/* 80652000  7F E3 FB 78 */	mr r3, r31
/* 80652004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80652008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065200C  7C 08 03 A6 */	mtlr r0
/* 80652010  38 21 00 10 */	addi r1, r1, 0x10
/* 80652014  4E 80 00 20 */	blr 
