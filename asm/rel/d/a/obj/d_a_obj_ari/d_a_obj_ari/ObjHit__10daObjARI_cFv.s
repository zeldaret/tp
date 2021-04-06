lbl_80BA3B38:
/* 80BA3B38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA3B3C  7C 08 02 A6 */	mflr r0
/* 80BA3B40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA3B44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA3B48  7C 7F 1B 78 */	mr r31, r3
/* 80BA3B4C  38 7F 06 78 */	addi r3, r31, 0x678
/* 80BA3B50  4B 4E 09 11 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80BA3B54  28 03 00 00 */	cmplwi r3, 0
/* 80BA3B58  41 82 00 CC */	beq lbl_80BA3C24
/* 80BA3B5C  38 7F 06 78 */	addi r3, r31, 0x678
/* 80BA3B60  4B 4E 09 99 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80BA3B64  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80BA3B68  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80BA3B6C  41 82 00 30 */	beq lbl_80BA3B9C
/* 80BA3B70  88 1F 07 BC */	lbz r0, 0x7bc(r31)
/* 80BA3B74  28 00 00 00 */	cmplwi r0, 0
/* 80BA3B78  40 82 00 98 */	bne lbl_80BA3C10
/* 80BA3B7C  38 00 00 01 */	li r0, 1
/* 80BA3B80  98 1F 07 BC */	stb r0, 0x7bc(r31)
/* 80BA3B84  38 7F 06 78 */	addi r3, r31, 0x678
/* 80BA3B88  4B 4E 09 C1 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80BA3B8C  38 7F 07 B0 */	addi r3, r31, 0x7b0
/* 80BA3B90  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BA3B94  4B 5B AA 1D */	bl initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80BA3B98  48 00 00 78 */	b lbl_80BA3C10
lbl_80BA3B9C:
/* 80BA3B9C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80BA3BA0  40 82 00 70 */	bne lbl_80BA3C10
/* 80BA3BA4  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80BA3BA8  41 82 00 68 */	beq lbl_80BA3C10
/* 80BA3BAC  3C 60 80 BA */	lis r3, lit_3969@ha /* 0x80BA5474@ha */
/* 80BA3BB0  C0 03 54 74 */	lfs f0, lit_3969@l(r3)  /* 0x80BA5474@l */
/* 80BA3BB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BA3BB8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BA3BBC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BA3BC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA3BC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA3BC8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BA3BCC  28 1F 00 00 */	cmplwi r31, 0
/* 80BA3BD0  41 82 00 0C */	beq lbl_80BA3BDC
/* 80BA3BD4  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BA3BD8  48 00 00 08 */	b lbl_80BA3BE0
lbl_80BA3BDC:
/* 80BA3BDC  38 80 FF FF */	li r4, -1
lbl_80BA3BE0:
/* 80BA3BE0  38 A1 00 08 */	addi r5, r1, 8
/* 80BA3BE4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BA3BE8  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80BA3BEC  7D 89 03 A6 */	mtctr r12
/* 80BA3BF0  4E 80 04 21 */	bctrl 
/* 80BA3BF4  38 60 00 00 */	li r3, 0
/* 80BA3BF8  98 7F 07 BC */	stb r3, 0x7bc(r31)
/* 80BA3BFC  38 00 00 03 */	li r0, 3
/* 80BA3C00  98 1F 06 31 */	stb r0, 0x631(r31)
/* 80BA3C04  38 00 00 01 */	li r0, 1
/* 80BA3C08  98 1F 05 E8 */	stb r0, 0x5e8(r31)
/* 80BA3C0C  98 7F 05 E9 */	stb r3, 0x5e9(r31)
lbl_80BA3C10:
/* 80BA3C10  38 7F 06 78 */	addi r3, r31, 0x678
/* 80BA3C14  81 9F 06 B4 */	lwz r12, 0x6b4(r31)
/* 80BA3C18  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80BA3C1C  7D 89 03 A6 */	mtctr r12
/* 80BA3C20  4E 80 04 21 */	bctrl 
lbl_80BA3C24:
/* 80BA3C24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA3C28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA3C2C  7C 08 03 A6 */	mtlr r0
/* 80BA3C30  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA3C34  4E 80 00 20 */	blr 
