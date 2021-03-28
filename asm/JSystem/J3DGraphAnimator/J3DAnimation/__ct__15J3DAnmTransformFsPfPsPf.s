lbl_80328E40:
/* 80328E40  3D 00 80 3A */	lis r8, __vt__10J3DAnmBase@ha
/* 80328E44  38 08 7C 38 */	addi r0, r8, __vt__10J3DAnmBase@l
/* 80328E48  90 03 00 00 */	stw r0, 0(r3)
/* 80328E4C  39 00 00 00 */	li r8, 0
/* 80328E50  99 03 00 04 */	stb r8, 4(r3)
/* 80328E54  99 03 00 05 */	stb r8, 5(r3)
/* 80328E58  B0 83 00 06 */	sth r4, 6(r3)
/* 80328E5C  C0 02 CA 34 */	lfs f0, lit_853(r2)
/* 80328E60  D0 03 00 08 */	stfs f0, 8(r3)
/* 80328E64  3C 80 80 3A */	lis r4, __vt__15J3DAnmTransform@ha
/* 80328E68  38 04 7C 48 */	addi r0, r4, __vt__15J3DAnmTransform@l
/* 80328E6C  90 03 00 00 */	stw r0, 0(r3)
/* 80328E70  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80328E74  90 C3 00 10 */	stw r6, 0x10(r3)
/* 80328E78  90 E3 00 14 */	stw r7, 0x14(r3)
/* 80328E7C  B1 03 00 18 */	sth r8, 0x18(r3)
/* 80328E80  B1 03 00 1A */	sth r8, 0x1a(r3)
/* 80328E84  B1 03 00 1C */	sth r8, 0x1c(r3)
/* 80328E88  B1 03 00 1E */	sth r8, 0x1e(r3)
/* 80328E8C  4E 80 00 20 */	blr 
