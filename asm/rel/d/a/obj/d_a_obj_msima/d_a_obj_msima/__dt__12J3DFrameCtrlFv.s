lbl_80C9C720:
/* 80C9C720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9C724  7C 08 02 A6 */	mflr r0
/* 80C9C728  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9C72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9C730  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9C734  41 82 00 1C */	beq lbl_80C9C750
/* 80C9C738  3C A0 80 CA */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C9CE48@ha */
/* 80C9C73C  38 05 CE 48 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C9CE48@l */
/* 80C9C740  90 1F 00 00 */	stw r0, 0(r31)
/* 80C9C744  7C 80 07 35 */	extsh. r0, r4
/* 80C9C748  40 81 00 08 */	ble lbl_80C9C750
/* 80C9C74C  4B 63 25 F1 */	bl __dl__FPv
lbl_80C9C750:
/* 80C9C750  7F E3 FB 78 */	mr r3, r31
/* 80C9C754  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9C758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9C75C  7C 08 03 A6 */	mtlr r0
/* 80C9C760  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9C764  4E 80 00 20 */	blr 
