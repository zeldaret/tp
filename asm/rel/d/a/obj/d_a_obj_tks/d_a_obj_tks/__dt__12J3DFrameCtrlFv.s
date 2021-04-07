lbl_80D12638:
/* 80D12638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1263C  7C 08 02 A6 */	mflr r0
/* 80D12640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D12648  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1264C  41 82 00 1C */	beq lbl_80D12668
/* 80D12650  3C A0 80 D1 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80D12A60@ha */
/* 80D12654  38 05 2A 60 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80D12A60@l */
/* 80D12658  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1265C  7C 80 07 35 */	extsh. r0, r4
/* 80D12660  40 81 00 08 */	ble lbl_80D12668
/* 80D12664  4B 5B C6 D9 */	bl __dl__FPv
lbl_80D12668:
/* 80D12668  7F E3 FB 78 */	mr r3, r31
/* 80D1266C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D12670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D12674  7C 08 03 A6 */	mtlr r0
/* 80D12678  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1267C  4E 80 00 20 */	blr 
