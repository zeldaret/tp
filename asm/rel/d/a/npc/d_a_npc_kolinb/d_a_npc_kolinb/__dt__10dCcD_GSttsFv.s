lbl_80A4823C:
/* 80A4823C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A48240  7C 08 02 A6 */	mflr r0
/* 80A48244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A48248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A4824C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A48250  41 82 00 30 */	beq lbl_80A48280
/* 80A48254  3C 60 80 A5 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A48258  38 03 8D 5C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A4825C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A48260  41 82 00 10 */	beq lbl_80A48270
/* 80A48264  3C 60 80 A5 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A48268  38 03 8D 50 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A4826C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A48270:
/* 80A48270  7C 80 07 35 */	extsh. r0, r4
/* 80A48274  40 81 00 0C */	ble lbl_80A48280
/* 80A48278  7F E3 FB 78 */	mr r3, r31
/* 80A4827C  4B 88 6A C0 */	b __dl__FPv
lbl_80A48280:
/* 80A48280  7F E3 FB 78 */	mr r3, r31
/* 80A48284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A48288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A4828C  7C 08 03 A6 */	mtlr r0
/* 80A48290  38 21 00 10 */	addi r1, r1, 0x10
/* 80A48294  4E 80 00 20 */	blr 
