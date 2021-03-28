lbl_809BA584:
/* 809BA584  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809BA588  7C 08 02 A6 */	mflr r0
/* 809BA58C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809BA590  39 61 00 20 */	addi r11, r1, 0x20
/* 809BA594  4B 9A 7C 48 */	b _savegpr_29
/* 809BA598  7C 7F 1B 78 */	mr r31, r3
/* 809BA59C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809BA5A0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809BA5A4  40 82 01 08 */	bne lbl_809BA6AC
/* 809BA5A8  28 1F 00 00 */	cmplwi r31, 0
/* 809BA5AC  41 82 00 F4 */	beq lbl_809BA6A0
/* 809BA5B0  7F FE FB 78 */	mr r30, r31
/* 809BA5B4  4B 65 E5 B0 */	b __ct__10fopAc_ac_cFv
/* 809BA5B8  3C 60 80 9C */	lis r3, __vt__10daNpcCd2_c@ha
/* 809BA5BC  38 03 B5 14 */	addi r0, r3, __vt__10daNpcCd2_c@l
/* 809BA5C0  90 1E 05 68 */	stw r0, 0x568(r30)
/* 809BA5C4  38 7E 05 94 */	addi r3, r30, 0x594
/* 809BA5C8  4B 90 66 48 */	b __ct__17Z2CreatureCitizenFv
/* 809BA5CC  3B BE 06 38 */	addi r29, r30, 0x638
/* 809BA5D0  7F A3 EB 78 */	mr r3, r29
/* 809BA5D4  4B 6B BA CC */	b __ct__9dBgS_AcchFv
/* 809BA5D8  3C 60 80 9C */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809BA5DC  38 63 B4 F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809BA5E0  90 7D 00 10 */	stw r3, 0x10(r29)
/* 809BA5E4  38 03 00 0C */	addi r0, r3, 0xc
/* 809BA5E8  90 1D 00 14 */	stw r0, 0x14(r29)
/* 809BA5EC  38 03 00 18 */	addi r0, r3, 0x18
/* 809BA5F0  90 1D 00 24 */	stw r0, 0x24(r29)
/* 809BA5F4  38 7D 00 14 */	addi r3, r29, 0x14
/* 809BA5F8  4B 6B E8 70 */	b SetObj__16dBgS_PolyPassChkFv
/* 809BA5FC  38 7E 08 10 */	addi r3, r30, 0x810
/* 809BA600  4B 6B B8 AC */	b __ct__12dBgS_AcchCirFv
/* 809BA604  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809BA608  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809BA60C  90 1E 08 68 */	stw r0, 0x868(r30)
/* 809BA610  38 7E 08 6C */	addi r3, r30, 0x86c
/* 809BA614  4B 6C 91 4C */	b __ct__10dCcD_GSttsFv
/* 809BA618  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809BA61C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809BA620  90 7E 08 68 */	stw r3, 0x868(r30)
/* 809BA624  38 03 00 20 */	addi r0, r3, 0x20
/* 809BA628  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 809BA62C  3B BE 08 8C */	addi r29, r30, 0x88c
/* 809BA630  7F A3 EB 78 */	mr r3, r29
/* 809BA634  4B 6C 93 F4 */	b __ct__12dCcD_GObjInfFv
/* 809BA638  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809BA63C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809BA640  90 1D 01 20 */	stw r0, 0x120(r29)
/* 809BA644  3C 60 80 9C */	lis r3, __vt__8cM3dGAab@ha
/* 809BA648  38 03 B4 E4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809BA64C  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 809BA650  3C 60 80 9C */	lis r3, __vt__8cM3dGCyl@ha
/* 809BA654  38 03 B4 D8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809BA658  90 1D 01 38 */	stw r0, 0x138(r29)
/* 809BA65C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809BA660  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809BA664  90 7D 01 20 */	stw r3, 0x120(r29)
/* 809BA668  38 03 00 58 */	addi r0, r3, 0x58
/* 809BA66C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 809BA670  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809BA674  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809BA678  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 809BA67C  38 03 00 2C */	addi r0, r3, 0x2c
/* 809BA680  90 1D 01 20 */	stw r0, 0x120(r29)
/* 809BA684  38 03 00 84 */	addi r0, r3, 0x84
/* 809BA688  90 1D 01 38 */	stw r0, 0x138(r29)
/* 809BA68C  38 7E 09 C8 */	addi r3, r30, 0x9c8
/* 809BA690  4B 89 6C 84 */	b __ct__16dNpcLib_lookat_cFv
/* 809BA694  3C 60 80 9C */	lis r3, __vt__10daNpcFgd_c@ha
/* 809BA698  38 03 B4 CC */	addi r0, r3, __vt__10daNpcFgd_c@l
/* 809BA69C  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_809BA6A0:
/* 809BA6A0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 809BA6A4  60 00 00 08 */	ori r0, r0, 8
/* 809BA6A8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_809BA6AC:
/* 809BA6AC  4B 7F 1E D0 */	b dKy_darkworld_check__Fv
/* 809BA6B0  98 7F 0A C6 */	stb r3, 0xac6(r31)
/* 809BA6B4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 809BA6B8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809BA6BC  90 1F 0A 98 */	stw r0, 0xa98(r31)
/* 809BA6C0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 809BA6C4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 809BA6C8  90 1F 0A CC */	stw r0, 0xacc(r31)
/* 809BA6CC  7F E3 FB 78 */	mr r3, r31
/* 809BA6D0  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 809BA6D4  80 BF 0A CC */	lwz r5, 0xacc(r31)
/* 809BA6D8  4B 79 E4 E0 */	b loadResrc__10daNpcCd2_cFii
/* 809BA6DC  7C 7E 1B 78 */	mr r30, r3
/* 809BA6E0  2C 1E 00 04 */	cmpwi r30, 4
/* 809BA6E4  40 82 00 30 */	bne lbl_809BA714
/* 809BA6E8  7F E3 FB 78 */	mr r3, r31
/* 809BA6EC  3C 80 80 9C */	lis r4, createHeapCallBack__FP10fopAc_ac_c@ha
/* 809BA6F0  38 84 A4 B8 */	addi r4, r4, createHeapCallBack__FP10fopAc_ac_c@l
/* 809BA6F4  38 A0 19 10 */	li r5, 0x1910
/* 809BA6F8  4B 65 FD B8 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809BA6FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809BA700  40 82 00 0C */	bne lbl_809BA70C
/* 809BA704  38 60 00 05 */	li r3, 5
/* 809BA708  48 00 00 10 */	b lbl_809BA718
lbl_809BA70C:
/* 809BA70C  7F E3 FB 78 */	mr r3, r31
/* 809BA710  48 00 00 21 */	bl create_init__10daNpcFgd_cFv
lbl_809BA714:
/* 809BA714  7F C3 F3 78 */	mr r3, r30
lbl_809BA718:
/* 809BA718  39 61 00 20 */	addi r11, r1, 0x20
/* 809BA71C  4B 9A 7B 0C */	b _restgpr_29
/* 809BA720  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809BA724  7C 08 03 A6 */	mtlr r0
/* 809BA728  38 21 00 20 */	addi r1, r1, 0x20
/* 809BA72C  4E 80 00 20 */	blr 
