lbl_80BD6AEC:
/* 80BD6AEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BD6AF0  7C 08 02 A6 */	mflr r0
/* 80BD6AF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BD6AF8  39 61 00 50 */	addi r11, r1, 0x50
/* 80BD6AFC  4B 78 B6 D5 */	bl _savegpr_26
/* 80BD6B00  7C 7F 1B 78 */	mr r31, r3
/* 80BD6B04  3C 80 80 BE */	lis r4, cNullVec__6Z2Calc@ha /* 0x80BDA0C0@ha */
/* 80BD6B08  3B 84 A0 C0 */	addi r28, r4, cNullVec__6Z2Calc@l /* 0x80BDA0C0@l */
/* 80BD6B0C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80BD6B10  D0 03 0F 38 */	stfs f0, 0xf38(r3)
/* 80BD6B14  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80BD6B18  D0 03 0F 3C */	stfs f0, 0xf3c(r3)
/* 80BD6B1C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80BD6B20  D0 03 0F 40 */	stfs f0, 0xf40(r3)
/* 80BD6B24  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BD6B28  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80BD6B2C  98 03 0F 0C */	stb r0, 0xf0c(r3)
/* 80BD6B30  4B FF FF 1D */	bl initBaseMtx__12daObjCwall_cFv
/* 80BD6B34  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BD6B38  38 03 00 24 */	addi r0, r3, 0x24
/* 80BD6B3C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BD6B40  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80BD6B44  38 80 00 FF */	li r4, 0xff
/* 80BD6B48  38 A0 00 FF */	li r5, 0xff
/* 80BD6B4C  7F E6 FB 78 */	mr r6, r31
/* 80BD6B50  4B 4A CD 11 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BD6B54  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80BD6B58  38 9C 00 70 */	addi r4, r28, 0x70
/* 80BD6B5C  4B 4A DD 59 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BD6B60  3B BF 05 AC */	addi r29, r31, 0x5ac
/* 80BD6B64  93 BF 06 2C */	stw r29, 0x62c(r31)
/* 80BD6B68  3B 40 00 00 */	li r26, 0
/* 80BD6B6C  3B C0 00 00 */	li r30, 0
lbl_80BD6B70:
/* 80BD6B70  7F 7F F2 14 */	add r27, r31, r30
/* 80BD6B74  38 7B 08 5C */	addi r3, r27, 0x85c
/* 80BD6B78  38 9C 00 B4 */	addi r4, r28, 0xb4
/* 80BD6B7C  4B 4A DD 39 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BD6B80  93 BB 08 A0 */	stw r29, 0x8a0(r27)
/* 80BD6B84  3B 5A 00 01 */	addi r26, r26, 1
/* 80BD6B88  2C 1A 00 04 */	cmpwi r26, 4
/* 80BD6B8C  3B DE 01 3C */	addi r30, r30, 0x13c
/* 80BD6B90  41 80 FF E0 */	blt lbl_80BD6B70
/* 80BD6B94  38 7F 0D 4C */	addi r3, r31, 0xd4c
/* 80BD6B98  38 9C 00 B4 */	addi r4, r28, 0xb4
/* 80BD6B9C  4B 4A DD 19 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BD6BA0  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80BD6BA4  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80BD6BA8  38 7F 07 24 */	addi r3, r31, 0x724
/* 80BD6BAC  38 9C 00 F8 */	addi r4, r28, 0xf8
/* 80BD6BB0  4B 4A DE 85 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BD6BB4  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80BD6BB8  90 1F 07 68 */	stw r0, 0x768(r31)
/* 80BD6BBC  7F E3 FB 78 */	mr r3, r31
/* 80BD6BC0  C0 3C 00 28 */	lfs f1, 0x28(r28)
/* 80BD6BC4  38 9C 00 28 */	addi r4, r28, 0x28
/* 80BD6BC8  C0 44 00 04 */	lfs f2, 4(r4)
/* 80BD6BCC  C0 64 00 08 */	lfs f3, 8(r4)
/* 80BD6BD0  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80BD6BD4  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80BD6BD8  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80BD6BDC  4B 44 39 6D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BD6BE0  3C 60 80 BE */	lis r3, lit_3829@ha /* 0x80BDA008@ha */
/* 80BD6BE4  C0 03 A0 08 */	lfs f0, lit_3829@l(r3)  /* 0x80BDA008@l */
/* 80BD6BE8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BD6BEC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BD6BF0  3C 60 80 BE */	lis r3, lit_3830@ha /* 0x80BDA00C@ha */
/* 80BD6BF4  C0 03 A0 0C */	lfs f0, lit_3830@l(r3)  /* 0x80BDA00C@l */
/* 80BD6BF8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BD6BFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD6C00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD6C04  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80BD6C08  4B 43 57 D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BD6C0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BD6C10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BD6C14  38 81 00 20 */	addi r4, r1, 0x20
/* 80BD6C18  7C 85 23 78 */	mr r5, r4
/* 80BD6C1C  4B 77 01 51 */	bl PSMTXMultVec
/* 80BD6C20  83 5F 0E 8C */	lwz r26, 0xe8c(r31)
/* 80BD6C24  3B 7F 0E 94 */	addi r27, r31, 0xe94
/* 80BD6C28  7F E3 FB 78 */	mr r3, r31
/* 80BD6C2C  38 9A 00 04 */	addi r4, r26, 4
/* 80BD6C30  48 00 0B 59 */	bl getChainBasePos__12daObjCwall_cFP4cXyz
/* 80BD6C34  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80BD6C38  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BD6C3C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80BD6C40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD6C44  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80BD6C48  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BD6C4C  3B 40 00 00 */	li r26, 0
lbl_80BD6C50:
/* 80BD6C50  38 61 00 08 */	addi r3, r1, 8
/* 80BD6C54  38 81 00 14 */	addi r4, r1, 0x14
/* 80BD6C58  38 A1 00 20 */	addi r5, r1, 0x20
/* 80BD6C5C  4B 68 FE 89 */	bl __pl__4cXyzCFRC3Vec
/* 80BD6C60  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BD6C64  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80BD6C68  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BD6C6C  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80BD6C70  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BD6C74  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80BD6C78  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80BD6C7C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BD6C80  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80BD6C84  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD6C88  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80BD6C8C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BD6C90  3B 5A 00 01 */	addi r26, r26, 1
/* 80BD6C94  2C 1A 00 07 */	cmpwi r26, 7
/* 80BD6C98  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80BD6C9C  41 80 FF B4 */	blt lbl_80BD6C50
/* 80BD6CA0  7F E3 FB 78 */	mr r3, r31
/* 80BD6CA4  48 00 0A 75 */	bl calcSePos__12daObjCwall_cFv
/* 80BD6CA8  7F E3 FB 78 */	mr r3, r31
/* 80BD6CAC  4B 4A 1C A5 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 80BD6CB0  38 60 00 01 */	li r3, 1
/* 80BD6CB4  39 61 00 50 */	addi r11, r1, 0x50
/* 80BD6CB8  4B 78 B5 65 */	bl _restgpr_26
/* 80BD6CBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BD6CC0  7C 08 03 A6 */	mtlr r0
/* 80BD6CC4  38 21 00 50 */	addi r1, r1, 0x50
/* 80BD6CC8  4E 80 00 20 */	blr 
