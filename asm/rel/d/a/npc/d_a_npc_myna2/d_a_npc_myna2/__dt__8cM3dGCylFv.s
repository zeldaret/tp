lbl_80A84010:
/* 80A84010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A84014  7C 08 02 A6 */	mflr r0
/* 80A84018  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A8401C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A84020  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A84024  41 82 00 1C */	beq lbl_80A84040
/* 80A84028  3C A0 80 A9 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80A88ABC@ha */
/* 80A8402C  38 05 8A BC */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80A88ABC@l */
/* 80A84030  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A84034  7C 80 07 35 */	extsh. r0, r4
/* 80A84038  40 81 00 08 */	ble lbl_80A84040
/* 80A8403C  4B 84 AD 01 */	bl __dl__FPv
lbl_80A84040:
/* 80A84040  7F E3 FB 78 */	mr r3, r31
/* 80A84044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A84048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8404C  7C 08 03 A6 */	mtlr r0
/* 80A84050  38 21 00 10 */	addi r1, r1, 0x10
/* 80A84054  4E 80 00 20 */	blr 
