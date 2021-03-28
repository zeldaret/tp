lbl_804F95CC:
/* 804F95CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F95D0  7C 08 02 A6 */	mflr r0
/* 804F95D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F95D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F95DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804F95E0  41 82 00 1C */	beq lbl_804F95FC
/* 804F95E4  3C A0 80 50 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 804F95E8  38 05 AE 38 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 804F95EC  90 1F 00 00 */	stw r0, 0(r31)
/* 804F95F0  7C 80 07 35 */	extsh. r0, r4
/* 804F95F4  40 81 00 08 */	ble lbl_804F95FC
/* 804F95F8  4B DD 57 44 */	b __dl__FPv
lbl_804F95FC:
/* 804F95FC  7F E3 FB 78 */	mr r3, r31
/* 804F9600  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F9604  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F9608  7C 08 03 A6 */	mtlr r0
/* 804F960C  38 21 00 10 */	addi r1, r1, 0x10
/* 804F9610  4E 80 00 20 */	blr 
