lbl_802C699C:
/* 802C699C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C69A0  7C 08 02 A6 */	mflr r0
/* 802C69A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C69A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C69AC  7C 7F 1B 78 */	mr r31, r3
/* 802C69B0  C0 22 C3 74 */	lfs f1, lit_3705(r2)
/* 802C69B4  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 802C69B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802C69BC  40 82 00 3C */	bne lbl_802C69F8
/* 802C69C0  38 00 00 00 */	li r0, 0
/* 802C69C4  98 1F 00 38 */	stb r0, 0x38(r31)
/* 802C69C8  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C69CC  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 802C69D0  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 802C69D4  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 802C69D8  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C69DC  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 802C69E0  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 802C69E4  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 802C69E8  98 1F 00 39 */	stb r0, 0x39(r31)
/* 802C69EC  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 802C69F0  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 802C69F4  D0 1F 00 44 */	stfs f0, 0x44(r31)
lbl_802C69F8:
/* 802C69F8  38 00 00 00 */	li r0, 0
/* 802C69FC  98 1F 01 40 */	stb r0, 0x140(r31)
/* 802C6A00  98 1F 01 60 */	stb r0, 0x160(r31)
/* 802C6A04  98 1F 01 88 */	stb r0, 0x188(r31)
/* 802C6A08  98 1F 01 E0 */	stb r0, 0x1e0(r31)
/* 802C6A0C  98 1F 02 14 */	stb r0, 0x214(r31)
/* 802C6A10  98 1F 02 48 */	stb r0, 0x248(r31)
/* 802C6A14  98 1F 02 7C */	stb r0, 0x27c(r31)
/* 802C6A18  98 1F 02 B0 */	stb r0, 0x2b0(r31)
/* 802C6A1C  98 1F 01 B8 */	stb r0, 0x1b8(r31)
/* 802C6A20  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C6A24  D0 1F 01 AC */	stfs f0, 0x1ac(r31)
/* 802C6A28  D0 1F 01 B0 */	stfs f0, 0x1b0(r31)
/* 802C6A2C  D0 1F 01 B4 */	stfs f0, 0x1b4(r31)
/* 802C6A30  D0 1F 01 E4 */	stfs f0, 0x1e4(r31)
/* 802C6A34  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 802C6A38  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 802C6A3C  D0 1F 02 18 */	stfs f0, 0x218(r31)
/* 802C6A40  D0 1F 02 1C */	stfs f0, 0x21c(r31)
/* 802C6A44  D0 1F 02 20 */	stfs f0, 0x220(r31)
/* 802C6A48  D0 1F 02 4C */	stfs f0, 0x24c(r31)
/* 802C6A4C  D0 1F 02 50 */	stfs f0, 0x250(r31)
/* 802C6A50  D0 1F 02 54 */	stfs f0, 0x254(r31)
/* 802C6A54  D0 1F 02 80 */	stfs f0, 0x280(r31)
/* 802C6A58  D0 1F 02 84 */	stfs f0, 0x284(r31)
/* 802C6A5C  D0 1F 02 88 */	stfs f0, 0x288(r31)
/* 802C6A60  D0 1F 02 B4 */	stfs f0, 0x2b4(r31)
/* 802C6A64  D0 1F 02 B8 */	stfs f0, 0x2b8(r31)
/* 802C6A68  D0 1F 02 BC */	stfs f0, 0x2bc(r31)
/* 802C6A6C  38 7F 01 64 */	addi r3, r31, 0x164
/* 802C6A70  4B FE 82 4D */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A74  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 802C6A78  4B FE 82 45 */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A7C  38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 802C6A80  4B FE 82 3D */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A84  38 7F 02 24 */	addi r3, r31, 0x224
/* 802C6A88  4B FE 82 35 */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A8C  38 7F 02 58 */	addi r3, r31, 0x258
/* 802C6A90  4B FE 82 2D */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A94  38 7F 02 8C */	addi r3, r31, 0x28c
/* 802C6A98  4B FE 82 25 */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6A9C  38 7F 02 C0 */	addi r3, r31, 0x2c0
/* 802C6AA0  4B FE 82 1D */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6AA4  38 7F 00 64 */	addi r3, r31, 0x64
/* 802C6AA8  4B FE 82 15 */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C6AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C6AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C6AB4  7C 08 03 A6 */	mtlr r0
/* 802C6AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802C6ABC  4E 80 00 20 */	blr 
