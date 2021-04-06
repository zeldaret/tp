lbl_80D3BB28:
/* 80D3BB28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3BB2C  7C 08 02 A6 */	mflr r0
/* 80D3BB30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3BB34  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3BB38  4B 62 66 A5 */	bl _savegpr_29
/* 80D3BB3C  7C 7F 1B 78 */	mr r31, r3
/* 80D3BB40  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D3BB44  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D3BB48  40 82 00 E0 */	bne lbl_80D3BC28
/* 80D3BB4C  7F E0 FB 79 */	or. r0, r31, r31
/* 80D3BB50  41 82 00 CC */	beq lbl_80D3BC1C
/* 80D3BB54  7C 1E 03 78 */	mr r30, r0
/* 80D3BB58  4B 2D D0 0D */	bl __ct__10fopAc_ac_cFv
/* 80D3BB5C  3B BE 05 74 */	addi r29, r30, 0x574
/* 80D3BB60  7F A3 EB 78 */	mr r3, r29
/* 80D3BB64  4B 33 A5 3D */	bl __ct__9dBgS_AcchFv
/* 80D3BB68  3C 60 80 D4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D3BFDC@ha */
/* 80D3BB6C  38 63 BF DC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D3BFDC@l */
/* 80D3BB70  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80D3BB74  38 03 00 0C */	addi r0, r3, 0xc
/* 80D3BB78  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80D3BB7C  38 03 00 18 */	addi r0, r3, 0x18
/* 80D3BB80  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80D3BB84  38 7D 00 14 */	addi r3, r29, 0x14
/* 80D3BB88  4B 33 D2 E1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D3BB8C  38 7E 07 4C */	addi r3, r30, 0x74c
/* 80D3BB90  4B 33 A3 1D */	bl __ct__12dBgS_AcchCirFv
/* 80D3BB94  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D3BB98  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D3BB9C  90 1E 07 A4 */	stw r0, 0x7a4(r30)
/* 80D3BBA0  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80D3BBA4  4B 34 7B BD */	bl __ct__10dCcD_GSttsFv
/* 80D3BBA8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D3BBAC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D3BBB0  90 7E 07 A4 */	stw r3, 0x7a4(r30)
/* 80D3BBB4  38 03 00 20 */	addi r0, r3, 0x20
/* 80D3BBB8  90 1E 07 A8 */	stw r0, 0x7a8(r30)
/* 80D3BBBC  3B BE 07 C8 */	addi r29, r30, 0x7c8
/* 80D3BBC0  7F A3 EB 78 */	mr r3, r29
/* 80D3BBC4  4B 34 7E 65 */	bl __ct__12dCcD_GObjInfFv
/* 80D3BBC8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D3BBCC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D3BBD0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D3BBD4  3C 60 80 D4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D3BFD0@ha */
/* 80D3BBD8  38 03 BF D0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D3BFD0@l */
/* 80D3BBDC  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80D3BBE0  3C 60 80 D4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80D3BFC4@ha */
/* 80D3BBE4  38 03 BF C4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80D3BFC4@l */
/* 80D3BBE8  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D3BBEC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80D3BBF0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80D3BBF4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80D3BBF8  38 03 00 58 */	addi r0, r3, 0x58
/* 80D3BBFC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80D3BC00  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80D3BC04  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80D3BC08  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80D3BC0C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D3BC10  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80D3BC14  38 03 00 84 */	addi r0, r3, 0x84
/* 80D3BC18  90 1D 01 38 */	stw r0, 0x138(r29)
lbl_80D3BC1C:
/* 80D3BC1C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D3BC20  60 00 00 08 */	ori r0, r0, 8
/* 80D3BC24  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D3BC28:
/* 80D3BC28  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D3BC2C  3C 80 80 D4 */	lis r4, l_arcName@ha /* 0x80D3BF2C@ha */
/* 80D3BC30  38 84 BF 2C */	addi r4, r4, l_arcName@l /* 0x80D3BF2C@l */
/* 80D3BC34  80 84 00 00 */	lwz r4, 0(r4)
/* 80D3BC38  4B 2F 12 85 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D3BC3C  7C 7E 1B 78 */	mr r30, r3
/* 80D3BC40  2C 1E 00 04 */	cmpwi r30, 4
/* 80D3BC44  40 82 00 40 */	bne lbl_80D3BC84
/* 80D3BC48  7F E3 FB 78 */	mr r3, r31
/* 80D3BC4C  3C 80 80 D4 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x80D3B978@ha */
/* 80D3BC50  38 84 B9 78 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x80D3B978@l */
/* 80D3BC54  38 A0 08 40 */	li r5, 0x840
/* 80D3BC58  4B 2D E8 59 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D3BC5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D3BC60  40 82 00 0C */	bne lbl_80D3BC6C
/* 80D3BC64  38 60 00 05 */	li r3, 5
/* 80D3BC68  48 00 00 20 */	b lbl_80D3BC88
lbl_80D3BC6C:
/* 80D3BC6C  7F E3 FB 78 */	mr r3, r31
/* 80D3BC70  4B FF FD D1 */	bl Create__13daObjWSword_cFv
/* 80D3BC74  2C 03 00 00 */	cmpwi r3, 0
/* 80D3BC78  40 82 00 0C */	bne lbl_80D3BC84
/* 80D3BC7C  38 60 00 05 */	li r3, 5
/* 80D3BC80  48 00 00 08 */	b lbl_80D3BC88
lbl_80D3BC84:
/* 80D3BC84  7F C3 F3 78 */	mr r3, r30
lbl_80D3BC88:
/* 80D3BC88  39 61 00 20 */	addi r11, r1, 0x20
/* 80D3BC8C  4B 62 65 9D */	bl _restgpr_29
/* 80D3BC90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3BC94  7C 08 03 A6 */	mtlr r0
/* 80D3BC98  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3BC9C  4E 80 00 20 */	blr 
