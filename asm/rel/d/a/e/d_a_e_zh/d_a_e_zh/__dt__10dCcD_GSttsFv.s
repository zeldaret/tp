lbl_8082EFB8:
/* 8082EFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082EFBC  7C 08 02 A6 */	mflr r0
/* 8082EFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082EFC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082EFC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8082EFCC  41 82 00 30 */	beq lbl_8082EFFC
/* 8082EFD0  3C 60 80 83 */	lis r3, __vt__10dCcD_GStts@ha
/* 8082EFD4  38 03 F6 74 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8082EFD8  90 1F 00 00 */	stw r0, 0(r31)
/* 8082EFDC  41 82 00 10 */	beq lbl_8082EFEC
/* 8082EFE0  3C 60 80 83 */	lis r3, __vt__10cCcD_GStts@ha
/* 8082EFE4  38 03 F6 68 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8082EFE8  90 1F 00 00 */	stw r0, 0(r31)
lbl_8082EFEC:
/* 8082EFEC  7C 80 07 35 */	extsh. r0, r4
/* 8082EFF0  40 81 00 0C */	ble lbl_8082EFFC
/* 8082EFF4  7F E3 FB 78 */	mr r3, r31
/* 8082EFF8  4B A9 FD 44 */	b __dl__FPv
lbl_8082EFFC:
/* 8082EFFC  7F E3 FB 78 */	mr r3, r31
/* 8082F000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082F004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082F008  7C 08 03 A6 */	mtlr r0
/* 8082F00C  38 21 00 10 */	addi r1, r1, 0x10
/* 8082F010  4E 80 00 20 */	blr 
