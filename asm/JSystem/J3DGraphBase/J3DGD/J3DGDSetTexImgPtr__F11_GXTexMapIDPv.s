lbl_8030E67C:
/* 8030E67C  3C 04 80 00 */	addis r0, r4, 0x8000
/* 8030E680  54 05 D9 7E */	srwi r5, r0, 5
/* 8030E684  38 8D 83 A4 */	la r4, J3DGDTexImage3Ids(r13) /* 80450924-_SDA_BASE_ */
/* 8030E688  7C 04 18 AE */	lbzx r0, r4, r3
/* 8030E68C  54 00 C0 0E */	slwi r0, r0, 0x18
/* 8030E690  7C A6 03 78 */	or r6, r5, r0
/* 8030E694  38 A0 00 61 */	li r5, 0x61
/* 8030E698  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E69C  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E6A0  38 03 00 01 */	addi r0, r3, 1
/* 8030E6A4  90 04 00 08 */	stw r0, 8(r4)
/* 8030E6A8  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E6AC  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030E6B0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E6B4  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E6B8  38 03 00 01 */	addi r0, r3, 1
/* 8030E6BC  90 04 00 08 */	stw r0, 8(r4)
/* 8030E6C0  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E6C4  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030E6C8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E6CC  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E6D0  38 03 00 01 */	addi r0, r3, 1
/* 8030E6D4  90 04 00 08 */	stw r0, 8(r4)
/* 8030E6D8  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E6DC  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030E6E0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E6E4  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E6E8  38 03 00 01 */	addi r0, r3, 1
/* 8030E6EC  90 04 00 08 */	stw r0, 8(r4)
/* 8030E6F0  98 A3 00 00 */	stb r5, 0(r3)
/* 8030E6F4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030E6F8  80 64 00 08 */	lwz r3, 8(r4)
/* 8030E6FC  38 03 00 01 */	addi r0, r3, 1
/* 8030E700  90 04 00 08 */	stw r0, 8(r4)
/* 8030E704  98 C3 00 00 */	stb r6, 0(r3)
/* 8030E708  4E 80 00 20 */	blr 
