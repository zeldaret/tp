lbl_80CE7950:
/* 80CE7950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE7954  7C 08 02 A6 */	mflr r0
/* 80CE7958  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE795C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE7960  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CE7964  7C 7F 1B 78 */	mr r31, r3
/* 80CE7968  3C 80 80 CE */	lis r4, mCcDObjInfo__14daObj_SSItem_c@ha /* 0x80CE7EB0@ha */
/* 80CE796C  3B C4 7E B0 */	addi r30, r4, mCcDObjInfo__14daObj_SSItem_c@l /* 0x80CE7EB0@l */
/* 80CE7970  80 83 05 80 */	lwz r4, 0x580(r3)
/* 80CE7974  38 04 00 24 */	addi r0, r4, 0x24
/* 80CE7978  90 03 05 04 */	stw r0, 0x504(r3)
/* 80CE797C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80CE7980  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80CE7984  FC 60 08 90 */	fmr f3, f1
/* 80CE7988  C0 9E 00 50 */	lfs f4, 0x50(r30)
/* 80CE798C  C0 BE 00 54 */	lfs f5, 0x54(r30)
/* 80CE7990  FC C0 20 90 */	fmr f6, f4
/* 80CE7994  4B 33 2B B5 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CE7998  7F E3 FB 78 */	mr r3, r31
/* 80CE799C  4B FF FE 9D */	bl getResName__14daObj_SSItem_cFv
/* 80CE79A0  90 7F 01 00 */	stw r3, 0x100(r31)
/* 80CE79A4  38 00 00 00 */	li r0, 0
/* 80CE79A8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CE79AC  38 00 00 06 */	li r0, 6
/* 80CE79B0  98 1F 05 48 */	stb r0, 0x548(r31)
/* 80CE79B4  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 80CE79B8  60 00 00 04 */	ori r0, r0, 4
/* 80CE79BC  98 1F 04 9A */	stb r0, 0x49a(r31)
/* 80CE79C0  38 7F 07 98 */	addi r3, r31, 0x798
/* 80CE79C4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80CE79C8  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 80CE79CC  4B 38 E5 8D */	bl SetWall__12dBgS_AcchCirFff
/* 80CE79D0  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80CE79D4  90 01 00 08 */	stw r0, 8(r1)
/* 80CE79D8  38 7F 05 84 */	addi r3, r31, 0x584
/* 80CE79DC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CE79E0  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80CE79E4  7F E6 FB 78 */	mr r6, r31
/* 80CE79E8  38 E0 00 01 */	li r7, 1
/* 80CE79EC  39 1F 07 98 */	addi r8, r31, 0x798
/* 80CE79F0  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80CE79F4  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 80CE79F8  4B 38 E8 51 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CE79FC  38 7F 07 5C */	addi r3, r31, 0x75c
/* 80CE7A00  38 80 00 FF */	li r4, 0xff
/* 80CE7A04  38 A0 00 00 */	li r5, 0
/* 80CE7A08  7F E6 FB 78 */	mr r6, r31
/* 80CE7A0C  4B 39 BE 55 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CE7A10  38 7F 07 D8 */	addi r3, r31, 0x7d8
/* 80CE7A14  3C 80 80 CE */	lis r4, mCcDCyl__14daObj_SSItem_c@ha /* 0x80CE7F58@ha */
/* 80CE7A18  38 84 7F 58 */	addi r4, r4, mCcDCyl__14daObj_SSItem_c@l /* 0x80CE7F58@l */
/* 80CE7A1C  4B 39 CE 99 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CE7A20  38 1F 07 5C */	addi r0, r31, 0x75c
/* 80CE7A24  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 80CE7A28  38 7F 09 14 */	addi r3, r31, 0x914
/* 80CE7A2C  3C 80 80 CE */	lis r4, mCcDCyl__14daObj_SSItem_c@ha /* 0x80CE7F58@ha */
/* 80CE7A30  38 84 7F 58 */	addi r4, r4, mCcDCyl__14daObj_SSItem_c@l /* 0x80CE7F58@l */
/* 80CE7A34  4B 39 CE 81 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CE7A38  38 1F 07 5C */	addi r0, r31, 0x75c
/* 80CE7A3C  90 1F 09 58 */	stw r0, 0x958(r31)
/* 80CE7A40  38 7F 05 84 */	addi r3, r31, 0x584
/* 80CE7A44  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE7A48  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE7A4C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CE7A50  4B 38 F0 5D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80CE7A54  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 80CE7A58  90 1F 0A 50 */	stw r0, 0xa50(r31)
/* 80CE7A5C  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 80CE7A60  90 1F 0A 54 */	stw r0, 0xa54(r31)
/* 80CE7A64  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80CE7A68  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80CE7A6C  88 1F 06 6C */	lbz r0, 0x66c(r31)
/* 80CE7A70  98 1F 0A 5C */	stb r0, 0xa5c(r31)
/* 80CE7A74  A0 1F 06 74 */	lhz r0, 0x674(r31)
/* 80CE7A78  B0 1F 0A 64 */	sth r0, 0xa64(r31)
/* 80CE7A7C  A0 1F 06 76 */	lhz r0, 0x676(r31)
/* 80CE7A80  B0 1F 0A 66 */	sth r0, 0xa66(r31)
/* 80CE7A84  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 80CE7A88  90 1F 0A 68 */	stw r0, 0xa68(r31)
/* 80CE7A8C  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 80CE7A90  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 80CE7A94  C0 1F 06 84 */	lfs f0, 0x684(r31)
/* 80CE7A98  D0 1F 0A 74 */	stfs f0, 0xa74(r31)
/* 80CE7A9C  C0 1F 06 88 */	lfs f0, 0x688(r31)
/* 80CE7AA0  D0 1F 0A 78 */	stfs f0, 0xa78(r31)
/* 80CE7AA4  C0 1F 06 8C */	lfs f0, 0x68c(r31)
/* 80CE7AA8  D0 1F 0A 7C */	stfs f0, 0xa7c(r31)
/* 80CE7AAC  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 80CE7AB0  90 1F 0A 80 */	stw r0, 0xa80(r31)
/* 80CE7AB4  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80CE7AB8  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80CE7ABC  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 80CE7AC0  90 1F 0A 88 */	stw r0, 0xa88(r31)
/* 80CE7AC4  C0 1F 06 1C */	lfs f0, 0x61c(r31)
/* 80CE7AC8  D0 1F 0B 00 */	stfs f0, 0xb00(r31)
/* 80CE7ACC  7F E3 FB 78 */	mr r3, r31
/* 80CE7AD0  48 00 01 55 */	bl setEnvTevColor__14daObj_SSItem_cFv
/* 80CE7AD4  7F E3 FB 78 */	mr r3, r31
/* 80CE7AD8  48 00 01 A9 */	bl setRoomNo__14daObj_SSItem_cFv
/* 80CE7ADC  7F E3 FB 78 */	mr r3, r31
/* 80CE7AE0  4B FF FE 01 */	bl restart__14daObj_SSItem_cFv
/* 80CE7AE4  7F E3 FB 78 */	mr r3, r31
/* 80CE7AE8  4B FF F8 A5 */	bl Execute__14daObj_SSItem_cFv
/* 80CE7AEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE7AF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CE7AF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE7AF8  7C 08 03 A6 */	mtlr r0
/* 80CE7AFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE7B00  4E 80 00 20 */	blr 
