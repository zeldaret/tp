lbl_80CF6024:
/* 80CF6024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6028  7C 08 02 A6 */	mflr r0
/* 80CF602C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF6034  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF6038  41 82 00 1C */	beq lbl_80CF6054
/* 80CF603C  3C A0 80 CF */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80CF6040  38 05 6F 08 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80CF6044  90 1F 00 00 */	stw r0, 0(r31)
/* 80CF6048  7C 80 07 35 */	extsh. r0, r4
/* 80CF604C  40 81 00 08 */	ble lbl_80CF6054
/* 80CF6050  4B 5D 8C EC */	b __dl__FPv
lbl_80CF6054:
/* 80CF6054  7F E3 FB 78 */	mr r3, r31
/* 80CF6058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF605C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6060  7C 08 03 A6 */	mtlr r0
/* 80CF6064  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6068  4E 80 00 20 */	blr 
