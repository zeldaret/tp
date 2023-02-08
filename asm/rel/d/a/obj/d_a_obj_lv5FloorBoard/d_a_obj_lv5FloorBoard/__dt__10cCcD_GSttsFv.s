lbl_80C6B010:
/* 80C6B010  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6B014  7C 08 02 A6 */	mflr r0
/* 80C6B018  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6B01C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6B020  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6B024  41 82 00 1C */	beq lbl_80C6B040
/* 80C6B028  3C A0 80 C7 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C6B27C@ha */
/* 80C6B02C  38 05 B2 7C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C6B27C@l */
/* 80C6B030  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6B034  7C 80 07 35 */	extsh. r0, r4
/* 80C6B038  40 81 00 08 */	ble lbl_80C6B040
/* 80C6B03C  4B 66 3D 01 */	bl __dl__FPv
lbl_80C6B040:
/* 80C6B040  7F E3 FB 78 */	mr r3, r31
/* 80C6B044  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6B048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6B04C  7C 08 03 A6 */	mtlr r0
/* 80C6B050  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6B054  4E 80 00 20 */	blr 
