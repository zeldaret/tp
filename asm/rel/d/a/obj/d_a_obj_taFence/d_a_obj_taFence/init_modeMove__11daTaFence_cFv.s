lbl_80D05B94:
/* 80D05B94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D05B98  7C 08 02 A6 */	mflr r0
/* 80D05B9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D05BA0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D05BA4  7C 7F 1B 78 */	mr r31, r3
/* 80D05BA8  38 60 00 00 */	li r3, 0
/* 80D05BAC  38 00 00 0B */	li r0, 0xb
/* 80D05BB0  7C 09 03 A6 */	mtctr r0
lbl_80D05BB4:
/* 80D05BB4  38 83 06 18 */	addi r4, r3, 0x618
/* 80D05BB8  7C 1F 20 2E */	lwzx r0, r31, r4
/* 80D05BBC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D05BC0  7C 1F 21 2E */	stwx r0, r31, r4
/* 80D05BC4  38 63 01 3C */	addi r3, r3, 0x13c
/* 80D05BC8  42 00 FF EC */	bdnz lbl_80D05BB4
/* 80D05BCC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D05BD0  4B 56 26 04 */	b ChkUsed__9cBgW_BgIdCFv
/* 80D05BD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D05BD8  41 82 00 18 */	beq lbl_80D05BF0
/* 80D05BDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D05BE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D05BE4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D05BE8  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80D05BEC  4B 36 E6 64 */	b Release__4cBgSFP9dBgW_Base
lbl_80D05BF0:
/* 80D05BF0  3C 60 80 D0 */	lis r3, l_HIO@ha
/* 80D05BF4  38 63 63 3C */	addi r3, r3, l_HIO@l
/* 80D05BF8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D05BFC  D0 1F 13 80 */	stfs f0, 0x1380(r31)
/* 80D05C00  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D05C04  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D05C08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D05C0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D05C10  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D05C14  38 61 00 08 */	addi r3, r1, 8
/* 80D05C18  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D05C1C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D05C20  4B 56 0F 14 */	b __mi__4cXyzCFRC3Vec
/* 80D05C24  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D05C28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D05C2C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D05C30  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D05C34  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D05C38  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D05C3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D05C40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D05C44  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D05C48  7C 00 00 D0 */	neg r0, r0
/* 80D05C4C  7C 04 07 34 */	extsh r4, r0
/* 80D05C50  4B 30 67 8C */	b mDoMtx_YrotS__FPA4_fs
/* 80D05C54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D05C58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D05C5C  38 81 00 14 */	addi r4, r1, 0x14
/* 80D05C60  7C 85 23 78 */	mr r5, r4
/* 80D05C64  4B 64 11 08 */	b PSMTXMultVec
/* 80D05C68  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80D05C6C  3C 60 80 D0 */	lis r3, lit_3651@ha
/* 80D05C70  C0 03 60 E0 */	lfs f0, lit_3651@l(r3)
/* 80D05C74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D05C78  40 80 00 10 */	bge lbl_80D05C88
/* 80D05C7C  38 00 80 00 */	li r0, -32768
/* 80D05C80  B0 1F 13 84 */	sth r0, 0x1384(r31)
/* 80D05C84  48 00 00 0C */	b lbl_80D05C90
lbl_80D05C88:
/* 80D05C88  38 00 00 00 */	li r0, 0
/* 80D05C8C  B0 1F 13 84 */	sth r0, 0x1384(r31)
lbl_80D05C90:
/* 80D05C90  38 00 00 02 */	li r0, 2
/* 80D05C94  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80D05C98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D05C9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D05CA0  7C 08 03 A6 */	mtlr r0
/* 80D05CA4  38 21 00 30 */	addi r1, r1, 0x30
/* 80D05CA8  4E 80 00 20 */	blr 
