lbl_80D21C40:
/* 80D21C40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D21C44  7C 08 02 A6 */	mflr r0
/* 80D21C48  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D21C4C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D21C50  4B 64 05 80 */	b _savegpr_26
/* 80D21C54  7C 7A 1B 78 */	mr r26, r3
/* 80D21C58  3C 80 80 D2 */	lis r4, l_sph_src@ha
/* 80D21C5C  3B A4 3D CC */	addi r29, r4, l_sph_src@l
/* 80D21C60  4B FF FF 41 */	bl initBaseMtx__15daObjVolcBall_cFv
/* 80D21C64  38 1A 28 EC */	addi r0, r26, 0x28ec
/* 80D21C68  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80D21C6C  3B 60 00 00 */	li r27, 0
/* 80D21C70  3B E0 00 00 */	li r31, 0
/* 80D21C74  3B DA 05 C4 */	addi r30, r26, 0x5c4
lbl_80D21C78:
/* 80D21C78  38 7A 05 84 */	addi r3, r26, 0x584
/* 80D21C7C  C0 3D 00 40 */	lfs f1, 0x40(r29)
/* 80D21C80  FC 40 08 90 */	fmr f2, f1
/* 80D21C84  4B 35 42 D4 */	b SetWall__12dBgS_AcchCirFff
/* 80D21C88  7F 9A FA 14 */	add r28, r26, r31
/* 80D21C8C  38 00 00 00 */	li r0, 0
/* 80D21C90  90 01 00 08 */	stw r0, 8(r1)
/* 80D21C94  38 7C 06 60 */	addi r3, r28, 0x660
/* 80D21C98  38 9C 06 10 */	addi r4, r28, 0x610
/* 80D21C9C  38 BC 06 1C */	addi r5, r28, 0x61c
/* 80D21CA0  7F 46 D3 78 */	mr r6, r26
/* 80D21CA4  38 E0 00 01 */	li r7, 1
/* 80D21CA8  39 1A 05 84 */	addi r8, r26, 0x584
/* 80D21CAC  39 3C 06 48 */	addi r9, r28, 0x648
/* 80D21CB0  39 40 00 00 */	li r10, 0
/* 80D21CB4  4B 35 45 94 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D21CB8  38 7A 05 C4 */	addi r3, r26, 0x5c4
/* 80D21CBC  38 80 00 00 */	li r4, 0
/* 80D21CC0  38 A0 00 FF */	li r5, 0xff
/* 80D21CC4  7F 46 D3 78 */	mr r6, r26
/* 80D21CC8  4B 36 1B 98 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D21CCC  38 7C 08 38 */	addi r3, r28, 0x838
/* 80D21CD0  38 9D 00 00 */	addi r4, r29, 0
/* 80D21CD4  4B 36 2D 60 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D21CD8  93 DC 08 7C */	stw r30, 0x87c(r28)
/* 80D21CDC  3B 7B 00 01 */	addi r27, r27, 1
/* 80D21CE0  2C 1B 00 09 */	cmpwi r27, 9
/* 80D21CE4  3B FF 03 E0 */	addi r31, r31, 0x3e0
/* 80D21CE8  41 80 FF 90 */	blt lbl_80D21C78
/* 80D21CEC  7F 43 D3 78 */	mr r3, r26
/* 80D21CF0  C0 3D 00 44 */	lfs f1, 0x44(r29)
/* 80D21CF4  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 80D21CF8  FC 60 08 90 */	fmr f3, f1
/* 80D21CFC  C0 9D 00 4C */	lfs f4, 0x4c(r29)
/* 80D21D00  FC A0 20 90 */	fmr f5, f4
/* 80D21D04  FC C0 20 90 */	fmr f6, f4
/* 80D21D08  4B 2F 88 40 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D21D0C  88 1A 06 00 */	lbz r0, 0x600(r26)
/* 80D21D10  28 00 00 00 */	cmplwi r0, 0
/* 80D21D14  40 82 00 40 */	bne lbl_80D21D54
/* 80D21D18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D21D1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D21D20  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80D21D24  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D21D28  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80D21D2C  7C 05 07 74 */	extsb r5, r0
/* 80D21D30  4B 31 36 30 */	b isSwitch__10dSv_info_cCFii
/* 80D21D34  2C 03 00 00 */	cmpwi r3, 0
/* 80D21D38  41 82 00 10 */	beq lbl_80D21D48
/* 80D21D3C  7F 43 D3 78 */	mr r3, r26
/* 80D21D40  48 00 08 3D */	bl initActionWarning__15daObjVolcBall_cFv
/* 80D21D44  48 00 00 18 */	b lbl_80D21D5C
lbl_80D21D48:
/* 80D21D48  7F 43 D3 78 */	mr r3, r26
/* 80D21D4C  48 00 08 59 */	bl initActionSwWait__15daObjVolcBall_cFv
/* 80D21D50  48 00 00 0C */	b lbl_80D21D5C
lbl_80D21D54:
/* 80D21D54  7F 43 D3 78 */	mr r3, r26
/* 80D21D58  48 00 08 19 */	bl initActionPlayerWait__15daObjVolcBall_cFv
lbl_80D21D5C:
/* 80D21D5C  38 00 FF FF */	li r0, -1
/* 80D21D60  90 1A 29 20 */	stw r0, 0x2920(r26)
/* 80D21D64  38 60 00 01 */	li r3, 1
/* 80D21D68  39 61 00 30 */	addi r11, r1, 0x30
/* 80D21D6C  4B 64 04 B0 */	b _restgpr_26
/* 80D21D70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D21D74  7C 08 03 A6 */	mtlr r0
/* 80D21D78  38 21 00 30 */	addi r1, r1, 0x30
/* 80D21D7C  4E 80 00 20 */	blr 
