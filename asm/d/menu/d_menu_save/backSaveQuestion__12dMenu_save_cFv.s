lbl_801F19DC:
/* 801F19DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F19E0  7C 08 02 A6 */	mflr r0
/* 801F19E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F19E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F19EC  7C 7F 1B 78 */	mr r31, r3
/* 801F19F0  3C 60 80 43 */	lis r3, g_msHIO@ha
/* 801F19F4  38 63 E8 4C */	addi r3, r3, g_msHIO@l
/* 801F19F8  88 03 00 0B */	lbz r0, 0xb(r3)
/* 801F19FC  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F1A00  88 9F 01 BD */	lbz r4, 0x1bd(r31)
/* 801F1A04  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 801F1A08  80 63 00 04 */	lwz r3, 4(r3)
/* 801F1A0C  28 03 00 00 */	cmplwi r3, 0
/* 801F1A10  41 82 00 14 */	beq lbl_801F1A24
/* 801F1A14  81 83 00 00 */	lwz r12, 0(r3)
/* 801F1A18  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801F1A1C  7D 89 03 A6 */	mtctr r12
/* 801F1A20  4E 80 04 21 */	bctrl 
lbl_801F1A24:
/* 801F1A24  38 00 00 01 */	li r0, 1
/* 801F1A28  98 1F 21 A0 */	stb r0, 0x21a0(r31)
/* 801F1A2C  38 00 00 08 */	li r0, 8
/* 801F1A30  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F1A34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F1A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F1A3C  7C 08 03 A6 */	mtlr r0
/* 801F1A40  38 21 00 10 */	addi r1, r1, 0x10
/* 801F1A44  4E 80 00 20 */	blr 
