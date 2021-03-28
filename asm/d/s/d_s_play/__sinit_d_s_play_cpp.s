lbl_8025AC54:
/* 8025AC54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025AC58  7C 08 02 A6 */	mflr r0
/* 8025AC5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025AC60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025AC64  3C 60 80 43 */	lis r3, lit_4041@ha
/* 8025AC68  3B E3 07 78 */	addi r31, r3, lit_4041@l
/* 8025AC6C  3C 60 80 3B */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 8025AC70  38 03 61 B4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 8025AC74  90 0D 8B A0 */	stw r0, g_preLoadHIO(r13)
/* 8025AC78  3C 60 80 3C */	lis r3, __vt__21dScnPly_preLoad_HIO_c@ha
/* 8025AC7C  38 03 32 54 */	addi r0, r3, __vt__21dScnPly_preLoad_HIO_c@l
/* 8025AC80  90 0D 8B A0 */	stw r0, g_preLoadHIO(r13)
/* 8025AC84  38 6D 8B A0 */	la r3, g_preLoadHIO(r13) /* 80451120-_SDA_BASE_ */
/* 8025AC88  3C 80 80 26 */	lis r4, __dt__21dScnPly_preLoad_HIO_cFv@ha
/* 8025AC8C  38 84 AD C0 */	addi r4, r4, __dt__21dScnPly_preLoad_HIO_cFv@l
/* 8025AC90  38 BF 00 00 */	addi r5, r31, 0
/* 8025AC94  48 10 6F 91 */	bl __register_global_object
/* 8025AC98  3C 60 80 3C */	lis r3, __vt__17dScnPly_reg_HIO_c@ha
/* 8025AC9C  38 03 32 48 */	addi r0, r3, __vt__17dScnPly_reg_HIO_c@l
/* 8025ACA0  90 0D 8B A8 */	stw r0, g_regHIO(r13)
/* 8025ACA4  38 6D 8B A8 */	la r3, g_regHIO(r13) /* 80451128-_SDA_BASE_ */
/* 8025ACA8  3C 80 80 26 */	lis r4, __dt__17dScnPly_reg_HIO_cFv@ha
/* 8025ACAC  38 84 AD 78 */	addi r4, r4, __dt__17dScnPly_reg_HIO_cFv@l
/* 8025ACB0  38 BF 00 0C */	addi r5, r31, 0xc
/* 8025ACB4  48 10 6F 71 */	bl __register_global_object
/* 8025ACB8  3C 60 80 3C */	lis r3, __vt__17dScnPly_env_HIO_c@ha
/* 8025ACBC  38 03 32 3C */	addi r0, r3, __vt__17dScnPly_env_HIO_c@l
/* 8025ACC0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8025ACC4  38 7F 00 24 */	addi r3, r31, 0x24
/* 8025ACC8  38 63 00 08 */	addi r3, r3, 8
/* 8025ACCC  4B FF E7 75 */	bl __ct__22dScnPly_env_otherHIO_cFv
/* 8025ACD0  38 7F 00 24 */	addi r3, r31, 0x24
/* 8025ACD4  38 63 00 14 */	addi r3, r3, 0x14
/* 8025ACD8  4B FF E7 91 */	bl __ct__22dScnPly_env_debugHIO_cFv
/* 8025ACDC  38 7F 00 24 */	addi r3, r31, 0x24
/* 8025ACE0  3C 80 80 26 */	lis r4, __dt__17dScnPly_env_HIO_cFv@ha
/* 8025ACE4  38 84 AD 04 */	addi r4, r4, __dt__17dScnPly_env_HIO_cFv@l
/* 8025ACE8  38 BF 00 18 */	addi r5, r31, 0x18
/* 8025ACEC  48 10 6F 39 */	bl __register_global_object
/* 8025ACF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025ACF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025ACF8  7C 08 03 A6 */	mtlr r0
/* 8025ACFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8025AD00  4E 80 00 20 */	blr 
