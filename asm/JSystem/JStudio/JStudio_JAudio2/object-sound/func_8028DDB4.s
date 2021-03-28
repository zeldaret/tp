lbl_8028DDB4:
/* 8028DDB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028DDB8  7C 08 02 A6 */	mflr r0
/* 8028DDBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028DDC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028DDC4  7C 7F 1B 78 */	mr r31, r3
/* 8028DDC8  2C 04 00 19 */	cmpwi r4, 0x19
/* 8028DDCC  41 82 00 4C */	beq lbl_8028DE18
/* 8028DDD0  40 80 00 50 */	bge lbl_8028DE20
/* 8028DDD4  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028DDD8  40 80 00 08 */	bge lbl_8028DDE0
/* 8028DDDC  48 00 00 44 */	b lbl_8028DE20
lbl_8028DDE0:
/* 8028DDE0  80 7F 01 3C */	lwz r3, 0x13c(r31)
/* 8028DDE4  28 03 00 00 */	cmplwi r3, 0
/* 8028DDE8  41 82 00 38 */	beq lbl_8028DE20
/* 8028DDEC  7C A4 2B 78 */	mr r4, r5
/* 8028DDF0  81 83 00 00 */	lwz r12, 0(r3)
/* 8028DDF4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8028DDF8  7D 89 03 A6 */	mtctr r12
/* 8028DDFC  4E 80 04 21 */	bctrl 
/* 8028DE00  90 7F 01 40 */	stw r3, 0x140(r31)
/* 8028DE04  80 7F 01 40 */	lwz r3, 0x140(r31)
/* 8028DE08  3C 03 00 01 */	addis r0, r3, 1
/* 8028DE0C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8028DE10  40 82 00 10 */	bne lbl_8028DE20
/* 8028DE14  48 00 00 0C */	b lbl_8028DE20
lbl_8028DE18:
/* 8028DE18  80 05 00 00 */	lwz r0, 0(r5)
/* 8028DE1C  90 1F 01 40 */	stw r0, 0x140(r31)
lbl_8028DE20:
/* 8028DE20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028DE24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028DE28  7C 08 03 A6 */	mtlr r0
/* 8028DE2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028DE30  4E 80 00 20 */	blr 
