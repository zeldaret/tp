lbl_800B23FC:
/* 800B23FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B2400  7C 08 02 A6 */	mflr r0
/* 800B2404  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B2408  39 61 00 20 */	addi r11, r1, 0x20
/* 800B240C  48 2A FD D1 */	bl _savegpr_29
/* 800B2410  7C 7D 1B 78 */	mr r29, r3
/* 800B2414  7C 9E 23 78 */	mr r30, r4
/* 800B2418  7C BF 2B 78 */	mr r31, r5
/* 800B241C  48 06 38 05 */	bl checkEventRun__9daAlink_cCFv
/* 800B2420  2C 03 00 00 */	cmpwi r3, 0
/* 800B2424  40 82 00 10 */	bne lbl_800B2434
/* 800B2428  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 800B242C  28 00 00 00 */	cmplwi r0, 0
/* 800B2430  41 82 00 AC */	beq lbl_800B24DC
lbl_800B2434:
/* 800B2434  28 1E 00 00 */	cmplwi r30, 0
/* 800B2438  41 82 00 6C */	beq lbl_800B24A4
/* 800B243C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 800B2440  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 800B2444  C0 1E 00 04 */	lfs f0, 4(r30)
/* 800B2448  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 800B244C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 800B2450  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 800B2454  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 800B2458  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 800B245C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800B2460  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 800B2464  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 800B2468  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 800B246C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 800B2470  D0 1D 37 98 */	stfs f0, 0x3798(r29)
/* 800B2474  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800B2478  D0 1D 37 9C */	stfs f0, 0x379c(r29)
/* 800B247C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 800B2480  D0 1D 37 A0 */	stfs f0, 0x37a0(r29)
/* 800B2484  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 800B2488  64 00 00 80 */	oris r0, r0, 0x80
/* 800B248C  90 1D 05 88 */	stw r0, 0x588(r29)
/* 800B2490  80 1D 05 90 */	lwz r0, 0x590(r29)
/* 800B2494  60 00 01 00 */	ori r0, r0, 0x100
/* 800B2498  90 1D 05 90 */	stw r0, 0x590(r29)
/* 800B249C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B24A0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_800B24A4:
/* 800B24A4  28 1F 00 00 */	cmplwi r31, 0
/* 800B24A8  41 82 00 2C */	beq lbl_800B24D4
/* 800B24AC  A8 1F 00 00 */	lha r0, 0(r31)
/* 800B24B0  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 800B24B4  A8 1F 00 02 */	lha r0, 2(r31)
/* 800B24B8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 800B24BC  A8 1F 00 04 */	lha r0, 4(r31)
/* 800B24C0  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 800B24C4  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800B24C8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 800B24CC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800B24D0  B0 1D 2F E6 */	sth r0, 0x2fe6(r29)
lbl_800B24D4:
/* 800B24D4  38 7D 08 14 */	addi r3, r29, 0x814
/* 800B24D8  48 1B 14 85 */	bl ClrCcMove__9cCcD_SttsFv
lbl_800B24DC:
/* 800B24DC  39 61 00 20 */	addi r11, r1, 0x20
/* 800B24E0  48 2A FD 49 */	bl _restgpr_29
/* 800B24E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B24E8  7C 08 03 A6 */	mtlr r0
/* 800B24EC  38 21 00 20 */	addi r1, r1, 0x20
/* 800B24F0  4E 80 00 20 */	blr 
