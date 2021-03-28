lbl_80C7CED4:
/* 80C7CED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7CED8  7C 08 02 A6 */	mflr r0
/* 80C7CEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7CEE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7CEE4  7C 7F 1B 78 */	mr r31, r3
/* 80C7CEE8  4B FF FF 3D */	bl initBaseMtx__11daObjL6Bm_cFv
/* 80C7CEEC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C7CEF0  38 03 00 24 */	addi r0, r3, 0x24
/* 80C7CEF4  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C7CEF8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C7CEFC  38 80 00 FF */	li r4, 0xff
/* 80C7CF00  38 A0 00 FF */	li r5, 0xff
/* 80C7CF04  7F E6 FB 78 */	mr r6, r31
/* 80C7CF08  4B 40 69 58 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C7CF0C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C7CF10  3C 80 80 C8 */	lis r4, l_cps_src@ha
/* 80C7CF14  38 84 DF B4 */	addi r4, r4, l_cps_src@l
/* 80C7CF18  4B 40 78 B8 */	b Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 80C7CF1C  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80C7CF20  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80C7CF24  38 7F 07 48 */	addi r3, r31, 0x748
/* 80C7CF28  3C 80 80 C8 */	lis r4, l_sph_src@ha
/* 80C7CF2C  38 84 DE CC */	addi r4, r4, l_sph_src@l
/* 80C7CF30  4B 40 7B 04 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C7CF34  38 1F 05 AC */	addi r0, r31, 0x5ac
/* 80C7CF38  90 1F 07 8C */	stw r0, 0x78c(r31)
/* 80C7CF3C  7F E3 FB 78 */	mr r3, r31
/* 80C7CF40  3C 80 80 C8 */	lis r4, l_cull_box@ha
/* 80C7CF44  C4 24 DF 9C */	lfsu f1, l_cull_box@l(r4)
/* 80C7CF48  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C7CF4C  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C7CF50  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C7CF54  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C7CF58  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C7CF5C  4B 39 D5 EC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C7CF60  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C7CF64  80 63 00 04 */	lwz r3, 4(r3)
/* 80C7CF68  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C7CF6C  80 83 00 04 */	lwz r4, 4(r3)
/* 80C7CF70  28 04 00 00 */	cmplwi r4, 0
/* 80C7CF74  41 82 00 10 */	beq lbl_80C7CF84
/* 80C7CF78  3C 60 80 C8 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80C7CF7C  38 03 CB 18 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l
/* 80C7CF80  90 04 00 04 */	stw r0, 4(r4)
lbl_80C7CF84:
/* 80C7CF84  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C7CF88  80 63 00 04 */	lwz r3, 4(r3)
/* 80C7CF8C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C7CF90  80 83 00 08 */	lwz r4, 8(r3)
/* 80C7CF94  28 04 00 00 */	cmplwi r4, 0
/* 80C7CF98  41 82 00 10 */	beq lbl_80C7CFA8
/* 80C7CF9C  3C 60 80 C8 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80C7CFA0  38 03 CB 18 */	addi r0, r3, nodeCallBack__FP8J3DJointi@l
/* 80C7CFA4  90 04 00 04 */	stw r0, 4(r4)
lbl_80C7CFA8:
/* 80C7CFA8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C7CFAC  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80C7CFB0  38 00 00 00 */	li r0, 0
/* 80C7CFB4  98 1F 09 10 */	stb r0, 0x910(r31)
/* 80C7CFB8  38 60 00 01 */	li r3, 1
/* 80C7CFBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7CFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7CFC4  7C 08 03 A6 */	mtlr r0
/* 80C7CFC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7CFCC  4E 80 00 20 */	blr 
