lbl_809EEFD0:
/* 809EEFD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EEFD4  7C 08 02 A6 */	mflr r0
/* 809EEFD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EEFDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EEFE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809EEFE4  41 82 00 1C */	beq lbl_809EF000
/* 809EEFE8  3C A0 80 9F */	lis r5, __vt__12J3DFrameCtrl@ha
/* 809EEFEC  38 05 FB 4C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 809EEFF0  90 1F 00 00 */	stw r0, 0(r31)
/* 809EEFF4  7C 80 07 35 */	extsh. r0, r4
/* 809EEFF8  40 81 00 08 */	ble lbl_809EF000
/* 809EEFFC  4B 8D FD 40 */	b __dl__FPv
lbl_809EF000:
/* 809EF000  7F E3 FB 78 */	mr r3, r31
/* 809EF004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EF008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EF00C  7C 08 03 A6 */	mtlr r0
/* 809EF010  38 21 00 10 */	addi r1, r1, 0x10
/* 809EF014  4E 80 00 20 */	blr 
