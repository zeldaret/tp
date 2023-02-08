lbl_801C1E00:
/* 801C1E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C1E04  7C 08 02 A6 */	mflr r0
/* 801C1E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C1E0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C1E10  93 C1 00 08 */	stw r30, 8(r1)
/* 801C1E14  7C 7E 1B 78 */	mr r30, r3
/* 801C1E18  7C 9F 23 78 */	mr r31, r4
/* 801C1E1C  81 83 00 00 */	lwz r12, 0(r3)
/* 801C1E20  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 801C1E24  7D 89 03 A6 */	mtctr r12
/* 801C1E28  4E 80 04 21 */	bctrl 
/* 801C1E2C  D0 3E 00 E0 */	stfs f1, 0xe0(r30)
/* 801C1E30  9B FE 00 F2 */	stb r31, 0xf2(r30)
/* 801C1E34  38 00 00 01 */	li r0, 1
/* 801C1E38  98 1E 00 F5 */	stb r0, 0xf5(r30)
/* 801C1E3C  7F C3 F3 78 */	mr r3, r30
/* 801C1E40  88 1E 00 F5 */	lbz r0, 0xf5(r30)
/* 801C1E44  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C1E48  3C 80 80 3C */	lis r4, init_process@ha /* 0x803BCCE4@ha */
/* 801C1E4C  38 04 CC E4 */	addi r0, r4, init_process@l /* 0x803BCCE4@l */
/* 801C1E50  7D 80 2A 14 */	add r12, r0, r5
/* 801C1E54  48 1A 02 31 */	bl __ptmf_scall
/* 801C1E58  60 00 00 00 */	nop 
/* 801C1E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C1E60  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C1E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C1E68  7C 08 03 A6 */	mtlr r0
/* 801C1E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C1E70  4E 80 00 20 */	blr 
