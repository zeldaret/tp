lbl_800982B4:
/* 800982B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800982B8  7C 08 02 A6 */	mflr r0
/* 800982BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800982C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800982C4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800982C8  A8 64 5D CA */	lha r3, 0x5dca(r4)
/* 800982CC  38 03 00 05 */	addi r0, r3, 5
/* 800982D0  B0 04 5D CA */	sth r0, 0x5dca(r4)
/* 800982D4  4B F9 59 D5 */	bl dComIfGs_getMaxLifeGauge__Fv
/* 800982D8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 800982DC  C8 22 91 E0 */	lfd f1, lit_3828(r2)
/* 800982E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800982E4  3C 00 43 30 */	lis r0, 0x4330
/* 800982E8  90 01 00 08 */	stw r0, 8(r1)
/* 800982EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 800982F0  EC 20 08 28 */	fsubs f1, f0, f1
/* 800982F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800982F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800982FC  C0 03 5D C0 */	lfs f0, 0x5dc0(r3)
/* 80098300  EC 00 08 2A */	fadds f0, f0, f1
/* 80098304  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 80098308  38 00 00 00 */	li r0, 0
/* 8009830C  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 80098310  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 80098314  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 80098318  7D 89 03 A6 */	mtctr r12
/* 8009831C  4E 80 04 21 */	bctrl 
/* 80098320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80098324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80098328  38 63 09 58 */	addi r3, r3, 0x958
/* 8009832C  38 80 00 04 */	li r4, 4
/* 80098330  4B F9 C5 E9 */	bl onDungeonItem__12dSv_memBit_cFi
/* 80098334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098338  7C 08 03 A6 */	mtlr r0
/* 8009833C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098340  4E 80 00 20 */	blr 
