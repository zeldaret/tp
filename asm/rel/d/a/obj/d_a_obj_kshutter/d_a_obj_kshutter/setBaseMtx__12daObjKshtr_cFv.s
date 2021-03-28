lbl_80C47B2C:
/* 80C47B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C47B30  7C 08 02 A6 */	mflr r0
/* 80C47B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C47B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C47B3C  7C 7F 1B 78 */	mr r31, r3
/* 80C47B40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C47B44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C47B48  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C47B4C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C47B50  C0 1F 05 FC */	lfs f0, 0x5fc(r31)
/* 80C47B54  EC 42 00 2A */	fadds f2, f2, f0
/* 80C47B58  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C47B5C  4B 6F ED 8C */	b PSMTXTrans
/* 80C47B60  88 1F 05 EA */	lbz r0, 0x5ea(r31)
/* 80C47B64  28 00 00 04 */	cmplwi r0, 4
/* 80C47B68  40 82 00 18 */	bne lbl_80C47B80
/* 80C47B6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C47B70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C47B74  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C47B78  4B 3C 48 BC */	b mDoMtx_YrotM__FPA4_fs
/* 80C47B7C  48 00 00 1C */	b lbl_80C47B98
lbl_80C47B80:
/* 80C47B80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C47B84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C47B88  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C47B8C  38 04 7F FF */	addi r0, r4, 0x7fff
/* 80C47B90  7C 04 07 34 */	extsh r4, r0
/* 80C47B94  4B 3C 48 A0 */	b mDoMtx_YrotM__FPA4_fs
lbl_80C47B98:
/* 80C47B98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C47B9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C47BA0  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80C47BA4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C47BA8  4B 6F E9 08 */	b PSMTXCopy
/* 80C47BAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C47BB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C47BB4  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C47BB8  4B 6F E8 F8 */	b PSMTXCopy
/* 80C47BBC  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80C47BC0  28 00 00 00 */	cmplwi r0, 0
/* 80C47BC4  41 82 00 3C */	beq lbl_80C47C00
/* 80C47BC8  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80C47BCC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C47BD0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C47BD4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C47BD8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C47BDC  4B 6F E8 D4 */	b PSMTXCopy
/* 80C47BE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C47BE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C47BE8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C47BEC  D0 1F 06 08 */	stfs f0, 0x608(r31)
/* 80C47BF0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C47BF4  D0 1F 06 0C */	stfs f0, 0x60c(r31)
/* 80C47BF8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C47BFC  D0 1F 06 10 */	stfs f0, 0x610(r31)
lbl_80C47C00:
/* 80C47C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C47C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C47C08  7C 08 03 A6 */	mtlr r0
/* 80C47C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C47C10  4E 80 00 20 */	blr 
