lbl_800B24F4:
/* 800B24F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B24F8  7C 08 02 A6 */	mflr r0
/* 800B24FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B2500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B2504  93 C1 00 08 */	stw r30, 8(r1)
/* 800B2508  7C 7E 1B 78 */	mr r30, r3
/* 800B250C  7C 9F 23 78 */	mr r31, r4
/* 800B2510  48 06 37 11 */	bl checkEventRun__9daAlink_cCFv
/* 800B2514  2C 03 00 00 */	cmpwi r3, 0
/* 800B2518  40 82 00 10 */	bne lbl_800B2528
/* 800B251C  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 800B2520  28 00 00 00 */	cmplwi r0, 0
/* 800B2524  41 82 00 90 */	beq lbl_800B25B4
lbl_800B2528:
/* 800B2528  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 800B252C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800B2530  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 800B2534  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800B2538  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 800B253C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800B2540  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800B2544  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 800B2548  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800B254C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 800B2550  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800B2554  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 800B2558  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800B255C  D0 1E 37 98 */	stfs f0, 0x3798(r30)
/* 800B2560  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800B2564  D0 1E 37 9C */	stfs f0, 0x379c(r30)
/* 800B2568  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800B256C  D0 1E 37 A0 */	stfs f0, 0x37a0(r30)
/* 800B2570  80 1E 05 88 */	lwz r0, 0x588(r30)
/* 800B2574  64 00 00 80 */	oris r0, r0, 0x80
/* 800B2578  90 1E 05 88 */	stw r0, 0x588(r30)
/* 800B257C  80 1E 05 90 */	lwz r0, 0x590(r30)
/* 800B2580  60 00 01 00 */	ori r0, r0, 0x100
/* 800B2584  90 1E 05 90 */	stw r0, 0x590(r30)
/* 800B2588  7F E3 FB 78 */	mr r3, r31
/* 800B258C  38 9E 04 E4 */	addi r4, r30, 0x4e4
/* 800B2590  4B F5 A6 71 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 800B2594  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800B2598  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800B259C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800B25A0  B0 1E 2F E6 */	sth r0, 0x2fe6(r30)
/* 800B25A4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B25A8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800B25AC  38 7E 08 14 */	addi r3, r30, 0x814
/* 800B25B0  48 1B 13 AD */	bl ClrCcMove__9cCcD_SttsFv
lbl_800B25B4:
/* 800B25B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B25B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B25BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B25C0  7C 08 03 A6 */	mtlr r0
/* 800B25C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B25C8  4E 80 00 20 */	blr 
