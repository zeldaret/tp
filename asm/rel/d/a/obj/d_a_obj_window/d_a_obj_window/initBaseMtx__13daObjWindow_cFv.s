lbl_80D38758:
/* 80D38758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3875C  7C 08 02 A6 */	mflr r0
/* 80D38760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D38768  7C 7F 1B 78 */	mr r31, r3
/* 80D3876C  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80D38770  81 83 00 00 */	lwz r12, 0(r3)
/* 80D38774  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80D38778  7D 89 03 A6 */	mtctr r12
/* 80D3877C  4E 80 04 21 */	bctrl 
/* 80D38780  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D38784  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80D38788  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D3878C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80D38790  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D38794  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80D38798  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D3879C  7F E3 FB 78 */	mr r3, r31
/* 80D387A0  48 00 00 19 */	bl setBaseMtx__13daObjWindow_cFv
/* 80D387A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D387A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D387AC  7C 08 03 A6 */	mtlr r0
/* 80D387B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D387B4  4E 80 00 20 */	blr 
