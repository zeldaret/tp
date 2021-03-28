lbl_8003CDAC:
/* 8003CDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003CDB0  7C 08 02 A6 */	mflr r0
/* 8003CDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003CDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003CDBC  7C 7F 1B 78 */	mr r31, r3
/* 8003CDC0  81 83 00 00 */	lwz r12, 0(r3)
/* 8003CDC4  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 8003CDC8  7D 89 03 A6 */	mtctr r12
/* 8003CDCC  4E 80 04 21 */	bctrl 
/* 8003CDD0  7F E3 FB 78 */	mr r3, r31
/* 8003CDD4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003CDD8  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8003CDDC  7D 89 03 A6 */	mtctr r12
/* 8003CDE0  4E 80 04 21 */	bctrl 
/* 8003CDE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003CDE8  41 82 00 68 */	beq lbl_8003CE50
/* 8003CDEC  7F E3 FB 78 */	mr r3, r31
/* 8003CDF0  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003CDF4  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8003CDF8  7D 89 03 A6 */	mtctr r12
/* 8003CDFC  4E 80 04 21 */	bctrl 
/* 8003CE00  7F E3 FB 78 */	mr r3, r31
/* 8003CE04  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003CE08  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8003CE0C  7D 89 03 A6 */	mtctr r12
/* 8003CE10  4E 80 04 21 */	bctrl 
/* 8003CE14  7F E3 FB 78 */	mr r3, r31
/* 8003CE18  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003CE1C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8003CE20  7D 89 03 A6 */	mtctr r12
/* 8003CE24  4E 80 04 21 */	bctrl 
/* 8003CE28  7F E3 FB 78 */	mr r3, r31
/* 8003CE2C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003CE30  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8003CE34  7D 89 03 A6 */	mtctr r12
/* 8003CE38  4E 80 04 21 */	bctrl 
/* 8003CE3C  7F E3 FB 78 */	mr r3, r31
/* 8003CE40  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003CE44  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8003CE48  7D 89 03 A6 */	mtctr r12
/* 8003CE4C  4E 80 04 21 */	bctrl 
lbl_8003CE50:
/* 8003CE50  7F E3 FB 78 */	mr r3, r31
/* 8003CE54  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003CE58  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8003CE5C  7D 89 03 A6 */	mtctr r12
/* 8003CE60  4E 80 04 21 */	bctrl 
/* 8003CE64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003CE68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003CE6C  7C 08 03 A6 */	mtlr r0
/* 8003CE70  38 21 00 10 */	addi r1, r1, 0x10
/* 8003CE74  4E 80 00 20 */	blr 
