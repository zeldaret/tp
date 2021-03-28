lbl_8053DF3C:
/* 8053DF3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DF40  7C 08 02 A6 */	mflr r0
/* 8053DF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DF48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DF4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8053DF50  41 82 00 1C */	beq lbl_8053DF6C
/* 8053DF54  3C A0 80 54 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 8053DF58  38 05 FD 08 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 8053DF5C  90 1F 00 00 */	stw r0, 0(r31)
/* 8053DF60  7C 80 07 35 */	extsh. r0, r4
/* 8053DF64  40 81 00 08 */	ble lbl_8053DF6C
/* 8053DF68  4B D9 0D D4 */	b __dl__FPv
lbl_8053DF6C:
/* 8053DF6C  7F E3 FB 78 */	mr r3, r31
/* 8053DF70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DF74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DF78  7C 08 03 A6 */	mtlr r0
/* 8053DF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DF80  4E 80 00 20 */	blr 
