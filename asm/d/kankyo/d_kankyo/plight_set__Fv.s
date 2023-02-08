lbl_8019E734:
/* 8019E734  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8019E738  7C 08 02 A6 */	mflr r0
/* 8019E73C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8019E740  39 61 00 30 */	addi r11, r1, 0x30
/* 8019E744  48 1C 3A 8D */	bl _savegpr_26
/* 8019E748  3B E0 00 00 */	li r31, 0
/* 8019E74C  3B C0 00 00 */	li r30, 0
/* 8019E750  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8019E754  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8019E758  3B 63 4E 20 */	addi r27, r3, 0x4e20
/* 8019E75C  7F 63 DB 78 */	mr r3, r27
/* 8019E760  81 9B 00 00 */	lwz r12, 0(r27)
/* 8019E764  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8019E768  7D 89 03 A6 */	mtctr r12
/* 8019E76C  4E 80 04 21 */	bctrl 
/* 8019E770  7C 7C 1B 79 */	or. r28, r3, r3
/* 8019E774  41 82 00 C8 */	beq lbl_8019E83C
/* 8019E778  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019E77C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019E780  93 83 07 CC */	stw r28, 0x7cc(r3)
/* 8019E784  3B 40 00 00 */	li r26, 0
/* 8019E788  3B A0 00 00 */	li r29, 0
/* 8019E78C  48 00 00 94 */	b lbl_8019E820
lbl_8019E790:
/* 8019E790  2C 1F 00 1E */	cmpwi r31, 0x1e
/* 8019E794  40 80 00 84 */	bge lbl_8019E818
/* 8019E798  7C 9C EA 14 */	add r4, r28, r29
/* 8019E79C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8019E7A0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8019E7A4  38 03 CA 54 */	addi r0, r3, g_env_light@l /* 0x8042CA54@l */
/* 8019E7A8  7C 60 F2 14 */	add r3, r0, r30
/* 8019E7AC  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8019E7B0  C0 04 00 04 */	lfs f0, 4(r4)
/* 8019E7B4  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8019E7B8  C0 04 00 08 */	lfs f0, 8(r4)
/* 8019E7BC  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 8019E7C0  88 04 00 18 */	lbz r0, 0x18(r4)
/* 8019E7C4  B0 03 00 44 */	sth r0, 0x44(r3)
/* 8019E7C8  88 04 00 19 */	lbz r0, 0x19(r4)
/* 8019E7CC  B0 03 00 46 */	sth r0, 0x46(r3)
/* 8019E7D0  88 04 00 1A */	lbz r0, 0x1a(r4)
/* 8019E7D4  B0 03 00 48 */	sth r0, 0x48(r3)
/* 8019E7D8  C0 22 A2 8C */	lfs f1, lit_5106(r2)
/* 8019E7DC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8019E7E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019E7E4  D0 03 00 4C */	stfs f0, 0x4c(r3)
/* 8019E7E8  88 04 00 1B */	lbz r0, 0x1b(r4)
/* 8019E7EC  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 8019E7F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019E7F4  3C 00 43 30 */	lis r0, 0x4330
/* 8019E7F8  90 01 00 08 */	stw r0, 8(r1)
/* 8019E7FC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8019E800  EC 00 08 28 */	fsubs f0, f0, f1
/* 8019E804  D0 03 00 50 */	stfs f0, 0x50(r3)
/* 8019E808  38 63 00 38 */	addi r3, r3, 0x38
/* 8019E80C  48 00 8F 85 */	bl dKy_plight_set__FP15LIGHT_INFLUENCE
/* 8019E810  3B FF 00 01 */	addi r31, r31, 1
/* 8019E814  3B DE 00 20 */	addi r30, r30, 0x20
lbl_8019E818:
/* 8019E818  3B 5A 00 01 */	addi r26, r26, 1
/* 8019E81C  3B BD 00 1C */	addi r29, r29, 0x1c
lbl_8019E820:
/* 8019E820  7F 63 DB 78 */	mr r3, r27
/* 8019E824  81 9B 00 00 */	lwz r12, 0(r27)
/* 8019E828  81 8C 00 A4 */	lwz r12, 0xa4(r12)
/* 8019E82C  7D 89 03 A6 */	mtctr r12
/* 8019E830  4E 80 04 21 */	bctrl 
/* 8019E834  7C 1A 18 00 */	cmpw r26, r3
/* 8019E838  41 80 FF 58 */	blt lbl_8019E790
lbl_8019E83C:
/* 8019E83C  39 61 00 30 */	addi r11, r1, 0x30
/* 8019E840  48 1C 39 DD */	bl _restgpr_26
/* 8019E844  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8019E848  7C 08 03 A6 */	mtlr r0
/* 8019E84C  38 21 00 30 */	addi r1, r1, 0x30
/* 8019E850  4E 80 00 20 */	blr 
