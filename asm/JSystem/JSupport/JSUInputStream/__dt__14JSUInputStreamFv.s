lbl_802DC23C:
/* 802DC23C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC240  7C 08 02 A6 */	mflr r0
/* 802DC244  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC24C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802DC250  41 82 00 30 */	beq lbl_802DC280
/* 802DC254  3C 60 80 3D */	lis r3, __vt__14JSUInputStream@ha /* 0x803CC4D4@ha */
/* 802DC258  38 03 C4 D4 */	addi r0, r3, __vt__14JSUInputStream@l /* 0x803CC4D4@l */
/* 802DC25C  90 1F 00 00 */	stw r0, 0(r31)
/* 802DC260  41 82 00 10 */	beq lbl_802DC270
/* 802DC264  3C 60 80 3C */	lis r3, __vt__10JSUIosBase@ha /* 0x803C2DF8@ha */
/* 802DC268  38 03 2D F8 */	addi r0, r3, __vt__10JSUIosBase@l /* 0x803C2DF8@l */
/* 802DC26C  90 1F 00 00 */	stw r0, 0(r31)
lbl_802DC270:
/* 802DC270  7C 80 07 35 */	extsh. r0, r4
/* 802DC274  40 81 00 0C */	ble lbl_802DC280
/* 802DC278  7F E3 FB 78 */	mr r3, r31
/* 802DC27C  4B FF 2A C1 */	bl __dl__FPv
lbl_802DC280:
/* 802DC280  7F E3 FB 78 */	mr r3, r31
/* 802DC284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC28C  7C 08 03 A6 */	mtlr r0
/* 802DC290  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC294  4E 80 00 20 */	blr 
