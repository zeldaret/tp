lbl_80697BEC:
/* 80697BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80697BF0  7C 08 02 A6 */	mflr r0
/* 80697BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80697BF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80697BFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80697C00  41 82 00 1C */	beq lbl_80697C1C
/* 80697C04  3C A0 80 69 */	lis r5, __vt__13daE_Bug_HIO_c@ha /* 0x80697E18@ha */
/* 80697C08  38 05 7E 18 */	addi r0, r5, __vt__13daE_Bug_HIO_c@l /* 0x80697E18@l */
/* 80697C0C  90 1F 00 00 */	stw r0, 0(r31)
/* 80697C10  7C 80 07 35 */	extsh. r0, r4
/* 80697C14  40 81 00 08 */	ble lbl_80697C1C
/* 80697C18  4B C3 71 25 */	bl __dl__FPv
lbl_80697C1C:
/* 80697C1C  7F E3 FB 78 */	mr r3, r31
/* 80697C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80697C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80697C28  7C 08 03 A6 */	mtlr r0
/* 80697C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80697C30  4E 80 00 20 */	blr 
