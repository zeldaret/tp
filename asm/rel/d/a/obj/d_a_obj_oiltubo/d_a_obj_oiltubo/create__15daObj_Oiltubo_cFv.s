lbl_80CA6718:
/* 80CA6718  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA671C  7C 08 02 A6 */	mflr r0
/* 80CA6720  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA6724  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA6728  4B 6B BA A8 */	b _savegpr_26
/* 80CA672C  7C 7F 1B 78 */	mr r31, r3
/* 80CA6730  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CA6734  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CA6738  40 82 01 74 */	bne lbl_80CA68AC
/* 80CA673C  7F E0 FB 79 */	or. r0, r31, r31
/* 80CA6740  41 82 01 60 */	beq lbl_80CA68A0
/* 80CA6744  7C 1E 03 78 */	mr r30, r0
/* 80CA6748  4B 37 24 1C */	b __ct__10fopAc_ac_cFv
/* 80CA674C  3C 60 80 CA */	lis r3, __vt__15daObj_Oiltubo_c@ha
/* 80CA6750  38 03 7A C4 */	addi r0, r3, __vt__15daObj_Oiltubo_c@l
/* 80CA6754  90 1E 0A D0 */	stw r0, 0xad0(r30)
/* 80CA6758  3B 7E 05 78 */	addi r27, r30, 0x578
/* 80CA675C  3C 60 80 CA */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CA6760  38 03 7A B8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CA6764  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80CA6768  7F 63 DB 78 */	mr r3, r27
/* 80CA676C  38 80 00 00 */	li r4, 0
/* 80CA6770  4B 68 1C 8C */	b init__12J3DFrameCtrlFs
/* 80CA6774  38 00 00 00 */	li r0, 0
/* 80CA6778  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80CA677C  3B 7E 05 90 */	addi r27, r30, 0x590
/* 80CA6780  7F 63 DB 78 */	mr r3, r27
/* 80CA6784  4B 3C F9 1C */	b __ct__9dBgS_AcchFv
/* 80CA6788  3C 60 80 CA */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CA678C  38 63 7A 94 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CA6790  90 7B 00 10 */	stw r3, 0x10(r27)
/* 80CA6794  38 03 00 0C */	addi r0, r3, 0xc
/* 80CA6798  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80CA679C  38 03 00 18 */	addi r0, r3, 0x18
/* 80CA67A0  90 1B 00 24 */	stw r0, 0x24(r27)
/* 80CA67A4  38 7B 00 14 */	addi r3, r27, 0x14
/* 80CA67A8  4B 3D 26 C0 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CA67AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CA67B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CA67B4  90 1E 07 80 */	stw r0, 0x780(r30)
/* 80CA67B8  38 7E 07 84 */	addi r3, r30, 0x784
/* 80CA67BC  4B 3D CF A4 */	b __ct__10dCcD_GSttsFv
/* 80CA67C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CA67C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CA67C8  90 7E 07 80 */	stw r3, 0x780(r30)
/* 80CA67CC  38 03 00 20 */	addi r0, r3, 0x20
/* 80CA67D0  90 1E 07 84 */	stw r0, 0x784(r30)
/* 80CA67D4  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80CA67D8  4B 3C F6 D4 */	b __ct__12dBgS_AcchCirFv
/* 80CA67DC  3B 5E 07 E4 */	addi r26, r30, 0x7e4
/* 80CA67E0  7F 43 D3 78 */	mr r3, r26
/* 80CA67E4  4B 3D D2 44 */	b __ct__12dCcD_GObjInfFv
/* 80CA67E8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CA67EC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CA67F0  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CA67F4  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha
/* 80CA67F8  38 03 7A 88 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CA67FC  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80CA6800  3C 60 80 CA */	lis r3, __vt__8cM3dGCyl@ha
/* 80CA6804  38 03 7A 7C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CA6808  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80CA680C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CA6810  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CA6814  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80CA6818  3B A3 00 58 */	addi r29, r3, 0x58
/* 80CA681C  93 BA 01 38 */	stw r29, 0x138(r26)
/* 80CA6820  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CA6824  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CA6828  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80CA682C  3B 83 00 2C */	addi r28, r3, 0x2c
/* 80CA6830  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80CA6834  3B 63 00 84 */	addi r27, r3, 0x84
/* 80CA6838  93 7A 01 38 */	stw r27, 0x138(r26)
/* 80CA683C  3B 5E 09 20 */	addi r26, r30, 0x920
/* 80CA6840  7F 43 D3 78 */	mr r3, r26
/* 80CA6844  4B 3D D1 E4 */	b __ct__12dCcD_GObjInfFv
/* 80CA6848  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CA684C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CA6850  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CA6854  3C 60 80 CA */	lis r3, __vt__8cM3dGAab@ha
/* 80CA6858  38 03 7A 88 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CA685C  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80CA6860  3C 60 80 CA */	lis r3, __vt__8cM3dGCyl@ha
/* 80CA6864  38 03 7A 7C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CA6868  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80CA686C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CA6870  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 80CA6874  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80CA6878  93 BA 01 38 */	stw r29, 0x138(r26)
/* 80CA687C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CA6880  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 80CA6884  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 80CA6888  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80CA688C  93 7A 01 38 */	stw r27, 0x138(r26)
/* 80CA6890  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 80CA6894  4B 5C 13 88 */	b __ct__11cBgS_GndChkFv
/* 80CA6898  38 7E 0A A4 */	addi r3, r30, 0xaa4
/* 80CA689C  4B 61 7F A8 */	b __ct__16Z2SoundObjSimpleFv
lbl_80CA68A0:
/* 80CA68A0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CA68A4  60 00 00 08 */	ori r0, r0, 8
/* 80CA68A8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CA68AC:
/* 80CA68AC  7F E3 FB 78 */	mr r3, r31
/* 80CA68B0  48 00 07 39 */	bl getResName__15daObj_Oiltubo_cFv
/* 80CA68B4  7C 64 1B 78 */	mr r4, r3
/* 80CA68B8  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CA68BC  4B 38 66 00 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CA68C0  7C 7B 1B 78 */	mr r27, r3
/* 80CA68C4  2C 1B 00 04 */	cmpwi r27, 4
/* 80CA68C8  40 82 00 30 */	bne lbl_80CA68F8
/* 80CA68CC  7F E3 FB 78 */	mr r3, r31
/* 80CA68D0  3C 80 80 CA */	lis r4, createHeapCallBack__15daObj_Oiltubo_cFP10fopAc_ac_c@ha
/* 80CA68D4  38 84 6F C8 */	addi r4, r4, createHeapCallBack__15daObj_Oiltubo_cFP10fopAc_ac_c@l
/* 80CA68D8  38 A0 20 00 */	li r5, 0x2000
/* 80CA68DC  4B 37 3B D4 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CA68E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CA68E4  40 82 00 0C */	bne lbl_80CA68F0
/* 80CA68E8  38 60 00 05 */	li r3, 5
/* 80CA68EC  48 00 00 10 */	b lbl_80CA68FC
lbl_80CA68F0:
/* 80CA68F0  7F E3 FB 78 */	mr r3, r31
/* 80CA68F4  48 00 07 75 */	bl initialize__15daObj_Oiltubo_cFv
lbl_80CA68F8:
/* 80CA68F8  7F 63 DB 78 */	mr r3, r27
lbl_80CA68FC:
/* 80CA68FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA6900  4B 6B B9 1C */	b _restgpr_26
/* 80CA6904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA6908  7C 08 03 A6 */	mtlr r0
/* 80CA690C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA6910  4E 80 00 20 */	blr 
