lbl_809460A0:
/* 809460A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809460A4  7C 08 02 A6 */	mflr r0
/* 809460A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809460AC  39 61 00 20 */	addi r11, r1, 0x20
/* 809460B0  4B A1 C1 2C */	b _savegpr_29
/* 809460B4  7C 7F 1B 78 */	mr r31, r3
/* 809460B8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809460BC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809460C0  40 82 00 F0 */	bne lbl_809461B0
/* 809460C4  7F E0 FB 79 */	or. r0, r31, r31
/* 809460C8  41 82 00 DC */	beq lbl_809461A4
/* 809460CC  7C 1E 03 78 */	mr r30, r0
/* 809460D0  4B 6D 2A 94 */	b __ct__10fopAc_ac_cFv
/* 809460D4  3C 60 80 95 */	lis r3, __vt__8daMyna_c@ha
/* 809460D8  38 03 B9 C0 */	addi r0, r3, __vt__8daMyna_c@l
/* 809460DC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 809460E0  3B BE 05 78 */	addi r29, r30, 0x578
/* 809460E4  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809460E8  38 03 B9 B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809460EC  90 1E 05 78 */	stw r0, 0x578(r30)
/* 809460F0  7F A3 EB 78 */	mr r3, r29
/* 809460F4  38 80 00 00 */	li r4, 0
/* 809460F8  4B 9E 23 04 */	b init__12J3DFrameCtrlFs
/* 809460FC  38 00 00 00 */	li r0, 0
/* 80946100  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80946104  38 7E 05 90 */	addi r3, r30, 0x590
/* 80946108  4B 97 A2 C0 */	b __ct__10Z2CreatureFv
/* 8094610C  38 7E 06 20 */	addi r3, r30, 0x620
/* 80946110  4B 90 3D F0 */	b __ct__10dMsgFlow_cFv
/* 80946114  38 7E 06 6C */	addi r3, r30, 0x66c
/* 80946118  4B 92 1B 04 */	b __ct__11cBgS_GndChkFv
/* 8094611C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80946120  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80946124  90 1E 06 C0 */	stw r0, 0x6c0(r30)
/* 80946128  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 8094612C  4B 73 D6 34 */	b __ct__10dCcD_GSttsFv
/* 80946130  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80946134  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80946138  90 7E 06 C0 */	stw r3, 0x6c0(r30)
/* 8094613C  38 03 00 20 */	addi r0, r3, 0x20
/* 80946140  90 1E 06 C4 */	stw r0, 0x6c4(r30)
/* 80946144  3B BE 06 E4 */	addi r29, r30, 0x6e4
/* 80946148  7F A3 EB 78 */	mr r3, r29
/* 8094614C  4B 73 D8 DC */	b __ct__12dCcD_GObjInfFv
/* 80946150  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80946154  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80946158  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8094615C  3C 60 80 95 */	lis r3, __vt__8cM3dGAab@ha
/* 80946160  38 03 B9 A8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80946164  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80946168  3C 60 80 95 */	lis r3, __vt__8cM3dGSph@ha
/* 8094616C  38 03 B9 9C */	addi r0, r3, __vt__8cM3dGSph@l
/* 80946170  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80946174  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80946178  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8094617C  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80946180  38 03 00 58 */	addi r0, r3, 0x58
/* 80946184  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80946188  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8094618C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80946190  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80946194  38 03 00 2C */	addi r0, r3, 0x2c
/* 80946198  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8094619C  38 03 00 84 */	addi r0, r3, 0x84
/* 809461A0  90 1D 01 34 */	stw r0, 0x134(r29)
lbl_809461A4:
/* 809461A4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 809461A8  60 00 00 08 */	ori r0, r0, 8
/* 809461AC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_809461B0:
/* 809461B0  38 7F 05 6C */	addi r3, r31, 0x56c
/* 809461B4  3C 80 80 95 */	lis r4, struct_8094B24C+0x0@ha
/* 809461B8  38 84 B2 4C */	addi r4, r4, struct_8094B24C+0x0@l
/* 809461BC  38 84 01 00 */	addi r4, r4, 0x100
/* 809461C0  4B 6E 6C FC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809461C4  7C 7E 1B 78 */	mr r30, r3
/* 809461C8  2C 1E 00 04 */	cmpwi r30, 4
/* 809461CC  41 82 00 08 */	beq lbl_809461D4
/* 809461D0  48 00 00 9C */	b lbl_8094626C
lbl_809461D4:
/* 809461D4  7F E3 FB 78 */	mr r3, r31
/* 809461D8  3C 80 80 94 */	lis r4, createHeapCallBack__FP10fopAc_ac_c@ha
/* 809461DC  38 84 5C 6C */	addi r4, r4, createHeapCallBack__FP10fopAc_ac_c@l
/* 809461E0  38 A0 21 F0 */	li r5, 0x21f0
/* 809461E4  4B 6D 42 CC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809461E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809461EC  40 82 00 0C */	bne lbl_809461F8
/* 809461F0  38 60 00 05 */	li r3, 5
/* 809461F4  48 00 00 78 */	b lbl_8094626C
lbl_809461F8:
/* 809461F8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 809461FC  80 63 00 04 */	lwz r3, 4(r3)
/* 80946200  38 03 00 24 */	addi r0, r3, 0x24
/* 80946204  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80946208  38 7F 05 90 */	addi r3, r31, 0x590
/* 8094620C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80946210  38 BF 05 38 */	addi r5, r31, 0x538
/* 80946214  38 C0 00 03 */	li r6, 3
/* 80946218  38 E0 00 01 */	li r7, 1
/* 8094621C  4B 97 A3 14 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80946220  7F E3 FB 78 */	mr r3, r31
/* 80946224  48 00 2F 6D */	bl initiate__8daMyna_cFv
/* 80946228  7F E3 FB 78 */	mr r3, r31
/* 8094622C  48 00 33 19 */	bl setRoomNo__8daMyna_cFv
/* 80946230  7F E3 FB 78 */	mr r3, r31
/* 80946234  48 00 02 99 */	bl execute__8daMyna_cFv
/* 80946238  C0 1F 08 2C */	lfs f0, 0x82c(r31)
/* 8094623C  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 80946240  C0 1F 08 30 */	lfs f0, 0x830(r31)
/* 80946244  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 80946248  C0 1F 08 34 */	lfs f0, 0x834(r31)
/* 8094624C  D0 1F 08 4C */	stfs f0, 0x84c(r31)
/* 80946250  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 80946254  D0 1F 08 50 */	stfs f0, 0x850(r31)
/* 80946258  C0 1F 08 3C */	lfs f0, 0x83c(r31)
/* 8094625C  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 80946260  C0 1F 08 40 */	lfs f0, 0x840(r31)
/* 80946264  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 80946268  7F C3 F3 78 */	mr r3, r30
lbl_8094626C:
/* 8094626C  39 61 00 20 */	addi r11, r1, 0x20
/* 80946270  4B A1 BF B8 */	b _restgpr_29
/* 80946274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80946278  7C 08 03 A6 */	mtlr r0
/* 8094627C  38 21 00 20 */	addi r1, r1, 0x20
/* 80946280  4E 80 00 20 */	blr 
