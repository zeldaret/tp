lbl_80AB9840:
/* 80AB9840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB9844  7C 08 02 A6 */	mflr r0
/* 80AB9848  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB984C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB9850  4B 8A 89 80 */	b _savegpr_26
/* 80AB9854  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB9858  7C 9F 23 78 */	mr r31, r4
/* 80AB985C  41 82 01 C8 */	beq lbl_80AB9A24
/* 80AB9860  3C 60 80 AC */	lis r3, __vt__13daNpcRafrel_c@ha
/* 80AB9864  38 03 02 34 */	addi r0, r3, __vt__13daNpcRafrel_c@l
/* 80AB9868  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AB986C  3B A0 00 00 */	li r29, 0
/* 80AB9870  3B 80 00 00 */	li r28, 0
/* 80AB9874  3C 60 80 AC */	lis r3, l_arcNames@ha
/* 80AB9878  3B 43 00 98 */	addi r26, r3, l_arcNames@l
/* 80AB987C  3C 60 80 AC */	lis r3, l_loadRes_list@ha
/* 80AB9880  3B 63 00 8C */	addi r27, r3, l_loadRes_list@l
/* 80AB9884  48 00 00 20 */	b lbl_80AB98A4
lbl_80AB9888:
/* 80AB9888  38 7C 0D EC */	addi r3, r28, 0xdec
/* 80AB988C  7C 7E 1A 14 */	add r3, r30, r3
/* 80AB9890  54 00 10 3A */	slwi r0, r0, 2
/* 80AB9894  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80AB9898  4B 57 37 70 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80AB989C  3B BD 00 04 */	addi r29, r29, 4
/* 80AB98A0  3B 9C 00 08 */	addi r28, r28, 8
lbl_80AB98A4:
/* 80AB98A4  88 1E 0E 17 */	lbz r0, 0xe17(r30)
/* 80AB98A8  54 00 10 3A */	slwi r0, r0, 2
/* 80AB98AC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80AB98B0  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80AB98B4  2C 00 00 00 */	cmpwi r0, 0
/* 80AB98B8  40 80 FF D0 */	bge lbl_80AB9888
/* 80AB98BC  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AB98C0  28 00 00 00 */	cmplwi r0, 0
/* 80AB98C4  41 82 00 0C */	beq lbl_80AB98D0
/* 80AB98C8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AB98CC  4B 55 7A 44 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AB98D0:
/* 80AB98D0  34 1E 0C A4 */	addic. r0, r30, 0xca4
/* 80AB98D4  41 82 00 84 */	beq lbl_80AB9958
/* 80AB98D8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AB98DC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AB98E0  90 7E 0C E0 */	stw r3, 0xce0(r30)
/* 80AB98E4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AB98E8  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 80AB98EC  38 03 00 84 */	addi r0, r3, 0x84
/* 80AB98F0  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 80AB98F4  34 1E 0D A8 */	addic. r0, r30, 0xda8
/* 80AB98F8  41 82 00 54 */	beq lbl_80AB994C
/* 80AB98FC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AB9900  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AB9904  90 7E 0D C4 */	stw r3, 0xdc4(r30)
/* 80AB9908  38 03 00 58 */	addi r0, r3, 0x58
/* 80AB990C  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 80AB9910  34 1E 0D C8 */	addic. r0, r30, 0xdc8
/* 80AB9914  41 82 00 10 */	beq lbl_80AB9924
/* 80AB9918  3C 60 80 AC */	lis r3, __vt__8cM3dGCyl@ha
/* 80AB991C  38 03 02 DC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AB9920  90 1E 0D DC */	stw r0, 0xddc(r30)
lbl_80AB9924:
/* 80AB9924  34 1E 0D A8 */	addic. r0, r30, 0xda8
/* 80AB9928  41 82 00 24 */	beq lbl_80AB994C
/* 80AB992C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AB9930  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AB9934  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 80AB9938  34 1E 0D A8 */	addic. r0, r30, 0xda8
/* 80AB993C  41 82 00 10 */	beq lbl_80AB994C
/* 80AB9940  3C 60 80 AC */	lis r3, __vt__8cM3dGAab@ha
/* 80AB9944  38 03 02 E8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AB9948  90 1E 0D C0 */	stw r0, 0xdc0(r30)
lbl_80AB994C:
/* 80AB994C  38 7E 0C A4 */	addi r3, r30, 0xca4
/* 80AB9950  38 80 00 00 */	li r4, 0
/* 80AB9954  4B 5C A7 90 */	b __dt__12dCcD_GObjInfFv
lbl_80AB9958:
/* 80AB9958  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 80AB995C  3C 80 80 AC */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AB9960  38 84 F1 8C */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AB9964  38 A0 00 08 */	li r5, 8
/* 80AB9968  38 C0 00 04 */	li r6, 4
/* 80AB996C  4B 8A 83 7C */	b __destroy_arr
/* 80AB9970  34 1E 0B E0 */	addic. r0, r30, 0xbe0
/* 80AB9974  41 82 00 88 */	beq lbl_80AB99FC
/* 80AB9978  3C 60 80 AC */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80AB997C  38 03 02 F4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80AB9980  90 1E 0C 78 */	stw r0, 0xc78(r30)
/* 80AB9984  38 7E 0C 5C */	addi r3, r30, 0xc5c
/* 80AB9988  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha
/* 80AB998C  38 84 F2 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AB9990  38 A0 00 06 */	li r5, 6
/* 80AB9994  38 C0 00 04 */	li r6, 4
/* 80AB9998  4B 8A 83 50 */	b __destroy_arr
/* 80AB999C  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AB99A0  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha
/* 80AB99A4  38 84 F2 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AB99A8  38 A0 00 06 */	li r5, 6
/* 80AB99AC  38 C0 00 04 */	li r6, 4
/* 80AB99B0  4B 8A 83 38 */	b __destroy_arr
/* 80AB99B4  38 7E 0C 2C */	addi r3, r30, 0xc2c
/* 80AB99B8  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha
/* 80AB99BC  38 84 F2 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AB99C0  38 A0 00 06 */	li r5, 6
/* 80AB99C4  38 C0 00 04 */	li r6, 4
/* 80AB99C8  4B 8A 83 20 */	b __destroy_arr
/* 80AB99CC  38 7E 0C 14 */	addi r3, r30, 0xc14
/* 80AB99D0  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha
/* 80AB99D4  38 84 F2 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AB99D8  38 A0 00 06 */	li r5, 6
/* 80AB99DC  38 C0 00 04 */	li r6, 4
/* 80AB99E0  4B 8A 83 08 */	b __destroy_arr
/* 80AB99E4  38 7E 0B E0 */	addi r3, r30, 0xbe0
/* 80AB99E8  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha
/* 80AB99EC  38 84 F3 20 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AB99F0  38 A0 00 0C */	li r5, 0xc
/* 80AB99F4  38 C0 00 04 */	li r6, 4
/* 80AB99F8  4B 8A 82 F0 */	b __destroy_arr
lbl_80AB99FC:
/* 80AB99FC  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80AB9A00  38 80 FF FF */	li r4, -1
/* 80AB9A04  4B 80 6A 1C */	b __dt__10Z2CreatureFv
/* 80AB9A08  7F C3 F3 78 */	mr r3, r30
/* 80AB9A0C  38 80 00 00 */	li r4, 0
/* 80AB9A10  48 00 59 51 */	bl __dt__8daNpcF_cFv
/* 80AB9A14  7F E0 07 35 */	extsh. r0, r31
/* 80AB9A18  40 81 00 0C */	ble lbl_80AB9A24
/* 80AB9A1C  7F C3 F3 78 */	mr r3, r30
/* 80AB9A20  4B 81 53 1C */	b __dl__FPv
lbl_80AB9A24:
/* 80AB9A24  7F C3 F3 78 */	mr r3, r30
/* 80AB9A28  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB9A2C  4B 8A 87 F0 */	b _restgpr_26
/* 80AB9A30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB9A34  7C 08 03 A6 */	mtlr r0
/* 80AB9A38  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB9A3C  4E 80 00 20 */	blr 
