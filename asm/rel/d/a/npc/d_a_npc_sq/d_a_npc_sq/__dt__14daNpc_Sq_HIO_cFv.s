lbl_80AF7360:
/* 80AF7360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF7364  7C 08 02 A6 */	mflr r0
/* 80AF7368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF736C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF7370  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF7374  41 82 00 1C */	beq lbl_80AF7390
/* 80AF7378  3C A0 80 AF */	lis r5, __vt__14daNpc_Sq_HIO_c@ha /* 0x80AF75A8@ha */
/* 80AF737C  38 05 75 A8 */	addi r0, r5, __vt__14daNpc_Sq_HIO_c@l /* 0x80AF75A8@l */
/* 80AF7380  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF7384  7C 80 07 35 */	extsh. r0, r4
/* 80AF7388  40 81 00 08 */	ble lbl_80AF7390
/* 80AF738C  4B 7D 79 B1 */	bl __dl__FPv
lbl_80AF7390:
/* 80AF7390  7F E3 FB 78 */	mr r3, r31
/* 80AF7394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF7398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF739C  7C 08 03 A6 */	mtlr r0
/* 80AF73A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF73A4  4E 80 00 20 */	blr 
