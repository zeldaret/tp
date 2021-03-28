lbl_80815E8C:
/* 80815E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80815E90  7C 08 02 A6 */	mflr r0
/* 80815E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80815E98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80815E9C  7C 7F 1B 78 */	mr r31, r3
/* 80815EA0  3C 60 80 81 */	lis r3, s_e_ym__FPvPv@ha
/* 80815EA4  38 63 5E 00 */	addi r3, r3, s_e_ym__FPvPv@l
/* 80815EA8  7F E4 FB 78 */	mr r4, r31
/* 80815EAC  4B 80 B4 8C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80815EB0  28 03 00 00 */	cmplwi r3, 0
/* 80815EB4  41 82 00 2C */	beq lbl_80815EE0
/* 80815EB8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80815EBC  D0 03 06 B8 */	stfs f0, 0x6b8(r3)
/* 80815EC0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80815EC4  D0 03 06 BC */	stfs f0, 0x6bc(r3)
/* 80815EC8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80815ECC  D0 03 06 C0 */	stfs f0, 0x6c0(r3)
/* 80815ED0  38 03 06 B8 */	addi r0, r3, 0x6b8
/* 80815ED4  90 03 06 C4 */	stw r0, 0x6c4(r3)
/* 80815ED8  7F E3 FB 78 */	mr r3, r31
/* 80815EDC  4B 80 3D A0 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80815EE0:
/* 80815EE0  38 60 00 01 */	li r3, 1
/* 80815EE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80815EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80815EEC  7C 08 03 A6 */	mtlr r0
/* 80815EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80815EF4  4E 80 00 20 */	blr 
