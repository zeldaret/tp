lbl_80BA09E4:
/* 80BA09E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA09E8  7C 08 02 A6 */	mflr r0
/* 80BA09EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA09F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA09F4  7C 7F 1B 78 */	mr r31, r3
/* 80BA09F8  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80BA09FC  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80BA0A00  38 84 00 24 */	addi r4, r4, 0x24
/* 80BA0A04  4B 7A 5A AD */	bl PSMTXCopy
/* 80BA0A08  38 1F 05 B8 */	addi r0, r31, 0x5b8
/* 80BA0A0C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80BA0A10  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BA0A14  80 63 00 04 */	lwz r3, 4(r3)
/* 80BA0A18  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80BA0A1C  80 83 00 04 */	lwz r4, 4(r3)
/* 80BA0A20  7F E3 FB 78 */	mr r3, r31
/* 80BA0A24  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 80BA0A28  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80BA0A2C  C0 64 00 44 */	lfs f3, 0x44(r4)
/* 80BA0A30  C0 84 00 48 */	lfs f4, 0x48(r4)
/* 80BA0A34  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 80BA0A38  C0 C4 00 50 */	lfs f6, 0x50(r4)
/* 80BA0A3C  4B 47 9B 0D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BA0A40  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80BA0A44  38 80 00 FF */	li r4, 0xff
/* 80BA0A48  38 A0 00 00 */	li r5, 0
/* 80BA0A4C  7F E6 FB 78 */	mr r6, r31
/* 80BA0A50  4B 4E 2E 11 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BA0A54  38 7F 06 28 */	addi r3, r31, 0x628
/* 80BA0A58  3C 80 80 BA */	lis r4, l_cc_cyl_src@ha /* 0x80BA11E4@ha */
/* 80BA0A5C  38 84 11 E4 */	addi r4, r4, l_cc_cyl_src@l /* 0x80BA11E4@l */
/* 80BA0A60  4B 4E 3E 55 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BA0A64  38 1F 05 EC */	addi r0, r31, 0x5ec
/* 80BA0A68  90 1F 06 6C */	stw r0, 0x66c(r31)
/* 80BA0A6C  3C 60 80 BA */	lis r3, pushPullcallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@ha /* 0x80B9FC40@ha */
/* 80BA0A70  38 03 FC 40 */	addi r0, r3, pushPullcallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@l /* 0x80B9FC40@l */
/* 80BA0A74  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BA0A78  90 03 00 10 */	stw r0, 0x10(r3)
/* 80BA0A7C  38 60 00 01 */	li r3, 1
/* 80BA0A80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA0A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA0A88  7C 08 03 A6 */	mtlr r0
/* 80BA0A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA0A90  4E 80 00 20 */	blr 
