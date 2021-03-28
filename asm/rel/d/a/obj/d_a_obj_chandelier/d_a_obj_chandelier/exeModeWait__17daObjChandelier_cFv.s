lbl_80BC82C0:
/* 80BC82C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC82C4  7C 08 02 A6 */	mflr r0
/* 80BC82C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC82CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC82D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC82D4  7C 7E 1B 78 */	mr r30, r3
/* 80BC82D8  3C 80 80 BD */	lis r4, lit_3731@ha
/* 80BC82DC  3B E4 8C DC */	addi r31, r4, lit_3731@l
/* 80BC82E0  48 00 02 3D */	bl exeModeHookSwg__17daObjChandelier_cFv
/* 80BC82E4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC82E8  54 04 E6 3E */	rlwinm r4, r0, 0x1c, 0x18, 0x1f
/* 80BC82EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC82F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC82F4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC82F8  7C 05 07 74 */	extsb r5, r0
/* 80BC82FC  4B 46 D0 64 */	b isSwitch__10dSv_info_cCFii
/* 80BC8300  2C 03 00 00 */	cmpwi r3, 0
/* 80BC8304  41 82 00 30 */	beq lbl_80BC8334
/* 80BC8308  38 00 00 01 */	li r0, 1
/* 80BC830C  98 1E 06 09 */	stb r0, 0x609(r30)
/* 80BC8310  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BC8314  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 80BC8318  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BC831C  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 80BC8320  38 00 00 00 */	li r0, 0
/* 80BC8324  90 1E 05 FC */	stw r0, 0x5fc(r30)
/* 80BC8328  90 1E 06 00 */	stw r0, 0x600(r30)
/* 80BC832C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BC8330  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
lbl_80BC8334:
/* 80BC8334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC8338  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC833C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8340  7C 08 03 A6 */	mtlr r0
/* 80BC8344  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC8348  4E 80 00 20 */	blr 
