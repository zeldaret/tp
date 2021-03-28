lbl_80192F98:
/* 80192F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80192F9C  7C 08 02 A6 */	mflr r0
/* 80192FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80192FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80192FA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80192FAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80192FB0  7C 9F 23 78 */	mr r31, r4
/* 80192FB4  41 82 00 60 */	beq lbl_80193014
/* 80192FB8  3C 60 80 3C */	lis r3, __vt__14dBrightCheck_c@ha
/* 80192FBC  38 03 B5 FC */	addi r0, r3, __vt__14dBrightCheck_c@l
/* 80192FC0  90 1E 00 00 */	stw r0, 0(r30)
/* 80192FC4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80192FC8  28 03 00 00 */	cmplwi r3, 0
/* 80192FCC  41 82 00 18 */	beq lbl_80192FE4
/* 80192FD0  38 80 00 01 */	li r4, 1
/* 80192FD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80192FD8  81 8C 00 08 */	lwz r12, 8(r12)
/* 80192FDC  7D 89 03 A6 */	mtctr r12
/* 80192FE0  4E 80 04 21 */	bctrl 
lbl_80192FE4:
/* 80192FE4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80192FE8  38 80 00 01 */	li r4, 1
/* 80192FEC  48 0B 6D 3D */	bl __dt__12dMsgString_cFv
/* 80192FF0  34 1E 00 08 */	addic. r0, r30, 8
/* 80192FF4  41 82 00 10 */	beq lbl_80193004
/* 80192FF8  3C 60 80 3C */	lis r3, __vt__19dDlst_BrightCheck_c@ha
/* 80192FFC  38 03 B5 EC */	addi r0, r3, __vt__19dDlst_BrightCheck_c@l
/* 80193000  90 1E 00 08 */	stw r0, 8(r30)
lbl_80193004:
/* 80193004  7F E0 07 35 */	extsh. r0, r31
/* 80193008  40 81 00 0C */	ble lbl_80193014
/* 8019300C  7F C3 F3 78 */	mr r3, r30
/* 80193010  48 13 BD 2D */	bl __dl__FPv
lbl_80193014:
/* 80193014  7F C3 F3 78 */	mr r3, r30
/* 80193018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019301C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80193020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80193024  7C 08 03 A6 */	mtlr r0
/* 80193028  38 21 00 10 */	addi r1, r1, 0x10
/* 8019302C  4E 80 00 20 */	blr 
