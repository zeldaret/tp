lbl_801C1C40:
/* 801C1C40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C1C44  7C 08 02 A6 */	mflr r0
/* 801C1C48  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C1C4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801C1C50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801C1C54  7C 7E 1B 78 */	mr r30, r3
/* 801C1C58  7C 9F 23 78 */	mr r31, r4
/* 801C1C5C  C0 02 A6 60 */	lfs f0, lit_3803(r2)
/* 801C1C60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801C1C64  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C1C68  38 81 00 0C */	addi r4, r1, 0xc
/* 801C1C6C  38 A1 00 08 */	addi r5, r1, 8
/* 801C1C70  81 83 00 00 */	lwz r12, 0(r3)
/* 801C1C74  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 801C1C78  7D 89 03 A6 */	mtctr r12
/* 801C1C7C  4E 80 04 21 */	bctrl 
/* 801C1C80  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 801C1C84  D0 1E 00 AC */	stfs f0, 0xac(r30)
/* 801C1C88  C0 01 00 08 */	lfs f0, 8(r1)
/* 801C1C8C  D0 1E 00 B0 */	stfs f0, 0xb0(r30)
/* 801C1C90  7F C3 F3 78 */	mr r3, r30
/* 801C1C94  81 9E 00 00 */	lwz r12, 0(r30)
/* 801C1C98  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801C1C9C  7D 89 03 A6 */	mtctr r12
/* 801C1CA0  4E 80 04 21 */	bctrl 
/* 801C1CA4  D0 3E 00 E0 */	stfs f1, 0xe0(r30)
/* 801C1CA8  9B FE 00 F2 */	stb r31, 0xf2(r30)
/* 801C1CAC  38 00 00 01 */	li r0, 1
/* 801C1CB0  98 1E 00 F5 */	stb r0, 0xf5(r30)
/* 801C1CB4  7F C3 F3 78 */	mr r3, r30
/* 801C1CB8  88 1E 00 F5 */	lbz r0, 0xf5(r30)
/* 801C1CBC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C1CC0  3C 80 80 3C */	lis r4, init_process@ha /* 0x803BCCE4@ha */
/* 801C1CC4  38 04 CC E4 */	addi r0, r4, init_process@l /* 0x803BCCE4@l */
/* 801C1CC8  7D 80 2A 14 */	add r12, r0, r5
/* 801C1CCC  48 1A 03 B9 */	bl __ptmf_scall
/* 801C1CD0  60 00 00 00 */	nop 
/* 801C1CD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801C1CD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801C1CDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C1CE0  7C 08 03 A6 */	mtlr r0
/* 801C1CE4  38 21 00 20 */	addi r1, r1, 0x20
/* 801C1CE8  4E 80 00 20 */	blr 
