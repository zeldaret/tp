lbl_80B77934:
/* 80B77934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B77938  7C 08 02 A6 */	mflr r0
/* 80B7793C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B77940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B77944  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B77948  41 82 00 1C */	beq lbl_80B77964
/* 80B7794C  3C A0 80 B8 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80B77950  38 05 82 9C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80B77954  90 1F 00 00 */	stw r0, 0(r31)
/* 80B77958  7C 80 07 35 */	extsh. r0, r4
/* 80B7795C  40 81 00 08 */	ble lbl_80B77964
/* 80B77960  4B 75 73 DC */	b __dl__FPv
lbl_80B77964:
/* 80B77964  7F E3 FB 78 */	mr r3, r31
/* 80B77968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7796C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B77970  7C 08 03 A6 */	mtlr r0
/* 80B77974  38 21 00 10 */	addi r1, r1, 0x10
/* 80B77978  4E 80 00 20 */	blr 
