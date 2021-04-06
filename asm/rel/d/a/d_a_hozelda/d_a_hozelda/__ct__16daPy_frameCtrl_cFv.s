lbl_80846CA8:
/* 80846CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80846CAC  7C 08 02 A6 */	mflr r0
/* 80846CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80846CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80846CB8  7C 7F 1B 78 */	mr r31, r3
/* 80846CBC  3C 80 80 85 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80848F60@ha */
/* 80846CC0  38 04 8F 60 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80848F60@l */
/* 80846CC4  90 03 00 00 */	stw r0, 0(r3)
/* 80846CC8  38 80 00 00 */	li r4, 0
/* 80846CCC  4B AE 17 31 */	bl init__12J3DFrameCtrlFs
/* 80846CD0  3C 60 80 85 */	lis r3, __vt__16daPy_frameCtrl_c@ha /* 0x80848F54@ha */
/* 80846CD4  38 03 8F 54 */	addi r0, r3, __vt__16daPy_frameCtrl_c@l /* 0x80848F54@l */
/* 80846CD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80846CDC  7F E3 FB 78 */	mr r3, r31
/* 80846CE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80846CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80846CE8  7C 08 03 A6 */	mtlr r0
/* 80846CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80846CF0  4E 80 00 20 */	blr 
