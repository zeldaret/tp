lbl_80C4FD18:
/* 80C4FD18  3C 80 80 C5 */	lis r4, M_attr__14daObjKznkarm_c@ha /* 0x80C50D08@ha */
/* 80C4FD1C  38 E4 0D 08 */	addi r7, r4, M_attr__14daObjKznkarm_c@l /* 0x80C50D08@l */
/* 80C4FD20  38 00 00 02 */	li r0, 2
/* 80C4FD24  90 03 07 90 */	stw r0, 0x790(r3)
/* 80C4FD28  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80C4FD2C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80C4FD30  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80C4FD34  C0 07 00 3C */	lfs f0, 0x3c(r7)
/* 80C4FD38  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80C4FD3C  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80C4FD40  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80C4FD44  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80C4FD48  C0 07 00 58 */	lfs f0, 0x58(r7)
/* 80C4FD4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4FD50  40 81 00 54 */	ble lbl_80C4FDA4
/* 80C4FD54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4FD58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4FD5C  81 04 5D AC */	lwz r8, 0x5dac(r4)
/* 80C4FD60  C0 28 05 2C */	lfs f1, 0x52c(r8)
/* 80C4FD64  38 C7 00 00 */	addi r6, r7, 0
/* 80C4FD68  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 80C4FD6C  EC 61 00 2A */	fadds f3, f1, f0
/* 80C4FD70  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C4FD74  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C4FD78  A8 08 04 E6 */	lha r0, 0x4e6(r8)
/* 80C4FD7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C4FD80  7C 85 02 14 */	add r4, r5, r0
/* 80C4FD84  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C4FD88  C0 26 00 14 */	lfs f1, 0x14(r6)
/* 80C4FD8C  7C 05 04 2E */	lfsx f0, r5, r0
/* 80C4FD90  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C4FD94  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80C4FD98  D0 23 04 FC */	stfs f1, 0x4fc(r3)
/* 80C4FD9C  EC 03 00 B2 */	fmuls f0, f3, f2
/* 80C4FDA0  D0 03 05 00 */	stfs f0, 0x500(r3)
lbl_80C4FDA4:
/* 80C4FDA4  38 87 00 00 */	addi r4, r7, 0
/* 80C4FDA8  A8 04 00 36 */	lha r0, 0x36(r4)
/* 80C4FDAC  B0 03 07 AC */	sth r0, 0x7ac(r3)
/* 80C4FDB0  4E 80 00 20 */	blr 
