lbl_8046ED44:
/* 8046ED44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046ED48  7C 08 02 A6 */	mflr r0
/* 8046ED4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046ED50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046ED54  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046ED58  41 82 00 1C */	beq lbl_8046ED74
/* 8046ED5C  3C A0 80 47 */	lis r5, __vt__8cM3dGCyl@ha /* 0x8046EF30@ha */
/* 8046ED60  38 05 EF 30 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8046EF30@l */
/* 8046ED64  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8046ED68  7C 80 07 35 */	extsh. r0, r4
/* 8046ED6C  40 81 00 08 */	ble lbl_8046ED74
/* 8046ED70  4B E5 FF CD */	bl __dl__FPv
lbl_8046ED74:
/* 8046ED74  7F E3 FB 78 */	mr r3, r31
/* 8046ED78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046ED7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046ED80  7C 08 03 A6 */	mtlr r0
/* 8046ED84  38 21 00 10 */	addi r1, r1, 0x10
/* 8046ED88  4E 80 00 20 */	blr 
