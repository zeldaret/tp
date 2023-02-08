lbl_8099CA20:
/* 8099CA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099CA24  7C 08 02 A6 */	mflr r0
/* 8099CA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099CA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099CA30  7C 7F 1B 79 */	or. r31, r3, r3
/* 8099CA34  41 82 00 30 */	beq lbl_8099CA64
/* 8099CA38  3C 60 80 9A */	lis r3, __vt__10dCcD_GStts@ha /* 0x8099D524@ha */
/* 8099CA3C  38 03 D5 24 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8099D524@l */
/* 8099CA40  90 1F 00 00 */	stw r0, 0(r31)
/* 8099CA44  41 82 00 10 */	beq lbl_8099CA54
/* 8099CA48  3C 60 80 9A */	lis r3, __vt__10cCcD_GStts@ha /* 0x8099D518@ha */
/* 8099CA4C  38 03 D5 18 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8099D518@l */
/* 8099CA50  90 1F 00 00 */	stw r0, 0(r31)
lbl_8099CA54:
/* 8099CA54  7C 80 07 35 */	extsh. r0, r4
/* 8099CA58  40 81 00 0C */	ble lbl_8099CA64
/* 8099CA5C  7F E3 FB 78 */	mr r3, r31
/* 8099CA60  4B 93 22 DD */	bl __dl__FPv
lbl_8099CA64:
/* 8099CA64  7F E3 FB 78 */	mr r3, r31
/* 8099CA68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099CA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099CA70  7C 08 03 A6 */	mtlr r0
/* 8099CA74  38 21 00 10 */	addi r1, r1, 0x10
/* 8099CA78  4E 80 00 20 */	blr 
