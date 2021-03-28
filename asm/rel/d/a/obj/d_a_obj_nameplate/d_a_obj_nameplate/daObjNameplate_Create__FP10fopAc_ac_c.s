lbl_80594BF8:
/* 80594BF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80594BFC  7C 08 02 A6 */	mflr r0
/* 80594C00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80594C04  39 61 00 20 */	addi r11, r1, 0x20
/* 80594C08  4B DC D5 D4 */	b _savegpr_29
/* 80594C0C  7C 7F 1B 78 */	mr r31, r3
/* 80594C10  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80594C14  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80594C18  40 82 00 B0 */	bne lbl_80594CC8
/* 80594C1C  7F E0 FB 79 */	or. r0, r31, r31
/* 80594C20  41 82 00 9C */	beq lbl_80594CBC
/* 80594C24  7C 1E 03 78 */	mr r30, r0
/* 80594C28  4B A8 3F 3C */	b __ct__10fopAc_ac_cFv
/* 80594C2C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80594C30  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80594C34  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 80594C38  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80594C3C  4B AE EB 24 */	b __ct__10dCcD_GSttsFv
/* 80594C40  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80594C44  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80594C48  90 7E 05 BC */	stw r3, 0x5bc(r30)
/* 80594C4C  38 03 00 20 */	addi r0, r3, 0x20
/* 80594C50  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 80594C54  3B BE 05 E0 */	addi r29, r30, 0x5e0
/* 80594C58  7F A3 EB 78 */	mr r3, r29
/* 80594C5C  4B AE ED CC */	b __ct__12dCcD_GObjInfFv
/* 80594C60  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80594C64  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80594C68  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80594C6C  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha
/* 80594C70  38 03 4F 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80594C74  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80594C78  3C 60 80 59 */	lis r3, __vt__8cM3dGSph@ha
/* 80594C7C  38 03 4F A0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80594C80  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80594C84  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80594C88  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80594C8C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80594C90  38 03 00 58 */	addi r0, r3, 0x58
/* 80594C94  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80594C98  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80594C9C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80594CA0  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80594CA4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80594CA8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80594CAC  38 03 00 84 */	addi r0, r3, 0x84
/* 80594CB0  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80594CB4  38 7E 07 28 */	addi r3, r30, 0x728
/* 80594CB8  4B CB 52 48 */	b __ct__10dMsgFlow_cFv
lbl_80594CBC:
/* 80594CBC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80594CC0  60 00 00 08 */	ori r0, r0, 8
/* 80594CC4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80594CC8:
/* 80594CC8  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80594CCC  3C 80 80 59 */	lis r4, l_arcName@ha
/* 80594CD0  38 84 4F 28 */	addi r4, r4, l_arcName@l
/* 80594CD4  80 84 00 00 */	lwz r4, 0(r4)
/* 80594CD8  4B A9 81 E4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80594CDC  7C 7E 1B 78 */	mr r30, r3
/* 80594CE0  2C 1E 00 04 */	cmpwi r30, 4
/* 80594CE4  40 82 00 38 */	bne lbl_80594D1C
/* 80594CE8  7F E3 FB 78 */	mr r3, r31
/* 80594CEC  3C 80 80 59 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha
/* 80594CF0  38 84 49 50 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l
/* 80594CF4  38 A0 08 00 */	li r5, 0x800
/* 80594CF8  4B A8 57 B8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80594CFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80594D00  40 82 00 0C */	bne lbl_80594D0C
/* 80594D04  3B C0 00 05 */	li r30, 5
/* 80594D08  48 00 00 14 */	b lbl_80594D1C
lbl_80594D0C:
/* 80594D0C  7F E3 FB 78 */	mr r3, r31
/* 80594D10  4B FF F3 89 */	bl create_init__16daObjNameplate_cFv
/* 80594D14  38 1F 05 74 */	addi r0, r31, 0x574
/* 80594D18  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_80594D1C:
/* 80594D1C  7F C3 F3 78 */	mr r3, r30
/* 80594D20  39 61 00 20 */	addi r11, r1, 0x20
/* 80594D24  4B DC D5 04 */	b _restgpr_29
/* 80594D28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80594D2C  7C 08 03 A6 */	mtlr r0
/* 80594D30  38 21 00 20 */	addi r1, r1, 0x20
/* 80594D34  4E 80 00 20 */	blr 
