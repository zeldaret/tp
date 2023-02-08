lbl_807E8B2C:
/* 807E8B2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807E8B30  7C 08 02 A6 */	mflr r0
/* 807E8B34  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E8B38  39 61 00 20 */	addi r11, r1, 0x20
/* 807E8B3C  4B B7 96 A1 */	bl _savegpr_29
/* 807E8B40  7C 7D 1B 78 */	mr r29, r3
/* 807E8B44  7C 9E 23 78 */	mr r30, r4
/* 807E8B48  3C 80 80 7F */	lis r4, lit_3905@ha /* 0x807EF770@ha */
/* 807E8B4C  3B E4 F7 70 */	addi r31, r4, lit_3905@l /* 0x807EF770@l */
/* 807E8B50  4B 83 01 91 */	bl fopAc_IsActor__FPv
/* 807E8B54  2C 03 00 00 */	cmpwi r3, 0
/* 807E8B58  41 82 00 E0 */	beq lbl_807E8C38
/* 807E8B5C  28 1D 00 00 */	cmplwi r29, 0
/* 807E8B60  41 82 00 0C */	beq lbl_807E8B6C
/* 807E8B64  80 7D 00 04 */	lwz r3, 4(r29)
/* 807E8B68  48 00 00 08 */	b lbl_807E8B70
lbl_807E8B6C:
/* 807E8B6C  38 60 FF FF */	li r3, -1
lbl_807E8B70:
/* 807E8B70  4B 83 95 C9 */	bl fpcM_IsCreating__FUi
/* 807E8B74  2C 03 00 00 */	cmpwi r3, 0
/* 807E8B78  40 82 00 C0 */	bne lbl_807E8C38
/* 807E8B7C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 807E8B80  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 807E8B84  40 82 00 B4 */	bne lbl_807E8C38
/* 807E8B88  7F A3 EB 78 */	mr r3, r29
/* 807E8B8C  7F C4 F3 78 */	mr r4, r30
/* 807E8B90  4B 83 1C 51 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807E8B94  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807E8B98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E8B9C  40 80 00 44 */	bge lbl_807E8BE0
/* 807E8BA0  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807E8BA4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807E8BA8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 807E8BAC  40 82 00 34 */	bne lbl_807E8BE0
/* 807E8BB0  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 807E8BB4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 807E8BB8  40 82 00 28 */	bne lbl_807E8BE0
/* 807E8BBC  A8 1D 00 08 */	lha r0, 8(r29)
/* 807E8BC0  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 807E8BC4  40 82 00 0C */	bne lbl_807E8BD0
/* 807E8BC8  7F A3 EB 78 */	mr r3, r29
/* 807E8BCC  48 00 00 70 */	b lbl_807E8C3C
lbl_807E8BD0:
/* 807E8BD0  2C 00 02 21 */	cmpwi r0, 0x221
/* 807E8BD4  40 82 00 0C */	bne lbl_807E8BE0
/* 807E8BD8  7F A3 EB 78 */	mr r3, r29
/* 807E8BDC  48 00 00 60 */	b lbl_807E8C3C
lbl_807E8BE0:
/* 807E8BE0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807E8BE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E8BE8  40 80 00 20 */	bge lbl_807E8C08
/* 807E8BEC  A8 1D 00 08 */	lha r0, 8(r29)
/* 807E8BF0  2C 00 00 FE */	cmpwi r0, 0xfe
/* 807E8BF4  41 82 00 0C */	beq lbl_807E8C00
/* 807E8BF8  2C 00 02 21 */	cmpwi r0, 0x221
/* 807E8BFC  40 82 00 0C */	bne lbl_807E8C08
lbl_807E8C00:
/* 807E8C00  7F A3 EB 78 */	mr r3, r29
/* 807E8C04  48 00 00 38 */	b lbl_807E8C3C
lbl_807E8C08:
/* 807E8C08  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 807E8C0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E8C10  40 80 00 28 */	bge lbl_807E8C38
/* 807E8C14  A8 1D 00 08 */	lha r0, 8(r29)
/* 807E8C18  2C 00 03 08 */	cmpwi r0, 0x308
/* 807E8C1C  40 82 00 1C */	bne lbl_807E8C38
/* 807E8C20  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 807E8C24  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E8C28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807E8C2C  41 82 00 0C */	beq lbl_807E8C38
/* 807E8C30  7F A3 EB 78 */	mr r3, r29
/* 807E8C34  48 00 00 08 */	b lbl_807E8C3C
lbl_807E8C38:
/* 807E8C38  38 60 00 00 */	li r3, 0
lbl_807E8C3C:
/* 807E8C3C  39 61 00 20 */	addi r11, r1, 0x20
/* 807E8C40  4B B7 95 E9 */	bl _restgpr_29
/* 807E8C44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E8C48  7C 08 03 A6 */	mtlr r0
/* 807E8C4C  38 21 00 20 */	addi r1, r1, 0x20
/* 807E8C50  4E 80 00 20 */	blr 
