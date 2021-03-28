lbl_80AF7AE0:
/* 80AF7AE0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF7AE4  7C 08 02 A6 */	mflr r0
/* 80AF7AE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF7AEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF7AF0  4B 86 A6 E8 */	b _savegpr_28
/* 80AF7AF4  7C 7D 1B 78 */	mr r29, r3
/* 80AF7AF8  7C BE 2B 78 */	mr r30, r5
/* 80AF7AFC  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80AF7B00  7C BF 2B 78 */	mr r31, r5
/* 80AF7B04  3C 60 80 B0 */	lis r3, lit_4159@ha
/* 80AF7B08  38 83 BE 78 */	addi r4, r3, lit_4159@l
/* 80AF7B0C  80 64 00 00 */	lwz r3, 0(r4)
/* 80AF7B10  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF7B14  90 61 00 08 */	stw r3, 8(r1)
/* 80AF7B18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF7B1C  80 04 00 08 */	lwz r0, 8(r4)
/* 80AF7B20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF7B24  2C 05 00 00 */	cmpwi r5, 0
/* 80AF7B28  40 82 00 B0 */	bne lbl_80AF7BD8
/* 80AF7B2C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AF7B30  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF7B34  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AF7B38  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF7B3C  38 63 00 30 */	addi r3, r3, 0x30
/* 80AF7B40  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AF7B44  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AF7B48  4B 84 E9 68 */	b PSMTXCopy
/* 80AF7B4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AF7B50  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80AF7B54  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AF7B58  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80AF7B5C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AF7B60  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80AF7B64  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AF7B68  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80AF7B6C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AF7B70  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF7B74  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AF7B78  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF7B7C  38 63 00 90 */	addi r3, r3, 0x90
/* 80AF7B80  7F 84 E3 78 */	mr r4, r28
/* 80AF7B84  4B 84 E9 2C */	b PSMTXCopy
/* 80AF7B88  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AF7B8C  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80AF7B90  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AF7B94  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80AF7B98  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AF7B9C  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80AF7BA0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AF7BA4  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF7BA8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AF7BAC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF7BB0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80AF7BB4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AF7BB8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AF7BBC  4B 84 E8 F4 */	b PSMTXCopy
/* 80AF7BC0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AF7BC4  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80AF7BC8  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AF7BCC  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80AF7BD0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AF7BD4  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80AF7BD8:
/* 80AF7BD8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80AF7BDC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80AF7BE0  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80AF7BE4  7C 60 E2 14 */	add r3, r0, r28
/* 80AF7BE8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AF7BEC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AF7BF0  4B 84 E8 C0 */	b PSMTXCopy
/* 80AF7BF4  2C 1F 00 02 */	cmpwi r31, 2
/* 80AF7BF8  41 82 00 38 */	beq lbl_80AF7C30
/* 80AF7BFC  40 80 00 10 */	bge lbl_80AF7C0C
/* 80AF7C00  2C 1F 00 01 */	cmpwi r31, 1
/* 80AF7C04  40 80 00 10 */	bge lbl_80AF7C14
/* 80AF7C08  48 00 00 28 */	b lbl_80AF7C30
lbl_80AF7C0C:
/* 80AF7C0C  2C 1F 00 05 */	cmpwi r31, 5
/* 80AF7C10  40 80 00 20 */	bge lbl_80AF7C30
lbl_80AF7C14:
/* 80AF7C14  7F A3 EB 78 */	mr r3, r29
/* 80AF7C18  7F E4 FB 78 */	mr r4, r31
/* 80AF7C1C  38 A1 00 08 */	addi r5, r1, 8
/* 80AF7C20  3C C0 80 B0 */	lis r6, m__16daNpcThe_Param_c@ha
/* 80AF7C24  38 C6 BE 0C */	addi r6, r6, m__16daNpcThe_Param_c@l
/* 80AF7C28  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80AF7C2C  4B 65 B7 50 */	b setLookatMtx__8daNpcF_cFiPif
lbl_80AF7C30:
/* 80AF7C30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AF7C34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AF7C38  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80AF7C3C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80AF7C40  7C 80 E2 14 */	add r4, r0, r28
/* 80AF7C44  4B 84 E8 6C */	b PSMTXCopy
/* 80AF7C48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AF7C4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AF7C50  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80AF7C54  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80AF7C58  4B 84 E8 58 */	b PSMTXCopy
/* 80AF7C5C  2C 1F 00 04 */	cmpwi r31, 4
/* 80AF7C60  41 82 00 0C */	beq lbl_80AF7C6C
/* 80AF7C64  2C 1F 00 0B */	cmpwi r31, 0xb
/* 80AF7C68  40 82 00 2C */	bne lbl_80AF7C94
lbl_80AF7C6C:
/* 80AF7C6C  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80AF7C70  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80AF7C74  41 82 00 20 */	beq lbl_80AF7C94
/* 80AF7C78  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 80AF7C7C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AF7C80  80 83 00 08 */	lwz r4, 8(r3)
/* 80AF7C84  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80AF7C88  4B 51 5D 08 */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80AF7C8C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AF7C90  93 83 00 08 */	stw r28, 8(r3)
lbl_80AF7C94:
/* 80AF7C94  38 60 00 01 */	li r3, 1
/* 80AF7C98  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF7C9C  4B 86 A5 88 */	b _restgpr_28
/* 80AF7CA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF7CA4  7C 08 03 A6 */	mtlr r0
/* 80AF7CA8  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF7CAC  4E 80 00 20 */	blr 
