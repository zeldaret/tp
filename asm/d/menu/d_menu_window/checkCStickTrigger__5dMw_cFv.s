lbl_801FCEE8:
/* 801FCEE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FCEEC  7C 08 02 A6 */	mflr r0
/* 801FCEF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FCEF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FCEF8  7C 7F 1B 78 */	mr r31, r3
/* 801FCEFC  38 00 00 00 */	li r0, 0
/* 801FCF00  98 03 01 4A */	stb r0, 0x14a(r3)
/* 801FCF04  88 03 01 49 */	lbz r0, 0x149(r3)
/* 801FCF08  28 00 00 00 */	cmplwi r0, 0
/* 801FCF0C  40 82 00 38 */	bne lbl_801FCF44
/* 801FCF10  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 801FCF14  81 83 00 00 */	lwz r12, 0(r3)
/* 801FCF18  81 8C 00 08 */	lwz r12, 8(r12)
/* 801FCF1C  7D 89 03 A6 */	mtctr r12
/* 801FCF20  4E 80 04 21 */	bctrl 
/* 801FCF24  C0 02 AA CC */	lfs f0, lit_6000(r2)
/* 801FCF28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FCF2C  40 81 00 40 */	ble lbl_801FCF6C
/* 801FCF30  38 00 00 01 */	li r0, 1
/* 801FCF34  98 1F 01 49 */	stb r0, 0x149(r31)
/* 801FCF38  98 1F 01 4A */	stb r0, 0x14a(r31)
/* 801FCF3C  38 60 00 01 */	li r3, 1
/* 801FCF40  48 00 00 30 */	b lbl_801FCF70
lbl_801FCF44:
/* 801FCF44  80 7F 01 08 */	lwz r3, 0x108(r31)
/* 801FCF48  81 83 00 00 */	lwz r12, 0(r3)
/* 801FCF4C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801FCF50  7D 89 03 A6 */	mtctr r12
/* 801FCF54  4E 80 04 21 */	bctrl 
/* 801FCF58  C0 02 AA D0 */	lfs f0, lit_6001(r2)
/* 801FCF5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801FCF60  40 80 00 0C */	bge lbl_801FCF6C
/* 801FCF64  38 00 00 00 */	li r0, 0
/* 801FCF68  98 1F 01 49 */	stb r0, 0x149(r31)
lbl_801FCF6C:
/* 801FCF6C  38 60 00 00 */	li r3, 0
lbl_801FCF70:
/* 801FCF70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FCF74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FCF78  7C 08 03 A6 */	mtlr r0
/* 801FCF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 801FCF80  4E 80 00 20 */	blr 
