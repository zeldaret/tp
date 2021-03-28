lbl_80846C4C:
/* 80846C4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80846C50  7C 08 02 A6 */	mflr r0
/* 80846C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80846C58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80846C5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80846C60  41 82 00 30 */	beq lbl_80846C90
/* 80846C64  3C 60 80 85 */	lis r3, __vt__16daPy_frameCtrl_c@ha
/* 80846C68  38 03 8F 54 */	addi r0, r3, __vt__16daPy_frameCtrl_c@l
/* 80846C6C  90 1F 00 00 */	stw r0, 0(r31)
/* 80846C70  41 82 00 10 */	beq lbl_80846C80
/* 80846C74  3C 60 80 85 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80846C78  38 03 8F 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80846C7C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80846C80:
/* 80846C80  7C 80 07 35 */	extsh. r0, r4
/* 80846C84  40 81 00 0C */	ble lbl_80846C90
/* 80846C88  7F E3 FB 78 */	mr r3, r31
/* 80846C8C  4B A8 80 B0 */	b __dl__FPv
lbl_80846C90:
/* 80846C90  7F E3 FB 78 */	mr r3, r31
/* 80846C94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80846C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80846C9C  7C 08 03 A6 */	mtlr r0
/* 80846CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80846CA4  4E 80 00 20 */	blr 
