lbl_8019C008:
/* 8019C008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019C00C  7C 08 02 A6 */	mflr r0
/* 8019C010  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019C014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019C018  7C 7F 1B 78 */	mr r31, r3
/* 8019C01C  80 63 00 00 */	lwz r3, 0(r3)
/* 8019C020  3C 03 00 01 */	addis r0, r3, 1
/* 8019C024  28 00 FF FF */	cmplwi r0, 0xffff
/* 8019C028  41 82 00 2C */	beq lbl_8019C054
/* 8019C02C  4B E8 39 F9 */	bl fopMsgM_SearchByID__FUi
/* 8019C030  4B E8 3A 1D */	bl fopMsgM_Delete__FPv
/* 8019C034  38 00 FF FF */	li r0, -1
/* 8019C038  90 1F 00 00 */	stw r0, 0(r31)
/* 8019C03C  38 00 00 00 */	li r0, 0
/* 8019C040  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8019C044  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8019C048  98 03 00 C2 */	stb r0, 0xc2(r3)
/* 8019C04C  38 60 00 01 */	li r3, 1
/* 8019C050  48 00 00 08 */	b lbl_8019C058
lbl_8019C054:
/* 8019C054  38 60 00 00 */	li r3, 0
lbl_8019C058:
/* 8019C058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019C05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019C060  7C 08 03 A6 */	mtlr r0
/* 8019C064  38 21 00 10 */	addi r1, r1, 0x10
/* 8019C068  4E 80 00 20 */	blr 
