lbl_805C40E0:
/* 805C40E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C40E4  7C 08 02 A6 */	mflr r0
/* 805C40E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C40EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C40F0  7C 7F 1B 78 */	mr r31, r3
/* 805C40F4  4B FF F7 39 */	bl executeBullet__8daB_DR_cFv
/* 805C40F8  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805C40FC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805C4100  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805C4104  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805C4108  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 805C410C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805C4110  7F E3 FB 78 */	mr r3, r31
/* 805C4114  38 9F 0A 08 */	addi r4, r31, 0xa08
/* 805C4118  4B A5 65 48 */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 805C411C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C4120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C4124  7C 08 03 A6 */	mtlr r0
/* 805C4128  38 21 00 10 */	addi r1, r1, 0x10
/* 805C412C  4E 80 00 20 */	blr 
