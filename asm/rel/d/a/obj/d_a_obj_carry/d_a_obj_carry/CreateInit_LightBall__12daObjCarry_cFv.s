lbl_804709DC:
/* 804709DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804709E0  7C 08 02 A6 */	mflr r0
/* 804709E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804709E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804709EC  7C 7F 1B 78 */	mr r31, r3
/* 804709F0  38 7F 0D 88 */	addi r3, r31, 0xd88
/* 804709F4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804709F8  38 A0 00 01 */	li r5, 1
/* 804709FC  81 9F 0D 98 */	lwz r12, 0xd98(r31)
/* 80470A00  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80470A04  7D 89 03 A6 */	mtctr r12
/* 80470A08  4E 80 04 21 */	bctrl 
/* 80470A0C  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 80470A10  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 80470A14  7C 00 07 75 */	extsb. r0, r0
/* 80470A18  41 82 00 10 */	beq lbl_80470A28
/* 80470A1C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80470A20  64 00 02 00 */	oris r0, r0, 0x200
/* 80470A24  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80470A28:
/* 80470A28  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80470A2C  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
/* 80470A30  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80470A34  D0 1F 0D FC */	stfs f0, 0xdfc(r31)
/* 80470A38  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80470A3C  D0 1F 0E 00 */	stfs f0, 0xe00(r31)
/* 80470A40  3C 60 80 48 */	lis r3, lit_4707@ha /* 0x8047A3D0@ha */
/* 80470A44  C0 03 A3 D0 */	lfs f0, lit_4707@l(r3)  /* 0x8047A3D0@l */
/* 80470A48  D0 1F 0E 04 */	stfs f0, 0xe04(r31)
/* 80470A4C  38 7F 0D F8 */	addi r3, r31, 0xdf8
/* 80470A50  4B D3 6D C5 */	bl dKy_dalkmist_inf_set__FP18DALKMIST_INFLUENCE
/* 80470A54  38 60 00 01 */	li r3, 1
/* 80470A58  98 7F 0E 0C */	stb r3, 0xe0c(r31)
/* 80470A5C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80470A60  64 00 00 02 */	oris r0, r0, 2
/* 80470A64  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80470A68  38 00 00 09 */	li r0, 9
/* 80470A6C  98 1F 08 80 */	stb r0, 0x880(r31)
/* 80470A70  38 00 00 02 */	li r0, 2
/* 80470A74  98 1F 08 82 */	stb r0, 0x882(r31)
/* 80470A78  80 1F 08 64 */	lwz r0, 0x864(r31)
/* 80470A7C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80470A80  90 1F 08 64 */	stw r0, 0x864(r31)
/* 80470A84  80 1F 08 68 */	lwz r0, 0x868(r31)
/* 80470A88  60 00 00 02 */	ori r0, r0, 2
/* 80470A8C  90 1F 08 68 */	stw r0, 0x868(r31)
/* 80470A90  98 7F 08 3C */	stb r3, 0x83c(r31)
/* 80470A94  7F E3 FB 78 */	mr r3, r31
/* 80470A98  48 00 29 51 */	bl mode_init_wait__12daObjCarry_cFv
/* 80470A9C  38 60 00 01 */	li r3, 1
/* 80470AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80470AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80470AA8  7C 08 03 A6 */	mtlr r0
/* 80470AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80470AB0  4E 80 00 20 */	blr 
