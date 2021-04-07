lbl_80C51D68:
/* 80C51D68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C51D6C  7C 08 02 A6 */	mflr r0
/* 80C51D70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C51D74  39 61 00 20 */	addi r11, r1, 0x20
/* 80C51D78  4B 71 04 65 */	bl _savegpr_29
/* 80C51D7C  7C 7F 1B 78 */	mr r31, r3
/* 80C51D80  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C51D84  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C51D88  40 82 00 C8 */	bne lbl_80C51E50
/* 80C51D8C  7F E0 FB 79 */	or. r0, r31, r31
/* 80C51D90  41 82 00 B4 */	beq lbl_80C51E44
/* 80C51D94  7C 1E 03 78 */	mr r30, r0
/* 80C51D98  4B 3C 6D CD */	bl __ct__10fopAc_ac_cFv
/* 80C51D9C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C51DA0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C51DA4  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 80C51DA8  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 80C51DAC  4B 43 19 B5 */	bl __ct__10dCcD_GSttsFv
/* 80C51DB0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C51DB4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C51DB8  90 7E 05 C0 */	stw r3, 0x5c0(r30)
/* 80C51DBC  38 03 00 20 */	addi r0, r3, 0x20
/* 80C51DC0  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 80C51DC4  3B BE 05 E4 */	addi r29, r30, 0x5e4
/* 80C51DC8  7F A3 EB 78 */	mr r3, r29
/* 80C51DCC  4B 43 1C 5D */	bl __ct__12dCcD_GObjInfFv
/* 80C51DD0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C51DD4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C51DD8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C51DDC  3C 60 80 C5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C5215C@ha */
/* 80C51DE0  38 03 21 5C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C5215C@l */
/* 80C51DE4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80C51DE8  3C 60 80 C5 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C52168@ha */
/* 80C51DEC  38 03 21 68 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C52168@l */
/* 80C51DF0  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C51DF4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C51DF8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C51DFC  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80C51E00  38 03 00 58 */	addi r0, r3, 0x58
/* 80C51E04  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C51E08  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C51E0C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C51E10  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80C51E14  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C51E18  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80C51E1C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C51E20  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80C51E24  38 7E 07 20 */	addi r3, r30, 0x720
/* 80C51E28  3C 80 80 C5 */	lis r4, __ct__12LaundJoint_cFv@ha /* 0x80C51EC0@ha */
/* 80C51E2C  38 84 1E C0 */	addi r4, r4, __ct__12LaundJoint_cFv@l /* 0x80C51EC0@l */
/* 80C51E30  3C A0 80 C5 */	lis r5, __dt__12LaundJoint_cFv@ha /* 0x80C51D2C@ha */
/* 80C51E34  38 A5 1D 2C */	addi r5, r5, __dt__12LaundJoint_cFv@l /* 0x80C51D2C@l */
/* 80C51E38  38 C0 00 38 */	li r6, 0x38
/* 80C51E3C  38 E0 00 03 */	li r7, 3
/* 80C51E40  4B 70 FF 21 */	bl __construct_array
lbl_80C51E44:
/* 80C51E44  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C51E48  60 00 00 08 */	ori r0, r0, 8
/* 80C51E4C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C51E50:
/* 80C51E50  38 7F 05 70 */	addi r3, r31, 0x570
/* 80C51E54  3C 80 80 C5 */	lis r4, l_arcName@ha /* 0x80C520F0@ha */
/* 80C51E58  38 84 20 F0 */	addi r4, r4, l_arcName@l /* 0x80C520F0@l */
/* 80C51E5C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C51E60  4B 3D B0 5D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C51E64  7C 7E 1B 78 */	mr r30, r3
/* 80C51E68  2C 1E 00 04 */	cmpwi r30, 4
/* 80C51E6C  40 82 00 38 */	bne lbl_80C51EA4
/* 80C51E70  7F E3 FB 78 */	mr r3, r31
/* 80C51E74  3C 80 80 C5 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x80C518FC@ha */
/* 80C51E78  38 84 18 FC */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x80C518FC@l */
/* 80C51E7C  38 A0 09 A0 */	li r5, 0x9a0
/* 80C51E80  4B 3C 86 31 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C51E84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C51E88  40 82 00 0C */	bne lbl_80C51E94
/* 80C51E8C  3B C0 00 05 */	li r30, 5
/* 80C51E90  48 00 00 14 */	b lbl_80C51EA4
lbl_80C51E94:
/* 80C51E94  7F E3 FB 78 */	mr r3, r31
/* 80C51E98  4B FF F1 01 */	bl create_init__10daObjLdy_cFv
/* 80C51E9C  38 1F 05 78 */	addi r0, r31, 0x578
/* 80C51EA0  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_80C51EA4:
/* 80C51EA4  7F C3 F3 78 */	mr r3, r30
/* 80C51EA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C51EAC  4B 71 03 7D */	bl _restgpr_29
/* 80C51EB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C51EB4  7C 08 03 A6 */	mtlr r0
/* 80C51EB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C51EBC  4E 80 00 20 */	blr 
