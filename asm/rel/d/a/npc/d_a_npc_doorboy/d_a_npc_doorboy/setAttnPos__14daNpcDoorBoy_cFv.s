lbl_809ACC5C:
/* 809ACC5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809ACC60  7C 08 02 A6 */	mflr r0
/* 809ACC64  90 01 00 34 */	stw r0, 0x34(r1)
/* 809ACC68  39 61 00 30 */	addi r11, r1, 0x30
/* 809ACC6C  4B 9B 55 70 */	b _savegpr_29
/* 809ACC70  7C 7E 1B 78 */	mr r30, r3
/* 809ACC74  3C 60 80 9B */	lis r3, m__20daNpcDoorBoy_Param_c@ha
/* 809ACC78  3B E3 D9 A8 */	addi r31, r3, m__20daNpcDoorBoy_Param_c@l
/* 809ACC7C  A8 1E 0E 00 */	lha r0, 0xe00(r30)
/* 809ACC80  2C 00 00 01 */	cmpwi r0, 1
/* 809ACC84  40 82 00 34 */	bne lbl_809ACCB8
/* 809ACC88  38 60 00 00 */	li r3, 0
/* 809ACC8C  7C 66 1B 78 */	mr r6, r3
/* 809ACC90  7C 65 1B 78 */	mr r5, r3
/* 809ACC94  7C 64 1B 78 */	mr r4, r3
/* 809ACC98  38 00 00 03 */	li r0, 3
/* 809ACC9C  7C 09 03 A6 */	mtctr r0
lbl_809ACCA0:
/* 809ACCA0  7C FE 1A 14 */	add r7, r30, r3
/* 809ACCA4  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 809ACCA8  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 809ACCAC  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 809ACCB0  38 63 00 06 */	addi r3, r3, 6
/* 809ACCB4  42 00 FF EC */	bdnz lbl_809ACCA0
lbl_809ACCB8:
/* 809ACCB8  7F C3 F3 78 */	mr r3, r30
/* 809ACCBC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809ACCC0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809ACCC4  7D 89 03 A6 */	mtctr r12
/* 809ACCC8  4E 80 04 21 */	bctrl 
/* 809ACCCC  7F C3 F3 78 */	mr r3, r30
/* 809ACCD0  48 00 01 49 */	bl lookat__14daNpcDoorBoy_cFv
/* 809ACCD4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809ACCD8  80 63 00 04 */	lwz r3, 4(r3)
/* 809ACCDC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809ACCE0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809ACCE4  38 63 00 90 */	addi r3, r3, 0x90
/* 809ACCE8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809ACCEC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809ACCF0  4B 99 97 C0 */	b PSMTXCopy
/* 809ACCF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809ACCF8  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 809ACCFC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 809ACD00  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 809ACD04  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 809ACD08  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 809ACD0C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 809ACD10  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 809ACD14  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 809ACD18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809ACD1C  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 809ACD20  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809ACD24  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 809ACD28  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809ACD2C  7F A3 EB 78 */	mr r3, r29
/* 809ACD30  38 81 00 14 */	addi r4, r1, 0x14
/* 809ACD34  38 BE 05 38 */	addi r5, r30, 0x538
/* 809ACD38  4B 99 A0 34 */	b PSMTXMultVec
/* 809ACD3C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 809ACD40  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809ACD44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809ACD48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809ACD4C  38 81 00 14 */	addi r4, r1, 0x14
/* 809ACD50  7C 85 23 78 */	mr r5, r4
/* 809ACD54  4B 99 A0 18 */	b PSMTXMultVec
/* 809ACD58  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 809ACD5C  38 81 00 14 */	addi r4, r1, 0x14
/* 809ACD60  4B 8C 3F 14 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 809ACD64  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 809ACD68  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 809ACD6C  38 81 00 14 */	addi r4, r1, 0x14
/* 809ACD70  4B 8C 3E 94 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809ACD74  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 809ACD78  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 809ACD7C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 809ACD80  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 809ACD84  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 809ACD88  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 809ACD8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809ACD90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809ACD94  38 9E 05 50 */	addi r4, r30, 0x550
/* 809ACD98  7C 85 23 78 */	mr r5, r4
/* 809ACD9C  4B 99 9F D0 */	b PSMTXMultVec
/* 809ACDA0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809ACDA4  80 63 00 04 */	lwz r3, 4(r3)
/* 809ACDA8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809ACDAC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809ACDB0  38 63 00 30 */	addi r3, r3, 0x30
/* 809ACDB4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809ACDB8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809ACDBC  4B 99 96 F4 */	b PSMTXCopy
/* 809ACDC0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 809ACDC4  D0 01 00 08 */	stfs f0, 8(r1)
/* 809ACDC8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 809ACDCC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809ACDD0  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 809ACDD4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809ACDD8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809ACDDC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809ACDE0  38 7E 0D BC */	addi r3, r30, 0xdbc
/* 809ACDE4  38 81 00 08 */	addi r4, r1, 8
/* 809ACDE8  4B 8C 23 F4 */	b SetC__8cM3dGCylFRC4cXyz
/* 809ACDEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809ACDF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809ACDF4  38 63 23 3C */	addi r3, r3, 0x233c
/* 809ACDF8  38 9E 0C 98 */	addi r4, r30, 0xc98
/* 809ACDFC  4B 8B 7D AC */	b Set__4cCcSFP8cCcD_Obj
/* 809ACE00  39 61 00 30 */	addi r11, r1, 0x30
/* 809ACE04  4B 9B 54 24 */	b _restgpr_29
/* 809ACE08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809ACE0C  7C 08 03 A6 */	mtlr r0
/* 809ACE10  38 21 00 30 */	addi r1, r1, 0x30
/* 809ACE14  4E 80 00 20 */	blr 
