lbl_80CE5BF0:
/* 80CE5BF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE5BF4  7C 08 02 A6 */	mflr r0
/* 80CE5BF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE5BFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CE5C00  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CE5C04  7C 7F 1B 78 */	mr r31, r3
/* 80CE5C08  3C 80 80 CE */	lis r4, mCcDObjInfo__15daObj_SSDrink_c@ha
/* 80CE5C0C  3B C4 69 30 */	addi r30, r4, mCcDObjInfo__15daObj_SSDrink_c@l
/* 80CE5C10  80 83 05 8C */	lwz r4, 0x58c(r3)
/* 80CE5C14  38 04 00 24 */	addi r0, r4, 0x24
/* 80CE5C18  90 03 05 04 */	stw r0, 0x504(r3)
/* 80CE5C1C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80CE5C20  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80CE5C24  FC 60 08 90 */	fmr f3, f1
/* 80CE5C28  C0 9E 00 3C */	lfs f4, 0x3c(r30)
/* 80CE5C2C  C0 BE 00 48 */	lfs f5, 0x48(r30)
/* 80CE5C30  FC C0 20 90 */	fmr f6, f4
/* 80CE5C34  4B 33 49 14 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CE5C38  7F E3 FB 78 */	mr r3, r31
/* 80CE5C3C  4B FF FE 15 */	bl getResName__15daObj_SSDrink_cFv
/* 80CE5C40  90 7F 01 00 */	stw r3, 0x100(r31)
/* 80CE5C44  38 00 00 00 */	li r0, 0
/* 80CE5C48  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80CE5C4C  38 00 00 06 */	li r0, 6
/* 80CE5C50  98 1F 05 48 */	stb r0, 0x548(r31)
/* 80CE5C54  88 1F 04 9A */	lbz r0, 0x49a(r31)
/* 80CE5C58  60 00 00 04 */	ori r0, r0, 4
/* 80CE5C5C  98 1F 04 9A */	stb r0, 0x49a(r31)
/* 80CE5C60  88 1F 0B 0C */	lbz r0, 0xb0c(r31)
/* 80CE5C64  28 00 00 60 */	cmplwi r0, 0x60
/* 80CE5C68  40 82 00 14 */	bne lbl_80CE5C7C
/* 80CE5C6C  38 7F 07 A4 */	addi r3, r31, 0x7a4
/* 80CE5C70  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80CE5C74  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80CE5C78  4B 39 02 E0 */	b SetWall__12dBgS_AcchCirFff
lbl_80CE5C7C:
/* 80CE5C7C  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80CE5C80  90 01 00 08 */	stw r0, 8(r1)
/* 80CE5C84  38 7F 05 90 */	addi r3, r31, 0x590
/* 80CE5C88  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CE5C8C  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80CE5C90  7F E6 FB 78 */	mr r6, r31
/* 80CE5C94  38 E0 00 01 */	li r7, 1
/* 80CE5C98  39 1F 07 A4 */	addi r8, r31, 0x7a4
/* 80CE5C9C  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80CE5CA0  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 80CE5CA4  4B 39 05 A4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CE5CA8  38 7F 07 68 */	addi r3, r31, 0x768
/* 80CE5CAC  38 80 00 FF */	li r4, 0xff
/* 80CE5CB0  38 A0 00 00 */	li r5, 0
/* 80CE5CB4  7F E6 FB 78 */	mr r6, r31
/* 80CE5CB8  4B 39 DB A8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CE5CBC  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80CE5CC0  3C 80 80 CE */	lis r4, mCcDCyl__15daObj_SSDrink_c@ha
/* 80CE5CC4  38 84 69 EC */	addi r4, r4, mCcDCyl__15daObj_SSDrink_c@l
/* 80CE5CC8  4B 39 EB EC */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CE5CCC  38 1F 07 68 */	addi r0, r31, 0x768
/* 80CE5CD0  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80CE5CD4  38 7F 09 20 */	addi r3, r31, 0x920
/* 80CE5CD8  3C 80 80 CE */	lis r4, mCcDCyl__15daObj_SSDrink_c@ha
/* 80CE5CDC  38 84 69 EC */	addi r4, r4, mCcDCyl__15daObj_SSDrink_c@l
/* 80CE5CE0  4B 39 EB D4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CE5CE4  38 1F 07 68 */	addi r0, r31, 0x768
/* 80CE5CE8  90 1F 09 64 */	stw r0, 0x964(r31)
/* 80CE5CEC  38 7F 05 90 */	addi r3, r31, 0x590
/* 80CE5CF0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80CE5CF4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80CE5CF8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80CE5CFC  4B 39 0D B0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CE5D00  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 80CE5D04  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 80CE5D08  80 1F 06 70 */	lwz r0, 0x670(r31)
/* 80CE5D0C  90 1F 0A 60 */	stw r0, 0xa60(r31)
/* 80CE5D10  80 1F 06 74 */	lwz r0, 0x674(r31)
/* 80CE5D14  90 1F 0A 64 */	stw r0, 0xa64(r31)
/* 80CE5D18  88 1F 06 78 */	lbz r0, 0x678(r31)
/* 80CE5D1C  98 1F 0A 68 */	stb r0, 0xa68(r31)
/* 80CE5D20  A0 1F 06 80 */	lhz r0, 0x680(r31)
/* 80CE5D24  B0 1F 0A 70 */	sth r0, 0xa70(r31)
/* 80CE5D28  A0 1F 06 82 */	lhz r0, 0x682(r31)
/* 80CE5D2C  B0 1F 0A 72 */	sth r0, 0xa72(r31)
/* 80CE5D30  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 80CE5D34  90 1F 0A 74 */	stw r0, 0xa74(r31)
/* 80CE5D38  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80CE5D3C  90 1F 0A 78 */	stw r0, 0xa78(r31)
/* 80CE5D40  C0 1F 06 90 */	lfs f0, 0x690(r31)
/* 80CE5D44  D0 1F 0A 80 */	stfs f0, 0xa80(r31)
/* 80CE5D48  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80CE5D4C  D0 1F 0A 84 */	stfs f0, 0xa84(r31)
/* 80CE5D50  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 80CE5D54  D0 1F 0A 88 */	stfs f0, 0xa88(r31)
/* 80CE5D58  80 1F 06 9C */	lwz r0, 0x69c(r31)
/* 80CE5D5C  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 80CE5D60  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 80CE5D64  D0 1F 0A 90 */	stfs f0, 0xa90(r31)
/* 80CE5D68  80 1F 06 A4 */	lwz r0, 0x6a4(r31)
/* 80CE5D6C  90 1F 0A 94 */	stw r0, 0xa94(r31)
/* 80CE5D70  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80CE5D74  D0 1F 0A FC */	stfs f0, 0xafc(r31)
/* 80CE5D78  7F E3 FB 78 */	mr r3, r31
/* 80CE5D7C  48 00 02 69 */	bl setEnvTevColor__15daObj_SSDrink_cFv
/* 80CE5D80  7F E3 FB 78 */	mr r3, r31
/* 80CE5D84  48 00 02 BD */	bl setRoomNo__15daObj_SSDrink_cFv
/* 80CE5D88  7F E3 FB 78 */	mr r3, r31
/* 80CE5D8C  4B FF FD F5 */	bl restart__15daObj_SSDrink_cFv
/* 80CE5D90  7F E3 FB 78 */	mr r3, r31
/* 80CE5D94  4B FF F8 91 */	bl Execute__15daObj_SSDrink_cFv
/* 80CE5D98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CE5D9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CE5DA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE5DA4  7C 08 03 A6 */	mtlr r0
/* 80CE5DA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE5DAC  4E 80 00 20 */	blr 
