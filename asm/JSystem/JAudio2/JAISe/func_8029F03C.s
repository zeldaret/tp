lbl_8029F03C:
/* 8029F03C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029F040  7C 08 02 A6 */	mflr r0
/* 8029F044  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029F048  39 61 00 20 */	addi r11, r1, 0x20
/* 8029F04C  48 0C 31 8D */	bl _savegpr_28
/* 8029F050  7C 7C 1B 78 */	mr r28, r3
/* 8029F054  7C 9D 23 78 */	mr r29, r4
/* 8029F058  7C BE 2B 78 */	mr r30, r5
/* 8029F05C  7C DF 33 78 */	mr r31, r6
/* 8029F060  7F 84 E3 78 */	mr r4, r28
/* 8029F064  48 03 CD 99 */	bl __ct__10JSUPtrLinkFPv
/* 8029F068  38 7C 00 10 */	addi r3, r28, 0x10
/* 8029F06C  48 00 32 8D */	bl __ct__8JAISoundFv
/* 8029F070  3C 60 80 3D */	lis r3, __vt__5JAISe@ha /* 0x803C9858@ha */
/* 8029F074  38 63 98 58 */	addi r3, r3, __vt__5JAISe@l /* 0x803C9858@l */
/* 8029F078  90 7C 00 A8 */	stw r3, 0xa8(r28)
/* 8029F07C  38 03 00 08 */	addi r0, r3, 8
/* 8029F080  90 1C 00 10 */	stw r0, 0x10(r28)
/* 8029F084  C0 02 BD 78 */	lfs f0, lit_626(r2)
/* 8029F088  D0 1C 00 B4 */	stfs f0, 0xb4(r28)
/* 8029F08C  D0 1C 00 BC */	stfs f0, 0xbc(r28)
/* 8029F090  C0 22 BD 7C */	lfs f1, lit_627(r2)
/* 8029F094  D0 3C 00 B8 */	stfs f1, 0xb8(r28)
/* 8029F098  C0 02 BD 80 */	lfs f0, lit_628(r2)
/* 8029F09C  D0 1C 00 C0 */	stfs f0, 0xc0(r28)
/* 8029F0A0  D0 3C 00 C4 */	stfs f1, 0xc4(r28)
/* 8029F0A4  38 7C 00 C8 */	addi r3, r28, 0xc8
/* 8029F0A8  4B FF 21 81 */	bl __ct__8JASTrackFv
/* 8029F0AC  38 00 00 00 */	li r0, 0
/* 8029F0B0  90 1C 03 10 */	stw r0, 0x310(r28)
/* 8029F0B4  90 1C 03 14 */	stw r0, 0x314(r28)
/* 8029F0B8  C0 02 BD 78 */	lfs f0, lit_626(r2)
/* 8029F0BC  D0 1C 03 28 */	stfs f0, 0x328(r28)
/* 8029F0C0  C0 02 BD 7C */	lfs f0, lit_627(r2)
/* 8029F0C4  D0 1C 03 2C */	stfs f0, 0x32c(r28)
/* 8029F0C8  90 1C 03 34 */	stw r0, 0x334(r28)
/* 8029F0CC  D0 1C 03 30 */	stfs f0, 0x330(r28)
/* 8029F0D0  93 DC 03 20 */	stw r30, 0x320(r28)
/* 8029F0D4  93 BC 03 1C */	stw r29, 0x31c(r28)
/* 8029F0D8  93 FC 00 AC */	stw r31, 0xac(r28)
/* 8029F0DC  7F 83 E3 78 */	mr r3, r28
/* 8029F0E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8029F0E4  48 0C 31 41 */	bl _restgpr_28
/* 8029F0E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029F0EC  7C 08 03 A6 */	mtlr r0
/* 8029F0F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8029F0F4  4E 80 00 20 */	blr 
