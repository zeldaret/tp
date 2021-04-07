lbl_80655B08:
/* 80655B08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80655B0C  7C 08 02 A6 */	mflr r0
/* 80655B10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80655B14  39 61 00 20 */	addi r11, r1, 0x20
/* 80655B18  4B D0 C6 C5 */	bl _savegpr_29
/* 80655B1C  7C 7F 1B 78 */	mr r31, r3
/* 80655B20  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80655B24  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80655B28  40 82 00 F4 */	bne lbl_80655C1C
/* 80655B2C  7F E0 FB 79 */	or. r0, r31, r31
/* 80655B30  41 82 00 E0 */	beq lbl_80655C10
/* 80655B34  7C 1E 03 78 */	mr r30, r0
/* 80655B38  4B 9C 30 2D */	bl __ct__10fopAc_ac_cFv
/* 80655B3C  3C 60 80 65 */	lis r3, __vt__10daBullet_c@ha /* 0x8065689C@ha */
/* 80655B40  38 03 68 9C */	addi r0, r3, __vt__10daBullet_c@l /* 0x8065689C@l */
/* 80655B44  90 1E 09 58 */	stw r0, 0x958(r30)
/* 80655B48  3B BE 05 74 */	addi r29, r30, 0x574
/* 80655B4C  7F A3 EB 78 */	mr r3, r29
/* 80655B50  4B A2 05 51 */	bl __ct__9dBgS_AcchFv
/* 80655B54  3C 60 80 65 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8065683C@ha */
/* 80655B58  38 63 68 3C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8065683C@l */
/* 80655B5C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80655B60  38 03 00 0C */	addi r0, r3, 0xc
/* 80655B64  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80655B68  38 03 00 18 */	addi r0, r3, 0x18
/* 80655B6C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80655B70  38 7D 00 14 */	addi r3, r29, 0x14
/* 80655B74  4B A2 32 F5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80655B78  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80655B7C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80655B80  90 1E 07 64 */	stw r0, 0x764(r30)
/* 80655B84  38 7E 07 68 */	addi r3, r30, 0x768
/* 80655B88  4B A2 DB D9 */	bl __ct__10dCcD_GSttsFv
/* 80655B8C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80655B90  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80655B94  90 7E 07 64 */	stw r3, 0x764(r30)
/* 80655B98  38 03 00 20 */	addi r0, r3, 0x20
/* 80655B9C  90 1E 07 68 */	stw r0, 0x768(r30)
/* 80655BA0  38 7E 07 88 */	addi r3, r30, 0x788
/* 80655BA4  4B A2 03 09 */	bl __ct__12dBgS_AcchCirFv
/* 80655BA8  3B BE 07 C8 */	addi r29, r30, 0x7c8
/* 80655BAC  7F A3 EB 78 */	mr r3, r29
/* 80655BB0  4B A2 DE 79 */	bl __ct__12dCcD_GObjInfFv
/* 80655BB4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80655BB8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80655BBC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80655BC0  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha /* 0x80656884@ha */
/* 80655BC4  38 03 68 84 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80656884@l */
/* 80655BC8  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80655BCC  3C 60 80 65 */	lis r3, __vt__8cM3dGSph@ha /* 0x80656890@ha */
/* 80655BD0  38 03 68 90 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80656890@l */
/* 80655BD4  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80655BD8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80655BDC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80655BE0  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80655BE4  38 03 00 58 */	addi r0, r3, 0x58
/* 80655BE8  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80655BEC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80655BF0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80655BF4  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80655BF8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80655BFC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80655C00  38 03 00 84 */	addi r0, r3, 0x84
/* 80655C04  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80655C08  38 7E 09 00 */	addi r3, r30, 0x900
/* 80655C0C  4B C1 20 11 */	bl __ct__11cBgS_GndChkFv
lbl_80655C10:
/* 80655C10  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80655C14  60 00 00 08 */	ori r0, r0, 8
/* 80655C18  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80655C1C:
/* 80655C1C  7F E3 FB 78 */	mr r3, r31
/* 80655C20  48 00 05 91 */	bl getTypeFromParam__10daBullet_cFv
/* 80655C24  98 7F 09 56 */	stb r3, 0x956(r31)
/* 80655C28  7F E3 FB 78 */	mr r3, r31
/* 80655C2C  48 00 05 55 */	bl getResName__10daBullet_cFv
/* 80655C30  7C 64 1B 78 */	mr r4, r3
/* 80655C34  38 7F 05 68 */	addi r3, r31, 0x568
/* 80655C38  4B 9D 72 85 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80655C3C  7C 7E 1B 78 */	mr r30, r3
/* 80655C40  2C 1E 00 04 */	cmpwi r30, 4
/* 80655C44  40 82 00 30 */	bne lbl_80655C74
/* 80655C48  7F E3 FB 78 */	mr r3, r31
/* 80655C4C  3C 80 80 65 */	lis r4, createHeapCallBack__10daBullet_cFP10fopAc_ac_c@ha /* 0x80656160@ha */
/* 80655C50  38 84 61 60 */	addi r4, r4, createHeapCallBack__10daBullet_cFP10fopAc_ac_c@l /* 0x80656160@l */
/* 80655C54  38 A0 08 10 */	li r5, 0x810
/* 80655C58  4B 9C 48 59 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80655C5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80655C60  40 82 00 0C */	bne lbl_80655C6C
/* 80655C64  38 60 00 05 */	li r3, 5
/* 80655C68  48 00 00 10 */	b lbl_80655C78
lbl_80655C6C:
/* 80655C6C  7F E3 FB 78 */	mr r3, r31
/* 80655C70  48 00 05 61 */	bl initialize__10daBullet_cFv
lbl_80655C74:
/* 80655C74  7F C3 F3 78 */	mr r3, r30
lbl_80655C78:
/* 80655C78  39 61 00 20 */	addi r11, r1, 0x20
/* 80655C7C  4B D0 C5 AD */	bl _restgpr_29
/* 80655C80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80655C84  7C 08 03 A6 */	mtlr r0
/* 80655C88  38 21 00 20 */	addi r1, r1, 0x20
/* 80655C8C  4E 80 00 20 */	blr 
