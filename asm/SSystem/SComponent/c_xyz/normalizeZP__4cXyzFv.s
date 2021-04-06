lbl_80266F48:
/* 80266F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80266F4C  7C 08 02 A6 */	mflr r0
/* 80266F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80266F54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80266F58  93 C1 00 08 */	stw r30, 8(r1)
/* 80266F5C  7C 7E 1B 78 */	mr r30, r3
/* 80266F60  7C 9F 23 78 */	mr r31, r4
/* 80266F64  7F E3 FB 78 */	mr r3, r31
/* 80266F68  48 0E 01 D1 */	bl PSVECSquareMag
/* 80266F6C  C0 02 B6 74 */	lfs f0, lit_2288(r2)
/* 80266F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80266F74  7C 00 00 26 */	mfcr r0
/* 80266F78  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80266F7C  40 82 00 14 */	bne lbl_80266F90
/* 80266F80  7F E3 FB 78 */	mr r3, r31
/* 80266F84  7F E4 FB 78 */	mr r4, r31
/* 80266F88  48 0E 01 6D */	bl PSVECNormalize
/* 80266F8C  48 00 00 20 */	b lbl_80266FAC
lbl_80266F90:
/* 80266F90  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80266F94  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80266F98  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80266F9C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80266FA0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80266FA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80266FA8  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80266FAC:
/* 80266FAC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80266FB0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80266FB4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80266FB8  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80266FBC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80266FC0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80266FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80266FC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80266FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80266FD0  7C 08 03 A6 */	mtlr r0
/* 80266FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80266FD8  4E 80 00 20 */	blr 
