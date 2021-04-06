lbl_80662C68:
/* 80662C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80662C6C  7C 08 02 A6 */	mflr r0
/* 80662C70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80662C74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80662C78  7C 7F 1B 79 */	or. r31, r3, r3
/* 80662C7C  41 82 00 1C */	beq lbl_80662C98
/* 80662C80  3C A0 80 66 */	lis r5, __vt__10cCcD_GStts@ha /* 0x806633E0@ha */
/* 80662C84  38 05 33 E0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806633E0@l */
/* 80662C88  90 1F 00 00 */	stw r0, 0(r31)
/* 80662C8C  7C 80 07 35 */	extsh. r0, r4
/* 80662C90  40 81 00 08 */	ble lbl_80662C98
/* 80662C94  4B C6 C0 A9 */	bl __dl__FPv
lbl_80662C98:
/* 80662C98  7F E3 FB 78 */	mr r3, r31
/* 80662C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80662CA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80662CA4  7C 08 03 A6 */	mtlr r0
/* 80662CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80662CAC  4E 80 00 20 */	blr 
