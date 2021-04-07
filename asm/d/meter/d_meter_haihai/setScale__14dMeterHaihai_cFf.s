lbl_8020BC20:
/* 8020BC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020BC24  7C 08 02 A6 */	mflr r0
/* 8020BC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020BC2C  88 03 00 28 */	lbz r0, 0x28(r3)
/* 8020BC30  28 00 00 01 */	cmplwi r0, 1
/* 8020BC34  40 82 00 60 */	bne lbl_8020BC94
/* 8020BC38  C0 62 AD E8 */	lfs f3, lit_4116(r2)
/* 8020BC3C  C0 42 AD EC */	lfs f2, lit_4117(r2)
/* 8020BC40  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020BC44  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020BC48  C0 04 04 FC */	lfs f0, 0x4fc(r4)
/* 8020BC4C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8020BC50  EC 03 00 32 */	fmuls f0, f3, f0
/* 8020BC54  EC 03 00 32 */	fmuls f0, f3, f0
/* 8020BC58  EC 80 00 72 */	fmuls f4, f0, f1
/* 8020BC5C  80 63 00 08 */	lwz r3, 8(r3)
/* 8020BC60  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BC64  C0 04 04 F8 */	lfs f0, 0x4f8(r4)
/* 8020BC68  EC 02 00 32 */	fmuls f0, f2, f0
/* 8020BC6C  EC 03 00 32 */	fmuls f0, f3, f0
/* 8020BC70  EC 03 00 32 */	fmuls f0, f3, f0
/* 8020BC74  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020BC78  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020BC7C  D0 83 00 D0 */	stfs f4, 0xd0(r3)
/* 8020BC80  81 83 00 00 */	lwz r12, 0(r3)
/* 8020BC84  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020BC88  7D 89 03 A6 */	mtctr r12
/* 8020BC8C  4E 80 04 21 */	bctrl 
/* 8020BC90  48 00 01 0C */	b lbl_8020BD9C
lbl_8020BC94:
/* 8020BC94  28 00 00 02 */	cmplwi r0, 2
/* 8020BC98  40 82 00 4C */	bne lbl_8020BCE4
/* 8020BC9C  C0 42 AD EC */	lfs f2, lit_4117(r2)
/* 8020BCA0  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020BCA4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020BCA8  C0 04 04 FC */	lfs f0, 0x4fc(r4)
/* 8020BCAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8020BCB0  EC 60 00 72 */	fmuls f3, f0, f1
/* 8020BCB4  80 63 00 08 */	lwz r3, 8(r3)
/* 8020BCB8  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BCBC  C0 04 04 F8 */	lfs f0, 0x4f8(r4)
/* 8020BCC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8020BCC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020BCC8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020BCCC  D0 63 00 D0 */	stfs f3, 0xd0(r3)
/* 8020BCD0  81 83 00 00 */	lwz r12, 0(r3)
/* 8020BCD4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020BCD8  7D 89 03 A6 */	mtctr r12
/* 8020BCDC  4E 80 04 21 */	bctrl 
/* 8020BCE0  48 00 00 BC */	b lbl_8020BD9C
lbl_8020BCE4:
/* 8020BCE4  28 00 00 03 */	cmplwi r0, 3
/* 8020BCE8  40 82 00 38 */	bne lbl_8020BD20
/* 8020BCEC  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020BCF0  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020BCF4  C0 04 06 C0 */	lfs f0, 0x6c0(r4)
/* 8020BCF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020BCFC  80 63 00 08 */	lwz r3, 8(r3)
/* 8020BD00  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BD04  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020BD08  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8020BD0C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020BD10  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020BD14  7D 89 03 A6 */	mtctr r12
/* 8020BD18  4E 80 04 21 */	bctrl 
/* 8020BD1C  48 00 00 80 */	b lbl_8020BD9C
lbl_8020BD20:
/* 8020BD20  28 00 00 04 */	cmplwi r0, 4
/* 8020BD24  40 82 00 40 */	bne lbl_8020BD64
/* 8020BD28  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020BD2C  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020BD30  C0 04 05 2C */	lfs f0, 0x52c(r4)
/* 8020BD34  EC 40 00 72 */	fmuls f2, f0, f1
/* 8020BD38  80 63 00 08 */	lwz r3, 8(r3)
/* 8020BD3C  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BD40  C0 04 05 28 */	lfs f0, 0x528(r4)
/* 8020BD44  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020BD48  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020BD4C  D0 43 00 D0 */	stfs f2, 0xd0(r3)
/* 8020BD50  81 83 00 00 */	lwz r12, 0(r3)
/* 8020BD54  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020BD58  7D 89 03 A6 */	mtctr r12
/* 8020BD5C  4E 80 04 21 */	bctrl 
/* 8020BD60  48 00 00 3C */	b lbl_8020BD9C
lbl_8020BD64:
/* 8020BD64  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8020BD68  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8020BD6C  C0 04 04 FC */	lfs f0, 0x4fc(r4)
/* 8020BD70  EC 40 00 72 */	fmuls f2, f0, f1
/* 8020BD74  80 63 00 08 */	lwz r3, 8(r3)
/* 8020BD78  80 63 00 04 */	lwz r3, 4(r3)
/* 8020BD7C  C0 04 04 F8 */	lfs f0, 0x4f8(r4)
/* 8020BD80  EC 00 00 72 */	fmuls f0, f0, f1
/* 8020BD84  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8020BD88  D0 43 00 D0 */	stfs f2, 0xd0(r3)
/* 8020BD8C  81 83 00 00 */	lwz r12, 0(r3)
/* 8020BD90  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8020BD94  7D 89 03 A6 */	mtctr r12
/* 8020BD98  4E 80 04 21 */	bctrl 
lbl_8020BD9C:
/* 8020BD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020BDA0  7C 08 03 A6 */	mtlr r0
/* 8020BDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8020BDA8  4E 80 00 20 */	blr 
