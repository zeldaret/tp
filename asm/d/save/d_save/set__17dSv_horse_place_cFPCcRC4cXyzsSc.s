lbl_80032C64:
/* 80032C64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80032C68  7C 08 02 A6 */	mflr r0
/* 80032C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80032C70  39 61 00 20 */	addi r11, r1, 0x20
/* 80032C74  48 32 F5 65 */	bl _savegpr_28
/* 80032C78  7C 7C 1B 78 */	mr r28, r3
/* 80032C7C  7C BD 2B 78 */	mr r29, r5
/* 80032C80  7C DE 33 78 */	mr r30, r6
/* 80032C84  7C FF 3B 78 */	mr r31, r7
/* 80032C88  38 7C 00 0E */	addi r3, r28, 0xe
/* 80032C8C  48 33 5E A1 */	bl strcpy
/* 80032C90  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80032C94  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80032C98  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80032C9C  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80032CA0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80032CA4  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80032CA8  B3 DC 00 0C */	sth r30, 0xc(r28)
/* 80032CAC  9B FC 00 17 */	stb r31, 0x17(r28)
/* 80032CB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80032CB4  48 32 F5 71 */	bl _restgpr_28
/* 80032CB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80032CBC  7C 08 03 A6 */	mtlr r0
/* 80032CC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80032CC4  4E 80 00 20 */	blr 
