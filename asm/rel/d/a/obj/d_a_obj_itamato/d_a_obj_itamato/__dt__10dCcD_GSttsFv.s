lbl_80C29C0C:
/* 80C29C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C29C10  7C 08 02 A6 */	mflr r0
/* 80C29C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C29C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C29C1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C29C20  41 82 00 30 */	beq lbl_80C29C50
/* 80C29C24  3C 60 80 C3 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C29C28  38 03 AC F8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C29C2C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C29C30  41 82 00 10 */	beq lbl_80C29C40
/* 80C29C34  3C 60 80 C3 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C29C38  38 03 AC EC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C29C3C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C29C40:
/* 80C29C40  7C 80 07 35 */	extsh. r0, r4
/* 80C29C44  40 81 00 0C */	ble lbl_80C29C50
/* 80C29C48  7F E3 FB 78 */	mr r3, r31
/* 80C29C4C  4B 6A 50 F0 */	b __dl__FPv
lbl_80C29C50:
/* 80C29C50  7F E3 FB 78 */	mr r3, r31
/* 80C29C54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C29C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29C5C  7C 08 03 A6 */	mtlr r0
/* 80C29C60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29C64  4E 80 00 20 */	blr 
