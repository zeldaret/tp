lbl_80C38F78:
/* 80C38F78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C38F7C  7C 08 02 A6 */	mflr r0
/* 80C38F80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C38F84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C38F88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C38F8C  7C 7E 1B 78 */	mr r30, r3
/* 80C38F90  3C 60 80 C4 */	lis r3, l_cyl_src@ha /* 0x80C39648@ha */
/* 80C38F94  3B E3 96 48 */	addi r31, r3, l_cyl_src@l /* 0x80C39648@l */
/* 80C38F98  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80C38F9C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80C38FA0  41 82 00 34 */	beq lbl_80C38FD4
/* 80C38FA4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C38FA8  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C38FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C38FB0  40 81 00 14 */	ble lbl_80C38FC4
/* 80C38FB4  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 80C38FB8  38 9E 07 64 */	addi r4, r30, 0x764
/* 80C38FBC  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80C38FC0  4B FF F6 B9 */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_80C38FC4:
/* 80C38FC4  C0 3E 04 F8 */	lfs f1, 0x4f8(r30)
/* 80C38FC8  C0 5E 05 00 */	lfs f2, 0x500(r30)
/* 80C38FCC  4B 62 E6 A9 */	bl cM_atan2s__Fff
/* 80C38FD0  B0 7E 04 DE */	sth r3, 0x4de(r30)
lbl_80C38FD4:
/* 80C38FD4  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80C38FD8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80C38FDC  41 82 00 74 */	beq lbl_80C39050
/* 80C38FE0  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80C38FE4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C38FE8  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80C38FEC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C38FF0  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80C38FF4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C38FF8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C38FFC  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C39000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C39004  40 81 00 14 */	ble lbl_80C39018
/* 80C39008  38 61 00 08 */	addi r3, r1, 8
/* 80C3900C  38 9E 07 64 */	addi r4, r30, 0x764
/* 80C39010  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80C39014  4B FF F6 65 */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_80C39018:
/* 80C39018  C0 1E 09 40 */	lfs f0, 0x940(r30)
/* 80C3901C  FC 20 00 50 */	fneg f1, f0
/* 80C39020  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80C39024  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C39028  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C3902C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C39030  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80C39034  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C39038  40 80 00 0C */	bge lbl_80C39044
/* 80C3903C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C39040  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80C39044:
/* 80C39044  88 7E 09 36 */	lbz r3, 0x936(r30)
/* 80C39048  38 03 00 01 */	addi r0, r3, 1
/* 80C3904C  98 1E 09 36 */	stb r0, 0x936(r30)
lbl_80C39050:
/* 80C39050  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C39054  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C39058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C3905C  7C 08 03 A6 */	mtlr r0
/* 80C39060  38 21 00 20 */	addi r1, r1, 0x20
/* 80C39064  4E 80 00 20 */	blr 
