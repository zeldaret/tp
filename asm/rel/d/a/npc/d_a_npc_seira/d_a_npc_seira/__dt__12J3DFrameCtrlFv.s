lbl_80ACF600:
/* 80ACF600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACF604  7C 08 02 A6 */	mflr r0
/* 80ACF608  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACF60C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACF610  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACF614  41 82 00 1C */	beq lbl_80ACF630
/* 80ACF618  3C A0 80 AD */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AD0984@ha */
/* 80ACF61C  38 05 09 84 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AD0984@l */
/* 80ACF620  90 1F 00 00 */	stw r0, 0(r31)
/* 80ACF624  7C 80 07 35 */	extsh. r0, r4
/* 80ACF628  40 81 00 08 */	ble lbl_80ACF630
/* 80ACF62C  4B 7F F7 11 */	bl __dl__FPv
lbl_80ACF630:
/* 80ACF630  7F E3 FB 78 */	mr r3, r31
/* 80ACF634  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACF638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACF63C  7C 08 03 A6 */	mtlr r0
/* 80ACF640  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACF644  4E 80 00 20 */	blr 
