lbl_80C38E3C:
/* 80C38E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C38E40  7C 08 02 A6 */	mflr r0
/* 80C38E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38E48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C38E4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C38E50  41 82 00 30 */	beq lbl_80C38E80
/* 80C38E54  3C 60 80 C4 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C397C4@ha */
/* 80C38E58  38 03 97 C4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C397C4@l */
/* 80C38E5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C38E60  41 82 00 10 */	beq lbl_80C38E70
/* 80C38E64  3C 60 80 C4 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C397B8@ha */
/* 80C38E68  38 03 97 B8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C397B8@l */
/* 80C38E6C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C38E70:
/* 80C38E70  7C 80 07 35 */	extsh. r0, r4
/* 80C38E74  40 81 00 0C */	ble lbl_80C38E80
/* 80C38E78  7F E3 FB 78 */	mr r3, r31
/* 80C38E7C  4B 69 5E C1 */	bl __dl__FPv
lbl_80C38E80:
/* 80C38E80  7F E3 FB 78 */	mr r3, r31
/* 80C38E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C38E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C38E8C  7C 08 03 A6 */	mtlr r0
/* 80C38E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C38E94  4E 80 00 20 */	blr 
