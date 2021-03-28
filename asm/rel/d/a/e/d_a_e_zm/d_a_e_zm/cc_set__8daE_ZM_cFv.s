lbl_80831B9C:
/* 80831B9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80831BA0  7C 08 02 A6 */	mflr r0
/* 80831BA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80831BA8  39 61 00 40 */	addi r11, r1, 0x40
/* 80831BAC  4B B3 06 2C */	b _savegpr_28
/* 80831BB0  7C 7E 1B 78 */	mr r30, r3
/* 80831BB4  3C 60 80 83 */	lis r3, lit_3789@ha
/* 80831BB8  3B E3 2C F8 */	addi r31, r3, lit_3789@l
/* 80831BBC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80831BC0  83 83 00 04 */	lwz r28, 4(r3)
/* 80831BC4  80 1E 06 5C */	lwz r0, 0x65c(r30)
/* 80831BC8  2C 00 00 02 */	cmpwi r0, 2
/* 80831BCC  41 82 00 0C */	beq lbl_80831BD8
/* 80831BD0  2C 00 00 03 */	cmpwi r0, 3
/* 80831BD4  40 82 00 90 */	bne lbl_80831C64
lbl_80831BD8:
/* 80831BD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80831BDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80831BE0  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80831BE4  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80831BE8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80831BEC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80831BF0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80831BF4  4B B1 48 BC */	b PSMTXCopy
/* 80831BF8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80831BFC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80831C00  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80831C04  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80831C08  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80831C0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80831C10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80831C14  38 81 00 20 */	addi r4, r1, 0x20
/* 80831C18  38 A1 00 14 */	addi r5, r1, 0x14
/* 80831C1C  4B B1 51 50 */	b PSMTXMultVec
/* 80831C20  38 61 00 08 */	addi r3, r1, 8
/* 80831C24  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80831C28  38 A1 00 14 */	addi r5, r1, 0x14
/* 80831C2C  4B A3 4F 08 */	b __mi__4cXyzCFRC3Vec
/* 80831C30  C0 01 00 08 */	lfs f0, 8(r1)
/* 80831C34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80831C38  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80831C3C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80831C40  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80831C44  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80831C48  38 61 00 14 */	addi r3, r1, 0x14
/* 80831C4C  4B A3 55 04 */	b atan2sY_XZ__4cXyzCFv
/* 80831C50  7C 64 1B 78 */	mr r4, r3
/* 80831C54  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80831C58  38 A0 00 02 */	li r5, 2
/* 80831C5C  38 C0 03 00 */	li r6, 0x300
/* 80831C60  4B A3 E9 A8 */	b cLib_addCalcAngleS2__FPssss
lbl_80831C64:
/* 80831C64  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80831C68  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80831C6C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80831C70  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80831C74  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80831C78  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80831C7C  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80831C80  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80831C84  3C 60 80 83 */	lis r3, l_HIO@ha
/* 80831C88  3B A3 2F 90 */	addi r29, r3, l_HIO@l
/* 80831C8C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80831C90  EC 02 00 32 */	fmuls f0, f2, f0
/* 80831C94  EC 01 00 2A */	fadds f0, f1, f0
/* 80831C98  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80831C9C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80831CA0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80831CA4  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80831CA8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80831CAC  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80831CB0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80831CB4  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80831CB8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80831CBC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80831CC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80831CC4  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80831CC8  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80831CCC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80831CD0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80831CD4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80831CD8  4B B1 47 D8 */	b PSMTXCopy
/* 80831CDC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80831CE0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80831CE4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80831CE8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80831CEC  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80831CF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80831CF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80831CF8  38 81 00 20 */	addi r4, r1, 0x20
/* 80831CFC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80831D00  4B B1 50 6C */	b PSMTXMultVec
/* 80831D04  38 7E 0A B4 */	addi r3, r30, 0xab4
/* 80831D08  38 81 00 14 */	addi r4, r1, 0x14
/* 80831D0C  4B A3 D4 D0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80831D10  38 7E 0A B4 */	addi r3, r30, 0xab4
/* 80831D14  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80831D18  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80831D1C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80831D20  4B A3 D4 D8 */	b SetH__8cM3dGCylFf
/* 80831D24  38 7E 0A B4 */	addi r3, r30, 0xab4
/* 80831D28  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80831D2C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80831D30  EC 21 00 32 */	fmuls f1, f1, f0
/* 80831D34  4B A3 D4 CC */	b SetR__8cM3dGCylFf
/* 80831D38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80831D3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80831D40  38 63 23 3C */	addi r3, r3, 0x233c
/* 80831D44  38 9E 09 90 */	addi r4, r30, 0x990
/* 80831D48  4B A3 2E 60 */	b Set__4cCcSFP8cCcD_Obj
/* 80831D4C  39 61 00 40 */	addi r11, r1, 0x40
/* 80831D50  4B B3 04 D4 */	b _restgpr_28
/* 80831D54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80831D58  7C 08 03 A6 */	mtlr r0
/* 80831D5C  38 21 00 40 */	addi r1, r1, 0x40
/* 80831D60  4E 80 00 20 */	blr 
