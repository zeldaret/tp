lbl_80B9BC2C:
/* 80B9BC2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9BC30  7C 08 02 A6 */	mflr r0
/* 80B9BC34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9BC38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9BC3C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B9BC40  7C 7E 1B 78 */	mr r30, r3
/* 80B9BC44  3C 60 80 BA */	lis r3, lit_3755@ha
/* 80B9BC48  3B E3 C9 20 */	addi r31, r3, lit_3755@l
/* 80B9BC4C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80B9BC50  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B9BC54  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80B9BC58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B9BC5C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B9BC60  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B9BC64  4B 47 11 00 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B9BC68  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80B9BC6C  4B 47 12 D8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B9BC70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B9BC74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B9BC78  38 81 00 08 */	addi r4, r1, 8
/* 80B9BC7C  7C 85 23 78 */	mr r5, r4
/* 80B9BC80  4B 7A B0 EC */	b PSMTXMultVec
/* 80B9BC84  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B9BC88  38 81 00 08 */	addi r4, r1, 8
/* 80B9BC8C  4B 6D 39 BC */	b SetC__8cM3dGSphFRC4cXyz
/* 80B9BC90  38 7E 09 30 */	addi r3, r30, 0x930
/* 80B9BC94  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80B9BC98  4B 6D 3A 70 */	b SetR__8cM3dGSphFf
/* 80B9BC9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9BCA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9BCA4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B9BCA8  38 9E 08 0C */	addi r4, r30, 0x80c
/* 80B9BCAC  4B 6C 8E FC */	b Set__4cCcSFP8cCcD_Obj
/* 80B9BCB0  38 7E 08 0C */	addi r3, r30, 0x80c
/* 80B9BCB4  4B 4E 87 AC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80B9BCB8  28 03 00 00 */	cmplwi r3, 0
/* 80B9BCBC  41 82 00 18 */	beq lbl_80B9BCD4
/* 80B9BCC0  38 7E 08 0C */	addi r3, r30, 0x80c
/* 80B9BCC4  81 9E 08 48 */	lwz r12, 0x848(r30)
/* 80B9BCC8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B9BCCC  7D 89 03 A6 */	mtctr r12
/* 80B9BCD0  4E 80 04 21 */	bctrl 
lbl_80B9BCD4:
/* 80B9BCD4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9BCD8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B9BCDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9BCE0  7C 08 03 A6 */	mtlr r0
/* 80B9BCE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9BCE8  4E 80 00 20 */	blr 
