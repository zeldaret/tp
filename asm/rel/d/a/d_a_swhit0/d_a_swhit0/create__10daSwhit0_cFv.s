lbl_804863B0:
/* 804863B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804863B4  7C 08 02 A6 */	mflr r0
/* 804863B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804863BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804863C0  4B ED BE 1D */	bl _savegpr_29
/* 804863C4  7C 7F 1B 78 */	mr r31, r3
/* 804863C8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804863CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804863D0  40 82 00 F0 */	bne lbl_804864C0
/* 804863D4  7F E0 FB 79 */	or. r0, r31, r31
/* 804863D8  41 82 00 DC */	beq lbl_804864B4
/* 804863DC  7C 1E 03 78 */	mr r30, r0
/* 804863E0  4B B9 27 85 */	bl __ct__10fopAc_ac_cFv
/* 804863E4  3B BE 05 74 */	addi r29, r30, 0x574
/* 804863E8  3C 60 80 48 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804874A4@ha */
/* 804863EC  38 03 74 A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804874A4@l */
/* 804863F0  90 1E 05 74 */	stw r0, 0x574(r30)
/* 804863F4  7F A3 EB 78 */	mr r3, r29
/* 804863F8  38 80 00 00 */	li r4, 0
/* 804863FC  4B EA 20 01 */	bl init__12J3DFrameCtrlFs
/* 80486400  38 00 00 00 */	li r0, 0
/* 80486404  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80486408  3B BE 05 90 */	addi r29, r30, 0x590
/* 8048640C  3C 60 80 48 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x804874A4@ha */
/* 80486410  38 03 74 A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x804874A4@l */
/* 80486414  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80486418  7F A3 EB 78 */	mr r3, r29
/* 8048641C  38 80 00 00 */	li r4, 0
/* 80486420  4B EA 1F DD */	bl init__12J3DFrameCtrlFs
/* 80486424  38 00 00 00 */	li r0, 0
/* 80486428  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8048642C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80486430  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80486434  90 1E 05 F0 */	stw r0, 0x5f0(r30)
/* 80486438  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 8048643C  4B BF D3 25 */	bl __ct__10dCcD_GSttsFv
/* 80486440  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80486444  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80486448  90 7E 05 F0 */	stw r3, 0x5f0(r30)
/* 8048644C  38 03 00 20 */	addi r0, r3, 0x20
/* 80486450  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80486454  3B BE 06 14 */	addi r29, r30, 0x614
/* 80486458  7F A3 EB 78 */	mr r3, r29
/* 8048645C  4B BF D5 CD */	bl __ct__12dCcD_GObjInfFv
/* 80486460  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80486464  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80486468  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8048646C  3C 60 80 48 */	lis r3, __vt__8cM3dGAab@ha /* 0x80487498@ha */
/* 80486470  38 03 74 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80487498@l */
/* 80486474  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80486478  3C 60 80 48 */	lis r3, __vt__8cM3dGSph@ha /* 0x8048748C@ha */
/* 8048647C  38 03 74 8C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8048748C@l */
/* 80486480  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80486484  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80486488  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8048648C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80486490  38 03 00 58 */	addi r0, r3, 0x58
/* 80486494  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80486498  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8048649C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 804864A0  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 804864A4  38 03 00 2C */	addi r0, r3, 0x2c
/* 804864A8  90 1D 01 20 */	stw r0, 0x120(r29)
/* 804864AC  38 03 00 84 */	addi r0, r3, 0x84
/* 804864B0  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_804864B4:
/* 804864B4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804864B8  60 00 00 08 */	ori r0, r0, 8
/* 804864BC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804864C0:
/* 804864C0  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 804864C4  7C 00 07 75 */	extsb. r0, r0
/* 804864C8  41 82 00 34 */	beq lbl_804864FC
/* 804864CC  7F E3 FB 78 */	mr r3, r31
/* 804864D0  48 00 0C 11 */	bl setDrawMtx__10daSwhit0_cFv
/* 804864D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804864D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804864DC  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 804864E0  4B EB FF D1 */	bl PSMTXCopy
/* 804864E4  38 1F 05 A8 */	addi r0, r31, 0x5a8
/* 804864E8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 804864EC  7F E3 FB 78 */	mr r3, r31
/* 804864F0  4B FF FD 25 */	bl CreateInit__10daSwhit0_cFv
/* 804864F4  38 60 00 04 */	li r3, 4
/* 804864F8  48 00 00 A4 */	b lbl_8048659C
lbl_804864FC:
/* 804864FC  7F E3 FB 78 */	mr r3, r31
/* 80486500  28 1F 00 00 */	cmplwi r31, 0
/* 80486504  41 82 00 08 */	beq lbl_8048650C
/* 80486508  38 7F 05 68 */	addi r3, r31, 0x568
lbl_8048650C:
/* 8048650C  3C 80 80 48 */	lis r4, l_arcName@ha /* 0x804873BC@ha */
/* 80486510  38 84 73 BC */	addi r4, r4, l_arcName@l /* 0x804873BC@l */
/* 80486514  80 84 00 00 */	lwz r4, 0(r4)
/* 80486518  4B BA 69 A5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8048651C  7C 7E 1B 78 */	mr r30, r3
/* 80486520  2C 1E 00 04 */	cmpwi r30, 4
/* 80486524  40 82 00 74 */	bne lbl_80486598
/* 80486528  7F E3 FB 78 */	mr r3, r31
/* 8048652C  3C 80 80 48 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x80486390@ha */
/* 80486530  38 84 63 90 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x80486390@l */
/* 80486534  38 A0 0B 30 */	li r5, 0xb30
/* 80486538  4B B9 3F 79 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8048653C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80486540  40 82 00 0C */	bne lbl_8048654C
/* 80486544  38 60 00 05 */	li r3, 5
/* 80486548  48 00 00 54 */	b lbl_8048659C
lbl_8048654C:
/* 8048654C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80486550  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80486554  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80486558  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 8048655C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80486560  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80486564  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80486568  7F E3 FB 78 */	mr r3, r31
/* 8048656C  48 00 0B 75 */	bl setDrawMtx__10daSwhit0_cFv
/* 80486570  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80486574  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80486578  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 8048657C  38 84 00 24 */	addi r4, r4, 0x24
/* 80486580  4B EB FF 31 */	bl PSMTXCopy
/* 80486584  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80486588  38 03 00 24 */	addi r0, r3, 0x24
/* 8048658C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80486590  7F E3 FB 78 */	mr r3, r31
/* 80486594  4B FF FC 81 */	bl CreateInit__10daSwhit0_cFv
lbl_80486598:
/* 80486598  7F C3 F3 78 */	mr r3, r30
lbl_8048659C:
/* 8048659C  39 61 00 20 */	addi r11, r1, 0x20
/* 804865A0  4B ED BC 89 */	bl _restgpr_29
/* 804865A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804865A8  7C 08 03 A6 */	mtlr r0
/* 804865AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804865B0  4E 80 00 20 */	blr 
