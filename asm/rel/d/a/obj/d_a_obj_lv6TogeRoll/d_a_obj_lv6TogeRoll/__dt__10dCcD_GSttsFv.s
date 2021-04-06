lbl_80C78238:
/* 80C78238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7823C  7C 08 02 A6 */	mflr r0
/* 80C78240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C78244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C78248  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7824C  41 82 00 30 */	beq lbl_80C7827C
/* 80C78250  3C 60 80 C8 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C79CCC@ha */
/* 80C78254  38 03 9C CC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C79CCC@l */
/* 80C78258  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7825C  41 82 00 10 */	beq lbl_80C7826C
/* 80C78260  3C 60 80 C8 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C79CC0@ha */
/* 80C78264  38 03 9C C0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C79CC0@l */
/* 80C78268  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C7826C:
/* 80C7826C  7C 80 07 35 */	extsh. r0, r4
/* 80C78270  40 81 00 0C */	ble lbl_80C7827C
/* 80C78274  7F E3 FB 78 */	mr r3, r31
/* 80C78278  4B 65 6A C5 */	bl __dl__FPv
lbl_80C7827C:
/* 80C7827C  7F E3 FB 78 */	mr r3, r31
/* 80C78280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C78284  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C78288  7C 08 03 A6 */	mtlr r0
/* 80C7828C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C78290  4E 80 00 20 */	blr 
