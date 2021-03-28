lbl_805B9654:
/* 805B9654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9658  7C 08 02 A6 */	mflr r0
/* 805B965C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9664  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B9668  41 82 00 1C */	beq lbl_805B9684
/* 805B966C  3C A0 80 5C */	lis r5, __vt__12J3DFrameCtrl@ha
/* 805B9670  38 05 AD 2C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 805B9674  90 1F 00 00 */	stw r0, 0(r31)
/* 805B9678  7C 80 07 35 */	extsh. r0, r4
/* 805B967C  40 81 00 08 */	ble lbl_805B9684
/* 805B9680  4B D1 56 BC */	b __dl__FPv
lbl_805B9684:
/* 805B9684  7F E3 FB 78 */	mr r3, r31
/* 805B9688  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B968C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9690  7C 08 03 A6 */	mtlr r0
/* 805B9694  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9698  4E 80 00 20 */	blr 
