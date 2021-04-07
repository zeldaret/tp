lbl_800B3F2C:
/* 800B3F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B3F30  7C 08 02 A6 */	mflr r0
/* 800B3F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B3F38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B3F3C  7C 7F 1B 78 */	mr r31, r3
/* 800B3F40  A8 63 2F E0 */	lha r3, 0x2fe0(r3)
/* 800B3F44  A8 1F 30 7C */	lha r0, 0x307c(r31)
/* 800B3F48  7C 03 00 50 */	subf r0, r3, r0
/* 800B3F4C  7C 03 07 34 */	extsh r3, r0
/* 800B3F50  48 2B 11 81 */	bl abs
/* 800B3F54  2C 03 10 00 */	cmpwi r3, 0x1000
/* 800B3F58  40 81 00 64 */	ble lbl_800B3FBC
/* 800B3F5C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800B3F60  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800B3F64  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800B3F68  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 800B3F6C  7C 03 00 50 */	subf r0, r3, r0
/* 800B3F70  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800B3F74  7C 64 02 14 */	add r3, r4, r0
/* 800B3F78  C0 23 00 04 */	lfs f1, 4(r3)
/* 800B3F7C  C0 7F 33 98 */	lfs f3, 0x3398(r31)
/* 800B3F80  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800B3F84  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 800B3F88  EC 02 00 32 */	fmuls f0, f2, f0
/* 800B3F8C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800B3F90  40 81 00 18 */	ble lbl_800B3FA8
/* 800B3F94  C0 02 93 A8 */	lfs f0, lit_9652(r2)
/* 800B3F98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B3F9C  40 80 00 24 */	bge lbl_800B3FC0
/* 800B3FA0  FC 20 00 90 */	fmr f1, f0
/* 800B3FA4  48 00 00 1C */	b lbl_800B3FC0
lbl_800B3FA8:
/* 800B3FA8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B3FAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B3FB0  40 80 00 10 */	bge lbl_800B3FC0
/* 800B3FB4  FC 20 00 90 */	fmr f1, f0
/* 800B3FB8  48 00 00 08 */	b lbl_800B3FC0
lbl_800B3FBC:
/* 800B3FBC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
lbl_800B3FC0:
/* 800B3FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B3FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B3FC8  7C 08 03 A6 */	mtlr r0
/* 800B3FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 800B3FD0  4E 80 00 20 */	blr 
