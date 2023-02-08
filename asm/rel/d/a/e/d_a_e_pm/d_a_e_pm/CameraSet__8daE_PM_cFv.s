lbl_807430C4:
/* 807430C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807430C8  7C 08 02 A6 */	mflr r0
/* 807430CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807430D0  39 61 00 30 */	addi r11, r1, 0x30
/* 807430D4  4B C1 F1 09 */	bl _savegpr_29
/* 807430D8  7C 7D 1B 78 */	mr r29, r3
/* 807430DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807430E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807430E4  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 807430E8  7C 00 07 74 */	extsb r0, r0
/* 807430EC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807430F0  7C 63 02 14 */	add r3, r3, r0
/* 807430F4  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 807430F8  4B A3 E5 49 */	bl dCam_getBody__Fv
/* 807430FC  7C 7E 1B 78 */	mr r30, r3
/* 80743100  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80743104  28 00 00 02 */	cmplwi r0, 2
/* 80743108  41 82 00 24 */	beq lbl_8074312C
/* 8074310C  7F A3 EB 78 */	mr r3, r29
/* 80743110  38 80 00 02 */	li r4, 2
/* 80743114  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80743118  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8074311C  38 C0 00 00 */	li r6, 0
/* 80743120  4B 8D 87 E9 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80743124  38 60 00 00 */	li r3, 0
/* 80743128  48 00 00 D0 */	b lbl_807431F8
lbl_8074312C:
/* 8074312C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80743130  4B A1 E3 A1 */	bl Stop__9dCamera_cFv
/* 80743134  3C 60 80 75 */	lis r3, lit_4520@ha /* 0x8074BFE8@ha */
/* 80743138  C0 03 BF E8 */	lfs f0, lit_4520@l(r3)  /* 0x8074BFE8@l */
/* 8074313C  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
/* 80743140  38 61 00 14 */	addi r3, r1, 0x14
/* 80743144  7F C4 F3 78 */	mr r4, r30
/* 80743148  4B A3 ED 51 */	bl Center__9dCamera_cFv
/* 8074314C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80743150  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 80743154  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80743158  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 8074315C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80743160  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 80743164  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 80743168  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 8074316C  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 80743170  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 80743174  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 80743178  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 8074317C  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 80743180  D0 1D 06 BC */	stfs f0, 0x6bc(r29)
/* 80743184  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 80743188  D0 1D 06 C0 */	stfs f0, 0x6c0(r29)
/* 8074318C  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 80743190  D0 1D 06 C4 */	stfs f0, 0x6c4(r29)
/* 80743194  38 61 00 08 */	addi r3, r1, 8
/* 80743198  7F C4 F3 78 */	mr r4, r30
/* 8074319C  4B A3 EC C9 */	bl Eye__9dCamera_cFv
/* 807431A0  C0 01 00 08 */	lfs f0, 8(r1)
/* 807431A4  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 807431A8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807431AC  D0 1D 06 9C */	stfs f0, 0x69c(r29)
/* 807431B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807431B4  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 807431B8  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 807431BC  D0 1D 06 B0 */	stfs f0, 0x6b0(r29)
/* 807431C0  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 807431C4  D0 1D 06 B4 */	stfs f0, 0x6b4(r29)
/* 807431C8  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 807431CC  D0 1D 06 B8 */	stfs f0, 0x6b8(r29)
/* 807431D0  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 807431D4  D0 1D 06 C8 */	stfs f0, 0x6c8(r29)
/* 807431D8  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 807431DC  D0 1D 06 CC */	stfs f0, 0x6cc(r29)
/* 807431E0  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 807431E4  D0 1D 06 D0 */	stfs f0, 0x6d0(r29)
/* 807431E8  38 7F 02 48 */	addi r3, r31, 0x248
/* 807431EC  38 80 00 01 */	li r4, 1
/* 807431F0  4B A1 FE 1D */	bl SetTrimSize__9dCamera_cFl
/* 807431F4  38 60 00 01 */	li r3, 1
lbl_807431F8:
/* 807431F8  39 61 00 30 */	addi r11, r1, 0x30
/* 807431FC  4B C1 F0 2D */	bl _restgpr_29
/* 80743200  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80743204  7C 08 03 A6 */	mtlr r0
/* 80743208  38 21 00 30 */	addi r1, r1, 0x30
/* 8074320C  4E 80 00 20 */	blr 
