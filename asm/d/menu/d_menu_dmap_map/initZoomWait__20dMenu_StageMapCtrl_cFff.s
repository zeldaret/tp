lbl_801C1F70:
/* 801C1F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C1F74  7C 08 02 A6 */	mflr r0
/* 801C1F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C1F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C1F80  7C 7F 1B 78 */	mr r31, r3
/* 801C1F84  D0 23 00 AC */	stfs f1, 0xac(r3)
/* 801C1F88  D0 43 00 B0 */	stfs f2, 0xb0(r3)
/* 801C1F8C  C0 03 00 AC */	lfs f0, 0xac(r3)
/* 801C1F90  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 801C1F94  C0 03 00 B0 */	lfs f0, 0xb0(r3)
/* 801C1F98  D0 03 00 A0 */	stfs f0, 0xa0(r3)
/* 801C1F9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C1FA0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801C1FA4  7D 89 03 A6 */	mtctr r12
/* 801C1FA8  4E 80 04 21 */	bctrl 
/* 801C1FAC  D0 3F 00 E0 */	stfs f1, 0xe0(r31)
/* 801C1FB0  7F E3 FB 78 */	mr r3, r31
/* 801C1FB4  81 9F 00 00 */	lwz r12, 0(r31)
/* 801C1FB8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801C1FBC  7D 89 03 A6 */	mtctr r12
/* 801C1FC0  4E 80 04 21 */	bctrl 
/* 801C1FC4  D0 3F 00 BC */	stfs f1, 0xbc(r31)
/* 801C1FC8  38 00 00 02 */	li r0, 2
/* 801C1FCC  98 1F 00 F5 */	stb r0, 0xf5(r31)
/* 801C1FD0  7F E3 FB 78 */	mr r3, r31
/* 801C1FD4  88 1F 00 F5 */	lbz r0, 0xf5(r31)
/* 801C1FD8  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C1FDC  3C 80 80 3C */	lis r4, init_process@ha /* 0x803BCCE4@ha */
/* 801C1FE0  38 04 CC E4 */	addi r0, r4, init_process@l /* 0x803BCCE4@l */
/* 801C1FE4  7D 80 2A 14 */	add r12, r0, r5
/* 801C1FE8  48 1A 00 9D */	bl __ptmf_scall
/* 801C1FEC  60 00 00 00 */	nop 
/* 801C1FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C1FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C1FF8  7C 08 03 A6 */	mtlr r0
/* 801C1FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C2000  4E 80 00 20 */	blr 
