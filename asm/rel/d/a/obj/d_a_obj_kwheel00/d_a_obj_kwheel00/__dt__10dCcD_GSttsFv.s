lbl_80C4E574:
/* 80C4E574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4E578  7C 08 02 A6 */	mflr r0
/* 80C4E57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4E580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4E584  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4E588  41 82 00 30 */	beq lbl_80C4E5B8
/* 80C4E58C  3C 60 80 C5 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C4E97C@ha */
/* 80C4E590  38 03 E9 7C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C4E97C@l */
/* 80C4E594  90 1F 00 00 */	stw r0, 0(r31)
/* 80C4E598  41 82 00 10 */	beq lbl_80C4E5A8
/* 80C4E59C  3C 60 80 C5 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C4E970@ha */
/* 80C4E5A0  38 03 E9 70 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C4E970@l */
/* 80C4E5A4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C4E5A8:
/* 80C4E5A8  7C 80 07 35 */	extsh. r0, r4
/* 80C4E5AC  40 81 00 0C */	ble lbl_80C4E5B8
/* 80C4E5B0  7F E3 FB 78 */	mr r3, r31
/* 80C4E5B4  4B 68 07 89 */	bl __dl__FPv
lbl_80C4E5B8:
/* 80C4E5B8  7F E3 FB 78 */	mr r3, r31
/* 80C4E5BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4E5C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4E5C4  7C 08 03 A6 */	mtlr r0
/* 80C4E5C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4E5CC  4E 80 00 20 */	blr 
