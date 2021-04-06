lbl_80C9F064:
/* 80C9F064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F068  7C 08 02 A6 */	mflr r0
/* 80C9F06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9F074  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9F078  41 82 00 1C */	beq lbl_80C9F094
/* 80C9F07C  3C A0 80 CA */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C9F2F8@ha */
/* 80C9F080  38 05 F2 F8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C9F2F8@l */
/* 80C9F084  90 1F 00 00 */	stw r0, 0(r31)
/* 80C9F088  7C 80 07 35 */	extsh. r0, r4
/* 80C9F08C  40 81 00 08 */	ble lbl_80C9F094
/* 80C9F090  4B 62 FC AD */	bl __dl__FPv
lbl_80C9F094:
/* 80C9F094  7F E3 FB 78 */	mr r3, r31
/* 80C9F098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9F09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F0A0  7C 08 03 A6 */	mtlr r0
/* 80C9F0A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F0A8  4E 80 00 20 */	blr 
