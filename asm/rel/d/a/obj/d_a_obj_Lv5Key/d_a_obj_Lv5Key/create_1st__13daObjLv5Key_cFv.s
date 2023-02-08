lbl_80B9C5EC:
/* 80B9C5EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9C5F0  7C 08 02 A6 */	mflr r0
/* 80B9C5F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9C5F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9C5FC  4B 7C 5B E1 */	bl _savegpr_29
/* 80B9C600  7C 7F 1B 78 */	mr r31, r3
/* 80B9C604  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B9C608  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B9C60C  40 82 01 0C */	bne lbl_80B9C718
/* 80B9C610  7F E0 FB 79 */	or. r0, r31, r31
/* 80B9C614  41 82 00 F8 */	beq lbl_80B9C70C
/* 80B9C618  7C 1E 03 78 */	mr r30, r0
/* 80B9C61C  4B 47 C5 49 */	bl __ct__10fopAc_ac_cFv
/* 80B9C620  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80B9C624  4B 72 22 21 */	bl __ct__16Z2SoundObjSimpleFv
/* 80B9C628  3B BE 05 94 */	addi r29, r30, 0x594
/* 80B9C62C  3C 60 80 BA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B9CA8C@ha */
/* 80B9C630  38 03 CA 8C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B9CA8C@l */
/* 80B9C634  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80B9C638  7F A3 EB 78 */	mr r3, r29
/* 80B9C63C  38 80 00 00 */	li r4, 0
/* 80B9C640  4B 78 BD BD */	bl init__12J3DFrameCtrlFs
/* 80B9C644  38 00 00 00 */	li r0, 0
/* 80B9C648  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80B9C64C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80B9C650  4B 4D 98 5D */	bl __ct__12dBgS_AcchCirFv
/* 80B9C654  3B BE 05 F8 */	addi r29, r30, 0x5f8
/* 80B9C658  7F A3 EB 78 */	mr r3, r29
/* 80B9C65C  4B 4D 9A 45 */	bl __ct__9dBgS_AcchFv
/* 80B9C660  3C 60 80 BA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B9CA68@ha */
/* 80B9C664  38 63 CA 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B9CA68@l */
/* 80B9C668  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80B9C66C  38 03 00 0C */	addi r0, r3, 0xc
/* 80B9C670  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80B9C674  38 03 00 18 */	addi r0, r3, 0x18
/* 80B9C678  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80B9C67C  38 7D 00 14 */	addi r3, r29, 0x14
/* 80B9C680  4B 4D C7 E9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B9C684  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B9C688  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B9C68C  90 1E 07 E8 */	stw r0, 0x7e8(r30)
/* 80B9C690  38 7E 07 EC */	addi r3, r30, 0x7ec
/* 80B9C694  4B 4E 70 CD */	bl __ct__10dCcD_GSttsFv
/* 80B9C698  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B9C69C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B9C6A0  90 7E 07 E8 */	stw r3, 0x7e8(r30)
/* 80B9C6A4  38 03 00 20 */	addi r0, r3, 0x20
/* 80B9C6A8  90 1E 07 EC */	stw r0, 0x7ec(r30)
/* 80B9C6AC  3B BE 08 0C */	addi r29, r30, 0x80c
/* 80B9C6B0  7F A3 EB 78 */	mr r3, r29
/* 80B9C6B4  4B 4E 73 75 */	bl __ct__12dCcD_GObjInfFv
/* 80B9C6B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B9C6BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B9C6C0  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80B9C6C4  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha /* 0x80B9CA5C@ha */
/* 80B9C6C8  38 03 CA 5C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B9CA5C@l */
/* 80B9C6CC  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80B9C6D0  3C 60 80 BA */	lis r3, __vt__8cM3dGSph@ha /* 0x80B9CA50@ha */
/* 80B9C6D4  38 03 CA 50 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80B9CA50@l */
/* 80B9C6D8  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80B9C6DC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80B9C6E0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80B9C6E4  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80B9C6E8  38 03 00 58 */	addi r0, r3, 0x58
/* 80B9C6EC  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80B9C6F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80B9C6F4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80B9C6F8  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80B9C6FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B9C700  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80B9C704  38 03 00 84 */	addi r0, r3, 0x84
/* 80B9C708  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_80B9C70C:
/* 80B9C70C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80B9C710  60 00 00 08 */	ori r0, r0, 8
/* 80B9C714  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80B9C718:
/* 80B9C718  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80B9C71C  3C 80 80 BA */	lis r4, l_arcName@ha /* 0x80B9C9B4@ha */
/* 80B9C720  38 84 C9 B4 */	addi r4, r4, l_arcName@l /* 0x80B9C9B4@l */
/* 80B9C724  80 84 00 00 */	lwz r4, 0(r4)
/* 80B9C728  4B 49 07 95 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B9C72C  7C 7E 1B 78 */	mr r30, r3
/* 80B9C730  2C 1E 00 04 */	cmpwi r30, 4
/* 80B9C734  40 82 00 48 */	bne lbl_80B9C77C
/* 80B9C738  7F E3 FB 78 */	mr r3, r31
/* 80B9C73C  3C 80 80 BA */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80B9C8E0@ha */
/* 80B9C740  38 84 C8 E0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80B9C8E0@l */
/* 80B9C744  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80B9C748  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80B9C74C  4B 47 DD 65 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B9C750  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B9C754  40 82 00 0C */	bne lbl_80B9C760
/* 80B9C758  38 60 00 05 */	li r3, 5
/* 80B9C75C  48 00 00 24 */	b lbl_80B9C780
lbl_80B9C760:
/* 80B9C760  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80B9C764  38 03 00 24 */	addi r0, r3, 0x24
/* 80B9C768  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80B9C76C  7F E3 FB 78 */	mr r3, r31
/* 80B9C770  4B FF F3 25 */	bl Init__13daObjLv5Key_cFv
/* 80B9C774  7F E3 FB 78 */	mr r3, r31
/* 80B9C778  4B FF FE 55 */	bl daObjLv5Key_Execute__FP13daObjLv5Key_c
lbl_80B9C77C:
/* 80B9C77C  7F C3 F3 78 */	mr r3, r30
lbl_80B9C780:
/* 80B9C780  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9C784  4B 7C 5A A5 */	bl _restgpr_29
/* 80B9C788  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9C78C  7C 08 03 A6 */	mtlr r0
/* 80B9C790  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9C794  4E 80 00 20 */	blr 
