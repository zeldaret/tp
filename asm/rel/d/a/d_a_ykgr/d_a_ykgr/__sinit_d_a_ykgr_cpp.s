lbl_805A8EA0:
/* 805A8EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8EA4  7C 08 02 A6 */	mflr r0
/* 805A8EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A8EB0  93 C1 00 08 */	stw r30, 8(r1)
/* 805A8EB4  3C 60 80 5B */	lis r3, lit_1109@ha
/* 805A8EB8  3B E3 90 B8 */	addi r31, r3, lit_1109@l
/* 805A8EBC  3C 60 80 5B */	lis r3, lit_3759@ha
/* 805A8EC0  3B C3 8F BC */	addi r30, r3, lit_3759@l
/* 805A8EC4  3C 60 80 5B */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 805A8EC8  38 03 90 A4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 805A8ECC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 805A8ED0  3C 60 80 5B */	lis r3, __vt__12daYkgr_HIO_c@ha
/* 805A8ED4  38 03 90 98 */	addi r0, r3, __vt__12daYkgr_HIO_c@l
/* 805A8ED8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 805A8EDC  38 00 00 00 */	li r0, 0
/* 805A8EE0  38 7F 00 4C */	addi r3, r31, 0x4c
/* 805A8EE4  98 03 00 04 */	stb r0, 4(r3)
/* 805A8EE8  38 00 00 FF */	li r0, 0xff
/* 805A8EEC  90 03 00 08 */	stw r0, 8(r3)
/* 805A8EF0  38 00 00 03 */	li r0, 3
/* 805A8EF4  90 03 00 0C */	stw r0, 0xc(r3)
/* 805A8EF8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805A8EFC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805A8F00  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 805A8F04  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805A8F08  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 805A8F0C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805A8F10  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805A8F14  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805A8F18  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 805A8F1C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805A8F20  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 805A8F24  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 805A8F28  3C 80 80 5B */	lis r4, __dt__12daYkgr_HIO_cFv@ha
/* 805A8F2C  38 84 8D 98 */	addi r4, r4, __dt__12daYkgr_HIO_cFv@l
/* 805A8F30  38 BF 00 40 */	addi r5, r31, 0x40
/* 805A8F34  4B FF F4 E5 */	bl __register_global_object
/* 805A8F38  3C 60 80 5B */	lis r3, __vt__19JPAParticleCallBack@ha
/* 805A8F3C  38 03 90 84 */	addi r0, r3, __vt__19JPAParticleCallBack@l
/* 805A8F40  90 1F 00 80 */	stw r0, 0x80(r31)
/* 805A8F44  3C 60 80 5B */	lis r3, __vt__17dPa_YkgrPcallBack@ha
/* 805A8F48  38 03 90 70 */	addi r0, r3, __vt__17dPa_YkgrPcallBack@l
/* 805A8F4C  90 1F 00 80 */	stw r0, 0x80(r31)
/* 805A8F50  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 805A8F54  38 7F 00 80 */	addi r3, r31, 0x80
/* 805A8F58  D0 23 00 04 */	stfs f1, 4(r3)
/* 805A8F5C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805A8F60  D0 03 00 08 */	stfs f0, 8(r3)
/* 805A8F64  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 805A8F68  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805A8F6C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 805A8F70  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805A8F74  38 00 00 01 */	li r0, 1
/* 805A8F78  98 03 00 1C */	stb r0, 0x1c(r3)
/* 805A8F7C  3C 80 80 5B */	lis r4, __dt__17dPa_YkgrPcallBackFv@ha
/* 805A8F80  38 84 8E 3C */	addi r4, r4, __dt__17dPa_YkgrPcallBackFv@l
/* 805A8F84  38 BF 00 74 */	addi r5, r31, 0x74
/* 805A8F88  4B FF F4 91 */	bl __register_global_object
/* 805A8F8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A8F90  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A8F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A8F98  7C 08 03 A6 */	mtlr r0
/* 805A8F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8FA0  4E 80 00 20 */	blr 
