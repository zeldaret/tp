lbl_801B7A44:
/* 801B7A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B7A48  7C 08 02 A6 */	mflr r0
/* 801B7A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B7A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B7A54  7C 7F 1B 78 */	mr r31, r3
/* 801B7A58  80 63 00 04 */	lwz r3, 4(r3)
/* 801B7A5C  4B FF 86 A5 */	bl _delete__17dMenu_Collect2D_cFv
/* 801B7A60  80 7F 00 08 */	lwz r3, 8(r31)
/* 801B7A64  4B FF EC 31 */	bl _delete__17dMenu_Collect3D_cFv
/* 801B7A68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B7A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B7A70  7C 08 03 A6 */	mtlr r0
/* 801B7A74  38 21 00 10 */	addi r1, r1, 0x10
/* 801B7A78  4E 80 00 20 */	blr 
